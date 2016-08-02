FROM scratch
COPY ./ /
RUN apt-get update && apt-get install -y tinyproxy
ENV PATH .:$PATH
CMD [ "showDocs", "-DFOREGROUND" ]
