# WoSO

"Web of Simulation ontology (WoSO): Integration of Building Performance Simulations in IoT Systems". 

## Structure of the folder

- `woso.ttl` – WoSO ontology in Turtle (.ttl) format.  
- `woso.jsonld` – WoSO ontology in JSON-LD (.jsonld) format.  
- `woso.nt` – WoSO ontology in N-Triples (.nt) format. 
- `woso.owl` – WoSO ontology in RDF/XML (.owl) format.
- `supplementary_material` - folder  that contains the following additional ressources:
    - `sarefv321.ttl` - latest version of the sources of SAREF V3.2.1, obtained from [`saref/saref-core/develop-v321`](https://saref.etsi.org/sources/saref-core/-/blob/develop-v3.2.1/ontology/saref.ttl). The [specification of SAREF V3.2.1](https://www.etsi.org/deliver/etsi_ts/103200_103299/103264/03.02.01_60/ts_103264v030201p.pdf) has been published very recently.
    - `competency_questions` - folder that contains the competency questions CQ1-18.
    - `example` - source code of the example, with script to reproduce evaluation of competency questions.
    - `apache-jena-4.9.0` - sources of Apache Jena, to run the competency questions.
    - `build.sh` - script to run the th SPARSL quesries of the competency questions using apach-jena.
    
### Generated by WEDOCO

- `index-en.html` – Main landing page.   
- `406.html` – Custom 406 error page.  
- `resources/` – generated assets (e.g., images, logos).  
- `sections/` – Documentation sections.
- `webvowl/` – WebVOWL visualization files.


## How Apache Jena was obtained

```
# download and unzip apache jena 
wget https://archive.apache.org/dist/jena/binaries/apache-jena-4.9.0.zip
unzip apache-jena-4.9.0.zip
rm apache-jena-4.9.0.zip
```

## How to run the SPARQL queries

```
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ1.rq --results=csv | tee example/CQ1.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ2.rq --results=csv | tee example/CQ2.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ3.rq --results=csv | tee example/CQ3.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ4.rq --results=csv | tee example/CQ4.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ5.rq --results=csv | tee example/CQ5.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ6.rq --results=csv | tee example/CQ6.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ7.rq --results=csv | tee example/CQ7.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ8.1.rq --results=csv | tee example/CQ8.1.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ8.2.rq --results=csv | tee example/CQ8.2.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ8.3.rq --results=csv | tee example/CQ8.3.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ9.rq --results=csv | tee example/CQ9.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ10.rq --results=csv | tee example/CQ10.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ11.rq --results=csv | tee example/CQ11.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ12.rq --results=csv | tee example/CQ12.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ13.rq --results=csv | tee example/CQ13.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ14.rq --results=csv | tee example/CQ14.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ15.rq --results=csv | tee example/CQ15.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ16.rq --results=csv | tee example/CQ16.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ17.rq --results=csv | tee example/CQ17.result.csv
apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query=competency_questions/CQ18.rq --results=csv | tee example/CQ18.result.csv


```