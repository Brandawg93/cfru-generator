FROM devkitpro/devkitarm

ENV DEVKITPRO=/opt/devkitpro
ENV PATH=$PATH:/opt/devkitpro/devkitARM/bin
ENV CFRU_OFFSET=0x900000

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]