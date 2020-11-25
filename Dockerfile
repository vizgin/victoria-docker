FROM registry.access.redhat.com/ubi7/ubi
RUN mkdir /opt/victoria
COPY ./victoria-metrics-prod /opt/victoria/
EXPOSE 8428
ENTRYPOINT ["./opt/victoria/victoria-metrics-prod"]
CMD ["-envflag.enable"]
