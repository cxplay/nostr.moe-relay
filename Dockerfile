FROM alpine
WORKDIR /app/rnostr

ADD https://cxac-my.sharepoint.com/personal/admin_cxplay_org/_layouts/15/download.aspx?share=EX1HK31xCElJqKHJlVnsSwIBfMPDcgIqXY5PCXkCEx3bcQ .
RUN chmod 0755 rnostr

COPY config.toml .

EXPOSE 8080

CMD [ "./rnostr", "--watch", "-c", "./config.toml" ]
