FEDORA_HOME=/var/opt/fedora
JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-amd64
CLASSPATH=$JAVA_HOME/jre/lib
CATALINA_HOME=/var/opt/fedora/tomcat/
JAVA_OPTS="$JAVA_OPTS -Djavax.net.ssl.trustStore=$FEDORA_HOME/server/truststore"
JAVA_OPTS="$JAVA_OPTS -Djavax.net.ssl.trustStorePassword=tomcat"
JAVA_OPTS="$JAVA_OPTS -Xmx512m"
PATH="$PATH:$FEDORA_HOME/server/bin:$FEDORA_HOME/client/bin"
export JAVA_HOME CLASSPATH CATALINA_HOME JAVA_OPTS FEDORA_HOME PATH
