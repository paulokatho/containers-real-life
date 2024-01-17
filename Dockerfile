FROM openjdk:17.0.2-slim

COPY target/quarkus-app/lib/ /deployments/lib/
COPY target/quarkus-app/quarkus-run.jva /deployments/app.jar
COPY target/quarkus-app/app/ /deployments/app/
COPY target/quarkus-app/quarkus/ /deployments/quarkus/

CMD ["java", "-jar", "/deployments/app.jar"]
