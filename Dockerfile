FROM sagemath/sagemath:latest

COPY \
  LICENSE.md \
  README.md \
  entrypoint.sh \
  /

ENTRYPOINT ["/entrypoint.sh"]
