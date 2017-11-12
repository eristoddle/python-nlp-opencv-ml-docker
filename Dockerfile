FROM python:3-onbuild

RUN python -c "import nltk; nltk.download('punkt')"
RUN python -c "import nltk; nltk.download('averaged_perceptron_tagger')"
RUN python -c "import nltk; nltk.download('maxent_ne_chunker')"
RUN python -c "import nltk; nltk.download('words')"
RUN python -m spacy download en
RUN ipython profile create

RUN apt-get update
# RUN apt-get upgrade

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm -g install phantomjs

RUN apt-get install -y build-essential cmake pkg-config
RUN apt-get install -y libjpeg62-turbo-dev libtiff5-dev libjasper-dev libpng12-dev
RUN apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
RUN apt-get install -y libxvidcore-dev libx264-dev
RUN apt-get install -y libgtk-3-dev
RUN apt-get install -y libatlas-base-dev gfortran
RUN apt-get install -y libopencv-dev python-opencv
