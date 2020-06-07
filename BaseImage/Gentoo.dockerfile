FROM gentoo/portage:20200527 as portage
FROM gentoo/stage3-amd64-hardened-nomultilib:20200527

COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo

RUN ACCEPT_KEYWORDS="~amd64" emerge -qv sys-fs/unionfs-fuse && \
USE="X" emerge -qv dev-util/cmake media-libs/mesa x11-libs/libdrm

#RUN emerge -qv x11-libs/libICE x11-libs/libSM dev-libs/fribidi autoconf-archive media-fonts/font-util \
#x11-libs/libXcomposite x11-libs/libXtst x11-libs/libfontenc x11-apps/mkfontscale app-text/xmlto \
#x11-misc/shared-mime-info

COPY HoN /opt/HoN
COPY BaseImage/Gentoo/package.use /etc/portage/package.use/tempenv
RUN mkdir /etc/portage/sets
COPY BaseImage/Gentoo/tempenv.set /etc/portage/sets/hon-tempenv

CMD /bin/bash
