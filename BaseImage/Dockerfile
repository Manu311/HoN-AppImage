FROM debian:10
RUN apt-get update && apt-get install -y --no-install-recommends python3 unionfs-fuse file rsync bbe

COPY HoN /opt/HoN

#HoN-dependencies:
#RUN apt-get install --no-install-recommends -y \
#	libfontconfig1 libxml2 libxrender1 libxext6 libgdk-pixbuf2.0-0 \
#	libxi6 libcairo2 libcups2 libnss3 libxfixes3 libasound2 \
#	libpangocairo-1.0-0 libgtk2.0-0 libgconf-2-4 \
#	libgl1 libglu1-mesa

#RUN apt-get install --no-install-recommends unionfs-fuse wget
#	&& ln -s /usr/bin/unionfs /usr/bin/unionfs-fuse
#RUN wget https://raw.githubusercontent.com/boolean-world/appimage-resources/master/tempenv.sh && chmod +x tempenv.sh
#RUN ./tempenv.sh setup

CMD /bin/bash
