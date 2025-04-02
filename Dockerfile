FROM scratch
WORKDIR /app/rnostr

# rnostr_v0.4.7-933d3f9_aarch64-unknown-linux-gnu
ADD https://cxac-my.sharepoint.com/personal/admin_cxplay_org/_layouts/15/download.aspx?share=EX1HK31xCElJqKHJlVnsSwIBfMPDcgIqXY5PCXkCEx3bcQ ./rnostr
RUN chmod 0755 rnostr

COPY config.toml .

EXPOSE 8080

ENTRYPOINT [ "./rnostr" ]
CMD [ "relay", "--watch", "-c", "./config.toml" ]
