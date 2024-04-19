# WoSO

Web of Simulations ontology - supplementary material for article: "Web of Simulation ontology (WoSO): Integration of Building Performance Simulations in IoT Systems", submitted at LDAC2024.

## Structure of the folder

- `woso.ttl` - source code of WoSO
- `sarefv321.ttl` - latest version of the sources of SAREF V3.2.1, obtained from [`saref/saref-core/develop-v321`](https://saref.etsi.org/sources/saref-core/-/blob/develop-v3.2.1/ontology/saref.ttl). The [specification of SAREF V3.2.1](https://www.etsi.org/deliver/etsi_ts/103200_103299/103264/03.02.01_60/ts_103264v030201p.pdf) has been published very recently.
- `competency_questions` - folder that contains the competency questions CQ1-7 as in the paper
- `example` - source code of the example, with script to reproduce evaluation of competency questions.
- `apache-jena-4.9.0` - sources of Apache Jena, to run the competency questions.
- `build.sh` script to build the html documentation of woso
- `woso` folder that contains the html documentation of woso

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

```