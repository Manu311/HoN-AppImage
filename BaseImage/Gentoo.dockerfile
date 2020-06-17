FROM gentoo/portage:20200527 as portage
FROM gentoo/stage3-amd64-hardened-nomultilib:20200527

COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo

RUN ACCEPT_KEYWORDS="~amd64" emerge -qv sys-fs/unionfs-fuse && \
USE="X" emerge -qv dev-util/cmake media-libs/mesa x11-libs/libdrm

RUN mkdir /etc/portage/sets

CMD /bin/bash
