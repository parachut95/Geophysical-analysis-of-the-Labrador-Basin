
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% finale strength per column
load ../Output/final_strength_plotx_YSE_1.xy;
load ../Output/final_strength_plotx_YSE_2.xy;
load ../Output/final_strength_plotx_YSE_3.xy;
% finale strength per column
sigma_YSE_1=final_strength_plotx_YSE_1(:,2);
sigma_YSE_2=final_strength_plotx_YSE_2(:,2);
sigma_YSE_3=final_strength_plotx_YSE_3(:,2);
z=final_strength_plotx_YSE_1(:,1);

%  figure('Name','finale strength','NumberTitle','off');
% plot(final_strength_plot10,'.');
% plot(final_strength_plot25,'+');
% plot(final_strength_plot40,'*');
% 
% plot(sigma10,z,'--');
% hold on;
%  plot(sigma25,z,'--');
% plot(sigma40,z,'-');
% hold off;

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % elastic strength
% load ../Output/elastic_Strength10.xyz;
% load ../Output/elastic_Strength25.xyz;
% load ../Output/elastic_Strength40.xyz;
% % elastic strength
% sigmae10=elastic_Strength10(:,2);
% sigmae25=elastic_Strength25(:,2);
% sigmae40=elastic_Strength40(:,2);
% 
% z=elastic_Strength10(:,1);
% 
% figure('Name','elastic strength','NumberTitle','off');
% plot(sigmae10,z,'--');
% hold on;
% plot(sigmae25,z,'.');
% plot(sigmae40,z,'-');
% hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YSE
% _YSE_1
load ../Output/diff_stress_plot_YSE_1.xy;
% _YSE_2
load ../Output/diff_stress_plot_YSE_2.xy;
%_YSE_3
load ../Output/diff_stress_plot_YSE_3.xy;
% YSE
s_ext1=diff_stress_plot_YSE_1(:,6);
s_comp1=diff_stress_plot_YSE_1(:,7);
t_1=diff_stress_plot_YSE_1(:,8);
s_ext2=diff_stress_plot_YSE_2(:,6);
s_comp2=diff_stress_plot_YSE_2(:,7);
t_2=diff_stress_plot_YSE_2(:,8);
s_ext3=diff_stress_plot_YSE_3(:,6);
s_comp3=diff_stress_plot_YSE_3(:,7);
t_3=diff_stress_plot_YSE_3(:,8);
zyse1=diff_stress_plot_YSE_1(:,1);
zyse2=diff_stress_plot_YSE_2(:,1);
zyse3=diff_stress_plot_YSE_3(:,1);

%  figure('Name','YSE and Temperature','NumberTitle','off');
figure;
 subplot(1,2,1)
 plot(s_ext1,zyse1,'b--');
 hold on;
 plot(s_comp1,zyse1,'r--');
 
 plot(s_ext2,zyse2,'y');
 plot(s_comp2,zyse2,'g');
  
 plot(s_ext3,zyse3,'b');
 plot(s_comp3,zyse3,'r');
 hold off;
 title('yse')
 legend('YSE 1','YSE 1', 'YSE 2', 'YSE 2','YSE 3','YSE 3')
 
 subplot(1,2,2)
 plot(t_1,zyse1,'--');
 hold on;
 plot(t_2,zyse2,'g'); 
 plot(t_3,zyse3,'');
 hold off;
 title('Temperature')
 legend('YSE 1', 'YSE 2', 'YSE 3')


figure
subplot(2,3,1)
plot(s_ext1,zyse1,'b-')
hold on;
plot(s_comp1,zyse1,'r-')
hold off
title('YSE_1')

subplot(2,3,2)
plot(s_ext2,zyse2,'b-')
hold on;
plot(s_comp2,zyse2,'r-')
hold off
title('YSE_2')

subplot(2,3,3)
plot(s_ext3,zyse3,'b-')
hold on;
plot(s_comp3,zyse3,'r-')
hold off
title('_YSE_3')

subplot(2,3,4)
plot(sigma_YSE_1,z,'-')
title('final strength YSE_1')

subplot(2,3,5)
plot(sigma_YSE_2,z,'-')
title('final strength YSE_2')

subplot(2,3,6)
plot(sigma_YSE_3,z,'-')
title('final strength YSE_3')

% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Rigidity
% load ../Output/rigidity.xy
% %Rigidity
% lat=rigidity(:,1);
% long=rigidity(:,2);
% D=rigidity(:,3);
% latr = reshape(lat,61,[]);
% longr = reshape(long,61,[]);
% Dr = reshape(D,61,[]);
% 
% cmap = colormap(jet);
% index = 10e23;
% 
% % figure('Name','rigidity','NumberTitle','off');
% % surface(latr,longr,Dr); 
% % % tri = delaunay(lat(:),long(:));
% % % trisurf(tri,lat(:),long(:),D(:));
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Rigidity x
% load ../Output/rigidity_x.xy
% %Rigidityx 
% latx=rigidity_x(:,1);
% longx=rigidity_x(:,2);
% Dx=rigidity_x(:,3);
% latxr = reshape(latx,61,[]);
% longxr = reshape(longx,61,[]);
% Dxr = reshape(Dx,61,[]);
% 
% index = 10e23;
% 
% figure('Name','rigidity x','NumberTitle','off');
% surface(latxr,longxr,Dxr); 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Rigidity y
% load ../Output/rigidity_y.xy
% %Rigidityy 
% laty=rigidity_y(:,1);
% longy=rigidity_y(:,2);
% Dy=rigidity_y(:,3);
% latyr = reshape(laty,61,[]);
% longyr = reshape(longy,61,[]);
% Dyr = reshape(Dy,61,[]);
% 
% index = 10e23;
% 
% figure('Name','rigidity y','NumberTitle','off');
% surface(latyr,longyr,Dyr); 
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Rigidity xy
% load ../Output/rigidity_xy.xy
% %Rigidityxy 
% latxy=rigidity_xy(:,1);
% longxy=rigidity_xy(:,2);
% Dxy=rigidity_xy(:,3);
% latxyr = reshape(latxy,61,[]);
% longxyr = reshape(longxy,61,[]);
% Dxyr = reshape(Dxy,61,[]);
% 
% index = 10e23;
% 
% figure('Name','rigidity xy','NumberTitle','off');
% surface(latxyr,longxyr,Dxyr); 
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Rigidity MxMy
% load ../Output/rigidity_MxMy.xy
% %Rigidityxy 
% latMxMy=rigidity_MxMy(:,1);
% longMxMy=rigidity_MxMy(:,2);
% DMxMy=rigidity_MxMy(:,3);
% latMxMyr = reshape(latMxMy,61,[]);
% longMxMyr = reshape(longMxMy,61,[]);
% DMxMyr = reshape(DMxMy,61,[]);
% 
% index = 10e23;
% 
% figure('Name','rigidity MxMy','NumberTitle','off');
% surface(latMxMyr,longMxMyr,DMxMyr); 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Te
load ../Output/Te_column_MxMy.xy
%Te
latTeM=Te_column_MxMy(:,1);
longTeM=Te_column_MxMy(:,2);
TeM=Te_column_MxMy(:,3);
latTeMr = reshape(latTeM,45,[]);
longTeMr = reshape(longTeM,45,[]);
TeMr = reshape(TeM,45,[]);

% figure('Name','Te M','NumberTitle','off');
% surface(latTeMr,longTeMr,TeMr); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Te_litmod
load ../Te_litmod.xyz
%Te
latTeL=Te_litmod(:,1);
longTeL=Te_litmod(:,2);
TeL=Te_litmod(:,3);
latTeLr = reshape(latTeL,45,[]);
longTeLr = reshape(longTeL,45,[]);
TeLr = reshape(TeL,45,[]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Te_final
load ../Output/Te_final.xy
%Te_final
latTe_final=Te_final(:,1);
longTe_final=Te_final(:,2);
longTe_final=Te_final(1,2)-longTe_final;
Te_final=Te_final(:,3);
% yp=P_400_c(1,2)-yp;
latTefr = reshape(latTe_final,45,[]);
longTefr = reshape(longTe_final,45,[]);
Tefr = reshape(Te_final,45,[]);

%Plot profile along data
x_int = [1,45];
y_int = [22,22];
prof_Te_fin = improfile(Tefr,y_int,x_int);
figure;
plot(prof_Te_fin);

% figure('Name','Te_final','NumberTitle','off');
% surface(latTefr,longTefr,Tefr); 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%curvature x
load ../Output/curvature_x.xyz
%curvature
latw2x=curvature_x(:,1);
longw2x=curvature_x(:,2);
w2x=curvature_x(:,3)*1E+7;
latw2xr = reshape(latw2x,45,[]);
longw2xr = reshape(longw2x,45,[]);
w2xr = reshape(w2x,45,[]);
% figure('Name','curvature x','NumberTitle','off');
% surface(latw2xr,longw2xr,w2xr); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%curvature y
load ../Output/curvature_y.xyz
%curvature
latw2y=curvature_y(:,1);
longw2y=curvature_y(:,2);
w2y=curvature_y(:,3)*1E+7;
latw2yr = reshape(latw2y,45,[]);
longw2yr = reshape(longw2y,45,[]);
w2yr = reshape(w2y,45,[]);
% figure('Name','curvature y','NumberTitle','off');
% surface(latw2yr,longw2yr,w2yr); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%curvature xy
load ../Output/curvature_xy.xyz
%curvature
latw2xy=curvature_xy(:,1);
longw2xy=curvature_xy(:,2);
w2xy=curvature_xy(:,3)*1E+7;
latw2xyr = reshape(latw2xy,45,[]);
longw2xyr = reshape(longw2xy,45,[]);
w2xyr = reshape(w2xy,45,[]);
% figure('Name','curvature xy','NumberTitle','off');
% surface(latw2xyr,longw2xyr,w2xyr); 

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %curvature smooth
% load ../Output/curvature_smooth.xyz
% %curvature
% latw2_smooth=curvature_smooth(:,1);
% longw2_smooth=curvature_smooth(:,2);
% w2_smooth=curvature_smooth(:,3)*1E+7;
% latw2r_smooth = reshape(latw2_smooth,61,[]);
% longw2r_smooth = reshape(longw2_smooth,61,[]);
% w2r_smooth = reshape(w2_smooth,61,[]);
% figure('Name','curvature_smooth','NumberTitle','off');
% surface(latw2r_smooth,longw2r_smooth,w2r_smooth); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Moment
load ../Output/bending_moment_x.xy
%M
latMx=bending_moment_x(:,1);
longMx=bending_moment_x(:,2);
Mx=bending_moment_x(:,3);
latMxr = reshape(latMx,45,[]);
longMxr = reshape(longMx,45,[]);
Mxr = reshape(Mx,45,[]);

% figure('Name','Mx','NumberTitle','off');
% surface(latMxr,longMxr,Mxr); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Moment y
load ../Output/bending_moment_y.xy
%My
latMy=bending_moment_y(:,1);
longMy=bending_moment_y(:,2);
My=bending_moment_y(:,3);
latMyr = reshape(latMy,45,[]);
longMyr = reshape(longMy,45,[]);
Myr = reshape(My,45,[]);

% figure('Name','My','NumberTitle','off');
% surface(latMyr,longMyr,Myr); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Moment xy
load ../Output/bending_moment_xy.xy
%Mxy
latMxy=bending_moment_xy(:,1);
longMxy=bending_moment_xy(:,2);
Mxy=bending_moment_xy(:,3);
latMxyr = reshape(latMxy,45,[]);
longMxyr = reshape(longMxy,45,[]);
Mxyr = reshape(Mxy,45,[]);

% figure('Name','Mxy','NumberTitle','off');
% surface(latMxyr,longMxyr,Mxyr); 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %layer
% load ../layers_xy/layer3.xyz
% %layer
% lat3=layer3(:,1);
% long3=layer3(:,2);
% l3=layer3(:,3);
% lat3r = reshape(lat3,61,[]);
% long3r = reshape(long3,61,[]);
% l3r = reshape(l3,61,[]);
% 
% figure('Name','layer3','NumberTitle','off');
% surface(lat3r,long3r,l3r); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Te_YSE_1
load ../Output/Te_finaly_YSE_1.xy
x_te_YSE_1=Te_finaly_YSE_1(:,1);
te_YSE_1=Te_finaly_YSE_1(:,2);

% figure('Name','te 30','NumberTitle','off');
% plot(x_te,te_45,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Te_YSE_2
load ../Output/Te_finaly_YSE_2.xy
x_te_YSE_2=Te_finaly_YSE_2(:,1);
te_YSE_2=Te_finaly_YSE_2(:,2);

% figure('Name','te 46','NumberTitle','off');
% plot(x_te46,te_46,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Te_YSE_3
load ../Output/Te_finaly_YSE_3.xy
x_te_YSE_3=Te_finaly_YSE_3(:,1);
te_YSE_3=Te_finaly_YSE_3(:,2);

% figure('Name','te 30','NumberTitle','off');
% plot(x_te30,te_30,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Te_x_YSE_1
load ../Output/Te_finalx_YSE_1.xy
x_te_x_YSE_1=Te_finalx_YSE_1(:,1);
te_x_YSE_1=Te_finalx_YSE_1(:,2);

% figure('Name','te 18','NumberTitle','off');
% plot(x_te18,te_18,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%deflection
load ../Output/deflection_y_YSE_1.xy
%deflection
x_w_YSE_1=deflection_y_YSE_1(:,1);
w_YSE_1_tisc=deflection_y_YSE_1(:,2);

% figure('Name','deflection 30','NumberTitle','off');
% plot(x_w,w_tisc,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%deflection
load ../Output/deflection_y_YSE_2.xy
%deflection
x_w_y_YSE_2=deflection_y_YSE_2(:,1);
w_y_YSE_2_tisc=deflection_y_YSE_2(:,2);

% figure('Name','deflection 46','NumberTitle','off');
% plot(x_w46,w46_tisc,'-');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%deflection
load ../Output/deflection_y_YSE_3.xy
%deflection
x_w_y_YSE_3=deflection_y_YSE_3(:,1);
w_y_YSE_3_tisc=deflection_y_YSE_3(:,2);

% figure('Name','deflection 18','NumberTitle','off');
% plot(x_w18,w18_tisc,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%deflection
load ../Output/deflection_x_YSE_1.xy
%deflection
x_w_x_YSE_1=deflection_x_YSE_1(:,1);
w_x_YSE_1_tisc=deflection_x_YSE_1(:,2);

% figure('Name','deflection 30','NumberTitle','off');
% plot(x_w30,w30_tisc,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%curvature x _YSE_1
load ../Output/curvature_x_YSE_1.xyz
x_cx_YSE_1=curvature_x_YSE_1(:,1);
cx_YSE_1=curvature_x_YSE_1(:,2);

% figure('Name','curvature x 30','NumberTitle','off');
% plot(x_cx30,cx30,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%curvature y 30
load ../Output/curvature_y_YSE_1.xyz
x_cy_YSE_1=curvature_y_YSE_1(:,1);
cy_YSE_1=curvature_y_YSE_1(:,2);

% figure('Name','curvature y 30','NumberTitle','off');
% plot(x_cy30,cy30,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  %curvature xy 30
%  load ../Output/curvature_xy30.xyz
%  x_cxy=curvature_xy30(:,1);
%  cxy=curvature_xy30(:,2);

% figure('Name','curvature xy 30','NumberTitle','off');
% plot(x_cxy,cxy,'-');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%curvature x 18
load ../Output/curvature_x_YSE_2.xyz
x_cx_YSE_2=curvature_x_YSE_2(:,1);
cx_YSE_2=curvature_x_YSE_2(:,2);

% figure('Name','curvature x 18','NumberTitle','off');
% plot(x_cx18,cx18,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%curvature y 18
load ../Output/curvature_y_YSE_2.xyz
x_cy_YSE_2=curvature_y_YSE_2(:,1);
cy_YSE_2=curvature_y_YSE_2(:,2);

% figure('Name','curvature y 18','NumberTitle','off');
% plot(x_cy18,cy18,'-');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%curvature x _YSE_3
load ../Output/curvature_x_YSE_3.xyz
x_cx_YSE_3=curvature_x_YSE_3(:,1);
cx_YSE_3=curvature_x_YSE_3(:,2);

% figure('Name','curvature x 46','NumberTitle','off');
% plot(x_cx46,cx46,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%curvature y _YSE_3
load ../Output/curvature_y_YSE_3.xyz
x_cy_YSE_3=curvature_y_YSE_3(:,1);
cy_YSE_3=curvature_y_YSE_3(:,2);

% figure('Name','curvature y 46','NumberTitle','off');
% plot(x_cy,cy,'-');

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %deflection
% 
% load ../deflection_from_tisc_tv.xyw
% xwv=deflection_from_tisc_tv(:,1);
% ywv=deflection_from_tisc_tv(:,2);
% wfv=deflection_from_tisc_tv(:,3);
% xwrv = reshape(xwv,61,[]);
% ywrv = reshape(ywv,61,[]);
% wfrv = reshape(wfv,61,[]);
% figure('Name','deflection var','NumberTitle','off');
% surface(xwrv,ywrv,wfrv); 
% 
% load ../deflection_from_tisc_t0.xyw
% 
% %deflection
% xw0=deflection_from_tisc_t0(:,1);
% yw0=deflection_from_tisc_t0(:,2);
% wf0=deflection_from_tisc_t0(:,3);
% xwr0 = reshape(xw0,61,[]);
% ywr0 = reshape(yw0,61,[]);
% wfr0 = reshape(wf0,61,[]);
% figure('Name','deflection0','NumberTitle','off');
% surface(xwr0,ywr0,wfr0); 
% % 


% load ../deflection_from_tisc_t50.xyw
% 
% %deflection
% xw50=deflection_from_tisc_t50(:,1);
% yw50=deflection_from_tisc_t50(:,2);
% wf50=deflection_from_tisc_t50(:,3);
% xwr50 = reshape(xw50,61,[]);
% ywr50 = reshape(yw50,61,[]);
% wfr50 = reshape(wf50,61,[]);
% figure('Name','deflection50','NumberTitle','off');
% surface(xwr50,ywr50,wfr50); 
% % 
% load ../deflection_from_tisc_t30.xyw
% xw=deflection_from_tisc_t30(:,1);
% yw=deflection_from_tisc_t30(:,2);
% wf=deflection_from_tisc_t30(:,3);
% xwr = reshape(xw,61,[]);
% ywr = reshape(yw,61,[]);
% wfr = reshape(wf,61,[]);
% figure('Name','deflection30','NumberTitle','off');
% surface(xwr,ywr,wfr); 

% load ../deflection_from_tisc_t100.xyw
% %deflection
% xw100=deflection_from_tisc_t100(:,1);
% yw100=deflection_from_tisc_t100(:,2);
% wf100=deflection_from_tisc_t100(:,3);
% xwr100 = reshape(xw100,61,[]);
% ywr100 = reshape(yw100,61,[]);
% wfr100 = reshape(wf100,61,[]);
% figure('Name','deflection100','NumberTitle','off');
% surface(xwr100,ywr100,wfr100); 
% 
%deflection

load ../deflection_from_tisc_tv.xyw
xwv=deflection_from_tisc_tv(:,1);
ywv=deflection_from_tisc_tv(:,2);
% ywv=deflection_from_tisc_tv(1,2)-ywv;
wfv=deflection_from_tisc_tv(:,3);
xwrv = reshape(xwv,45,[]);
ywrv = reshape(ywv,45,[]);
wfrv = reshape(wfv,45,[]);
% figure('Name','deflection v','NumberTitle','off');
% surface(xwrv,ywrv,wfrv); 
% tri = delaunay(lat(:),long(:));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%Load

load ../Input/P_400_c.xyz
xp=P_400_c(:,1);
yp=P_400_c(:,2);
% yp=P_400_c(1,2)-yp;
pp=P_400_c(:,3)*10^-7;
xpv = reshape(xp,45,[]);
ypv = reshape(yp,45,[]);
ppv = reshape(pp,45,[]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Load _y_YSE_1
load ../Output/load_y_YSE_1.xy
x_load_y_YSE_1=load_y_YSE_1(:,1);
load_y_YSE_1=load_y_YSE_1(:,2);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%load _y_YSE_2
load ../Output/load_y_YSE_2.xy
x_load_y_YSE_2=load_y_YSE_2(:,1);
load_y_YSE_2=load_y_YSE_2(:,2);

% figure('Name','curvature x 46','NumberTitle','off');
% plot(x_cx46,cx46,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%load _y_YSE_3
load ../Output/load_y_YSE_3.xy
x_load_y_YSE_3=load_y_YSE_3(:,1);
load_y_YSE_3=load_y_YSE_3(:,2);

% figure('Name','curvature y 46','NumberTitle','off');
% plot(x_cy,cy,'-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PLOT ALL TOGETHER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
subplot(5,4,1)
surface(xwrv,ywrv,wfrv, 'EdgeColor', 'none') 
title('deflection v')
axis([0 2331 0 2261]);
% 
% subplot(5,4,2)
% surface(latTeMr,longTeMr,TeMr)
% title('Te M')

subplot(5,4,2)
surface(latTeLr,longTeLr,TeLr, 'EdgeColor', 'none')
title('Te Litmod')
axis([0 2331 0 2261]);

subplot(5,4,3)
surface(latTefr,longTefr,Tefr, 'EdgeColor', 'none')
title('Te final')
axis([0 2331 0 2261]);

subplot(5,4,4)
surface(xpv,ypv,ppv, 'EdgeColor', 'none')
title('load')
axis([0 2331 0 2261]);

subplot(5,4,5)
surface(latw2xr,longw2xr,w2xr, 'EdgeColor', 'none')
title('Curvature x')
axis([0 45 0 45]);

subplot(5,4,6)
surface(latw2yr,longw2yr,w2yr, 'EdgeColor', 'none')
title('Curvature y')
axis([0 45 0 45]);


subplot(5,4,7)
surface(latMxr,longMxr,Mxr, 'EdgeColor', 'none')
title('Moment x')
axis([0 45 0 45]);

subplot(5,4,8)
surface(latMyr,longMyr,Myr, 'EdgeColor', 'none')
title('Moment y')
axis([0 45 0 45]);


subplot(5,4,9)
plot(x_w_YSE_1,w_YSE_1_tisc,'-')
title('deflection y_YSE_1')
axis([0 45 -1000 1000]);

subplot(5,4,10)
plot(x_load_y_YSE_2,load_y_YSE_2,'-')
title('load _YSE_2')
axis([0 45 -2e7 2e7]);

subplot(5,4,11)
plot(x_cy_YSE_1,cy_YSE_1,'-')
title('curvature y _YSE_1')
axis([0 45 -5e-10 5e-10]);

subplot(5,4,12)
plot(x_te_YSE_1,te_YSE_1,'-')
title('Te _YSE_1')
axis([0 2261559 40000 60000]);


subplot(5,4,13)
plot(x_w_y_YSE_2,w_y_YSE_2_tisc,'-')
title('deflection y_YSE_2')
axis([0 45 -1000 1000]);

subplot(5,4,14)
plot(x_load_y_YSE_2,load_y_YSE_2,'-')
title('load _YSE_2')
axis([0 45 -2e7 2e7]);

subplot(5,4,15)
plot(x_cy_YSE_2,cy_YSE_2,'-')
title('curvature y _YSE_2')
axis([0 45 -5e-10 5e-10]);

subplot(5,4,16)
plot(x_te_YSE_2,te_YSE_2,'-')
title('Te _YSE_2')
axis([0 2261559 40000 60000]);


subplot(5,4,17)
plot(x_w_y_YSE_3,w_y_YSE_3_tisc,'-')
title('deflection y _YSE_3')
axis([0 45 -1000 1000]);

subplot(5,4,18)
plot(x_load_y_YSE_3,load_y_YSE_3,'-')
title('load _YSE_3')
axis([0 45 -2e7 2e7]);

subplot(5,4,19)
plot(x_cy_YSE_3,cy_YSE_3,'-')
title('curvature y_YSE_3')
axis([0 45 -2e7 2e7]);

subplot(5,4,20)
plot(x_te_YSE_3,te_YSE_3,'-')
title('Te_YSE_3')
axis([0 2261559 40000 60000]);