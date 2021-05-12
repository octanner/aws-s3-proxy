FROM andrewgaul/s3proxy

WORKDIR /opt/s3proxy

COPY start.sh .
RUN chmod +x start.sh 

ENTRYPOINT ["/opt/s3proxy/start.sh"]