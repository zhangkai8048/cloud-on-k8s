#!/bin/bash
docker run -v $(pwd)/filerealm:/usr/share/elasticsearch/config docker.elastic.co/elasticsearch/elasticsearch:7.10.2 bin/elasticsearch-users useradd bocloud -p bocloud -r superuser
kubectl create secret generic bocloud-elasticsearch-realm-secret --from-file filerealm 