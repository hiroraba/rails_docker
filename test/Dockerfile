FROM hiroraba/ruby

RUN mkdir root/workspace
ADD ../workspace ./root/workspace
ADD run_test.sh ./root/workspace
RUN bash -l -c "sh ./root/workspace/run_test.sh"
