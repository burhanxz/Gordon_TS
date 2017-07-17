function varargout = Target_Strength(varargin)
% TARGET_STRENGTH MATLAB code for Target_Strength.fig
%      TARGET_STRENGTH, by itself, creates a new TARGET_STRENGTH or raises the existing
%      singleton*.
%
%      H = TARGET_STRENGTH returns the handle to a new TARGET_STRENGTH or the handle to
%      the existing singleton*.
%
%      TARGET_STRENGTH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TARGET_STRENGTH.M with the given input arguments.
%
%      TARGET_STRENGTH('Property','Value',...) creates a new TARGET_STRENGTH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Target_Strength_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Target_Strength_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Target_Strength

% Last Modified by GUIDE v2.5 09-Jul-2017 11:12:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Target_Strength_OpeningFcn, ...
                   'gui_OutputFcn',  @Target_Strength_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Target_Strength is made visible.
function Target_Strength_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Target_Strength (see VARARGIN)

% Choose default command line output for Target_Strength
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Target_Strength wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Target_Strength_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



%done
function edit1_Callback(hObject, eventdata, handles)                                              
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double

%[fileName,pathName]=uigetfile('*.m','选择文件');
%fileNameTotal=strcat(pathName,fileName);
%set(handles.edit1,'string',fileNameTotal);

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%done
% --- Executes on button press in b1.
function b1_Callback(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fileName,pathName]=uigetfile('*.inp','选择文件');
str=strcat(pathName,fileName);
obj_edit1=findobj('Tag','edit1');
set(obj_edit1,'String',str);
fprintf('b1\n');


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in b2.
function b2_Callback(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
obj_radiobutton1=findobj('Tag','radiobutton1');
obj_radiobutton2=findobj('Tag','radiobutton2');
obj_radiobutton3=findobj('Tag','radiobutton3');
obj_radiobutton4=findobj('Tag','radiobutton4');
obj_text_coordinate=findobj('Tag','text_coordinate');
obj_text_frequency=findobj('Tag','text_frequency');
obj_text_angle=findobj('Tag','text_angle');
obj_text_TS_value=findobj('Tag','text_TS_value');
obj_edit1=findobj('Tag','edit1');
obj_edit2=findobj('Tag','edit2');
obj_edit3=findobj('Tag','edit3');
obj_edit4=findobj('Tag','edit4');
obj_edit5=findobj('Tag','edit5');
obj_edit6=findobj('Tag','edit6');
obj_edit7=findobj('Tag','edit7');
obj_edit8=findobj('Tag','edit8');
obj_text_fre_fre=findobj('Tag','text_fre_fre');
obj_text_angle_angle=findobj('Tag','text_angle_angle');
obj_axes1=findobj('Tag','axes1');
obj_edit_fre_h=findobj('Tag','edit_fre_h');
obj_edit_angle_h=findobj('Tag','edit_angle_h');
obj_text_state=findobj('Tag','text_state');
obj_radiobutton_x=findobj('Tag','radiobutton_x');
obj_radiobutton_y=findobj('Tag','radiobutton_y');
obj_radiobutton_z=findobj('Tag','radiobutton_z');
obj_text_direction=findobj('Tag','text_direction');
obj_edit_x=findobj('Tag','edit_x');
obj_edit_y=findobj('Tag','edit_y');
obj_edit_z=findobj('Tag','edit_z');
obj_text_center=findobj('Tag','text_center');

str=get(obj_edit1,'String');
A=StrToMx(str); %将文件名转为成矩阵形式，便于C++程序读取
fprintf('正在转换inp文件...\n');
set(obj_text_state,'String','正在转换inp文件...');
InpToTxt(A); %调用C++程序将inp文件转化为有效文件
fprintf('转换完毕...\n');
set(obj_text_state,'String','转换完毕...');
L=length(str);
pos=0;
for i=L:-1:1
    if str(i) == '\'
        pos=i;
        break;
    end
end
matrixStr=strcat(str(1:pos),'matrix_of_element.txt');%得到可用的矩阵文件的文件名
xx=str2num(get(obj_edit2,'String'));
yy=str2num(get(obj_edit3,'String'));
zz=str2num(get(obj_edit4,'String'));
W=[xx,yy,zz];

global TS_model;
global Direction_model;
if TS_model==1
    x=str2num(get(obj_edit5,'String'));
    fprintf('x=%f\n',x);
    fprintf('正在计算...\n');
    set(obj_text_state,'String','正在计算...');
    y=solveTS_Gordon(x.*2.*pi./1450,matrixStr,W);
    fprintf('计算完毕...\n');
    set(obj_text_state,'String','计算完毕...');
    text_out=strcat(num2str(y),'dB');
    set(obj_text_TS_value,'String',text_out);
    return;
end
if TS_model==2
    a=str2num(get(obj_edit5,'String'));
    b=str2num(get(obj_edit6,'String'));
    h=str2num(get(obj_edit_fre_h,'String'));
    x=a:h:b;
    fprintf('正在计算...\n');
    set(obj_text_state,'String','正在计算...');
    y=solveTS_Gordon(x.*2.*pi./1450,matrixStr,W);
    fprintf('计算完毕...\n');
    set(obj_text_state,'String','计算完毕');
    set(obj_text_TS_value,'String','见下图');
    fprintf('obj=%f\n\n',obj_axes1);
    disp(obj_axes1);
    grid on
    h1=plot(obj_axes1,x,y);
    return;
end
if TS_model==3
    c=str2num(get(obj_edit7,'String'));
    d=str2num(get(obj_edit8,'String'));
    h=str2num(get(obj_edit_angle_h,'String'));
    x=str2num(get(obj_edit5,'String'));
    xxx=str2num(get(obj_edit_x,'String'));
    yyy=str2num(get(obj_edit_y,'String'));
    zzz=str2num(get(obj_edit_z,'String'));
    dist=sqrt((xx-xxx)^2+(yyy-yy)^2+(zzz-zz)^2);
    if Direction_model==1
        fprintf('开始计算...\n');
        fi=fopen('D:\dataStorage.txt','wt');
        for a=c:h:d
            W=[xx,yyy+dist*cosd(a),zzz+dist*sind(a)];
            z=solveTS_Gordon(x.*2.*pi./1450,matrixStr,W);
            fprintf(fi,'%f\n',z);
        end
        fclose(fi);
        y=c:h:d;
        IN=load('D:\dataStorage.txt');
        grid on
        plot(obj_axes1,y,IN);
        delete('D:\dataStorage.txt');
        fprintf('计算完毕\n');
        set(obj_text_state,'String','计算完毕');
        return;
    end
    if Direction_model==2
         fprintf('开始计算...\n');
        fi=fopen('D:\dataStorage.txt','wt');
        for a=c:h:d
            W=[xxx+dist*cosd(a),yy,zzz+dist*sind(a)];
            z=solveTS_Gordon(x.*2.*pi./1450,matrixStr,W);
            fprintf(fi,'%f\n',z);
        end
        fclose(fi);
        y=c:h:d;
        IN=load('D:\dataStorage.txt');
        grid on
        plot(obj_axes1,y,IN);
        delete('D:\dataStorage.txt');
        fprintf('计算完毕\n');
        set(obj_text_state,'String','计算完毕');
        return;
    end
    if Direction_model==3
         fprintf('开始计算...\n');
        fi=fopen('D:\dataStorage.txt','wt');
        for a=c:h:d
            W=[xxx+dist*cosd(a),yyy+dist*sind(a),zz];
            z=solveTS_Gordon(x.*2.*pi./1450,matrixStr,W);
            fprintf(fi,'%f\n',z);
        end
        fclose(fi);
        y=c:h:d;
        IN=load('D:\dataStorage.txt');
        grid on
        plot(obj_axes1,y,IN);
        delete('D:\dataStorage.txt');
        fprintf('计算完毕\n');
        set(obj_text_state,'String','计算完毕');
        return;
    end
end
if TS_model==4
    a=str2num(get(obj_edit5,'String'));
    b=str2num(get(obj_edit6,'String'));
    h1=str2num(get(obj_edit_fre_h,'String'));
    c=str2num(get(obj_edit7,'String'));
    d=str2num(get(obj_edit8,'String'));
    h2=str2num(get(obj_edit_angle_h,'String'));
    xxx=str2num(get(obj_edit_x,'String'));
    yyy=str2num(get(obj_edit_y,'String'));
    zzz=str2num(get(obj_edit_z,'String'));
    dist=sqrt((xx-xxx)^2+(yyy-yy)^2+(zzz-zz)^2);
    fprintf('开始计算...\n');
    fi=fopen('D:\dataStorage.txt','wt');
    x=a:h1:b;
    y=c:h2:d;
    if Direction_model==1
        for angle=c:h2:d
            W=[xx,yyy+dist*cosd(angle),zzz+dist*sind(angle)];
            z=solveTS_Gordon(x.*2.*pi./1450,matrixStr,W);
            len=size(z,2);
            for i=1:1:len
                 fprintf(fi,'%f\n',z(i));
            end
        end
    end
    if Direction_model==2
        for angle=c:h2:d
            W=[xxx+dist*cosd(angle),yy,zzz+dist*sind(angle)];
            z=solveTS_Gordon(x.*2.*pi./1450,matrixStr,W);
            len=size(z,2);
            for i=1:1:len
                 fprintf(fi,'%f\n',z(i));
            end
        end
    end
    if Direction_model==3
        for angle=c:h2:d
            W=[xxx+dist*cosd(angle),yyy+dist*sind(angle),zz];
            z=solveTS_Gordon(x.*2.*pi./1450,matrixStr,W);
            len=size(z,2);
            for i=1:1:len
                 fprintf(fi,'%f\n',z(i));
            end
        end
    end
    IN=load('D:\dataStorage.txt');
    M=(b-a)/h1+1;
    N=(d-c)/h2+1;
    fprintf('M=%f\nN=%f\n',M,N);
    fprintf('a,b,h1,c,d,h2:\n');
    fprintf('%f %f %f %f %f %f\n',a,b,h1,c,d,h2);
    z_TS=ones(N,M);
    for m=1:1:M
        for n=1:1:N
            z_TS(n,m)=IN(N*(m-1)+mod(n,(N+1)),1);
        end
    end
    contourf(x,y,z_TS)
    fclose(fi);
    delete('D:\dataStorage.txt');
    fprintf('计算完毕\n');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%完善这里！！！！！！！！！！

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
global TS_model;
TS_model=1;

obj_radiobutton1=findobj('Tag','radiobutton1');
obj_radiobutton2=findobj('Tag','radiobutton2');
obj_radiobutton3=findobj('Tag','radiobutton3');
obj_radiobutton4=findobj('Tag','radiobutton4');
obj_text_frequency=findobj('Tag','text_frequency');
obj_text_angle=findobj('Tag','text_angle');
obj_edit5=findobj('Tag','edit5');
obj_edit6=findobj('Tag','edit6');
obj_edit7=findobj('Tag','edit7');
obj_edit8=findobj('Tag','edit8');
obj_text_fre_fre=findobj('Tag','text_fre_fre');
obj_text_angle_angle=findobj('Tag','text_angle_angle');
obj_edit_fre_h=findobj('Tag','edit_fre_h');
obj_edit_angle_h=findobj('Tag','edit_angle_h');
obj_text_direction=findobj('Tag','text_direction');
obj_radiobutton_x=findobj('Tag','radiobutton_x');
obj_radiobutton_y=findobj('Tag','radiobutton_y');
obj_radiobutton_z=findobj('Tag','radiobutton_z');
obj_edit_x=findobj('Tag','edit_x');
obj_edit_y=findobj('Tag','edit_y');
obj_edit_z=findobj('Tag','edit_z');
obj_text_center=findobj('Tag','text_center');

set(obj_radiobutton1,'Value',1);
set(obj_radiobutton2,'Value',0);
set(obj_radiobutton3,'Value',0);
set(obj_radiobutton4,'Value',0);
set(obj_text_frequency,'Visible','on');
set(obj_text_angle,'Visible','off');
set(obj_edit5,'Visible','on');
set(obj_edit6,'Visible','off');
set(obj_edit7,'Visible','off');
set(obj_edit8,'Visible','off');
set(obj_text_fre_fre,'Visible','off');
set(obj_text_angle_angle,'Visible','off');
set(obj_edit_fre_h,'Visible','off');
set(obj_edit_angle_h,'Visible','off');
set(obj_text_direction,'Visible','off');
set(obj_radiobutton_x,'Visible','off');
set(obj_radiobutton_y,'Visible','off');
set(obj_radiobutton_z,'Visible','off');
set(obj_edit_x,'Visible','off');
set(obj_edit_y,'Visible','off');
set(obj_edit_z,'Visible','off');
set(obj_text_center,'Visible','off');

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
global TS_model;
TS_model=2;
obj_radiobutton1=findobj('Tag','radiobutton1');
obj_radiobutton2=findobj('Tag','radiobutton2');
obj_radiobutton3=findobj('Tag','radiobutton3');
obj_radiobutton4=findobj('Tag','radiobutton4');
obj_text_frequency=findobj('Tag','text_frequency');
obj_text_angle=findobj('Tag','text_angle');
obj_edit5=findobj('Tag','edit5');
obj_edit6=findobj('Tag','edit6');
obj_edit7=findobj('Tag','edit7');
obj_edit8=findobj('Tag','edit8');
obj_text_fre_fre=findobj('Tag','text_fre_fre');
obj_text_angle_angle=findobj('Tag','text_angle_angle');
obj_edit_fre_h=findobj('Tag','edit_fre_h');
obj_edit_angle_h=findobj('Tag','edit_angle_h');
obj_text_direction=findobj('Tag','text_direction');
obj_radiobutton_x=findobj('Tag','radiobutton_x');
obj_radiobutton_y=findobj('Tag','radiobutton_y');
obj_radiobutton_z=findobj('Tag','radiobutton_z');
obj_edit_x=findobj('Tag','edit_x');
obj_edit_y=findobj('Tag','edit_y');
obj_edit_z=findobj('Tag','edit_z');
obj_text_center=findobj('Tag','text_center');

set(obj_radiobutton1,'Value',0);
set(obj_radiobutton2,'Value',1);
set(obj_radiobutton3,'Value',0);
set(obj_radiobutton4,'Value',0);
set(obj_text_frequency,'Visible','on');
set(obj_text_angle,'Visible','off');
set(obj_edit5,'Visible','on');
set(obj_edit6,'Visible','on');
set(obj_edit7,'Visible','off');
set(obj_edit8,'Visible','off');
set(obj_text_fre_fre,'Visible','on');
set(obj_text_angle_angle,'Visible','off');
set(obj_edit_fre_h,'Visible','on');
set(obj_edit_angle_h,'Visible','off');
set(obj_text_direction,'Visible','off');
set(obj_radiobutton_x,'Visible','off');
set(obj_radiobutton_y,'Visible','off');
set(obj_radiobutton_z,'Visible','off');
set(obj_edit_x,'Visible','off');
set(obj_edit_y,'Visible','off');
set(obj_edit_z,'Visible','off');
set(obj_edit_x,'Visible','off');
set(obj_edit_y,'Visible','off');
set(obj_edit_z,'Visible','off');
set(obj_text_center,'Visible','off');

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
global TS_model;
TS_model=3;
obj_radiobutton1=findobj('Tag','radiobutton1');
obj_radiobutton2=findobj('Tag','radiobutton2');
obj_radiobutton3=findobj('Tag','radiobutton3');
obj_radiobutton4=findobj('Tag','radiobutton4');
obj_text_frequency=findobj('Tag','text_frequency');
obj_text_angle=findobj('Tag','text_angle');
obj_edit5=findobj('Tag','edit5');
obj_edit6=findobj('Tag','edit6');
obj_edit7=findobj('Tag','edit7');
obj_edit8=findobj('Tag','edit8');
obj_text_fre_fre=findobj('Tag','text_fre_fre');
obj_text_angle_angle=findobj('Tag','text_angle_angle');
obj_edit_fre_h=findobj('Tag','edit_fre_h');
obj_edit_angle_h=findobj('Tag','edit_angle_h');
obj_text_direction=findobj('Tag','text_direction');
obj_radiobutton_x=findobj('Tag','radiobutton_x');
obj_radiobutton_y=findobj('Tag','radiobutton_y');
obj_radiobutton_z=findobj('Tag','radiobutton_z');
obj_edit_x=findobj('Tag','edit_x');
obj_edit_y=findobj('Tag','edit_y');
obj_edit_z=findobj('Tag','edit_z');
obj_text_center=findobj('Tag','text_center');

set(obj_radiobutton1,'Value',0);
set(obj_radiobutton2,'Value',0);
set(obj_radiobutton3,'Value',1);
set(obj_radiobutton4,'Value',0);
set(obj_text_frequency,'Visible','on');
set(obj_text_angle,'Visible','on');
set(obj_edit5,'Visible','on');
set(obj_edit6,'Visible','off');
set(obj_edit7,'Visible','on');
set(obj_edit8,'Visible','on');
set(obj_text_fre_fre,'Visible','off');
set(obj_text_angle_angle,'Visible','on');
set(obj_edit_fre_h,'Visible','off');
set(obj_edit_angle_h,'Visible','on');
set(obj_text_direction,'Visible','on');
set(obj_radiobutton_x,'Visible','on');
set(obj_radiobutton_y,'Visible','on');
set(obj_radiobutton_z,'Visible','on');
set(obj_edit_x,'Visible','on');
set(obj_edit_y,'Visible','on');
set(obj_edit_z,'Visible','on');
set(obj_text_center,'Visible','on');

% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
global TS_model;
TS_model=4;
obj_radiobutton1=findobj('Tag','radiobutton1');
obj_radiobutton2=findobj('Tag','radiobutton2');
obj_radiobutton3=findobj('Tag','radiobutton3');
obj_radiobutton4=findobj('Tag','radiobutton4');
obj_text_frequency=findobj('Tag','text_frequency');
obj_text_angle=findobj('Tag','text_angle');
obj_edit5=findobj('Tag','edit5');
obj_edit6=findobj('Tag','edit6');
obj_edit7=findobj('Tag','edit7');
obj_edit8=findobj('Tag','edit8');
obj_text_fre_fre=findobj('Tag','text_fre_fre');
obj_text_angle_angle=findobj('Tag','text_angle_angle');
obj_edit_fre_h=findobj('Tag','edit_fre_h');
obj_edit_angle_h=findobj('Tag','edit_angle_h');
obj_text_direction=findobj('Tag','text_direction');
obj_radiobutton_x=findobj('Tag','radiobutton_x');
obj_radiobutton_y=findobj('Tag','radiobutton_y');
obj_radiobutton_z=findobj('Tag','radiobutton_z');
obj_edit_x=findobj('Tag','edit_x');
obj_edit_y=findobj('Tag','edit_y');
obj_edit_z=findobj('Tag','edit_z');
obj_text_center=findobj('Tag','text_center');

set(obj_radiobutton1,'Value',0);
set(obj_radiobutton2,'Value',0);
set(obj_radiobutton3,'Value',0);
set(obj_radiobutton4,'Value',1);
set(obj_text_frequency,'Visible','on');
set(obj_text_angle,'Visible','on');
set(obj_edit5,'Visible','on');
set(obj_edit6,'Visible','on');
set(obj_edit7,'Visible','on');
set(obj_edit8,'Visible','on');
set(obj_text_fre_fre,'Visible','on');
set(obj_text_angle_angle,'Visible','on');
set(obj_edit_fre_h,'Visible','on');
set(obj_edit_angle_h,'Visible','on');
set(obj_text_direction,'Visible','on');
set(obj_radiobutton_x,'Visible','on');
set(obj_radiobutton_y,'Visible','on');
set(obj_radiobutton_z,'Visible','on');
set(obj_edit_x,'Visible','on');
set(obj_edit_y,'Visible','on');
set(obj_edit_z,'Visible','on');
set(obj_text_center,'Visible','on');

function edit_fre_h_Callback(hObject, eventdata, handles)
% hObject    handle to edit_fre_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_fre_h as text
%        str2double(get(hObject,'String')) returns contents of edit_fre_h as a double


% --- Executes during object creation, after setting all properties.
function edit_fre_h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_fre_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_angle_h_Callback(hObject, eventdata, handles)
% hObject    handle to edit_angle_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_angle_h as text
%        str2double(get(hObject,'String')) returns contents of edit_angle_h as a double


% --- Executes during object creation, after setting all properties.
function edit_angle_h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_angle_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton_x.
function radiobutton_x_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_x
obj_radiobutton_x=findobj('Tag','radiobutton_x');
obj_radiobutton_y=findobj('Tag','radiobutton_y');
obj_radiobutton_z=findobj('Tag','radiobutton_z');

global Direction_model;
Direction_model=1;
set(obj_radiobutton_x,'Value',1);
set(obj_radiobutton_y,'Value',0);
set(obj_radiobutton_z,'Value',0);

% --- Executes on button press in radiobutton_y.
function radiobutton_y_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_y
obj_radiobutton_x=findobj('Tag','radiobutton_x');
obj_radiobutton_y=findobj('Tag','radiobutton_y');
obj_radiobutton_z=findobj('Tag','radiobutton_z');

global Direction_model;
Direction_model=2;
set(obj_radiobutton_x,'Value',0);
set(obj_radiobutton_y,'Value',1);
set(obj_radiobutton_z,'Value',0);

% --- Executes on button press in radiobutton_z.
function radiobutton_z_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_z
obj_radiobutton_x=findobj('Tag','radiobutton_x');
obj_radiobutton_y=findobj('Tag','radiobutton_y');
obj_radiobutton_z=findobj('Tag','radiobutton_z');

global Direction_model;
Direction_model=3;
set(obj_radiobutton_x,'Value',0);
set(obj_radiobutton_y,'Value',0);
set(obj_radiobutton_z,'Value',1);



function edit_x_Callback(hObject, eventdata, handles)
% hObject    handle to edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_x as text
%        str2double(get(hObject,'String')) returns contents of edit_x as a double


% --- Executes during object creation, after setting all properties.
function edit_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_y_Callback(hObject, eventdata, handles)
% hObject    handle to edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_y as text
%        str2double(get(hObject,'String')) returns contents of edit_y as a double


% --- Executes during object creation, after setting all properties.
function edit_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_z_Callback(hObject, eventdata, handles)
% hObject    handle to edit_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_z as text
%        str2double(get(hObject,'String')) returns contents of edit_z as a double


% --- Executes during object creation, after setting all properties.
function edit_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
