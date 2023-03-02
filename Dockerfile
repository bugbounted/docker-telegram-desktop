FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    x11vnc \
    xvfb \
    fluxbox \
    wget \
    nano 
    
RUN wget https://telegram.org/dl/desktop/linux -O telegram.tar.xz && tar -xf telegram.tar.xz && rm telegram.tar.xz 
    
EXPOSE 5900 
CMD ["x11vnc", "-forever", "-usepw", "-create"] 
ENTRYPOINT ["/Telegram/Telegram"]
