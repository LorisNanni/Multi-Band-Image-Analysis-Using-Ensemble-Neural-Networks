
%% EuroSAT
%remember to normalize the data as detailed in the paper

%for 3-channel input nets:
%3 random channels for each net
clear chosen
[a,b]=sort(rand(13,1));
chosen=b(1:3);
[a,b]=sort(rand(3,1));%random RGB
chosen(1)=b(1)+1;%RGB bands are 2-4
%then you can use the bands stored in chosen for training/testing a net


%for 13-channel input nets:
clear chosen
for randCH=1:13 %13 random channels with replacement
    [a,b]=sort(rand(13,1));
    chosen(randCH)=b(1);
end
[a,b]=sort(rand(3,1));%at least one is RGB
chosen(1)=b(1)+1;%RGB bands are 2-4
%then you can use the bands stored in chosen for training/testing a net




%% LCZ42
%for LCZ we normalize the data in the easy way:
% TRset=uint8(TRset./(2.8/255));
% TEset=uint8(TEset./(2.8/255));

%for 3-channel input nets:
%3 random channels
clear chosen
[a,b]=sort(rand(10,1));
chosen=b(1:3);
[a,b]=sort(rand(3,1));%at least one is RGB
chosen(1)=b(1);
%then you can use the bands stored in chosen for training/testing a net


%for 10-channel input nets:
clear chosen
for randCH=1:10
    [a,b]=sort(rand(10,1));%random with replacement
    chosen(randCH)=b(1);
end
[a,b]=sort(rand(3,1));%at least one is RGB
chosen(1)=b(1);
%then you can use the bands stored in chosen for training/testing a net



%%  Foramnifera

%for 3-channel input nets:
%3 random channels
clear chosen
[a,b]=sort(rand(16,1));
chosen=b(1:3);
%then you can use the bands stored in chosen for training/testing a net


%for 16-channel input nets:
clear chosen
for randCH=1:16
    [a,b]=sort(rand(16,1));
    chosen(randCH)=b(1);
end
%then you can use the bands stored in chosen for training/testing a net

