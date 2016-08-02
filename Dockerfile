FROM scratch
COPY ./ /
COPY docs/ /
CMD EXPORT PATH=$PATH:.
CMD showDocs
