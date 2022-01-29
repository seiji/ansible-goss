FROM aelsabbahy/goss:v0.3.16 as goss

FROM ansible/ansible-runner:1.4.6
COPY --from=goss /goss /usr/local/bin
