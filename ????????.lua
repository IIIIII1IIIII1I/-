return(function(a,b)local c=select;local d=string.byte;local e=string.sub;local f=string.char;local g={{b="OpArgR",c="OpArgN"},{b="OpArgK",c="OpArgN"},{b="OpArgU",c="OpArgU"},{b="OpArgR",c="OpArgN"},{b="OpArgU",c="OpArgN"},{b="OpArgK",c="OpArgN"},{b="OpArgR",c="OpArgK"},{b="OpArgK",c="OpArgN"},{b="OpArgU",c="OpArgN"},{b="OpArgK",c="OpArgK"},{b="OpArgU",c="OpArgU"},{b="OpArgR",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgR",c="OpArgN"},{b="OpArgR",c="OpArgN"},{b="OpArgR",c="OpArgN"},{b="OpArgR",c="OpArgR"},{b="OpArgR",c="OpArgN"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgK",c="OpArgK"},{b="OpArgR",c="OpArgU"},{b="OpArgR",c="OpArgU"},{b="OpArgU",c="OpArgU"},{b="OpArgU",c="OpArgU"},{b="OpArgU",c="OpArgN"},{b="OpArgR",c="OpArgN"},{b="OpArgR",c="OpArgN"},{b="OpArgN",c="OpArgU"},{b="OpArgU",c="OpArgU"},{b="OpArgN",c="OpArgN"},{b="OpArgU",c="OpArgN"},{b="OpArgU",c="OpArgN"}}local h={"ABC","ABx","ABC","ABC","ABC","ABx","ABC","ABx","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","AsBx","ABC","ABC","ABC","ABC","ABC","ABC","ABC","ABC","AsBx","AsBx","ABC","ABC","ABC","ABx","ABC"}local i=""for j,k in pairs(a)do i=i..f(k)end;a=i;local function l(m,n,o)if o then local p=m/2^(n-1)%2^(o-1-(n-1)+1)return p-p%1 else local q=2^(n-1)if m%(q+q)>=q then return 1 else return 0 end end end;local function r(s)local t=1;local u;local v;local function w()local x=d(s,t,t)t=t+1;return x end;local function y()local k,z,A,B=d(s,t,t+3)t=t+4;return B*16777216+A*65536+z*256+k end;local function C()return y()*4294967296+y()end;local function D()local E=y()local F=y()local G=1;local H=l(F,1,20)*2^32+E;local I=l(F,21,31)local J=(-1)^l(F,32)if I==0 then if H==0 then return J*0 else I=1;G=0 end elseif I==2047 then if H==0 then return J*1/0 else return J*0/0 end end;return math.ldexp(J,I-1023)*(G+H/2^52)end;local function K(L)local M;if L then M=e(s,t,t+L-1)t=t+L else L=u()if L==0 then return end;M=e(s,t,t+L-1)t=t+L end;return M end;local function N()local O={}local P={}local Q={}local R={Instr=O,Const=P,Proto=Q,Lines={},Name=K(),FirstL=v(),LastL=v(),Upvals=w(),Args=w(),Vargs=w(),Stack=w()}local S={}if R.Name then R.Name=e(R.Name,1,-2)end;for T=1,v()do local U=y()local V=l(U,1,6)local W=h[V+1]local X=g[V+1]local Y={Enum=V,Value=U,l(U,7,14)}if W=="ABC"then Y[2]=l(U,24,32)Y[3]=l(U,15,23)elseif W=="ABx"then Y[2]=l(U,15,32)elseif W=="AsBx"then Y[2]=l(U,15,32)-131071 end;do if V==26 or V==27 then Y[3]=Y[3]==0 end;if V>=23 and V<=25 then Y[1]=Y[1]~=0 end;if X.b=="OpArgK"then Y[3]=Y[3]or false;if Y[2]>=256 then local Z=Y[2]-256;Y[4]=Z;local _=S[Z]if not _ then _={}S[Z]=_ end;_[#_+1]={Inst=Y,Register=4}end end;if X.c=="OpArgK"then Y[4]=Y[4]or false;if Y[3]>=256 then local Z=Y[3]-256;Y[5]=Z;local _=S[Z]if not _ then _={}S[Z]=_ end;_[#_+1]={Inst=Y,Register=5}end end end;O[T]=Y end;for T=1,v()do local W=w()local Z;if W==1 then Z=w()~=0 elseif W==3 then Z=D()elseif W==4 then Z=e(K(),1,-2)end;local a0=S[T-1]if a0 then for a1=1,#a0 do a0[a1].Inst[a0[a1].Register]=Z end end;P[T-1]=Z end;for T=1,v()do Q[T-1]=N()end;do local j=R.Lines;for T=1,v()do j[T]=y()end;for a2=1,v()do K()y()y()end;for a2=1,v()do K()end end;return R end;do assert(K(4)=="\27Lua","TheUnknownScripter")assert(w()==81,"The Unknown Void")w()w()local a3=w()local a4=w()if a3==4 then v=y elseif a3==8 then v=C else error("Life And Death",2)end;if a4==4 then u=y elseif a4==8 then u=C else error("Balance Between Everything",2)end;assert(K(3)=="\4\8\0","The Return Of Absolute")end;return N()end;local function a5(...)return c("#",...),{...}end;local function a6(R,b,a7)local O=R.Instr;local P=R.Const;local Q=R.Proto;local function a8(a9,aa)local ab=R.Name or"Code"local ac=R.Lines[aa]or"?"error(string.format("%s:%s: %s",ab,ac,tostring(a9)),0)end;return function(...)local ad,ae=1,-1;local af,ag={},c("#",...)-1;local ah={}local ai={}local aj=setmetatable({},{__index=ah,__newindex=function(a2,ak,al)if ak>ae then ae=ak end;ah[ak]=al end})local function am()local Y,an;while true do Y=O[ad]an=Y.Enum;ad=ad+1;if an==0 then aj[Y[1]]=aj[Y[2]]elseif an==1 then aj[Y[1]]=P[Y[2]]elseif an==2 then aj[Y[1]]=Y[2]~=0;if Y[3]~=0 then ad=ad+1 end elseif an==3 then local ao=aj;for T=Y[1],Y[2]do ao[T]=nil end elseif an==4 then aj[Y[1]]=a7[Y[2]]elseif an==5 then aj[Y[1]]=b[P[Y[2]]]elseif an==6 then local ao=aj;ao[Y[1]]=ao[Y[2]][Y[5]or ao[Y[3]]]elseif an==7 then b[P[Y[2]]]=aj[Y[1]]elseif an==8 then a7[Y[2]]=aj[Y[1]]elseif an==9 then local ao=aj;ao[Y[1]][Y[4]or ao[Y[2]]]=Y[5]or ao[Y[3]]elseif an==10 then aj[Y[1]]={}elseif an==11 then local ao=aj;local ap=Y[1]local aq=ao[Y[2]]local ar=Y[5]or ao[Y[3]]ao[ap+1]=aq;ao[ap]=aq[ar]elseif an==12 then local ao=aj;ao[Y[1]]=(Y[4]or ao[Y[2]])+(Y[5]or ao[Y[3]])elseif an==13 then local ao=aj;ao[Y[1]]=(Y[4]or ao[Y[2]])-(Y[5]or ao[Y[3]])elseif an==14 then local ao=aj;ao[Y[1]]=(Y[4]or ao[Y[2]])*(Y[5]or ao[Y[3]])elseif an==15 then local ao=aj;ao[Y[1]]=(Y[4]or ao[Y[2]])/(Y[5]or ao[Y[3]])elseif an==16 then local ao=aj;ao[Y[1]]=(Y[4]or ao[Y[2]])%(Y[5]or ao[Y[3]])elseif an==17 then local ao=aj;ao[Y[1]]=(Y[4]or ao[Y[2]])^(Y[5]or ao[Y[3]])elseif an==18 then aj[Y[1]]=-aj[Y[2]]elseif an==19 then aj[Y[1]]=not aj[Y[2]]elseif an==20 then aj[Y[1]]=#aj[Y[2]]elseif an==21 then local ao=aj;local aq=Y[2]local as=ao[aq]for T=aq+1,Y[3]do as=as..ao[T]end;aj[Y[1]]=as elseif an==22 then ad=ad+Y[2]elseif an==23 then local ao=aj;local aq=Y[4]or ao[Y[2]]local ar=Y[5]or ao[Y[3]]if aq==ar~=Y[1]then ad=ad+1 end elseif an==24 then local ao=aj;local aq=Y[4]or ao[Y[2]]local ar=Y[5]or ao[Y[3]]if aq<ar~=Y[1]then ad=ad+1 end elseif an==25 then local ao=aj;local aq=Y[4]or ao[Y[2]]local ar=Y[5]or ao[Y[3]]if aq<=ar~=Y[1]then ad=ad+1 end elseif an==26 then if Y[3]then if aj[Y[1]]then ad=ad+1 end elseif aj[Y[1]]then else ad=ad+1 end elseif an==27 then local aq=aj[Y[2]]if Y[3]then if aq then ad=ad+1 else aj[Y[1]]=aq end elseif aq then aj[Y[1]]=aq else ad=ad+1 end elseif an==28 then local ap=Y[1]local aq=Y[2]local ar=Y[3]local ao=aj;local at,au;local av,aw;at={}if aq~=1 then if aq~=0 then av=ap+aq-1 else av=ae end;aw=0;for T=ap+1,av do aw=aw+1;at[aw]=ao[T]end;av,au=a5(ao[ap](unpack(at,1,av-ap)))else av,au=a5(ao[ap]())end;ae=ap-1;if ar~=1 then if ar~=0 then av=ap+ar-2 else av=av+ap-1 end;aw=0;for T=ap,av do aw=aw+1;ao[T]=au[aw]end end elseif an==29 then local ap=Y[1]local aq=Y[2]local ao=aj;local at,au;local av;local ax=0;at={}if aq~=1 then if aq~=0 then av=ap+aq-1 else av=ae end;for T=ap+1,av do at[#at+1]=ao[T]end;au={ao[ap](unpack(at,1,av-ap))}else au={ao[ap]()}end;for ay in pairs(au)do if ay>ax then ax=ay end end;return au,ax elseif an==30 then local ap=Y[1]local aq=Y[2]local ao=aj;local aw,az;local av;if aq==1 then return elseif aq==0 then av=ae else av=ap+aq-2 end;az={}aw=0;for T=ap,av do aw=aw+1;az[aw]=ao[T]end;return az,aw elseif an==31 then local ap=Y[1]local ao=aj;local aA=ao[ap+2]local ay=ao[ap]+aA;ao[ap]=ay;if aA>0 then if ay<=ao[ap+1]then ad=ad+Y[2]ao[ap+3]=ay end else if ay>=ao[ap+1]then ad=ad+Y[2]ao[ap+3]=ay end end elseif an==32 then local ap=Y[1]local ao=aj;ao[ap]=assert(tonumber(ao[ap]),"Yet Nothing")ao[ap+1]=assert(tonumber(ao[ap+1]),"From Unknown")ao[ap+2]=assert(tonumber(ao[ap+2]),"Only Questions")ao[ap]=ao[ap]-ao[ap+2]ad=ad+Y[2]elseif an==33 then local ap=Y[1]local ar=Y[3]local ao=aj;local aB=ap+2;local aC={ao[ap](ao[ap+1],ao[ap+2])}for T=1,ar do aj[aB+T]=aC[T]end;if ao[ap+3]~=nil then ao[ap+2]=ao[ap+3]else ad=ad+1 end elseif an==34 then local ap=Y[1]local aq=Y[2]local ar=Y[3]local ao=aj;if ar==0 then ad=ad+1;ar=O[ad].Value end;local aB=(ar-1)*50;local aD=ao[ap]if aq==0 then aq=ae-ap end;for T=1,aq do aD[aB+T]=ao[ap+T]end elseif an==35 then local ap=Y[1]local aE={}for T=1,#ai do local aF=ai[T]for aG=0,#aF do local aH=aF[aG]local ao=aH[1]local t=aH[2]if ao==aj and t>=ap then aE[t]=ao[t]aH[1]=aE end end end elseif an==36 then local aI=Q[Y[2]]local ao=aj;local aJ;local aK;if aI.Upvals~=0 then aJ={}aK=setmetatable({},{__index=function(a2,ak)local aL=aJ[ak]return aL[1][aL[2]]end,__newindex=function(a2,ak,al)local aL=aJ[ak]aL[1][aL[2]]=al end})for T=1,aI.Upvals do local aM=O[ad]if aM.Enum==0 then aJ[T-1]={ao,aM[2]}elseif aM.Enum==4 then aJ[T-1]={a7,aM[2]}end;ad=ad+1 end;ai[#ai+1]=aJ end;ao[Y[1]]=a6(aI,b,aK)elseif an==37 then local ap=Y[1]local aq=Y[2]local ao,aN=aj,af;ae=ap-1;for T=ap,ap+(aq>0 and aq-1 or ag)do ao[T]=aN[T-ap]end end end end;local at={...}for T=0,ag do if T>=R.Args then af[T-R.Args]=at[T+1]else aj[T]=at[T+1]end end;local ap,aq,ar=pcall(am)if ap then if aq and ar>0 then return unpack(aq,1,ar)end;return else a8(aq,ad-1)end end end;local aO=r(a)return a6(aO,b or getfenv(0)),aO end)({27,76,117,97,81,0,1,4,4,4,8,0,32,0,0,0,64,73,114,111,110,98,114,101,119,47,110,101,116,99,111,114,101,97,112,112,50,46,48,47,111,117,116,46,108,117,97,0,0,0,0,0,0,0,0,0,0,0,2,28,84,0,0,0,5,0,0,0,6,64,64,0,69,0,0,0,70,128,192,0,133,0,0,0,134,192,64,1,197,0,1,0,198,64,193,1,5,129,1,0,6,193,65,2,69,1,2,0,90,65,0,0,22,0,0,128,100,1,0,0,133,65,2,0,197,129,2,0,5,194,2,0,69,2,3,0,164,66,0,0,0,0,128,0,0,0,128,4,0,0,0,1,192,2,0,5,1,67,3,0,220,130,0,1,5,131,3,0,26,3,0,0,22,192,0,128,5,131,3,0,6,195,67,6,26,67,0,0,22,0,0,128,36,131,0,0,100,195,0,0,129,3,4,0,228,3,1,0,0,0,0,0,0,0,128,5,0,0,0,7,0,0,0,6,36,68,1,0,0,0,0,6,0,0,0,0,0,0,128,5,0,0,0,7,100,132,1,0,0,0,128,7,0,0,128,6,0,0,0,2,128,4,128,7,228,196,1,0,0,0,0,9,0,0,0,1,0,0,128,5,0,0,0,7,0,0,128,0,0,0,0,6,0,0,0,0,0,0,128,1,0,5,128,7,100,5,2,0,0,0,128,3,164,69,2,0,0,0,0,8,0,0,128,7,0,0,0,6,0,0,128,6,0,0,0,11,0,0,128,8,0,0,128,9,228,133,2,0,0,0,128,10,0,0,128,3,0,0,0,4,0,6,128,11,64,6,0,11,92,134,128,0,138,6,0,0,192,6,128,2,220,6,128,0,28,134,0,0,29,6,128,0,30,6,0,0,30,0,128,0,17,0,0,0,4,7,0,0,0,115,116,114,105,110,103,0,4,5,0,0,0,98,121,116,101,0,4,5,0,0,0,99,104,97,114,0,4,4,0,0,0,115,117,98,0,4,6,0,0,0,116,97,98,108,101,0,4,7,0,0,0,99,111,110,99,97,116,0,4,5,0,0,0,109,97,116,104,0,4,6,0,0,0,108,100,101,120,112,0,4,8,0,0,0,103,101,116,102,101,110,118,0,4,13,0,0,0,115,101,116,109,101,116,97,116,97,98,108,101,0,4,7,0,0,0,115,101,108,101,99,116,0,4,7,0,0,0,117,110,112,97,99,107,0,4,9,0,0,0,116,111,110,117,109,98,101,114,0,4,173,1,0,0,49,57,49,65,49,57,50,55,54,49,83,49,49,50,54,88,50,54,85,50,53,89,49,49,50,55,54,49,84,49,80,50,55,54,50,53,90,50,55,71,49,57,49,84,50,55,68,49,57,50,53,88,50,55,77,50,55,54,50,55,54,49,56,50,55,81,49,56,50,51,52,50,55,81,50,50,80,50,51,72,50,51,72,50,51,68,50,51,69,50,49,70,50,49,50,50,49,50,50,51,49,50,50,79,50,51,69,50,50,89,50,50,85,50,51,70,50,51,49,50,49,51,50,56,56,50,50,83,50,49,50,50,50,87,50,51,68,50,50,79,50,49,50,50,51,73,50,51,48,50,50,90,50,50,80,50,50,85,50,50,85,50,50,81,50,51,69,50,49,50,50,49,75,50,49,76,50,49,67,50,49,68,50,49,77,50,49,77,50,49,68,50,49,76,50,49,78,50,49,79,50,49,79,50,49,82,50,49,81,50,49,82,50,49,68,50,57,52,50,49,80,50,49,82,50,49,50,50,50,52,50,49,76,50,50,72,50,49,86,50,50,84,50,50,69,50,50,48,50,56,79,50,50,76,50,51,74,50,51,73,50,49,84,50,49,83,50,50,56,50,50,72,50,51,69,50,49,90,50,50,56,50,50,82,50,50,83,50,49,75,50,50,55,50,50,80,50,49,88,50,50,73,50,50,78,50,49,87,50,49,79,50,49,84,50,49,87,50,50,71,50,50,74,50,50,73,50,50,79,50,49,80,50,50,83,50,50,71,50,49,83,50,50,87,50,49,67,50,50,85,50,50,84,50,49,86,50,51,49,50,50,73,50,50,87,50,50,81,50,49,80,50,51,74,50,50,51,50,50,55,50,50,57,50,50,77,50,49,68,50,50,56,50,51,51,50,51,72,50,49,79,50,50,79,50,51,49,50,50,54,50,51,70,50,51,48,50,50,57,50,50,69,50,51,74,50,51,67,0,4,4,0,0,0,98,105,116,0,4,5,0,0,0,98,120,111,114,0,3,0,0,0,0,0,0,240,63,11,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,2,3,0,0,0,5,0,0,0,30,0,0,1,30,0,128,0,1,0,0,0,4,5,0,0,0,95,69,78,86,0,0,0,0,0,3,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,3,1,0,14,65,0,0,0,65,0,0,0,129,0,0,0,202,0,0,0,1,65,0,0,74,1,0,0,129,129,0,0,205,193,64,2,1,194,0,0,160,193,0,128,132,2,0,0,192,2,128,4,156,130,0,1,73,129,130,4,159,129,254,127,129,193,0,0,228,1,0,0,4,0,128,0,4,0,0,1,0,0,0,0,0,0,0,3,4,2,0,0,64,2,128,3,92,2,128,0,28,130,0,0,64,0,0,4,201,64,128,129,20,2,0,0,24,0,2,3,22,64,7,128,0,2,128,3,28,130,128,0,70,2,130,2,90,2,0,0,22,64,0,128,134,0,130,2,22,128,1,128,64,2,128,0,132,2,0,1,192,2,128,0,1,195,0,0,65,195,0,0,156,130,0,2,149,128,130,4,64,2,128,0,132,2,0,1,192,2,0,1,1,195,0,0,65,195,0,0,156,130,0,2,85,130,130,4,73,65,2,2,84,2,128,1,76,194,192,4,128,2,0,1,192,2,0,1,12,193,64,2,64,0,128,5,201,128,130,4,22,128,247,127,5,2,1,0,6,66,65,4,64,2,128,1,29,2,0,1,30,2,0,0,30,0,128,0,6,0,0,0,4,1,0,0,0,0,3,0,0,0,0,0,0,112,64,3,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,240,63,4,6,0,0,0,116,97,98,108,101,0,4,7,0,0,0,99,111,110,99,97,116,0,1,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,4,0,0,6,26,0,0,0,4,0,0,0,68,0,128,0,132,0,0,1,196,0,128,1,4,1,128,1,92,128,0,2,129,0,0,0,28,128,128,1,68,0,128,1,76,64,192,0,72,0,128,1,68,0,0,0,132,0,128,0,196,0,0,1,4,1,128,1,68,1,128,1,76,1,128,2,77,65,192,2,156,128,0,2,193,0,0,0,92,128,128,1,132,0,128,1,140,0,0,1,136,0,128,1,94,0,0,1,30,0,128,0,2,0,0,0,3,0,0,0,0,0,0,66,64,3,0,0,0,0,0,0,240,63,0,0,0,0,26,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,2,0,0,0,2,0,0,0,101,0,8,0,0,0,25,0,0,0,2,0,0,0,111,0,21,0,0,0,25,0,0,0,4,0,0,0,2,0,0,0,104,0,2,0,0,0,99,0,2,0,0,0,100,0,2,0,0,0,108,0,65,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,13,0,0,0,2,0,0,0,100,0,0,0,0,0,64,0,0,0,2,0,0,0,101,0,3,0,0,0,64,0,0,0,2,0,0,0,111,0,3,0,0,0,64,0,0,0,2,0,0,0,116,0,3,0,0,0,64,0,0,0,2,0,0,0,97,0,4,0,0,0,64,0,0,0,2,0,0,0,110,0,5,0,0,0,64,0,0,0,12,0,0,0,40,102,111,114,32,105,110,100,101,120,41,0,8,0,0,0,14,0,0,0,12,0,0,0,40,102,111,114,32,108,105,109,105,116,41,0,8,0,0,0,14,0,0,0,11,0,0,0,40,102,111,114,32,115,116,101,112,41,0,8,0,0,0,14,0,0,0,2,0,0,0,108,0,9,0,0,0,13,0,0,0,2,0,0,0,108,0,15,0,0,0,64,0,0,0,2,0,0,0,105,0,20,0,0,0,64,0,0,0,2,0,0,0,108,0,31,0,0,0,58,0,0,0,3,0,0,0,2,0,0,0,114,0,2,0,0,0,104,0,2,0,0,0,99,0,0,0,0,0,1,0,0,0,1,0,0,0,0,2,0,8,35,0,0,0,129,0,0,0,193,64,0,0,24,0,128,128,22,128,3,128,24,64,128,128,22,0,3,128,16,129,64,0,80,129,192,0,87,64,1,2,22,0,0,128,204,128,128,1,141,1,1,0,143,129,64,3,205,65,129,0,207,129,192,3,142,128,64,1,64,0,128,3,0,0,0,3,22,128,251,127,24,64,0,0,22,0,0,128,0,0,128,0,24,0,128,128,22,0,2,128,16,129,64,0,24,0,129,128,22,0,0,128,204,128,128,1,77,1,1,0,79,129,192,2,142,128,64,1,0,0,128,2,22,0,253,127,222,0,0,1,30,0,128,0,3,0,0,0,3,0,0,0,0,0,0,240,63,3,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,64,0,0,0,0,35,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,7,0,0,0,2,0,0,0,108,0,0,0,0,0,34,0,0,0,2,0,0,0,111,0,0,0,0,0,34,0,0,0,2,0,0,0,101,0,2,0,0,0,34,0,0,0,2,0,0,0,110,0,2,0,0,0,34,0,0,0,2,0,0,0,97,0,8,0,0,0,18,0,0,0,2,0,0,0,99,0,8,0,0,0,18,0,0,0,2,0,0,0,111,0,25,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,3,0,6,27,0,0,0,154,0,0,0,22,0,3,128,205,0,192,0,209,192,128,128,207,192,0,0,13,1,64,1,77,1,192,0,13,65,1,2,12,1,64,2,17,1,129,128,208,0,129,1,16,1,192,1,13,1,129,1,30,1,0,1,22,128,2,128,205,0,192,0,209,192,128,128,12,193,128,1,16,1,1,0,25,0,129,1,22,128,0,128,1,1,0,0,26,65,0,0,22,0,0,128,1,129,0,0,30,1,0,1,30,0,128,0,3,0,0,0,3,0,0,0,0,0,0,240,63,3,0,0,0,0,0,0,0,64,3,0,0,0,0,0,0,0,0,0,0,0,0,27,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,5,0,0,0,2,0,0,0,101,0,0,0,0,0,26,0,0,0,2,0,0,0,108,0,0,0,0,0,26,0,0,0,2,0,0,0,111,0,0,0,0,0,26,0,0,0,2,0,0,0,108,0,11,0,0,0,14,0,0,0,2,0,0,0,108,0,17,0,0,0,26,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,4,0,0,7,37,0,0,0,4,0,0,0,68,0,128,0,132,0,0,1,196,0,0,1,204,0,192,1,28,64,1,2,4,1,128,1,64,1,0,0,129,65,0,0,28,129,128,1,0,0,0,2,4,1,128,1,64,1,128,0,129,65,0,0,28,129,128,1,64,0,0,2,4,1,128,1,64,1,0,1,129,65,0,0,28,129,128,1,128,0,0,2,4,1,128,1,64,1,128,1,129,65,0,0,28,129,128,1,192,0,0,2,4,1,0,1,12,129,64,2,8,1,0,1,14,193,192,1,78,1,65,1,12,65,1,2,78,65,193,0,12,65,1,2,12,1,0,2,30,1,0,1,30,0,128,0,6,0,0,0,3,0,0,0,0,0,0,8,64,3,0,0,0,0,0,0,34,64,3,0,0,0,0,0,0,16,64,3,0,0,0,0,0,0,112,65,3,0,0,0,0,0,0,240,64,3,0,0,0,0,0,0,112,64,0,0,0,0,37,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,4,0,0,0,2,0,0,0,97,0,6,0,0,0,36,0,0,0,2,0,0,0,99,0,6,0,0,0,36,0,0,0,2,0,0,0,111,0,6,0,0,0,36,0,0,0,2,0,0,0,108,0,6,0,0,0,36,0,0,0,4,0,0,0,2,0,0,0,100,0,2,0,0,0,116,0,2,0,0,0,101,0,2,0,0,0,110,0,0,0,0,0,1,0,0,0,1,0,0,0,4,0,0,5,13,0,0,0,4,0,0,0,68,0,128,0,132,0,0,1,196,0,128,1,4,1,128,1,92,128,0,2,129,0,0,0,28,128,128,1,68,0,128,1,76,64,192,0,72,0,128,1,30,0,0,1,30,0,128,0,2,0,0,0,3,0,0,0,0,0,0,34,64,3,0,0,0,0,0,0,240,63,0,0,0,0,13,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,2,0,0,0,108,0,8,0,0,0,12,0,0,0,4,0,0,0,2,0,0,0,110,0,2,0,0,0,100,0,2,0,0,0,116,0,2,0,0,0,101,0,0,0,0,0,1,0,0,0,1,0,0,0,3,0,0,9,52,0,0,0,4,0,0,0,28,128,128,0,68,0,0,0,92,128,128,0,129,0,0,0,196,0,128,0,0,1,128,0,65,1,0,0,129,65,0,0,220,128,0,2,206,128,192,1,204,0,128,1,4,1,128,0,64,1,128,0,129,193,0,0,193,1,1,0,28,129,0,2,68,1,128,0,128,1,128,0,193,65,1,0,92,129,128,1,81,65,1,131,23,192,65,2,22,192,1,128,23,192,193,1,22,128,0,128,142,193,193,2,158,1,0,1,22,64,3,128,1,1,0,0,129,192,1,0,22,128,2,128,23,0,66,2,22,0,2,128,23,192,193,1,22,192,0,128,143,193,65,128,142,129,129,2,154,65,0,0,22,64,0,128,143,193,193,131,142,129,129,2,158,1,0,1,132,1,0,1,192,1,128,2,13,66,66,2,156,129,128,1,207,129,194,1,204,193,1,1,142,193,1,3,158,1,0,1,30,0,128,0,11,0,0,0,3,0,0,0,0,0,0,240,63,3,0,0,0,0,0,0,52,64,3,0,0,0,0,0,0,240,65,3,0,0,0,0,0,0,53,64,3,0,0,0,0,0,0,63,64,3,0,0,0,0,0,0,64,64,3,0,0,0,0,0,0,240,191,3,0,0,0,0,0,0,0,0,3,0,0,0,0,0,252,159,64,3,0,0,0,0,0,248,143,64,3,0,0,0,0,0,0,48,67,0,0,0,0,52,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,6,0,0,0,2,0,0,0,101,0,2,0,0,0,51,0,0,0,2,0,0,0,110,0,4,0,0,0,51,0,0,0,2,0,0,0,99,0,5,0,0,0,51,0,0,0,2,0,0,0,111,0,12,0,0,0,51,0,0,0,2,0,0,0,101,0,17,0,0,0,51,0,0,0,2,0,0,0,108,0,22,0,0,0,51,0,0,0,3,0,0,0,2,0,0,0,111,0,2,0,0,0,108,0,2,0,0,0,79,0,0,0,0,0,1,0,0,0,1,0,0,0,8,1,0,14,44,0,0,0,26,64,0,0,22,128,1,128,132,0,0,0,156,128,128,0,0,0,0,1,23,0,64,0,22,64,0,128,129,64,0,0,158,0,0,1,132,0,128,0,196,0,0,1,4,1,128,1,68,1,128,1,76,1,128,2,77,129,192,2,156,128,0,2,64,0,0,1,132,0,128,1,140,0,0,1,136,0,128,1,138,0,0,0,193,128,0,0,20,1,128,0,65,129,0,0,224,0,3,128,196,1,0,2,4,2,128,2,68,2,0,3,132,2,128,0,192,2,128,0,0,3,0,3,64,3,0,3,156,2,0,2,92,130,0,0,129,194,0,0,28,2,128,1,220,129,0,0,137,192,1,3,223,64,252,127,196,0,128,3,0,1,0,1,221,0,0,1,222,0,0,0,30,0,128,0,4,0,0,0,3,0,0,0,0,0,0,0,0,4,1,0,0,0,0,3,0,0,0,0,0,0,240,63,3,0,0,0,0,0,0,34,64,0,0,0,0,44,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,7,0,0,0,2,0,0,0,108,0,0,0,0,0,43,0,0,0,2,0,0,0,111,0,0,0,0,0,43,0,0,0,2,0,0,0,101,0,21,0,0,0,43,0,0,0,12,0,0,0,40,102,111,114,32,105,110,100,101,120,41,0,24,0,0,0,39,0,0,0,12,0,0,0,40,102,111,114,32,108,105,109,105,116,41,0,24,0,0,0,39,0,0,0,11,0,0,0,40,102,111,114,32,115,116,101,112,41,0,24,0,0,0,39,0,0,0,2,0,0,0,108,0,25,0,0,0,38,0,0,0,8,0,0,0,2,0,0,0,105,0,2,0,0,0,99,0,2,0,0,0,116,0,2,0,0,0,101,0,2,0,0,0,114,0,2,0,0,0,110,0,2,0,0,0,100,0,2,0,0,0,115,0,0,0,0,0,1,0,0,0,1,0,0,0,1,0,3,5,9,0,0,0,74,0,0,0,165,0,0,0,98,64,0,0,132,0,0,0,193,0,0,0,37,1,0,0,156,0,0,0,94,0,0,0,30,0,128,0,1,0,0,0,4,2,0,0,0,35,0,0,0,0,0,9,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,4,0,0,0,97,114,103,0,0,0,0,0,8,0,0,0,1,0,0,0,2,0,0,0,117,0,0,0,0,0,1,0,0,0,1,0,0,0,7,0,0,18,150,0,0,0,10,0,128,1,65,0,0,0,129,0,0,0,193,0,0,0,34,64,128,1,74,0,0,0,138,0,0,0,202,0,128,2,0,1,0,0,67,1,128,2,128,1,128,0,195,1,128,3,0,2,0,1,226,64,128,2,4,1,0,0,28,129,128,0,201,0,129,128,1,129,0,0,68,1,128,0,92,129,128,0,129,129,0,0,32,193,19,128,4,2,0,1,68,2,128,0,92,130,128,0,129,194,0,0,28,130,128,1,68,2,0,1,132,2,128,0,156,130,128,0,193,2,1,0,92,130,128,1,132,2,128,1,192,2,0,4,1,131,0,0,65,67,1,0,156,130,0,2,196,2,128,1,0,3,128,4,65,131,0,0,129,131,1,0,220,130,0,2,10,3,128,2,64,3,128,5,132,3,128,1,192,3,0,4,1,196,1,0,65,132,1,0,156,131,0,2,195,3,0,8,64,4,128,4,34,67,128,2,23,0,64,5,22,0,3,128,68,3,128,1,128,3,0,4,193,3,2,0,1,196,0,0,92,131,0,2,9,67,131,131,68,3,128,1,128,3,0,4,193,131,2,0,1,196,2,0,92,131,0,2,9,67,131,132,22,64,8,128,23,128,64,5,22,128,1,128,68,3,128,1,128,3,128,4,193,3,2,0,1,4,3,0,92,131,0,2,9,67,131,131,22,0,6,128,23,64,65,5,22,192,1,128,68,3,128,1,128,3,128,4,193,3,2,0,1,68,3,0,92,131,0,2,77,131,195,6,9,67,131,131,22,128,3,128,23,192,65,5,22,0,3,128,68,3,128,1,128,3,128,4,193,3,2,0,1,68,3,0,92,131,0,2,77,131,195,6,9,67,131,131,68,3,128,1,128,3,0,4,193,131,2,0,1,196,2,0,92,131,0,2,9,67,131,132,9,0,131,3,31,129,235,127,1,129,0,0,68,1,128,0,92,129,128,0,129,129,0,0,32,193,0,128,13,130,192,3,68,2,0,2,92,130,128,0,73,64,2,4,31,129,254,127,4,1,128,0,28,129,128,0,74,1,128,0,129,1,0,0,98,65,128,0,129,129,0,0,192,1,0,2,1,130,0,0,160,193,5,128,132,2,0,0,156,130,128,0,195,2,128,5,23,64,65,5,22,128,1,128,4,3,0,0,28,131,128,0,23,0,64,6,22,0,0,128,194,66,0,0,194,2,128,0,22,128,2,128,23,192,65,5,22,192,0,128,4,3,128,2,28,131,128,0,192,2,0,6,22,0,1,128,23,128,64,5,22,128,0,128,4,3,0,3,28,131,128,0,192,2,0,6,73,193,130,4,159,129,249,127,201,64,129,130,222,0,0,1,30,0,128,0,15,0,0,0,3,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,16,64,3,0,0,0,0,0,0,240,63,3,0,0,0,0,0,0,52,64,3,0,0,0,0,0,128,107,64,3,0,0,0,0,0,0,0,64,3,0,0,0,0,0,0,38,64,3,0,0,0,0,0,0,8,64,3,0,0,0,0,0,0,40,64,3,0,0,0,0,0,0,20,64,3,0,0,0,0,0,0,53,64,3,0,0,0,0,0,0,61,64,3,0,0,0,0,0,128,64,64,3,0,0,0,0,0,0,64,64,3,0,0,0,0,254,255,47,65,0,0,0,0,150,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,25,0,0,0,2,0,0,0,100,0,5,0,0,0,149,0,0,0,2,0,0,0,114,0,6,0,0,0,149,0,0,0,2,0,0,0,101,0,7,0,0,0,149,0,0,0,2,0,0,0,116,0,14,0,0,0,149,0,0,0,12,0,0,0,40,102,111,114,32,105,110,100,101,120,41,0,21,0,0,0,103,0,0,0,12,0,0,0,40,102,111,114,32,108,105,109,105,116,41,0,21,0,0,0,103,0,0,0,11,0,0,0,40,102,111,114,32,115,116,101,112,41,0,21,0,0,0,103,0,0,0,2,0,0,0,97,0,22,0,0,0,102,0,0,0,2,0,0,0,99,0,27,0,0,0,102,0,0,0,2,0,0,0,111,0,32,0,0,0,102,0,0,0,2,0,0,0,110,0,37,0,0,0,102,0,0,0,2,0,0,0,101,0,42,0,0,0,102,0,0,0,2,0,0,0,101,0,52,0,0,0,102,0,0,0,12,0,0,0,40,102,111,114,32,105,110,100,101,120,41,0,107,0,0,0,113,0,0,0,12,0,0,0,40,102,111,114,32,108,105,109,105,116,41,0,107,0,0,0,113,0,0,0,11,0,0,0,40,102,111,114,32,115,116,101,112,41,0,107,0,0,0,113,0,0,0,2,0,0,0,108,0,108,0,0,0,112,0,0,0,2,0,0,0,108,0,115,0,0,0,149,0,0,0,2,0,0,0,111,0,118,0,0,0,149,0,0,0,12,0,0,0,40,102,111,114,32,105,110,100,101,120,41,0,121,0,0,0,147,0,0,0,12,0,0,0,40,102,111,114,32,108,105,109,105,116,41,0,121,0,0,0,147,0,0,0,11,0,0,0,40,102,111,114,32,115,116,101,112,41,0,121,0,0,0,147,0,0,0,2,0,0,0,110,0,122,0,0,0,146,0,0,0,2,0,0,0,101,0,124,0,0,0,146,0,0,0,2,0,0,0,108,0,125,0,0,0,146,0,0,0,7,0,0,0,2,0,0,0,97,0,2,0,0,0,111,0,2,0,0,0,110,0,2,0,0,0,108,0,2,0,0,0,105,0,2,0,0,0,68,0,2,0,0,0,79,0,0,0,0,0,1,0,0,0,1,0,0,0,3,3,0,8,14,0,0,0,198,0,64,0,6,65,64,0,70,129,64,0,134,193,64,0,228,1,0,0,0,0,128,1,0,0,0,2,0,0,128,2,0,0,0,3,4,0,0,0,4,0,128,0,4,0,0,1,222,1,0,1,30,0,128,0,4,0,0,0,3,0,0,0,0,0,0,240,63,3,0,0,0,0,0,0,0,64,3,0,0,0,0,0,0,8,64,3,0,0,0,0,0,0,16,64,1,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,7,0,3,25,106,0,0,0,68,0,0,0,132,0,128,0,196,0,0,1,4,1,128,1,68,1,0,2,129,1,0,0,193,65,0,0,10,2,0,0,74,2,0,0,165,2,0,0,98,66,0,0,132,2,128,2,193,130,0,0,37,3,0,0,156,130,0,0,141,2,64,5,202,2,0,0,10,3,0,0,65,195,0,0,128,3,0,5,193,3,0,0,96,67,2,128,25,0,4,2,22,0,1,128,77,4,1,8,140,4,64,8,134,132,132,4,9,130,132,8,22,128,0,128,76,4,64,8,70,68,132,4,9,67,4,8,95,3,253,127,77,3,1,5,76,3,192,6,131,3,128,7,134,131,129,0,198,3,64,7,25,0,193,7,22,192,7,128,25,192,192,7,22,64,0,128,30,0,128,0,22,128,14,128,24,192,3,128,22,0,5,128,6,4,65,7,70,68,65,7,76,68,4,8,77,4,193,8,138,4,0,0,193,196,0,0,0,5,0,8,64,5,128,8,129,5,0,0,32,133,0,128,204,4,192,9,6,198,5,6,137,4,134,9,31,197,254,127,4,5,0,3,64,5,0,9,129,5,0,0,192,5,128,9,29,5,0,2,30,5,0,0,22,192,8,128,6,4,65,7,70,68,65,7,70,68,4,1,9,67,4,8,22,128,7,128,25,64,193,7,22,0,1,128,6,4,65,7,70,68,65,7,70,68,4,1,9,67,4,8,22,192,5,128,24,192,3,131,22,64,0,128,30,0,128,0,22,192,4,128,6,4,65,7,70,68,65,7,76,68,4,8,77,4,193,8,138,4,0,0,193,196,0,0,0,5,0,8,64,5,128,8,129,5,0,0,32,133,0,128,204,4,192,9,6,198,5,6,137,4,134,9,31,197,254,127,4,5,0,3,64,5,0,9,129,5,0,0,192,5,128,9,29,5,0,2,30,5,0,0,140,1,64,3,22,128,238,127,30,0,128,0,7,0,0,0,3,0,0,0,0,0,0,240,63,3,0,0,0,0,0,0,240,191,4,2,0,0,0,35,0,3,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,64,3,0,0,0,0,0,0,8,64,3,0,0,0,0,0,0,16,64,0,0,0,0,106,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,36,0,0,0,4,0,0,0,97,114,103,0,0,0,0,0,105,0,0,0,2,0,0,0,100,0,1,0,0,0,105,0,0,0,2,0,0,0,116,0,2,0,0,0,105,0,0,0,2,0,0,0,101,0,3,0,0,0,105,0,0,0,2,0,0,0,101,0,4,0,0,0,105,0,0,0,2,0,0,0,108,0,5,0,0,0,105,0,0,0,2,0,0,0,110,0,6,0,0,0,105,0,0,0,2,0,0,0,108,0,7,0,0,0,105,0,0,0,2,0,0,0,114,0,8,0,0,0,105,0,0,0,2,0,0,0,97,0,11,0,0,0,105,0,0,0,2,0,0,0,99,0,16,0,0,0,105,0,0,0,2,0,0,0,108,0,17,0,0,0,105,0,0,0,2,0,0,0,111,0,18,0,0,0,105,0,0,0,12,0,0,0,40,102,111,114,32,105,110,100,101,120,41,0,21,0,0,0,33,0,0,0,12,0,0,0,40,102,111,114,32,108,105,109,105,116,41,0,21,0,0,0,33,0,0,0,11,0,0,0,40,102,111,114,32,115,116,101,112,41,0,21,0,0,0,33,0,0,0,2,0,0,0,108,0,22,0,0,0,32,0,0,0,2,0,0,0,108,0,35,0,0,0,105,0,0,0,2,0,0,0,108,0,36,0,0,0,105,0,0,0,2,0,0,0,101,0,36,0,0,0,105,0,0,0,2,0,0,0,101,0,47,0,0,0,66,0,0,0,2,0,0,0,99,0,50,0,0,0,66,0,0,0,2,0,0,0,110,0,51,0,0,0,66,0,0,0,2,0,0,0,108,0,52,0,0,0,66,0,0,0,12,0,0,0,40,102,111,114,32,105,110,100,101,120,41,0,55,0,0,0,60,0,0,0,12,0,0,0,40,102,111,114,32,108,105,109,105,116,41,0,55,0,0,0,60,0,0,0,11,0,0,0,40,102,111,114,32,115,116,101,112,41,0,55,0,0,0,60,0,0,0,2,0,0,0,101,0,56,0,0,0,59,0,0,0,2,0,0,0,101,0,84,0,0,0,103,0,0,0,2,0,0,0,99,0,87,0,0,0,103,0,0,0,2,0,0,0,110,0,88,0,0,0,103,0,0,0,2,0,0,0,108,0,89,0,0,0,103,0,0,0,12,0,0,0,40,102,111,114,32,105,110,100,101,120,41,0,92,0,0,0,97,0,0,0,12,0,0,0,40,102,111,114,32,108,105,109,105,116,41,0,92,0,0,0,97,0,0,0,11,0,0,0,40,102,111,114,32,115,116,101,112,41,0,92,0,0,0,97,0,0,0,2,0,0,0,101,0,93,0,0,0,96,0,0,0,7,0,0,0,2,0,0,0,111,0,2,0,0,0,110,0,2,0,0,0,101,0,2,0,0,0,108,0,2,0,0,0,104,0,2,0,0,0,117,0,2,0,0,0,102,0,14,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,7,0,0,0,2,0,0,0,108,0,0,0,0,0,13,0,0,0,2,0,0,0,101,0,0,0,0,0,13,0,0,0,2,0,0,0,101,0,0,0,0,0,13,0,0,0,2,0,0,0,111,0,1,0,0,0,13,0,0,0,2,0,0,0,110,0,2,0,0,0,13,0,0,0,2,0,0,0,101,0,3,0,0,0,13,0,0,0,2,0,0,0,108,0,4,0,0,0,13,0,0,0,3,0,0,0,2,0,0,0,104,0,2,0,0,0,117,0,2,0,0,0,102,0,84,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,24,0,0,0,2,0,0,0,100,0,2,0,0,0,83,0,0,0,2,0,0,0,114,0,4,0,0,0,83,0,0,0,2,0,0,0,99,0,6,0,0,0,83,0,0,0,2,0,0,0,115,0,8,0,0,0,83,0,0,0,2,0,0,0,79,0,10,0,0,0,83,0,0,0,2,0,0,0,98,0,14,0,0,0,83,0,0,0,2,0,0,0,108,0,15,0,0,0,83,0,0,0,2,0,0,0,117,0,16,0,0,0,83,0,0,0,2,0,0,0,102,0,17,0,0,0,83,0,0,0,2,0,0,0,104,0,18,0,0,0,83,0,0,0,2,0,0,0,68,0,22,0,0,0,83,0,0,0,2,0,0,0,116,0,25,0,0,0,83,0,0,0,2,0,0,0,110,0,33,0,0,0,83,0,0,0,2,0,0,0,108,0,34,0,0,0,83,0,0,0,2,0,0,0,101,0,35,0,0,0,83,0,0,0,2,0,0,0,111,0,40,0,0,0,83,0,0,0,2,0,0,0,97,0,45,0,0,0,83,0,0,0,2,0,0,0,68,0,49,0,0,0,83,0,0,0,2,0,0,0,105,0,50,0,0,0,83,0,0,0,2,0,0,0,79,0,59,0,0,0,83,0,0,0,2,0,0,0,101,0,60,0,0,0,83,0,0,0,2,0,0,0,104,0,62,0,0,0,83,0,0,0,2,0,0,0,105,0,70,0,0,0,83,0,0,0,2,0,0,0,115,0,74,0,0,0,83,0,0,0,0,0,0,0})()
