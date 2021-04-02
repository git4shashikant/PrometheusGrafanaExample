mvn clean install
docker build -f Dockerfile . -t shashikantsweden/repo:prometheus-grafana-example
docker run -d -p 8080:8080 shashikantsweden/repo:prometheus-grafana-example
docker pull prom/prometheus
docker run -d -p 9090:9090 -v src/main/resources/prometheus.yml prom/prometheus
docker pull grafana/grafana
docker run -d -p 3000:3000 grafana/grafana
