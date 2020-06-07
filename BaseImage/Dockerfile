FROM debian:10
RUN apt-get update && apt-get install -y --no-install-recommends python3 unionfs-fuse file rsync bbe

COPY HoN /opt/HoN

CMD /bin/bash
