%{ 
 
#include"y.tab.h" 
 
%} 
 
 
%% 
 
"0" { return Zero;} 
 
"1" { return One;} 
 
[\n] { return Nl;} 
 
.; 
 
%%