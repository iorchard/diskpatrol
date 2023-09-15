ARG         FROM=docker.io/rockylinux/rockylinux:8
FROM        ${FROM}

ENV         WORKSPACE="/build"
ENV         PATH="$PATH:/root/.cargo/bin"
ENV         OUTPUT_DIR="/output"
WORKDIR     ${WORKSPACE}

COPY        pkgdir ${WORKSPACE}/pkgdir
COPY        scripts ${WORKSPACE}/scripts
COPY        debian ${WORKSPACE}/debian
COPY        Makefile ${WORKSPACE}/Makefile

ENTRYPOINT  ["/build/scripts/build.sh"]
