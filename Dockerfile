FROM sagemath/sagemath:latest

USER root

COPY \
  LICENSE.md \
  README.md \
  entrypoint.sh \
  /

ENTRYPOINT ["/entrypoint.sh"]
