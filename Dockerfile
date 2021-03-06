FROM cassandra:3.11

# Install cUrl
RUN apt-get update && apt-get install --yes curl

# Add cassandra-lucene-index jar from maven
RUN cd /usr/share/cassandra/lib && \
  curl -LO http://search.maven.org/remotecontent?filepath=com/stratio/cassandra/cassandra-lucene-index-plugin/3.11.0.0/cassandra-lucene-index-plugin-3.11.0.0.jar
