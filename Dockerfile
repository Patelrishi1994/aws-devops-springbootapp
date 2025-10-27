FROM public.ecr.aws/docker/library/eclipse-temurin:17
RUN apt-get update && apt-get install -y curl
VOLUME /tmp
EXPOSE 8080
ADD target/springboot-aws-deploy-service.jar springboot-aws-deploy-service.jar
ENTRYPOINT ["java","-jar","/springboot-aws-deploy-service.jar"]
