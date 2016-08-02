FROM scratch
COPY ./ /
COPY docs/ /
CMD ./showDocs
