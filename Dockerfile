FROM openjdk:9
ADD target/PrometheusGrafanaExample-0.0.1-SNAPSHOT.jar PrometheusGrafanaExample-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "PrometheusGrafanaExample-0.0.1-SNAPSHOT.jar"]