FROM mongo
RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install  awscli
#RUN aws s3 cp s3://nidhish-swagger/ / --recursive --exclude "*" --include "*primer-dataset.json*"
#RUN mongod --fork --logpath /var/log/mongod.log
#COPY docker-entrypoint.sh /usr/local/bin/
#RUN mongod --fork --logpath /var/log/mongod.log && mongoimport --host=127.0.0.1 --db newdb --collection restaurants --file primer-dataset.json
#EXPOSE 27017
#CMD ["mongo"]
#RUN mongoimport --db newdb --collection restaurants --file primer-dataset.json

COPY import.sh /usr/local/bin/
RUN ln -s usr/local/bin/import.sh /import.sh
RUN chmod +x import.sh

ENTRYPOINT ["import.sh"]
