FROM mongo
RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install  awscli
COPY import.sh /usr/local/bin/
RUN ln -s usr/local/bin/import.sh /import.sh
RUN chmod +x import.sh
ENTRYPOINT ["import.sh"]
