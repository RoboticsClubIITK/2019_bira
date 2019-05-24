% 
clc;
clear;
close all;
%data_att = zeros(1,256); 
Data=zeros(1,1000);

ComPort='COM4';

TG_BAUD_57600=57600;

TG_STREAM_PACKETS=0;

TG_DATA_RAW = 4;

loadlibrary('thinkgear.dll', 'thinkgear.h');

Dllversion=calllib('thinkgear','TG_GetVersion');

ConnectionId=calllib('thinkgear','TG_GetNewConnectionId');

CommERR=calllib('thinkgear','TG_Connect',ConnectionId,ComPort,TG_BAUD_57600,TG_STREAM_PACKETS);

if CommERR < 0
disp('Communication error,Reset Matlab and Brainsense'); 
end

i=1;
j=1;

while i < 1000

if (calllib('thinkgear','TG_ReadPackets',ConnectionId,1)==1)

% if (calllib('Thinkgear','TG_GetValueStatus',ConnectionId,TG_DATA_RAW)~=0)

Data(j)=calllib('thinkgear','TG_GetValue',ConnectionId,TG_DATA_RAW);
i=i+1;
j=j+1;
plot(Data);
drawnow;

% end
end

end

calllib('thinkgear', 'TG_FreeConnection', ConnectionId );
calllib('thinkgear', 'TG_Disconnect', ConnectionId );