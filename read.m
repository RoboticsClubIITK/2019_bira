X = -7.5;
Y = 0;
Z = 2;
%hc = serial('COM11','BaudRate', 9600)
%fopen(hc)

file = fopen("D:\project\sdk\EEG_Algo_SDK_Windows\Algo SDK Sample\Algo SDK Sample\abc.txt", 'r');
formatSpec = '%d';
str = strings([10000]);
for i = 1:10000
    str(i) = fgetl(file);
    if(str(i)~="-1")  
        fprintf(str(i));
        if(str2double(str(i))==1)
            X = X+3;
            [a,b,c]= invkin(X,Y,Z);
            if((a<=180 && a>=0)&&(b>=80 && b<=200)&&(c>=0 && c<=60))
                str1 = num2str(a);
                str2 = num2str(b);
                str3 = num2str(c);
                str0 = strcat(str1, " ", str2, " ", str3, "\0")
                fprintf(hc, '%s', str0);
            else
                fprintf("Angles are out of bound.\n")
                X=X-3;
            end
        end
        
        if(str2double(str(i))==2)
            Y = Y+3;
            [a,b,c] = invkin(X,Y,Z);
            if((a<=180 && a>=0)&&(b>=80 && b<=200)&&(c>=0 && c<=60))
                str1 = num2str(a);
                str2 = num2str(b);
                str3 = num2str(c);
                str0 = strcat(str1, " ", str2, " ", str3, "\0")
                fprintf(hc, '%s', str0);
            else
                fprintf("Angles are out of bound.\n")
                Y=Y-3;
            end
        end
        
        if(str2double(str(i))==3)
            Z= Z+3;
            [a,b,c] = invkin(X,Y,Z);
            if((a<=180 && a>=0)&&(b>=80 && b<=200)&&(c>=0 && c<=60))
                str1 = num2str(a);
                str2 = num2str(b);
                str3 = num2str(c);
                str0 = strcat(str1, " ", str2, " ", str3, "\0")
                fprintf(hc, '%s', str0);
            else
                fprintf("Angles are out of bound.\n")
                Z=Z-3;
            end
        end
        
        if(str2double(str(i))==4)
            X= X-3;
            [a,b,c] = invkin(X,Y,Z);
            if((a<=180 && a>=0)&&(b>=80 && b<=200)&&(c>=0 && c<=60))
                str1 = num2str(a);
                str2 = num2str(b);
                str3 = num2str(c);
                str0 = strcat(str1, " ", str2, " ", str3, "\0")
                fprintf(hc, '%s', str0);
            else
                fprintf("Angles are out of bound.\n")
                X=X+3;
            end
        end
        
        if(str2double(str(i))==5)
            Y = Y-3;
            [a,b,c] = invkin(X,Y,Z);
            if((a<=180 && a>=0)&&(b>=80 && b<=200)&&(c>=0 && c<=60))
                str1 = num2str(a);
                str2 = num2str(b);
                str3 = num2str(c);
                str0 = strcat(str1, " ", str2, " ", str3, "\0")
                fprintf(hc, '%s', str0);
            else
                fprintf("Angles are out of bound.\n")
                Y=Y+3;
            end
        end
        
        if(str2double(str(i))==6)
            Z=Z-3;
            [a,b,c] = invkin(X,Y,Z);
            if((a<=180 && a>=0)&&(b>=80 && b<=200)&&(c>=0 && c<=60))
                str1 = num2str(a);
                str2 = num2str(b);
                str3 = num2str(c);
                str0 = strcat(str1, " ", str2, " ", str3, "\0")
                fprintf(hc, '%s', str0);
            else
                fprintf("Angles are out of bound.\n")
                Z=Z+3;
            end
        end 
        if(str2double(str(i))==0)
            fprintf(hc, '%s', "0 0 0");
        end
    end 
    pause(2);
end


function [t,alpha,beta]=invkin(x,y,z)
    t=atan(-y/x);
    if(y<0 && x<0)
        t=abs(t)+pi/2;
    end
    if(y>0 && x<0)
        t=abs(t)+3*pi/2;
    end
    if(y==0 && x<0)
        t=pi;
    end
    if(y==0 && x>0)
        t=0;
    end
    if(x==0 && y<0)
        t=pi/2
    end
    if(x==0 && y>0)
        t=3*pi/2;
    end
    d=x/(cos(t));
    alpha=0.5*acos((d*d+z*z)/450 - 1) + atan(z/d);
    beta=0.5*acos((d*d+z*z)/450 - 1) - atan(z/d);
    t = t*180/pi;
    alpha = alpha*180/pi;
    beta = beta*180/pi;
    t=t-90;
    alpha=alpha+80;
end