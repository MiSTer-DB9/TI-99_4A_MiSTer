FROM theypsilon/quartus-lite-c5:17.1.docker0
LABEL maintainer="theypsilon@gmail.com"
WORKDIR /project
ADD . /project
RUN /opt/intelFPGA_lite/quartus/bin/quartus_sh --flow compile Ti994a.qpf
CMD cat /project/output_files/Ti994a.rbf
