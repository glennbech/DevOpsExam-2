package com.example.s3rekognition;

import com.example.s3rekognition.PPEResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class PPEController {

    @GetMapping("/scan-ppe")
    public PPEResponse scanPPE(@RequestParam String bucketName) {
        // Your implementation logic here
        // For demonstration purposes, create a dummy response
        List<PPEClassificationResponse> results = new ArrayList<>();
        results.add(new PPEClassificationResponse("example.jpg", 1, false));
        return new PPEResponse(bucketName, results);
    }
}