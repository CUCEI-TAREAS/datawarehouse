FROM postgres

ENV POSTGRES_PASSWORD 123

WORKDIR app/

COPY postgresql.sql start.sh ./

ENTRYPOINT ["bash"]

CMD ["/app/start.sh"]
