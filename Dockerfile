FROM scratch
COPY ./ /
CMD [ "./showDocs", "-DFOREGROUND" ]

