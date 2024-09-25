FROM nginx:alpine
COPY --chown=1000:1000 --chmod=777 nginx.conf /etc/nginx/nginx.conf
COPY --chown=1000:1000 start.sh /
RUN chown 1000:1000 -R /etc/nginx /var/cache/nginx /var/log/nginx /usr/share/nginx
USER 1000:1000
ENTRYPOINT ["/start.sh"]