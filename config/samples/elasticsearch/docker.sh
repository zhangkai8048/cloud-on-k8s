#!/bin/bash
docker run -v $(pwd)/filerealm:/usr/share/elasticsearch/config docker.elastic.co/elasticsearch/elasticsearch:7.10.2 bin/elasticsearch-users useradd kubesphere -p kubesphere -r superuser
kubectl create secret generic kubesphere-elasticsearch-realm-secret --from-file filerealm -n kubesphere-logging-system