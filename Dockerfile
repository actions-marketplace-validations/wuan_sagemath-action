FROM sagemath/sagemath:9.3

USER root

COPY \
  LICENSE.md \
  README.md \
  entrypoint.sh \
  /

ENTRYPOINT ["/entrypoint.sh"]
