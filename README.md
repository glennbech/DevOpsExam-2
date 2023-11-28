oppg 1 
for å kunne starte og kjøre den er ganske enkelt, du må sette i github settings / seacrets og så skrive inn din acsess og seacret key.
Disse 2 er de som kjører workflowen. resten skal gå automatisk om du gjør endringer 
på branch eller main så er workflowen satt opp, docker filen er det bare å kjøre samme som i oppgave teksen, bare sørg for å sette inn aws acsess og seacret kodene 
istedenfor xxx yyy

oppg 3
Hvis Sensor ønsker å bruke denne arbeidsflyten i sin egen branch (fork), bør de (fork) repositoriet og sørge for at nødvendige seacrets (for eksempel AWS-påloggingsinformasjon) er konfigurert i innstillingene for GitHub Secrets i den forgrenede (forkede) repositoriet.
Du må kanskje også oppdatere Docker-bilde-navnet og andre parametere i arbeidsflytfilen eller Terraform-konfigurasjonen hvis de er forskjellige fra de opprinnelige innstillingene.


oppg 5

A) 

CI eller i andre ord kontinuerlig integrasjon er en form av praksis som blir brukt i programmering der koding med endringer blir jevlingt integrert i et felles
repository. Hoved Målet i CI er å kunne oppdage og løse problemer i tidlig utviklingsfase før de blir til en større hindring i utviklingsfase. som oftest så 
går det ut på at utviklere intergrer koden i main branchen flere ganger om dagen.

tidlig oppdagelse av feil er en av de viktigste grunnene hvorfor det blir integrert i streng nivå, der problemene blir rettet under mindre komplekse nivåer.

økning av kode kvalitet oppstår når det blir gjort hyppigere kode evaluvering og oppfølging av koden for å forsikre at alt går som planlagt.

raskere og hurtigere levering av programvare, dette menes med at funksjoner og oppdateringer av koden eller strukturen skjer fortere enn et dårlig planlagt 
jobbe miljø.

bedre samarbeid oppstår under CI joobbe miljø når utviklere og andre i bransjen kommuniserer med hverandre, noe som gjør at teamet jobber mot en felles mål.

ved bruk av CI med Github actions kan kontinuerlig integrasjon oppstå der utviklere kan evaluvere og se hverandres arbeid som blir satt inn i programmet gjenno
prosjekt arbeidsflyten.

CI script som Yaml/yml er en god eksempel på en solid bygg og test prosess for prosjetet ditt der den funker som en guideline for alle som jobber med den.

commiting Ci konfigurasjonen går ut på at det blir opprettet automatisk sjekking for hver endring i kildekoden. en god eksempel er da enhetstesting.

feedback og varsler er del av CI der enten utvikleren gjør en kode feil eller om personen har implementert riktigt kode som CI godkjenner.

pull requests er en av måtene i CI der utvikleren får informasjon om hvordan endringer påvirker før de er satt inn og integrert.

daglig bruk av en sånn system oppfordrer og lærer utviklere jobbe med jevn flyt og holde seg til en viss CI kode standard innenfor bedriften.

i team miljø er det viktigt å oppholde en solid kommunikasjon både mellom utviklere og mellom CI arbeids flyten der alle følger en lik praksis, dette sørger
for at kontinuerlig integrasjon blir realisert effektivt gjennom hele prosjektet.

B) 

hoved trekk for Scrum Metodikk går ut på at en utvikler eller en gruppe med utviklere holder seg selv til faste tidsrammer (sprints)
i disse tidsrammene så blir det planlagt ukentligt oppgaver, som prioritet så blir oppgavene fordelt med poeng fra viktigste til minst viktige oppgaver
i sprints så har også gruppene egne roller (i noen tilfeller har du scrum master) som er ansvarlig for gruppene. Det pleier å være flere roller enn bare
en scrum master men det kommer ann på prosjekt og hvor streng sprintene er.

i en jobbemiljø der scrum blir brukt så er det en tidsplan som hetter product backlog, i denne backloggen så er scrum master ansvarlig for prioriteringer
og endringer for de kravene som oppstår gjennom sprinten, som oftest så uke sprintene ganske variende og oftest endres veldig fort.

styrker med scrum går ut på å være open for endringer, i scrum prosjekter så kan planlegging eller jobbe utføringen endre seg ganske mye fra første ukene
til siste delen av prosjektet og vannligvis de som jobber med scrum er ganske vante med raske endringer i sprintene, jeg selv har jobbet med en prosjekt der vi
jobbet med sprints og jeg kan garantere at vi endret oss veldig mye når det kom til planlegging av ukene etter par uker med scrum testing.

en annen styrke i scrum er at prosjektet får en god del tilbake meldinger fra Product owners og dermed sikrer scrum at produktet blir utviklet med 
deres ønsker.

utfordringene med scrum er at i små teams og på mindre komplekse prosjekter så funker metodikken utmerket men i større teams (og flere av dem) med 
utfordrene prosjekter som går over flere måneder enn vanligt så kan scrum planlegging og administrering oppstå som veldig kompleks prosess.

når vi brukte scrum så fikk vi problemer når vi gikk tom for tid og flere ønsker fra product owners gjorde det bare værre, i andre ord så er ikke scrum
altid den beste metodikken å følge, når en prosjekt blir tatt imot så må det grundig plannlegges for hvilken metodikk som må følges.

desverre så er scrum avhengig at medlemmene i gruppen har god samarbeid og utvikler i samme hastighet, hvis noen faller av så ender det med at andre medlemmene
tar over for personen.

DevOpsMetodikken går ut på med fokus i redusering ulikheter mellom utvikling og drift der kontinuerlig leveranse prosess er hovedmålet. 
automatisering i DevOpsMetodikken er med på å gjøre alt av bygging testing og distribusjon mer effektivt. Stor del av DevOps går ut på
kontinuerlig overvåkning og tilbakemelding for forbedring i ytelse og stabilitet.

styrke med DevOpsMetodikken går ut på  at raske leveringer med solid utrullinger gir mer raskere tid i markedet, samtidigt som feilretting og stabilitet
av produkt blir prioritert og oppfølgt.

utfordringene i DevOpsMetodikken oppstår under endringer og drift der gamle vaner og metodikker blir dyttet bort. DevOpsMetodikken er oftest brukt 
som en veis produksjon der andre planlegging og metodikker ikke blandes lett inn. dette kan føre til en del vanskeligheter når man må jobbe med en fast ramme.

hvis man sammenligner kontrastene mellom disse to så kan man se en del ulikheter og likheter:


Scrum/Agile project managing sikrer kvalitet gjennom tilbakemeldinger og planendringer gjennom prosjektets jobbetid.
DevOps øker og forbedrer kvaliteten i form av integrasjon i en fast mønster der automatisering og feilretting produserer kontinuerlig leveranse.

Scrum/Agile er ment og laget for produksjons krets der kundens fokus og ønske blir verdisatt helt øverst, og der kundens tilbakemeldinger er det som
fører kurset av prosjektet. til vanligt så passer dette for endrings villige teams og blir som oftest brukt for bedrifter der de bestiller konsulent selskap
med utviklere.

DevOps er ideel og mest brukt for bedrifter som søker  etter kontinuerlig utrullinger og der en viss kodestandard blir oppfølget og sjekket, for det meste
så blir DevOps brukt i sky-løsninger.

valget mellom Scrum eller DevOps kan variere utifra prosjekt krav og behov, det kan også påvirkes av kulturelle faktorer. begge metodikkene kan også
kombineres for å balansere fleksibilitet, utrullingstempo og kvalitet.

C)

Feedback i AWS rekognition og Micrometer Metrics:

når en funksjonalitet blir implementert i en applikasjon som bruker AWS rekognition så er det viktigt å sikre at den følger og oppfyller kundens/brukers
behov gjennom effektivt feedback. Micrometer Metrics kan spille en avgjørende rolle i prosessen ved å tilby ulike målinger som gir en viss innsikt i ytelse
og effektivtet innenfor funksjonalitet.

ulike form av feedback:

#etablering av selve feedback
Meter: integrasjon for Meter går ut på at den teller antall forespørsler til AWS rekognition.

* måleinstrumentet kan brukes for tidlg produksjons stadier.
* gir en rask feedback om hvor ofte funksjonalitet blir brukt, den hjelper med å forstå brukermønster og den viser/indikerer selve populæriten til funksjonaliteten

Gauge: er for det meste den som viser gjennomsnittlige svaretiden fra AWS rekognition.

* er veldig kritisk i produksjonstadier
* gir rask indikasjon på hvor rask tjenester responderer, dette kan være avgjørende for bruker opplevelsen, der høy responstid indikerer for ytelsesforbedring.

#bruken av feedback
Timer: selve tid for bildesøking.

* integrasjonen der den måler tiden som blir brukt på selve bildesøking i applikasjonen
* timer er nyttig under selve utviklingen og testing for å forbedre koden, for det meste så  er ansvarsområden overvåking av ytelse over tid.
* for det meste gir ditaljert informasjon om tidsforbruket for den nye funksjonaliteten, dette kan da hjelpe med å identifisere ytelsesforbedring 

#kontinuerlig forbedring
DistributionSummary ansvarlig for analysering av ansiktsdeteksjons-resultater

* DistributionSummary samler og analyserer resultater av ulike ansiktsdeteksjoner.
* er nyttig under utviklingstadiet for å kunne forstå ansiktsdeteksjonsresultater og informasjon om muligheten til å forbedre selve algoritmen.
* gir innsikt av forskjellige aniskts resultater, den kan også bidra med og justere av nøyaktigheten av funksjonaliteten.

#integrering i livssyklusen
LongTaskTimer overvåkning av langsiktige operasjoner:

* er ansvarlig for å overvåke langvarige operasjoner, eks lengre tidsforbruk på et enkelt bilde.
* nyttig for både produksjonstadiet og utvikling for å kunne oppdage og håndtere de ulike langvarige operasjoner
* gir informasjon om hvor lang tid det tar å behandle ulike forespørslene, den bidrar med å optimalisere ytelse og selve ressursbruken.


ved å forstå og integrere Micrometer Metrics i forskjellige stadier av selve utviklingsyklusen så kan vi forstå og effektivt samle de ulike analyserte feedbacken
informasjonen for å kunne tilfredstille brukernes behov, Metrics gir ikke bare utmerket ytelse, men gir også muligheten for kontinuerlig forbedringer gjennom
livssyklusen.


for informasjon av oppg4 jeg hadde desv ikke nok tid å sette meg i den og fullføre den, heller kunne jeg ikke la den gjøres halveis (risk for å ødelegge selve java oppgaven).



