 # renovate: datasource=github-releases depName=microsoft/ApplicationInsights-Java
ARG APP_INSIGHTS_AGENT_VERSION=3.4.9
FROM hmctspublic.azurecr.io/base/java:17-distroless

COPY build/libs/hmc-judicial-payment-service.jar /opt/app/

EXPOSE 4550
CMD [ "hmc-judicial-payment-service.jar" ]
