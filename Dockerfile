FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/XRAJVEER09OP/yurikoxspam.git/root/YurikoXSpam
#working directory
WORKDIR /root/YurikoXSpam

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/YurikoXSpam/bin:$PATH"

CMD ["python3","-m","YurikoXSpam"]
