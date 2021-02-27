sudo apt install openjdk-11-jdk openjdk-11-jre maven
export JAVA_HOME=$(update-alternatives --query javadoc | grep Value: | head -n1 | sed 's/Value: //' | sed 's@bin/javadoc$@@')
mvn clean package appassembler:assemble
