clear all
A=textread('source_image1.txt');
B=textread('data_out.txt');
for i=1:53376
    strr=num2str(B(i,1));
    B(i,1)=bin2dec(strr);
end



for i=1:53376
    strr=num2str(A(i,1));
    A(i,1)=bin2dec(strr);
end
dif=zeros(640000,1);
 
k=0;

for i=1:40000
    dif(i,1)=A(i,1)-B(i,1);
    if(dif(i,1)==0)
        k=k+1;
        e5(k,1)=dif(i,1);
        e5(k,2)=i;
    end;
end
k=0;
for i=1:40000
    dif10(i,1)=A(i,1)-B(i,1);
    if(dif10(i,1)>10||dif10(i,1)<-10)
        k=k+1;
        e10(k,1)=dif10(i,1);
        e10(k,2)=i;
    end;
end



