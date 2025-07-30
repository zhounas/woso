for file in competency_questions/CQ*.rq; do
    i=$(basename "$file" .rq | sed 's/^CQ//')
    apache-jena-4.9.0/bin/sparql --data=example/dataset.ttl --query="$file" --results=csv | tee "example/CQ$i.result.csv"
done
