FROM revanee/tensorflow

RUN mkdir /root/app

COPY src /root/app

WORKDIR /root/app

RUN apt-get -y install libedgetpu1-std

RUN apt-get -y install python3-edgetpu

RUN apt-get -y install gstreamer1.0-plugins-*

RUN ./install_requirements.sh

CMD python3 pose_camera.py
