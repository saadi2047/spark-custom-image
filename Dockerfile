FROM apache/spark:4.0.0

# Add Hadoop AWS + AWS SDK jars to Spark
ADD https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar /opt/spark/jars/
ADD https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.262/aws-java-sdk-bundle-1.12.262.jar /opt/spark/jars/

# Ensure Spark can see these jars
ENV SPARK_CLASSPATH="/opt/spark/jars/*"
