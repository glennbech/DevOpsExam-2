import os
import boto3
import json

s3_client = boto3.client('s3', region_name='eu-west-1')
rekognition_client = boto3.client('rekognition', region_name='eu-west-1')

# Updated to use correct environment variable
BUCKET_NAME = os.environ.get ('BUCKET_NAME')
print(f"Retrieved bucket name: {BUCKET_NAME}")  # Debug print


def create_s3_bucket(bucket_name):
    try:
        location_constraint = s3_client.meta.region_name
        s3_client.create_bucket(
            Bucket=bucket_name,
            CreateBucketConfiguration={'LocationConstraint': location_constraint}
        )
        print(f"The Bucket '{bucket_name}' was created")
    except s3_client.exceptions.BucketAlreadyOwnedByYou as e:
        print(f"The bucket '{bucket_name}' is already made.")
    except Exception as e:
        print(f"The bucket was not created because of an error '{bucket_name}': {str(e)}")

def lambda_handler(event, context):
    create_s3_bucket(BUCKET_NAME)

    # List all objects in the S3 bucket
    paginator = s3_client.get_paginator('list_objects_v2')
    rekognition_results = []  # Store the results

    for page in paginator.paginate(Bucket=BUCKET_NAME):
        for obj in page.get('Contents', []):
            # Perform PPE detection using Rekognition
            rekognition_response = rekognition_client.detect_protective_equipment(
                Image={
                    'S3Object': {
                        'Bucket': BUCKET_NAME,
                        'Name': obj['Key']
                    }
                },
                SummarizationAttributes={
                    'MinConfidence': 80,  # Confidence level threshold
                    'RequiredEquipmentTypes': ['FACE_COVER']
                }
            )
            rekognition_results.append(rekognition_response)

    return {
        "statusCode": 200,
        "body":  json.dumps(rekognition_results),
    }

print(lambda_handler(None, None))