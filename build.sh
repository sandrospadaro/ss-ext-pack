#!/bin/bash
mkdir ss-ext-pack-${SS_EXT_PACK_VERS} && \
    cp configure ss-ext-pack-${SS_EXT_PACK_VERS}/ && \
    cp -r src ss-ext-pack-${SS_EXT_PACK_VERS}/ss-ext-pack-${SS_EXT_PACK_VERS} && \
    tar cvfz ss-ext-pack-${SS_EXT_PACK_VERS}.tar.gz ss-ext-pack-${SS_EXT_PACK_VERS} && \
    cp ss-ext-pack.spec ~/rpmbuild/SPECS/ && \
    cp ss-ext-pack-${SS_EXT_PACK_VERS}.tar.gz ~/rpmbuild/SOURCES/ && \
    rpmbuild -ba ~/rpmbuild/SPECS/ss-ext-pack.spec && \
    cp ~/rpmbuild/RPMS/noarch/ss-ext-pack-${SS_EXT_PACK_VERS}-1.noarch.rpm bin/noarch/ && \
    rm -rf ss-ext-pack-${SS_EXT_PACK_VERS} && \
    rm -f ss-ext-pack-${SS_EXT_PACK_VERS}.tar.gz