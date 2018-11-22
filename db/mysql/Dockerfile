FROM mysql

ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

WORKDIR app/

COPY trasplante.sql start.sh ./

ENTRYPOINT ["bash"]

CMD ["/app/start.sh"]
