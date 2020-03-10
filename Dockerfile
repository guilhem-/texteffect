FROM debian:latest

RUN apt-get update
RUN apt install -y toilet nodejs figlet npm python3 git python3-pip curl bash lolcat cowsay
RUN npm install -g figlet-cli
RUN pip3 install asciinema
RUN curl -L https://github.com/xero/figlet-fonts/archive/master.zip -o a.zip
RUN unzip a.zip 
RUN mv figlet-fonts-master/*.flf /usr/share/figlet/
RUN rm -rf figlet-fonts-master
RUN ln -s /usr/games/cowsay /usr/bin/cowsay
RUN ln -s /usr/games/lolcat /usr/bin/lolcat
COPY render.sh /

# rm dev.cast 
# asciinema rec dev.cast -c "./e.sh \"Dev day\""
# asciinema play dev.cast 
