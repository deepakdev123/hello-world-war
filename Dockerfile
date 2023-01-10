FROM maven:3.8.2-openjdk-8 as build_stage
ARG BUILD_VERSION=2.0.1
ENV BUILD_VERSION=${BUILD_VERSION}
WORKDIR /deepak
COPY . .
RUN mvn clean package

FROM tomcat:9.0
ARG BUILD_VERSION=2.0.1
ENV BUILD_VERSION=${BUILD_VERSION}
COPY --from=build_stage /deepak/target/hello-world-war-${BUILD_VERSION}.war /usr/local/tomcat/webapps/
