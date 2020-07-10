FROM python

# Copy script
COPY dreampy_dns.py /

ENTRYPOINT [ "python3", "-u", "./dreampy_dns.py"]