set JAVA_HOME=%JAVA_HOME%
set JAVA_OPTS=%JAVA_OPTS% -Dsolr.solr.home=../../kernel
set JAVA_OPTS=%JAVA_OPTS% -Xmx2048M -Xms1024M -XX:MaxPermSize=256M -XX:-UseGCOverheadLimit -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalMode -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager -Djava.util.logging.config.file="%CATALINA_HOME%\conf\logging.properties"
set JAVA_OPTS=%JAVA_OPTS% -Djava.rmi.server.hostname=127.0.0.1 -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9004 -Dcom.sun.management.jmxremote.ssl=false  -Dcom.sun.management.jmxremote.authenticate=false -Xdebug -Xnoagent -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8070
rem set JAVA_OPTS=%JAVA_OPTS% -javaagent:"%REBEL_HOME%\jrebel.jar" 
startup.bat