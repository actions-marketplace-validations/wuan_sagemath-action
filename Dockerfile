FROM sagemath/sagemath:latest

COPY \
  LICENSE.md \
  README.md \
  entrypoint.sh \
  /root/

ENTRYPOINT ["/root/entrypoint.sh"]
