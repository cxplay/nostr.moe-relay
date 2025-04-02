FROM scratch
WORKDIR /app/rnostr

# rnostr_v0.4.7-933d3f9_aarch64-unknown-linux-gnu
ADD --chmod=0755 https://cxac-my.sharepoint.com/personal/admin_cxplay_org/_layouts/15/download.aspx?share=EX1HK31xCElJqKHJlVnsSwIBfMPDcgIqXY5PCXkCEx3bcQ ./rnostr

COPY config.toml .

EXPOSE 8080

ENV RUST_LOG=debug
ENTRYPOINT [ "./rnostr" ]
CMD [ "relay", "--watch", "-c", "./config.toml" ]
