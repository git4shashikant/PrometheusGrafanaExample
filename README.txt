- Create spring root project from https://start.spring.io/
- Add dependency for Spring Web, Spring Boot Actuator, Prometheus
- Download the project and update pom with micrometer-core
- Add rest controller and get mapping to check if the project is available
- Add application.yaml for including metrics, info, health and prometheus
- Check http://localhost:8080/actuator and http://localhost:8080/actuator/prometheus
- Add prometheus.yaml file to your project and change IP to docker IP for actuator job static config
- Download prometheus docker image
  $ docker pull prom/prometheus
- Use below command to run prometheus
  $ docker run -d -p 9090:9090 -v /mnt/c/dev/code/PremetheusGrafanaExample/src/main/resources/prometheus.yml prom/prometheus
- Check url: http://<dockerIP>:9090
- Click classic UI and select required metrics from drop down to see the graph
- Download grafana docker image
  $ docker pull grafana/grafana
- run grafana
  $ docker run -d -p 3000:3000 grafana/grafana
- Check URL: http://<dockerIP>:3000
- use default credentials: admin/admin
- create your dashboard and provide metrics your want to watch

