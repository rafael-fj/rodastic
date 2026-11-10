; =============================================================================
; Winsock2 (WS2_32.dll) Socket Wrapper & Transport Layer (0x00593E00..0x00598000)
; Range: 0x00593E00 .. 0x00598000 (16896 bytes)
; =============================================================================

0x00593E00:  push     dword ptr [ebp + 4]               
0x00593E03:  xor      eax, eax                          
0x00593E05:  jmp      0x593e7a                          
0x00593E07:  push     0                                 
0x00593E09:  push     0xcb50                            
0x00593E0E:  lea      eax, [ebp - 0x10]                 
0x00593E11:  push     eax                               
0x00593E12:  call     0x58ee40                          
0x00593E17:  add      esp, 0xc                          
0x00593E1A:  push     0x10                              
0x00593E1C:  lea      ecx, [ebp - 0x10]                 
0x00593E1F:  push     ecx                               
0x00593E20:  mov      edx, dword ptr [0xb4a09c]         
0x00593E26:  mov      eax, dword ptr [edx + 8]          
0x00593E29:  push     eax                               
0x00593E2A:  call     0x594240                          
0x00593E2F:  add      esp, 0xc                          
0x00593E32:  mov      dword ptr [ebp - 0x14], eax       
0x00593E35:  cmp      dword ptr [ebp - 0x14], -1        
0x00593E39:  jne      0x593e51                          
0x00593E3B:  mov      ecx, dword ptr [0xb4a09c]         
0x00593E41:  mov      edx, dword ptr [ecx + 8]          
0x00593E44:  push     edx                               
0x00593E45:  call     0x594390                          
0x00593E4A:  add      esp, 4                            
0x00593E4D:  xor      eax, eax                          
0x00593E4F:  jmp      0x593e7a                          
0x00593E51:  push     0x20                              
0x00593E53:  lea      eax, [ebp - 0x38]                 
0x00593E56:  push     eax                               
0x00593E57:  lea      ecx, [ebp - 0x10]                 
0x00593E5A:  push     ecx                               
0x00593E5B:  call     0x58ef40                          
0x00593E60:  add      esp, 0xc                          
0x00593E63:  mov      edx, dword ptr [0xb4a09c]         
0x00593E69:  mov      eax, dword ptr [edx + 8]          
0x00593E6C:  push     eax                               
0x00593E6D:  call     0x5941d0                          
0x00593E72:  add      esp, 4                            
0x00593E75:  mov      eax, 1                            
0x00593E7A:  mov      ecx, dword ptr [ebp - 0x18]       
0x00593E7D:  xor      ecx, ebp                          
0x00593E7F:  call     0x8eac64                          
0x00593E84:  mov      esp, ebp                          
0x00593E86:  pop      ebp                               
0x00593E87:  ret                                        
0x00593E88:  int3                                       
0x00593E89:  int3                                       
0x00593E8A:  int3                                       
0x00593E8B:  int3                                       
0x00593E8C:  int3                                       
0x00593E8D:  int3                                       
0x00593E8E:  int3                                       
0x00593E8F:  int3                                       
0x00593E90:  push     ebp                               
0x00593E91:  mov      ebp, esp                          
0x00593E93:  sub      esp, 0x1e0                        
0x00593E99:  mov      eax, dword ptr [0xb089c8]         
0x00593E9E:  xor      eax, ebp                          
0x00593EA0:  mov      dword ptr [ebp - 8], eax          
0x00593EA3:  mov      dword ptr [ebp - 0x1bc], 0        
0x00593EAD:  mov      eax, 2                            
0x00593EB2:  mov      word ptr [ebp - 0x1b8], ax        
0x00593EB9:  lea      ecx, [ebp - 0x198]                
0x00593EBF:  push     ecx                               
0x00593EC0:  movzx    edx, word ptr [ebp - 0x1b8]       
0x00593EC7:  push     edx                               
0x00593EC8:  call     dword ptr [0x95b30c]              
0x00593ECE:  mov      dword ptr [ebp - 0x1b0], eax      
0x00593ED4:  cmp      dword ptr [ebp - 0x1b0], 0        
0x00593EDB:  je       0x593ee6                          
0x00593EDD:  xor      eax, eax                          
0x00593EDF:  jmp      0x594128                          
0x00593EE4:  jmp      0x593f1e                          
0x00593EE6:  movzx    eax, word ptr [ebp - 0x198]       
0x00593EED:  and      eax, 0xff                         
0x00593EF2:  movzx    ecx, al                           
0x00593EF5:  cmp      ecx, 2                            
0x00593EF8:  jne      0x593f11                          
0x00593EFA:  movzx    edx, word ptr [ebp - 0x198]       
0x00593F01:  shr      edx, 8                            
0x00593F04:  and      edx, 0xff                         
0x00593F0A:  movzx    eax, dl                           
0x00593F0D:  test     eax, eax                          
0x00593F0F:  je       0x593f1e                          
0x00593F11:  call     dword ptr [0x95b310]              
0x00593F17:  xor      eax, eax                          
0x00593F19:  jmp      0x594128                          
0x00593F1E:  lea      ecx, [ebp - 0x1bc]                
0x00593F24:  push     ecx                               
0x00593F25:  push     0                                 
0x00593F27:  push     0                                 
0x00593F29:  call     dword ptr [0x95b314]              
0x00593F2F:  mov      dword ptr [ebp - 0x1a8], eax      
0x00593F35:  cmp      dword ptr [ebp - 0x1a8], -1       
0x00593F3C:  je       0x593f58                          
0x00593F3E:  call     dword ptr [0x95b318]              
0x00593F44:  cmp      eax, 0x2747                       
0x00593F49:  je       0x593f58                          
0x00593F4B:  call     dword ptr [0x95b310]              
0x00593F51:  xor      eax, eax                          
0x00593F53:  jmp      0x594128                          
0x00593F58:  push     0                                 
0x00593F5A:  call     0x680dc0                          
0x00593F5F:  add      esp, 4                            
0x00593F62:  mov      dword ptr [ebp - 0x1e0], eax      
0x00593F68:  mov      edx, dword ptr [0xb01b28]         
0x00593F6E:  mov      dword ptr [ebp - 0x1dc], edx      
0x00593F74:  mov      eax, dword ptr [ebp - 0x1bc]      
0x00593F7A:  mov      dword ptr [ebp - 0x1d8], eax      
0x00593F80:  mov      dword ptr [ebp - 0x1d4], 0        
0x00593F8A:  mov      ecx, dword ptr [ebp - 0x1e0]      
0x00593F90:  mov      dword ptr [ebp - 0x1d0], ecx      
0x00593F96:  mov      dword ptr [ebp - 0x1cc], 1        
0x00593FA0:  xor      edx, edx                          
0x00593FA2:  neg      edx                               
0x00593FA4:  sbb      edx, edx                          
0x00593FA6:  and      edx, 2                            
0x00593FA9:  or       edx, dword ptr [ebp - 0x1cc]      
0x00593FAF:  mov      dword ptr [ebp - 0x1cc], edx      
0x00593FB5:  mov      byte ptr [ebp - 0x1c8], 1         
0x00593FBC:  mov      dword ptr [ebp - 0x1c4], 3        
0x00593FC6:  mov      dword ptr [ebp - 0x1c0], 0        
0x00593FD0:  mov      eax, 1                            
0x00593FD5:  or       eax, 0x10                         
0x00593FD8:  mov      dword ptr [ebp - 0x1cc], eax      
0x00593FDE:  push     1                                 
0x00593FE0:  push     0                                 
0x00593FE2:  mov      ecx, dword ptr [ebp - 0x1dc]      
0x00593FE8:  push     ecx                               
0x00593FE9:  push     0                                 
0x00593FEB:  push     4                                 
0x00593FED:  lea      edx, [ebp - 0x1d4]                
0x00593FF3:  push     edx                               
0x00593FF4:  mov      eax, dword ptr [ebp - 0x1d8]      
0x00593FFA:  push     eax                               
0x00593FFB:  call     0x67ff60                          
0x00594000:  add      esp, 0x1c                         
0x00594003:  mov      dword ptr [ebp - 4], eax          
0x00594006:  cmp      dword ptr [ebp - 4], 0            
0x0059400A:  jne      0x594019                          
0x0059400C:  call     dword ptr [0x95b310]              
0x00594012:  xor      eax, eax                          
0x00594014:  jmp      0x594128                          
0x00594019:  mov      dword ptr [ebp - 0x1a4], 6        
0x00594023:  mov      dword ptr [ebp - 0x1a0], 0        
0x0059402D:  mov      dword ptr [ebp - 0x19c], 0        
0x00594037:  lea      ecx, [ebp - 0x1bc]                
0x0059403D:  push     ecx                               
0x0059403E:  mov      edx, dword ptr [ebp - 4]          
0x00594041:  push     edx                               
0x00594042:  lea      eax, [ebp - 0x1a4]                
0x00594048:  push     eax                               
0x00594049:  call     dword ptr [0x95b314]              
0x0059404F:  mov      dword ptr [ebp - 0x1a8], eax      
0x00594055:  push     0                                 
0x00594057:  push     1                                 
0x00594059:  push     0                                 
0x0059405B:  push     0                                 
0x0059405D:  push     0                                 
0x0059405F:  push     0                                 
0x00594061:  mov      ecx, dword ptr [ebp - 4]          
0x00594064:  push     ecx                               
0x00594065:  call     0x680690                          
0x0059406A:  add      esp, 0x1c                         
0x0059406D:  mov      dword ptr [ebp - 4], 0            
0x00594074:  xor      edx, edx                          
0x00594076:  jne      0x594055                          
0x00594078:  mov      dword ptr [ebp - 4], 0            
0x0059407F:  cmp      dword ptr [ebp - 0x1a8], -1       
0x00594086:  jne      0x594095                          
0x00594088:  call     dword ptr [0x95b310]              
0x0059408E:  xor      eax, eax                          
0x00594090:  jmp      0x594128                          
0x00594095:  push     0                                 
0x00594097:  call     dword ptr [0x95b2b4]              
0x0059409D:  mov      dword ptr [ebp - 0x1ac], eax      
0x005940A3:  mov      dword ptr [0xb4a128], 0           
0x005940AD:  mov      dword ptr [0xb4a12c], 0           
0x005940B7:  push     0x992f9c                           ; "0.0.0.0"
0x005940BC:  push     0x20                              
0x005940BE:  push     0xb4a0c8                          
0x005940C3:  call     0x694410                          
0x005940C8:  add      esp, 0xc                          
0x005940CB:  cmp      dword ptr [ebp - 0x1ac], 0        
0x005940D2:  je       0x594115                          
0x005940D4:  mov      eax, dword ptr [ebp - 0x1ac]      
0x005940DA:  mov      ecx, dword ptr [eax + 0xc]        
0x005940DD:  mov      edx, dword ptr [ecx]              
0x005940DF:  mov      eax, dword ptr [edx]              
0x005940E1:  mov      dword ptr [ebp - 0x1b4], eax      
0x005940E7:  mov      ecx, dword ptr [ebp - 0x1b4]      
0x005940ED:  mov      dword ptr [0xb4a128], ecx         
0x005940F3:  mov      edx, dword ptr [ebp - 0x1b4]      
0x005940F9:  mov      dword ptr [0xb4a12c], edx         
0x005940FF:  push     0x20                              
0x00594101:  push     0xb4a0c8                          
0x00594106:  mov      eax, dword ptr [ebp - 0x1b4]      
0x0059410C:  push     eax                               
0x0059410D:  call     0x58ef00                          
0x00594112:  add      esp, 0xc                          
0x00594115:  mov      byte ptr [0xb4a108], 0            
0x0059411C:  mov      byte ptr [0xb4a0e8], 0            
0x00594123:  mov      eax, 1                            
0x00594128:  mov      ecx, dword ptr [ebp - 8]          
0x0059412B:  xor      ecx, ebp                          
0x0059412D:  call     0x8eac64                          
0x00594132:  mov      esp, ebp                          
0x00594134:  pop      ebp                               
0x00594135:  ret                                        
0x00594136:  int3                                       
0x00594137:  int3                                       
0x00594138:  int3                                       
0x00594139:  int3                                       
0x0059413A:  int3                                       
0x0059413B:  int3                                       
0x0059413C:  int3                                       
0x0059413D:  int3                                       
0x0059413E:  int3                                       
0x0059413F:  int3                                       
0x00594140:  push     ebp                               
0x00594141:  mov      ebp, esp                          
0x00594143:  push     ecx                               
0x00594144:  call     dword ptr [0x95b310]              
0x0059414A:  mov      dword ptr [ebp - 4], eax          
0x0059414D:  cmp      dword ptr [ebp - 4], 0            
0x00594151:  je       0x594157                          
0x00594153:  xor      eax, eax                          
0x00594155:  jmp      0x59415c                          
0x00594157:  mov      eax, 1                            
0x0059415C:  mov      esp, ebp                          
0x0059415E:  pop      ebp                               
0x0059415F:  ret                                        
0x00594160:  push     ebp                               
0x00594161:  mov      ebp, esp                          
0x00594163:  call     0x58b8c0                          
0x00594168:  pop      ebp                               
0x00594169:  ret                                        
0x0059416A:  int3                                       
0x0059416B:  int3                                       
0x0059416C:  int3                                       
0x0059416D:  int3                                       
0x0059416E:  int3                                       
0x0059416F:  int3                                       
0x00594170:  push     ebp                               
0x00594171:  mov      ebp, esp                          
0x00594173:  mov      eax, dword ptr [ebp + 0x10]       
0x00594176:  push     eax                               
0x00594177:  mov      ecx, dword ptr [ebp + 0xc]        
0x0059417A:  push     ecx                               
0x0059417B:  mov      edx, dword ptr [ebp + 8]          
0x0059417E:  push     edx                               
0x0059417F:  call     dword ptr [0x95b308]              
0x00594185:  pop      ebp                               
0x00594186:  ret                                        
0x00594187:  int3                                       
0x00594188:  int3                                       
0x00594189:  int3                                       
0x0059418A:  int3                                       
0x0059418B:  int3                                       
0x0059418C:  int3                                       
0x0059418D:  int3                                       
0x0059418E:  int3                                       
0x0059418F:  int3                                       
0x00594190:  push     ebp                               
0x00594191:  mov      ebp, esp                          
0x00594193:  sub      esp, 8                            
0x00594196:  mov      dword ptr [ebp - 4], 4            
0x0059419D:  lea      eax, [ebp - 4]                    
0x005941A0:  push     eax                               
0x005941A1:  lea      ecx, [ebp - 8]                    
0x005941A4:  push     ecx                               
0x005941A5:  push     0x2003                            
0x005941AA:  push     0xffff                            
0x005941AF:  mov      edx, dword ptr [ebp + 8]          
0x005941B2:  push     edx                               
0x005941B3:  call     dword ptr [0x95b304]              
0x005941B9:  test     eax, eax                          
0x005941BB:  jne      0x5941c2                          
0x005941BD:  mov      eax, dword ptr [ebp - 8]          
0x005941C0:  jmp      0x5941c5                          
0x005941C2:  or       eax, 0xffffffff                   
0x005941C5:  mov      esp, ebp                          
0x005941C7:  pop      ebp                               
0x005941C8:  ret                                        
0x005941C9:  int3                                       
0x005941CA:  int3                                       
0x005941CB:  int3                                       
0x005941CC:  int3                                       
0x005941CD:  int3                                       
0x005941CE:  int3                                       
0x005941CF:  int3                                       
0x005941D0:  push     ebp                               
0x005941D1:  mov      ebp, esp                          
0x005941D3:  push     ecx                               
0x005941D4:  mov      dword ptr [ebp - 4], 1            
0x005941DB:  lea      eax, [ebp - 4]                    
0x005941DE:  push     eax                               
0x005941DF:  push     0x8004667e                        
0x005941E4:  mov      ecx, dword ptr [ebp + 8]          
0x005941E7:  push     ecx                               
0x005941E8:  call     dword ptr [0x95b2fc]              
0x005941EE:  mov      esp, ebp                          
0x005941F0:  pop      ebp                               
0x005941F1:  ret                                        
0x005941F2:  int3                                       
0x005941F3:  int3                                       
0x005941F4:  int3                                       
0x005941F5:  int3                                       
0x005941F6:  int3                                       
0x005941F7:  int3                                       
0x005941F8:  int3                                       
0x005941F9:  int3                                       
0x005941FA:  int3                                       
0x005941FB:  int3                                       
0x005941FC:  int3                                       
0x005941FD:  int3                                       
0x005941FE:  int3                                       
0x005941FF:  int3                                       
0x00594200:  push     ebp                               
0x00594201:  mov      ebp, esp                          
0x00594203:  push     ecx                               
0x00594204:  mov      eax, 1                            
0x00594209:  mov      word ptr [ebp - 4], ax            
0x0059420D:  xor      ecx, ecx                          
0x0059420F:  mov      word ptr [ebp - 2], cx            
0x00594213:  push     4                                 
0x00594215:  lea      edx, [ebp - 4]                    
0x00594218:  push     edx                               
0x00594219:  push     0x80                              
0x0059421E:  push     0xffff                            
0x00594223:  mov      eax, dword ptr [ebp + 8]          
0x00594226:  push     eax                               
0x00594227:  call     dword ptr [0x95b300]              
0x0059422D:  mov      esp, ebp                          
0x0059422F:  pop      ebp                               
0x00594230:  ret                                        
0x00594231:  int3                                       
0x00594232:  int3                                       
0x00594233:  int3                                       
0x00594234:  int3                                       
0x00594235:  int3                                       
0x00594236:  int3                                       
0x00594237:  int3                                       
0x00594238:  int3                                       
0x00594239:  int3                                       
0x0059423A:  int3                                       
0x0059423B:  int3                                       
0x0059423C:  int3                                       
0x0059423D:  int3                                       
0x0059423E:  int3                                       
0x0059423F:  int3                                       
0x00594240:  push     ebp                               
0x00594241:  mov      ebp, esp                          
0x00594243:  mov      eax, dword ptr [ebp + 0x10]       
0x00594246:  push     eax                               
0x00594247:  mov      ecx, dword ptr [ebp + 0xc]        
0x0059424A:  push     ecx                               
0x0059424B:  mov      edx, dword ptr [ebp + 8]          
0x0059424E:  push     edx                               
0x0059424F:  call     dword ptr [0x95b2f8]              
0x00594255:  pop      ebp                               
0x00594256:  ret                                        
0x00594257:  int3                                       
0x00594258:  int3                                       
0x00594259:  int3                                       
0x0059425A:  int3                                       
0x0059425B:  int3                                       
0x0059425C:  int3                                       
0x0059425D:  int3                                       
0x0059425E:  int3                                       
0x0059425F:  int3                                       
0x00594260:  push     ebp                               
0x00594261:  mov      ebp, esp                          
0x00594263:  mov      eax, dword ptr [ebp + 0xc]        
0x00594266:  push     eax                               
0x00594267:  mov      ecx, dword ptr [ebp + 8]          
0x0059426A:  push     ecx                               
0x0059426B:  call     dword ptr [0x95b2f4]              
0x00594271:  pop      ebp                               
0x00594272:  ret                                        
0x00594273:  int3                                       
0x00594274:  int3                                       
0x00594275:  int3                                       
0x00594276:  int3                                       
0x00594277:  int3                                       
0x00594278:  int3                                       
0x00594279:  int3                                       
0x0059427A:  int3                                       
0x0059427B:  int3                                       
0x0059427C:  int3                                       
0x0059427D:  int3                                       
0x0059427E:  int3                                       
0x0059427F:  int3                                       
0x00594280:  push     ebp                               
0x00594281:  mov      ebp, esp                          
0x00594283:  mov      eax, dword ptr [ebp + 0x10]       
0x00594286:  push     eax                               
0x00594287:  mov      ecx, dword ptr [ebp + 0xc]        
0x0059428A:  push     ecx                               
0x0059428B:  mov      edx, dword ptr [ebp + 8]          
0x0059428E:  push     edx                               
0x0059428F:  call     dword ptr [0x95b2f0]              
0x00594295:  pop      ebp                               
0x00594296:  ret                                        
0x00594297:  int3                                       
0x00594298:  int3                                       
0x00594299:  int3                                       
0x0059429A:  int3                                       
0x0059429B:  int3                                       
0x0059429C:  int3                                       
0x0059429D:  int3                                       
0x0059429E:  int3                                       
0x0059429F:  int3                                       
0x005942A0:  push     ebp                               
0x005942A1:  mov      ebp, esp                          
0x005942A3:  mov      eax, dword ptr [ebp + 0x10]       
0x005942A6:  push     eax                               
0x005942A7:  mov      ecx, dword ptr [ebp + 0xc]        
0x005942AA:  push     ecx                               
0x005942AB:  mov      edx, dword ptr [ebp + 8]          
0x005942AE:  push     edx                               
0x005942AF:  call     dword ptr [0x95b2ec]              
0x005942B5:  pop      ebp                               
0x005942B6:  ret                                        
0x005942B7:  int3                                       
0x005942B8:  int3                                       
0x005942B9:  int3                                       
0x005942BA:  int3                                       
0x005942BB:  int3                                       
0x005942BC:  int3                                       
0x005942BD:  int3                                       
0x005942BE:  int3                                       
0x005942BF:  int3                                       
0x005942C0:  push     ebp                               
0x005942C1:  mov      ebp, esp                          
0x005942C3:  sub      esp, 8                            
0x005942C6:  mov      eax, dword ptr [ebp + 0x18]       
0x005942C9:  mov      dword ptr [ebp - 8], eax          
0x005942CC:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005942CF:  mov      dword ptr [ebp - 4], ecx          
0x005942D2:  lea      edx, [ebp - 8]                    
0x005942D5:  push     edx                               
0x005942D6:  mov      eax, dword ptr [ebp + 0x14]       
0x005942D9:  push     eax                               
0x005942DA:  mov      ecx, dword ptr [ebp + 0x10]       
0x005942DD:  push     ecx                               
0x005942DE:  mov      edx, dword ptr [ebp + 0xc]        
0x005942E1:  push     edx                               
0x005942E2:  mov      eax, dword ptr [ebp + 8]          
0x005942E5:  push     eax                               
0x005942E6:  call     dword ptr [0x95b2e8]              
0x005942EC:  mov      esp, ebp                          
0x005942EE:  pop      ebp                               
0x005942EF:  ret                                        
0x005942F0:  push     ebp                               
0x005942F1:  mov      ebp, esp                          
0x005942F3:  mov      eax, dword ptr [ebp + 0x1c]       
0x005942F6:  push     eax                               
0x005942F7:  mov      ecx, dword ptr [ebp + 0x18]       
0x005942FA:  push     ecx                               
0x005942FB:  mov      edx, dword ptr [ebp + 0x14]       
0x005942FE:  push     edx                               
0x005942FF:  mov      eax, dword ptr [ebp + 0x10]       
0x00594302:  push     eax                               
0x00594303:  mov      ecx, dword ptr [ebp + 0xc]        
0x00594306:  push     ecx                               
0x00594307:  mov      edx, dword ptr [ebp + 8]          
0x0059430A:  push     edx                               
0x0059430B:  call     dword ptr [0x95b2e4]              
0x00594311:  pop      ebp                               
0x00594312:  ret                                        
0x00594313:  int3                                       
0x00594314:  int3                                       
0x00594315:  int3                                       
0x00594316:  int3                                       
0x00594317:  int3                                       
0x00594318:  int3                                       
0x00594319:  int3                                       
0x0059431A:  int3                                       
0x0059431B:  int3                                       
0x0059431C:  int3                                       
0x0059431D:  int3                                       
0x0059431E:  int3                                       
0x0059431F:  int3                                       
0x00594320:  push     ebp                               
0x00594321:  mov      ebp, esp                          
0x00594323:  mov      eax, dword ptr [ebp + 0x14]       
0x00594326:  push     eax                               
0x00594327:  mov      ecx, dword ptr [ebp + 0x10]       
0x0059432A:  push     ecx                               
0x0059432B:  mov      edx, dword ptr [ebp + 0xc]        
0x0059432E:  push     edx                               
0x0059432F:  mov      eax, dword ptr [ebp + 8]          
0x00594332:  push     eax                               
0x00594333:  call     dword ptr [0x95b2e0]              
0x00594339:  pop      ebp                               
0x0059433A:  ret                                        
0x0059433B:  int3                                       
0x0059433C:  int3                                       
0x0059433D:  int3                                       
0x0059433E:  int3                                       
0x0059433F:  int3                                       
0x00594340:  push     ebp                               
0x00594341:  mov      ebp, esp                          
0x00594343:  mov      eax, dword ptr [ebp + 0x1c]       
0x00594346:  push     eax                               
0x00594347:  mov      ecx, dword ptr [ebp + 0x18]       
0x0059434A:  push     ecx                               
0x0059434B:  mov      edx, dword ptr [ebp + 0x14]       
0x0059434E:  push     edx                               
0x0059434F:  mov      eax, dword ptr [ebp + 0x10]       
0x00594352:  push     eax                               
0x00594353:  mov      ecx, dword ptr [ebp + 0xc]        
0x00594356:  push     ecx                               
0x00594357:  mov      edx, dword ptr [ebp + 8]          
0x0059435A:  push     edx                               
0x0059435B:  call     dword ptr [0x95b2dc]              
0x00594361:  pop      ebp                               
0x00594362:  ret                                        
0x00594363:  int3                                       
0x00594364:  int3                                       
0x00594365:  int3                                       
0x00594366:  int3                                       
0x00594367:  int3                                       
0x00594368:  int3                                       
0x00594369:  int3                                       
0x0059436A:  int3                                       
0x0059436B:  int3                                       
0x0059436C:  int3                                       
0x0059436D:  int3                                       
0x0059436E:  int3                                       
0x0059436F:  int3                                       
0x00594370:  push     ebp                               
0x00594371:  mov      ebp, esp                          
0x00594373:  mov      eax, dword ptr [ebp + 0xc]        
0x00594376:  push     eax                               
0x00594377:  mov      ecx, dword ptr [ebp + 8]          
0x0059437A:  push     ecx                               
0x0059437B:  call     dword ptr [0x95b2d8]              
0x00594381:  pop      ebp                               
0x00594382:  ret                                        
0x00594383:  int3                                       
0x00594384:  int3                                       
0x00594385:  int3                                       
0x00594386:  int3                                       
0x00594387:  int3                                       
0x00594388:  int3                                       
0x00594389:  int3                                       
0x0059438A:  int3                                       
0x0059438B:  int3                                       
0x0059438C:  int3                                       
0x0059438D:  int3                                       
0x0059438E:  int3                                       
0x0059438F:  int3                                       
0x00594390:  push     ebp                               
0x00594391:  mov      ebp, esp                          
0x00594393:  mov      eax, dword ptr [ebp + 8]          
0x00594396:  push     eax                               
0x00594397:  call     dword ptr [0x95b2d4]              
0x0059439D:  pop      ebp                               
0x0059439E:  ret                                        
0x0059439F:  int3                                       
0x005943A0:  push     ebp                               
0x005943A1:  mov      ebp, esp                          
0x005943A3:  mov      eax, dword ptr [ebp + 0x10]       
0x005943A6:  push     eax                               
0x005943A7:  mov      ecx, dword ptr [ebp + 0xc]        
0x005943AA:  push     ecx                               
0x005943AB:  mov      edx, dword ptr [ebp + 8]          
0x005943AE:  push     edx                               
0x005943AF:  call     dword ptr [0x95b2d0]              
0x005943B5:  pop      ebp                               
0x005943B6:  ret                                        
0x005943B7:  int3                                       
0x005943B8:  int3                                       
0x005943B9:  int3                                       
0x005943BA:  int3                                       
0x005943BB:  int3                                       
0x005943BC:  int3                                       
0x005943BD:  int3                                       
0x005943BE:  int3                                       
0x005943BF:  int3                                       
0x005943C0:  push     ebp                               
0x005943C1:  mov      ebp, esp                          
0x005943C3:  mov      eax, dword ptr [ebp + 8]          
0x005943C6:  push     eax                               
0x005943C7:  call     dword ptr [0x95b2cc]              
0x005943CD:  pop      ebp                               
0x005943CE:  ret                                        
0x005943CF:  int3                                       
0x005943D0:  push     ebp                               
0x005943D1:  mov      ebp, esp                          
0x005943D3:  movzx    eax, word ptr [ebp + 8]           
0x005943D7:  push     eax                               
0x005943D8:  call     dword ptr [0x95b2c8]              
0x005943DE:  pop      ebp                               
0x005943DF:  ret                                        
0x005943E0:  push     ebp                               
0x005943E1:  mov      ebp, esp                          
0x005943E3:  mov      eax, dword ptr [ebp + 8]          
0x005943E6:  push     eax                               
0x005943E7:  call     dword ptr [0x95b2c4]              
0x005943ED:  pop      ebp                               
0x005943EE:  ret                                        
0x005943EF:  int3                                       
0x005943F0:  push     ebp                               
0x005943F1:  mov      ebp, esp                          
0x005943F3:  movzx    eax, word ptr [ebp + 8]           
0x005943F7:  push     eax                               
0x005943F8:  call     dword ptr [0x95b2c0]              
0x005943FE:  pop      ebp                               
0x005943FF:  ret                                        
0x00594400:  push     ebp                               
0x00594401:  mov      ebp, esp                          
0x00594403:  mov      eax, dword ptr [ebp + 8]          
0x00594406:  push     eax                               
0x00594407:  call     dword ptr [0x95b2bc]              
0x0059440D:  pop      ebp                               
0x0059440E:  ret                                        
0x0059440F:  int3                                       
0x00594410:  push     ebp                               
0x00594411:  mov      ebp, esp                          
0x00594413:  mov      eax, dword ptr [ebp + 8]          
0x00594416:  push     eax                               
0x00594417:  call     dword ptr [0x95b2b8]              
0x0059441D:  pop      ebp                               
0x0059441E:  ret                                        
0x0059441F:  int3                                       
0x00594420:  push     ebp                               
0x00594421:  mov      ebp, esp                          
0x00594423:  mov      eax, dword ptr [ebp + 0x20]       
0x00594426:  push     eax                               
0x00594427:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059442A:  push     ecx                               
0x0059442B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059442E:  push     edx                               
0x0059442F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594432:  push     eax                               
0x00594433:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594436:  push     ecx                               
0x00594437:  mov      edx, dword ptr [ebp + 0xc]        
0x0059443A:  push     edx                               
0x0059443B:  mov      eax, dword ptr [ebp + 8]          
0x0059443E:  push     eax                               
0x0059443F:  push     0                                 
0x00594441:  call     0x5c07a0                          
0x00594446:  add      esp, 0x20                         
0x00594449:  pop      ebp                               
0x0059444A:  ret                                        
0x0059444B:  int3                                       
0x0059444C:  int3                                       
0x0059444D:  int3                                       
0x0059444E:  int3                                       
0x0059444F:  int3                                       
0x00594450:  push     ebp                               
0x00594451:  mov      ebp, esp                          
0x00594453:  mov      eax, dword ptr [ebp + 0x20]       
0x00594456:  push     eax                               
0x00594457:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059445A:  push     ecx                               
0x0059445B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059445E:  push     edx                               
0x0059445F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594462:  push     eax                               
0x00594463:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594466:  push     ecx                               
0x00594467:  mov      edx, dword ptr [ebp + 0xc]        
0x0059446A:  push     edx                               
0x0059446B:  mov      eax, dword ptr [ebp + 8]          
0x0059446E:  push     eax                               
0x0059446F:  push     1                                 
0x00594471:  call     0x5c07a0                          
0x00594476:  add      esp, 0x20                         
0x00594479:  pop      ebp                               
0x0059447A:  ret                                        
0x0059447B:  int3                                       
0x0059447C:  int3                                       
0x0059447D:  int3                                       
0x0059447E:  int3                                       
0x0059447F:  int3                                       
0x00594480:  push     ebp                               
0x00594481:  mov      ebp, esp                          
0x00594483:  mov      eax, dword ptr [ebp + 0x20]       
0x00594486:  push     eax                               
0x00594487:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059448A:  push     ecx                               
0x0059448B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059448E:  push     edx                               
0x0059448F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594492:  push     eax                               
0x00594493:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594496:  push     ecx                               
0x00594497:  mov      edx, dword ptr [ebp + 0xc]        
0x0059449A:  push     edx                               
0x0059449B:  mov      eax, dword ptr [ebp + 8]          
0x0059449E:  push     eax                               
0x0059449F:  push     2                                 
0x005944A1:  call     0x5c07a0                          
0x005944A6:  add      esp, 0x20                         
0x005944A9:  pop      ebp                               
0x005944AA:  ret                                        
0x005944AB:  int3                                       
0x005944AC:  int3                                       
0x005944AD:  int3                                       
0x005944AE:  int3                                       
0x005944AF:  int3                                       
0x005944B0:  push     ebp                               
0x005944B1:  mov      ebp, esp                          
0x005944B3:  mov      eax, dword ptr [ebp + 0x20]       
0x005944B6:  push     eax                               
0x005944B7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005944BA:  push     ecx                               
0x005944BB:  mov      edx, dword ptr [ebp + 0x18]       
0x005944BE:  push     edx                               
0x005944BF:  mov      eax, dword ptr [ebp + 0x14]       
0x005944C2:  push     eax                               
0x005944C3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005944C6:  push     ecx                               
0x005944C7:  mov      edx, dword ptr [ebp + 0xc]        
0x005944CA:  push     edx                               
0x005944CB:  mov      eax, dword ptr [ebp + 8]          
0x005944CE:  push     eax                               
0x005944CF:  push     6                                 
0x005944D1:  call     0x5c07a0                          
0x005944D6:  add      esp, 0x20                         
0x005944D9:  pop      ebp                               
0x005944DA:  ret                                        
0x005944DB:  int3                                       
0x005944DC:  int3                                       
0x005944DD:  int3                                       
0x005944DE:  int3                                       
0x005944DF:  int3                                       
0x005944E0:  push     ebp                               
0x005944E1:  mov      ebp, esp                          
0x005944E3:  mov      eax, dword ptr [ebp + 0x20]       
0x005944E6:  push     eax                               
0x005944E7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005944EA:  push     ecx                               
0x005944EB:  mov      edx, dword ptr [ebp + 0x18]       
0x005944EE:  push     edx                               
0x005944EF:  mov      eax, dword ptr [ebp + 0x14]       
0x005944F2:  push     eax                               
0x005944F3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005944F6:  push     ecx                               
0x005944F7:  mov      edx, dword ptr [ebp + 0xc]        
0x005944FA:  push     edx                               
0x005944FB:  mov      eax, dword ptr [ebp + 8]          
0x005944FE:  push     eax                               
0x005944FF:  push     7                                 
0x00594501:  call     0x5c07a0                          
0x00594506:  add      esp, 0x20                         
0x00594509:  pop      ebp                               
0x0059450A:  ret                                        
0x0059450B:  int3                                       
0x0059450C:  int3                                       
0x0059450D:  int3                                       
0x0059450E:  int3                                       
0x0059450F:  int3                                       
0x00594510:  push     ebp                               
0x00594511:  mov      ebp, esp                          
0x00594513:  mov      eax, dword ptr [ebp + 0x20]       
0x00594516:  push     eax                               
0x00594517:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059451A:  push     ecx                               
0x0059451B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059451E:  push     edx                               
0x0059451F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594522:  push     eax                               
0x00594523:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594526:  push     ecx                               
0x00594527:  mov      edx, dword ptr [ebp + 0xc]        
0x0059452A:  push     edx                               
0x0059452B:  mov      eax, dword ptr [ebp + 8]          
0x0059452E:  push     eax                               
0x0059452F:  push     0xf                               
0x00594531:  call     0x5c07a0                          
0x00594536:  add      esp, 0x20                         
0x00594539:  pop      ebp                               
0x0059453A:  ret                                        
0x0059453B:  int3                                       
0x0059453C:  int3                                       
0x0059453D:  int3                                       
0x0059453E:  int3                                       
0x0059453F:  int3                                       
0x00594540:  push     ebp                               
0x00594541:  mov      ebp, esp                          
0x00594543:  mov      eax, dword ptr [ebp + 0x20]       
0x00594546:  push     eax                               
0x00594547:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059454A:  push     ecx                               
0x0059454B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059454E:  push     edx                               
0x0059454F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594552:  push     eax                               
0x00594553:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594556:  push     ecx                               
0x00594557:  mov      edx, dword ptr [ebp + 0xc]        
0x0059455A:  push     edx                               
0x0059455B:  mov      eax, dword ptr [ebp + 8]          
0x0059455E:  push     eax                               
0x0059455F:  push     0x10                              
0x00594561:  call     0x5c07a0                          
0x00594566:  add      esp, 0x20                         
0x00594569:  pop      ebp                               
0x0059456A:  ret                                        
0x0059456B:  int3                                       
0x0059456C:  int3                                       
0x0059456D:  int3                                       
0x0059456E:  int3                                       
0x0059456F:  int3                                       
0x00594570:  push     ebp                               
0x00594571:  mov      ebp, esp                          
0x00594573:  mov      eax, dword ptr [ebp + 0x20]       
0x00594576:  push     eax                               
0x00594577:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059457A:  push     ecx                               
0x0059457B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059457E:  push     edx                               
0x0059457F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594582:  push     eax                               
0x00594583:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594586:  push     ecx                               
0x00594587:  mov      edx, dword ptr [ebp + 0xc]        
0x0059458A:  push     edx                               
0x0059458B:  mov      eax, dword ptr [ebp + 8]          
0x0059458E:  push     eax                               
0x0059458F:  push     8                                 
0x00594591:  call     0x5c07a0                          
0x00594596:  add      esp, 0x20                         
0x00594599:  pop      ebp                               
0x0059459A:  ret                                        
0x0059459B:  int3                                       
0x0059459C:  int3                                       
0x0059459D:  int3                                       
0x0059459E:  int3                                       
0x0059459F:  int3                                       
0x005945A0:  push     ebp                               
0x005945A1:  mov      ebp, esp                          
0x005945A3:  mov      eax, dword ptr [ebp + 0x20]       
0x005945A6:  push     eax                               
0x005945A7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005945AA:  push     ecx                               
0x005945AB:  mov      edx, dword ptr [ebp + 0x18]       
0x005945AE:  push     edx                               
0x005945AF:  mov      eax, dword ptr [ebp + 0x14]       
0x005945B2:  push     eax                               
0x005945B3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005945B6:  push     ecx                               
0x005945B7:  mov      edx, dword ptr [ebp + 0xc]        
0x005945BA:  push     edx                               
0x005945BB:  mov      eax, dword ptr [ebp + 8]          
0x005945BE:  push     eax                               
0x005945BF:  push     9                                 
0x005945C1:  call     0x5c07a0                          
0x005945C6:  add      esp, 0x20                         
0x005945C9:  pop      ebp                               
0x005945CA:  ret                                        
0x005945CB:  int3                                       
0x005945CC:  int3                                       
0x005945CD:  int3                                       
0x005945CE:  int3                                       
0x005945CF:  int3                                       
0x005945D0:  push     ebp                               
0x005945D1:  mov      ebp, esp                          
0x005945D3:  mov      eax, dword ptr [ebp + 0x20]       
0x005945D6:  push     eax                               
0x005945D7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005945DA:  push     ecx                               
0x005945DB:  mov      edx, dword ptr [ebp + 0x18]       
0x005945DE:  push     edx                               
0x005945DF:  mov      eax, dword ptr [ebp + 0x14]       
0x005945E2:  push     eax                               
0x005945E3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005945E6:  push     ecx                               
0x005945E7:  mov      edx, dword ptr [ebp + 0xc]        
0x005945EA:  push     edx                               
0x005945EB:  mov      eax, dword ptr [ebp + 8]          
0x005945EE:  push     eax                               
0x005945EF:  push     0xa                               
0x005945F1:  call     0x5c07a0                          
0x005945F6:  add      esp, 0x20                         
0x005945F9:  pop      ebp                               
0x005945FA:  ret                                        
0x005945FB:  int3                                       
0x005945FC:  int3                                       
0x005945FD:  int3                                       
0x005945FE:  int3                                       
0x005945FF:  int3                                       
0x00594600:  push     ebp                               
0x00594601:  mov      ebp, esp                          
0x00594603:  mov      eax, dword ptr [ebp + 0x20]       
0x00594606:  push     eax                               
0x00594607:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059460A:  push     ecx                               
0x0059460B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059460E:  push     edx                               
0x0059460F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594612:  push     eax                               
0x00594613:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594616:  push     ecx                               
0x00594617:  mov      edx, dword ptr [ebp + 0xc]        
0x0059461A:  push     edx                               
0x0059461B:  mov      eax, dword ptr [ebp + 8]          
0x0059461E:  push     eax                               
0x0059461F:  push     0xb                               
0x00594621:  call     0x5c07a0                          
0x00594626:  add      esp, 0x20                         
0x00594629:  pop      ebp                               
0x0059462A:  ret                                        
0x0059462B:  int3                                       
0x0059462C:  int3                                       
0x0059462D:  int3                                       
0x0059462E:  int3                                       
0x0059462F:  int3                                       
0x00594630:  push     ebp                               
0x00594631:  mov      ebp, esp                          
0x00594633:  mov      eax, dword ptr [ebp + 0x20]       
0x00594636:  push     eax                               
0x00594637:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059463A:  push     ecx                               
0x0059463B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059463E:  push     edx                               
0x0059463F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594642:  push     eax                               
0x00594643:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594646:  push     ecx                               
0x00594647:  mov      edx, dword ptr [ebp + 0xc]        
0x0059464A:  push     edx                               
0x0059464B:  mov      eax, dword ptr [ebp + 8]          
0x0059464E:  push     eax                               
0x0059464F:  push     0xc                               
0x00594651:  call     0x5c07a0                          
0x00594656:  add      esp, 0x20                         
0x00594659:  pop      ebp                               
0x0059465A:  ret                                        
0x0059465B:  int3                                       
0x0059465C:  int3                                       
0x0059465D:  int3                                       
0x0059465E:  int3                                       
0x0059465F:  int3                                       
0x00594660:  push     ebp                               
0x00594661:  mov      ebp, esp                          
0x00594663:  mov      eax, dword ptr [ebp + 0x20]       
0x00594666:  push     eax                               
0x00594667:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059466A:  push     ecx                               
0x0059466B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059466E:  push     edx                               
0x0059466F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594672:  push     eax                               
0x00594673:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594676:  push     ecx                               
0x00594677:  mov      edx, dword ptr [ebp + 0xc]        
0x0059467A:  push     edx                               
0x0059467B:  mov      eax, dword ptr [ebp + 8]          
0x0059467E:  push     eax                               
0x0059467F:  push     5                                 
0x00594681:  call     0x5c07a0                          
0x00594686:  add      esp, 0x20                         
0x00594689:  pop      ebp                               
0x0059468A:  ret                                        
0x0059468B:  int3                                       
0x0059468C:  int3                                       
0x0059468D:  int3                                       
0x0059468E:  int3                                       
0x0059468F:  int3                                       
0x00594690:  push     ebp                               
0x00594691:  mov      ebp, esp                          
0x00594693:  mov      eax, dword ptr [ebp + 0x20]       
0x00594696:  push     eax                               
0x00594697:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059469A:  push     ecx                               
0x0059469B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059469E:  push     edx                               
0x0059469F:  mov      eax, dword ptr [ebp + 0x14]       
0x005946A2:  push     eax                               
0x005946A3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005946A6:  push     ecx                               
0x005946A7:  mov      edx, dword ptr [ebp + 0xc]        
0x005946AA:  push     edx                               
0x005946AB:  mov      eax, dword ptr [ebp + 8]          
0x005946AE:  push     eax                               
0x005946AF:  push     0                                 
0x005946B1:  call     0x5c0b30                          
0x005946B6:  add      esp, 0x20                         
0x005946B9:  pop      ebp                               
0x005946BA:  ret                                        
0x005946BB:  int3                                       
0x005946BC:  int3                                       
0x005946BD:  int3                                       
0x005946BE:  int3                                       
0x005946BF:  int3                                       
0x005946C0:  push     ebp                               
0x005946C1:  mov      ebp, esp                          
0x005946C3:  mov      eax, dword ptr [ebp + 0x20]       
0x005946C6:  push     eax                               
0x005946C7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005946CA:  push     ecx                               
0x005946CB:  mov      edx, dword ptr [ebp + 0x18]       
0x005946CE:  push     edx                               
0x005946CF:  mov      eax, dword ptr [ebp + 0x14]       
0x005946D2:  push     eax                               
0x005946D3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005946D6:  push     ecx                               
0x005946D7:  mov      edx, dword ptr [ebp + 0xc]        
0x005946DA:  push     edx                               
0x005946DB:  mov      eax, dword ptr [ebp + 8]          
0x005946DE:  push     eax                               
0x005946DF:  push     1                                 
0x005946E1:  call     0x5c0b30                          
0x005946E6:  add      esp, 0x20                         
0x005946E9:  pop      ebp                               
0x005946EA:  ret                                        
0x005946EB:  int3                                       
0x005946EC:  int3                                       
0x005946ED:  int3                                       
0x005946EE:  int3                                       
0x005946EF:  int3                                       
0x005946F0:  push     ebp                               
0x005946F1:  mov      ebp, esp                          
0x005946F3:  mov      eax, dword ptr [ebp + 0x20]       
0x005946F6:  push     eax                               
0x005946F7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005946FA:  push     ecx                               
0x005946FB:  mov      edx, dword ptr [ebp + 0x18]       
0x005946FE:  push     edx                               
0x005946FF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594702:  push     eax                               
0x00594703:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594706:  push     ecx                               
0x00594707:  mov      edx, dword ptr [ebp + 0xc]        
0x0059470A:  push     edx                               
0x0059470B:  mov      eax, dword ptr [ebp + 8]          
0x0059470E:  push     eax                               
0x0059470F:  push     2                                 
0x00594711:  call     0x5c0b30                          
0x00594716:  add      esp, 0x20                         
0x00594719:  pop      ebp                               
0x0059471A:  ret                                        
0x0059471B:  int3                                       
0x0059471C:  int3                                       
0x0059471D:  int3                                       
0x0059471E:  int3                                       
0x0059471F:  int3                                       
0x00594720:  push     ebp                               
0x00594721:  mov      ebp, esp                          
0x00594723:  mov      eax, dword ptr [ebp + 0x20]       
0x00594726:  push     eax                               
0x00594727:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059472A:  push     ecx                               
0x0059472B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059472E:  push     edx                               
0x0059472F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594732:  push     eax                               
0x00594733:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594736:  push     ecx                               
0x00594737:  mov      edx, dword ptr [ebp + 0xc]        
0x0059473A:  push     edx                               
0x0059473B:  mov      eax, dword ptr [ebp + 8]          
0x0059473E:  push     eax                               
0x0059473F:  push     3                                 
0x00594741:  call     0x5c0b30                          
0x00594746:  add      esp, 0x20                         
0x00594749:  pop      ebp                               
0x0059474A:  ret                                        
0x0059474B:  int3                                       
0x0059474C:  int3                                       
0x0059474D:  int3                                       
0x0059474E:  int3                                       
0x0059474F:  int3                                       
0x00594750:  push     ebp                               
0x00594751:  mov      ebp, esp                          
0x00594753:  mov      eax, dword ptr [ebp + 0x20]       
0x00594756:  push     eax                               
0x00594757:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059475A:  push     ecx                               
0x0059475B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059475E:  push     edx                               
0x0059475F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594762:  push     eax                               
0x00594763:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594766:  push     ecx                               
0x00594767:  mov      edx, dword ptr [ebp + 0xc]        
0x0059476A:  push     edx                               
0x0059476B:  mov      eax, dword ptr [ebp + 8]          
0x0059476E:  push     eax                               
0x0059476F:  push     6                                 
0x00594771:  call     0x5c0b30                          
0x00594776:  add      esp, 0x20                         
0x00594779:  pop      ebp                               
0x0059477A:  ret                                        
0x0059477B:  int3                                       
0x0059477C:  int3                                       
0x0059477D:  int3                                       
0x0059477E:  int3                                       
0x0059477F:  int3                                       
0x00594780:  push     ebp                               
0x00594781:  mov      ebp, esp                          
0x00594783:  mov      eax, dword ptr [ebp + 0x20]       
0x00594786:  push     eax                               
0x00594787:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059478A:  push     ecx                               
0x0059478B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059478E:  push     edx                               
0x0059478F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594792:  push     eax                               
0x00594793:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594796:  push     ecx                               
0x00594797:  mov      edx, dword ptr [ebp + 0xc]        
0x0059479A:  push     edx                               
0x0059479B:  mov      eax, dword ptr [ebp + 8]          
0x0059479E:  push     eax                               
0x0059479F:  push     7                                 
0x005947A1:  call     0x5c0b30                          
0x005947A6:  add      esp, 0x20                         
0x005947A9:  pop      ebp                               
0x005947AA:  ret                                        
0x005947AB:  int3                                       
0x005947AC:  int3                                       
0x005947AD:  int3                                       
0x005947AE:  int3                                       
0x005947AF:  int3                                       
0x005947B0:  push     ebp                               
0x005947B1:  mov      ebp, esp                          
0x005947B3:  mov      eax, dword ptr [ebp + 0x20]       
0x005947B6:  push     eax                               
0x005947B7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005947BA:  push     ecx                               
0x005947BB:  mov      edx, dword ptr [ebp + 0x18]       
0x005947BE:  push     edx                               
0x005947BF:  mov      eax, dword ptr [ebp + 0x14]       
0x005947C2:  push     eax                               
0x005947C3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005947C6:  push     ecx                               
0x005947C7:  mov      edx, dword ptr [ebp + 0xc]        
0x005947CA:  push     edx                               
0x005947CB:  mov      eax, dword ptr [ebp + 8]          
0x005947CE:  push     eax                               
0x005947CF:  push     0xf                               
0x005947D1:  call     0x5c0b30                          
0x005947D6:  add      esp, 0x20                         
0x005947D9:  pop      ebp                               
0x005947DA:  ret                                        
0x005947DB:  int3                                       
0x005947DC:  int3                                       
0x005947DD:  int3                                       
0x005947DE:  int3                                       
0x005947DF:  int3                                       
0x005947E0:  push     ebp                               
0x005947E1:  mov      ebp, esp                          
0x005947E3:  mov      eax, dword ptr [ebp + 0x20]       
0x005947E6:  push     eax                               
0x005947E7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005947EA:  push     ecx                               
0x005947EB:  mov      edx, dword ptr [ebp + 0x18]       
0x005947EE:  push     edx                               
0x005947EF:  mov      eax, dword ptr [ebp + 0x14]       
0x005947F2:  push     eax                               
0x005947F3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005947F6:  push     ecx                               
0x005947F7:  mov      edx, dword ptr [ebp + 0xc]        
0x005947FA:  push     edx                               
0x005947FB:  mov      eax, dword ptr [ebp + 8]          
0x005947FE:  push     eax                               
0x005947FF:  push     0x10                              
0x00594801:  call     0x5c0b30                          
0x00594806:  add      esp, 0x20                         
0x00594809:  pop      ebp                               
0x0059480A:  ret                                        
0x0059480B:  int3                                       
0x0059480C:  int3                                       
0x0059480D:  int3                                       
0x0059480E:  int3                                       
0x0059480F:  int3                                       
0x00594810:  push     ebp                               
0x00594811:  mov      ebp, esp                          
0x00594813:  mov      eax, dword ptr [ebp + 0x20]       
0x00594816:  push     eax                               
0x00594817:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059481A:  push     ecx                               
0x0059481B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059481E:  push     edx                               
0x0059481F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594822:  push     eax                               
0x00594823:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594826:  push     ecx                               
0x00594827:  mov      edx, dword ptr [ebp + 0xc]        
0x0059482A:  push     edx                               
0x0059482B:  mov      eax, dword ptr [ebp + 8]          
0x0059482E:  push     eax                               
0x0059482F:  push     8                                 
0x00594831:  call     0x5c0b30                          
0x00594836:  add      esp, 0x20                         
0x00594839:  pop      ebp                               
0x0059483A:  ret                                        
0x0059483B:  int3                                       
0x0059483C:  int3                                       
0x0059483D:  int3                                       
0x0059483E:  int3                                       
0x0059483F:  int3                                       
0x00594840:  push     ebp                               
0x00594841:  mov      ebp, esp                          
0x00594843:  mov      eax, dword ptr [ebp + 0x20]       
0x00594846:  push     eax                               
0x00594847:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059484A:  push     ecx                               
0x0059484B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059484E:  push     edx                               
0x0059484F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594852:  push     eax                               
0x00594853:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594856:  push     ecx                               
0x00594857:  mov      edx, dword ptr [ebp + 0xc]        
0x0059485A:  push     edx                               
0x0059485B:  mov      eax, dword ptr [ebp + 8]          
0x0059485E:  push     eax                               
0x0059485F:  push     9                                 
0x00594861:  call     0x5c0b30                          
0x00594866:  add      esp, 0x20                         
0x00594869:  pop      ebp                               
0x0059486A:  ret                                        
0x0059486B:  int3                                       
0x0059486C:  int3                                       
0x0059486D:  int3                                       
0x0059486E:  int3                                       
0x0059486F:  int3                                       
0x00594870:  push     ebp                               
0x00594871:  mov      ebp, esp                          
0x00594873:  mov      eax, dword ptr [ebp + 0x20]       
0x00594876:  push     eax                               
0x00594877:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059487A:  push     ecx                               
0x0059487B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059487E:  push     edx                               
0x0059487F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594882:  push     eax                               
0x00594883:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594886:  push     ecx                               
0x00594887:  mov      edx, dword ptr [ebp + 0xc]        
0x0059488A:  push     edx                               
0x0059488B:  mov      eax, dword ptr [ebp + 8]          
0x0059488E:  push     eax                               
0x0059488F:  push     0xa                               
0x00594891:  call     0x5c0b30                          
0x00594896:  add      esp, 0x20                         
0x00594899:  pop      ebp                               
0x0059489A:  ret                                        
0x0059489B:  int3                                       
0x0059489C:  int3                                       
0x0059489D:  int3                                       
0x0059489E:  int3                                       
0x0059489F:  int3                                       
0x005948A0:  push     ebp                               
0x005948A1:  mov      ebp, esp                          
0x005948A3:  mov      eax, dword ptr [ebp + 0x20]       
0x005948A6:  push     eax                               
0x005948A7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005948AA:  push     ecx                               
0x005948AB:  mov      edx, dword ptr [ebp + 0x18]       
0x005948AE:  push     edx                               
0x005948AF:  mov      eax, dword ptr [ebp + 0x14]       
0x005948B2:  push     eax                               
0x005948B3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005948B6:  push     ecx                               
0x005948B7:  mov      edx, dword ptr [ebp + 0xc]        
0x005948BA:  push     edx                               
0x005948BB:  mov      eax, dword ptr [ebp + 8]          
0x005948BE:  push     eax                               
0x005948BF:  push     0xb                               
0x005948C1:  call     0x5c0b30                          
0x005948C6:  add      esp, 0x20                         
0x005948C9:  pop      ebp                               
0x005948CA:  ret                                        
0x005948CB:  int3                                       
0x005948CC:  int3                                       
0x005948CD:  int3                                       
0x005948CE:  int3                                       
0x005948CF:  int3                                       
0x005948D0:  push     ebp                               
0x005948D1:  mov      ebp, esp                          
0x005948D3:  mov      eax, dword ptr [ebp + 0x20]       
0x005948D6:  push     eax                               
0x005948D7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005948DA:  push     ecx                               
0x005948DB:  mov      edx, dword ptr [ebp + 0x18]       
0x005948DE:  push     edx                               
0x005948DF:  mov      eax, dword ptr [ebp + 0x14]       
0x005948E2:  push     eax                               
0x005948E3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005948E6:  push     ecx                               
0x005948E7:  mov      edx, dword ptr [ebp + 0xc]        
0x005948EA:  push     edx                               
0x005948EB:  mov      eax, dword ptr [ebp + 8]          
0x005948EE:  push     eax                               
0x005948EF:  push     0xc                               
0x005948F1:  call     0x5c0b30                          
0x005948F6:  add      esp, 0x20                         
0x005948F9:  pop      ebp                               
0x005948FA:  ret                                        
0x005948FB:  int3                                       
0x005948FC:  int3                                       
0x005948FD:  int3                                       
0x005948FE:  int3                                       
0x005948FF:  int3                                       
0x00594900:  push     ebp                               
0x00594901:  mov      ebp, esp                          
0x00594903:  mov      eax, dword ptr [ebp + 0x20]       
0x00594906:  push     eax                               
0x00594907:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059490A:  push     ecx                               
0x0059490B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059490E:  push     edx                               
0x0059490F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594912:  push     eax                               
0x00594913:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594916:  push     ecx                               
0x00594917:  mov      edx, dword ptr [ebp + 0xc]        
0x0059491A:  push     edx                               
0x0059491B:  mov      eax, dword ptr [ebp + 8]          
0x0059491E:  push     eax                               
0x0059491F:  push     5                                 
0x00594921:  call     0x5c0b30                          
0x00594926:  add      esp, 0x20                         
0x00594929:  pop      ebp                               
0x0059492A:  ret                                        
0x0059492B:  int3                                       
0x0059492C:  int3                                       
0x0059492D:  int3                                       
0x0059492E:  int3                                       
0x0059492F:  int3                                       
0x00594930:  push     ebp                               
0x00594931:  mov      ebp, esp                          
0x00594933:  mov      eax, dword ptr [ebp + 0x20]       
0x00594936:  push     eax                               
0x00594937:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059493A:  push     ecx                               
0x0059493B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059493E:  push     edx                               
0x0059493F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594942:  push     eax                               
0x00594943:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594946:  push     ecx                               
0x00594947:  mov      edx, dword ptr [ebp + 0xc]        
0x0059494A:  push     edx                               
0x0059494B:  mov      eax, dword ptr [ebp + 8]          
0x0059494E:  push     eax                               
0x0059494F:  push     0xe                               
0x00594951:  call     0x5c0b30                          
0x00594956:  add      esp, 0x20                         
0x00594959:  pop      ebp                               
0x0059495A:  ret                                        
0x0059495B:  int3                                       
0x0059495C:  int3                                       
0x0059495D:  int3                                       
0x0059495E:  int3                                       
0x0059495F:  int3                                       
0x00594960:  push     ebp                               
0x00594961:  mov      ebp, esp                          
0x00594963:  mov      eax, dword ptr [ebp + 0x20]       
0x00594966:  push     eax                               
0x00594967:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059496A:  push     ecx                               
0x0059496B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059496E:  push     edx                               
0x0059496F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594972:  push     eax                               
0x00594973:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594976:  push     ecx                               
0x00594977:  mov      edx, dword ptr [ebp + 0xc]        
0x0059497A:  push     edx                               
0x0059497B:  mov      eax, dword ptr [ebp + 8]          
0x0059497E:  push     eax                               
0x0059497F:  push     0                                 
0x00594981:  call     0x5c05a0                          
0x00594986:  add      esp, 0x20                         
0x00594989:  pop      ebp                               
0x0059498A:  ret                                        
0x0059498B:  int3                                       
0x0059498C:  int3                                       
0x0059498D:  int3                                       
0x0059498E:  int3                                       
0x0059498F:  int3                                       
0x00594990:  push     ebp                               
0x00594991:  mov      ebp, esp                          
0x00594993:  mov      eax, dword ptr [ebp + 0x20]       
0x00594996:  push     eax                               
0x00594997:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059499A:  push     ecx                               
0x0059499B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059499E:  push     edx                               
0x0059499F:  mov      eax, dword ptr [ebp + 0x14]       
0x005949A2:  push     eax                               
0x005949A3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005949A6:  push     ecx                               
0x005949A7:  mov      edx, dword ptr [ebp + 0xc]        
0x005949AA:  push     edx                               
0x005949AB:  mov      eax, dword ptr [ebp + 8]          
0x005949AE:  push     eax                               
0x005949AF:  push     1                                 
0x005949B1:  call     0x5c05a0                          
0x005949B6:  add      esp, 0x20                         
0x005949B9:  pop      ebp                               
0x005949BA:  ret                                        
0x005949BB:  int3                                       
0x005949BC:  int3                                       
0x005949BD:  int3                                       
0x005949BE:  int3                                       
0x005949BF:  int3                                       
0x005949C0:  push     ebp                               
0x005949C1:  mov      ebp, esp                          
0x005949C3:  mov      eax, dword ptr [ebp + 0x20]       
0x005949C6:  push     eax                               
0x005949C7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005949CA:  push     ecx                               
0x005949CB:  mov      edx, dword ptr [ebp + 0x18]       
0x005949CE:  push     edx                               
0x005949CF:  mov      eax, dword ptr [ebp + 0x14]       
0x005949D2:  push     eax                               
0x005949D3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005949D6:  push     ecx                               
0x005949D7:  mov      edx, dword ptr [ebp + 0xc]        
0x005949DA:  push     edx                               
0x005949DB:  mov      eax, dword ptr [ebp + 8]          
0x005949DE:  push     eax                               
0x005949DF:  push     2                                 
0x005949E1:  call     0x5c05a0                          
0x005949E6:  add      esp, 0x20                         
0x005949E9:  pop      ebp                               
0x005949EA:  ret                                        
0x005949EB:  int3                                       
0x005949EC:  int3                                       
0x005949ED:  int3                                       
0x005949EE:  int3                                       
0x005949EF:  int3                                       
0x005949F0:  push     ebp                               
0x005949F1:  mov      ebp, esp                          
0x005949F3:  mov      eax, dword ptr [ebp + 0x20]       
0x005949F6:  push     eax                               
0x005949F7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005949FA:  push     ecx                               
0x005949FB:  mov      edx, dword ptr [ebp + 0x18]       
0x005949FE:  push     edx                               
0x005949FF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594A02:  push     eax                               
0x00594A03:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594A06:  push     ecx                               
0x00594A07:  mov      edx, dword ptr [ebp + 0xc]        
0x00594A0A:  push     edx                               
0x00594A0B:  mov      eax, dword ptr [ebp + 8]          
0x00594A0E:  push     eax                               
0x00594A0F:  push     6                                 
0x00594A11:  call     0x5c05a0                          
0x00594A16:  add      esp, 0x20                         
0x00594A19:  pop      ebp                               
0x00594A1A:  ret                                        
0x00594A1B:  int3                                       
0x00594A1C:  int3                                       
0x00594A1D:  int3                                       
0x00594A1E:  int3                                       
0x00594A1F:  int3                                       
0x00594A20:  push     ebp                               
0x00594A21:  mov      ebp, esp                          
0x00594A23:  mov      eax, dword ptr [ebp + 0x20]       
0x00594A26:  push     eax                               
0x00594A27:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594A2A:  push     ecx                               
0x00594A2B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594A2E:  push     edx                               
0x00594A2F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594A32:  push     eax                               
0x00594A33:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594A36:  push     ecx                               
0x00594A37:  mov      edx, dword ptr [ebp + 0xc]        
0x00594A3A:  push     edx                               
0x00594A3B:  mov      eax, dword ptr [ebp + 8]          
0x00594A3E:  push     eax                               
0x00594A3F:  push     7                                 
0x00594A41:  call     0x5c05a0                          
0x00594A46:  add      esp, 0x20                         
0x00594A49:  pop      ebp                               
0x00594A4A:  ret                                        
0x00594A4B:  int3                                       
0x00594A4C:  int3                                       
0x00594A4D:  int3                                       
0x00594A4E:  int3                                       
0x00594A4F:  int3                                       
0x00594A50:  push     ebp                               
0x00594A51:  mov      ebp, esp                          
0x00594A53:  mov      eax, dword ptr [ebp + 0x20]       
0x00594A56:  push     eax                               
0x00594A57:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594A5A:  push     ecx                               
0x00594A5B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594A5E:  push     edx                               
0x00594A5F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594A62:  push     eax                               
0x00594A63:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594A66:  push     ecx                               
0x00594A67:  mov      edx, dword ptr [ebp + 0xc]        
0x00594A6A:  push     edx                               
0x00594A6B:  mov      eax, dword ptr [ebp + 8]          
0x00594A6E:  push     eax                               
0x00594A6F:  push     0xf                               
0x00594A71:  call     0x5c05a0                          
0x00594A76:  add      esp, 0x20                         
0x00594A79:  pop      ebp                               
0x00594A7A:  ret                                        
0x00594A7B:  int3                                       
0x00594A7C:  int3                                       
0x00594A7D:  int3                                       
0x00594A7E:  int3                                       
0x00594A7F:  int3                                       
0x00594A80:  push     ebp                               
0x00594A81:  mov      ebp, esp                          
0x00594A83:  mov      eax, dword ptr [ebp + 0x20]       
0x00594A86:  push     eax                               
0x00594A87:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594A8A:  push     ecx                               
0x00594A8B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594A8E:  push     edx                               
0x00594A8F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594A92:  push     eax                               
0x00594A93:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594A96:  push     ecx                               
0x00594A97:  mov      edx, dword ptr [ebp + 0xc]        
0x00594A9A:  push     edx                               
0x00594A9B:  mov      eax, dword ptr [ebp + 8]          
0x00594A9E:  push     eax                               
0x00594A9F:  push     0x10                              
0x00594AA1:  call     0x5c05a0                          
0x00594AA6:  add      esp, 0x20                         
0x00594AA9:  pop      ebp                               
0x00594AAA:  ret                                        
0x00594AAB:  int3                                       
0x00594AAC:  int3                                       
0x00594AAD:  int3                                       
0x00594AAE:  int3                                       
0x00594AAF:  int3                                       
0x00594AB0:  push     ebp                               
0x00594AB1:  mov      ebp, esp                          
0x00594AB3:  mov      eax, dword ptr [ebp + 0x20]       
0x00594AB6:  push     eax                               
0x00594AB7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594ABA:  push     ecx                               
0x00594ABB:  mov      edx, dword ptr [ebp + 0x18]       
0x00594ABE:  push     edx                               
0x00594ABF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594AC2:  push     eax                               
0x00594AC3:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594AC6:  push     ecx                               
0x00594AC7:  mov      edx, dword ptr [ebp + 0xc]        
0x00594ACA:  push     edx                               
0x00594ACB:  mov      eax, dword ptr [ebp + 8]          
0x00594ACE:  push     eax                               
0x00594ACF:  push     8                                 
0x00594AD1:  call     0x5c05a0                          
0x00594AD6:  add      esp, 0x20                         
0x00594AD9:  pop      ebp                               
0x00594ADA:  ret                                        
0x00594ADB:  int3                                       
0x00594ADC:  int3                                       
0x00594ADD:  int3                                       
0x00594ADE:  int3                                       
0x00594ADF:  int3                                       
0x00594AE0:  push     ebp                               
0x00594AE1:  mov      ebp, esp                          
0x00594AE3:  mov      eax, dword ptr [ebp + 0x20]       
0x00594AE6:  push     eax                               
0x00594AE7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594AEA:  push     ecx                               
0x00594AEB:  mov      edx, dword ptr [ebp + 0x18]       
0x00594AEE:  push     edx                               
0x00594AEF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594AF2:  push     eax                               
0x00594AF3:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594AF6:  push     ecx                               
0x00594AF7:  mov      edx, dword ptr [ebp + 0xc]        
0x00594AFA:  push     edx                               
0x00594AFB:  mov      eax, dword ptr [ebp + 8]          
0x00594AFE:  push     eax                               
0x00594AFF:  push     9                                 
0x00594B01:  call     0x5c05a0                          
0x00594B06:  add      esp, 0x20                         
0x00594B09:  pop      ebp                               
0x00594B0A:  ret                                        
0x00594B0B:  int3                                       
0x00594B0C:  int3                                       
0x00594B0D:  int3                                       
0x00594B0E:  int3                                       
0x00594B0F:  int3                                       
0x00594B10:  push     ebp                               
0x00594B11:  mov      ebp, esp                          
0x00594B13:  mov      eax, dword ptr [ebp + 0x20]       
0x00594B16:  push     eax                               
0x00594B17:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594B1A:  push     ecx                               
0x00594B1B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594B1E:  push     edx                               
0x00594B1F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594B22:  push     eax                               
0x00594B23:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594B26:  push     ecx                               
0x00594B27:  mov      edx, dword ptr [ebp + 0xc]        
0x00594B2A:  push     edx                               
0x00594B2B:  mov      eax, dword ptr [ebp + 8]          
0x00594B2E:  push     eax                               
0x00594B2F:  push     0xa                               
0x00594B31:  call     0x5c05a0                          
0x00594B36:  add      esp, 0x20                         
0x00594B39:  pop      ebp                               
0x00594B3A:  ret                                        
0x00594B3B:  int3                                       
0x00594B3C:  int3                                       
0x00594B3D:  int3                                       
0x00594B3E:  int3                                       
0x00594B3F:  int3                                       
0x00594B40:  push     ebp                               
0x00594B41:  mov      ebp, esp                          
0x00594B43:  mov      eax, dword ptr [ebp + 0x20]       
0x00594B46:  push     eax                               
0x00594B47:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594B4A:  push     ecx                               
0x00594B4B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594B4E:  push     edx                               
0x00594B4F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594B52:  push     eax                               
0x00594B53:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594B56:  push     ecx                               
0x00594B57:  mov      edx, dword ptr [ebp + 0xc]        
0x00594B5A:  push     edx                               
0x00594B5B:  mov      eax, dword ptr [ebp + 8]          
0x00594B5E:  push     eax                               
0x00594B5F:  push     0xb                               
0x00594B61:  call     0x5c05a0                          
0x00594B66:  add      esp, 0x20                         
0x00594B69:  pop      ebp                               
0x00594B6A:  ret                                        
0x00594B6B:  int3                                       
0x00594B6C:  int3                                       
0x00594B6D:  int3                                       
0x00594B6E:  int3                                       
0x00594B6F:  int3                                       
0x00594B70:  push     ebp                               
0x00594B71:  mov      ebp, esp                          
0x00594B73:  mov      eax, dword ptr [ebp + 0x20]       
0x00594B76:  push     eax                               
0x00594B77:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594B7A:  push     ecx                               
0x00594B7B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594B7E:  push     edx                               
0x00594B7F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594B82:  push     eax                               
0x00594B83:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594B86:  push     ecx                               
0x00594B87:  mov      edx, dword ptr [ebp + 0xc]        
0x00594B8A:  push     edx                               
0x00594B8B:  mov      eax, dword ptr [ebp + 8]          
0x00594B8E:  push     eax                               
0x00594B8F:  push     0xc                               
0x00594B91:  call     0x5c05a0                          
0x00594B96:  add      esp, 0x20                         
0x00594B99:  pop      ebp                               
0x00594B9A:  ret                                        
0x00594B9B:  int3                                       
0x00594B9C:  int3                                       
0x00594B9D:  int3                                       
0x00594B9E:  int3                                       
0x00594B9F:  int3                                       
0x00594BA0:  push     ebp                               
0x00594BA1:  mov      ebp, esp                          
0x00594BA3:  mov      eax, dword ptr [ebp + 0x20]       
0x00594BA6:  push     eax                               
0x00594BA7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594BAA:  push     ecx                               
0x00594BAB:  mov      edx, dword ptr [ebp + 0x18]       
0x00594BAE:  push     edx                               
0x00594BAF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594BB2:  push     eax                               
0x00594BB3:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594BB6:  push     ecx                               
0x00594BB7:  mov      edx, dword ptr [ebp + 0xc]        
0x00594BBA:  push     edx                               
0x00594BBB:  mov      eax, dword ptr [ebp + 8]          
0x00594BBE:  push     eax                               
0x00594BBF:  push     5                                 
0x00594BC1:  call     0x5c05a0                          
0x00594BC6:  add      esp, 0x20                         
0x00594BC9:  pop      ebp                               
0x00594BCA:  ret                                        
0x00594BCB:  int3                                       
0x00594BCC:  int3                                       
0x00594BCD:  int3                                       
0x00594BCE:  int3                                       
0x00594BCF:  int3                                       
0x00594BD0:  push     ebp                               
0x00594BD1:  mov      ebp, esp                          
0x00594BD3:  mov      eax, dword ptr [ebp + 0x20]       
0x00594BD6:  push     eax                               
0x00594BD7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594BDA:  push     ecx                               
0x00594BDB:  mov      edx, dword ptr [ebp + 0x18]       
0x00594BDE:  push     edx                               
0x00594BDF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594BE2:  push     eax                               
0x00594BE3:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594BE6:  push     ecx                               
0x00594BE7:  mov      edx, dword ptr [ebp + 0xc]        
0x00594BEA:  push     edx                               
0x00594BEB:  mov      eax, dword ptr [ebp + 8]          
0x00594BEE:  push     eax                               
0x00594BEF:  push     0xe                               
0x00594BF1:  call     0x5c05a0                          
0x00594BF6:  add      esp, 0x20                         
0x00594BF9:  pop      ebp                               
0x00594BFA:  ret                                        
0x00594BFB:  int3                                       
0x00594BFC:  int3                                       
0x00594BFD:  int3                                       
0x00594BFE:  int3                                       
0x00594BFF:  int3                                       
0x00594C00:  push     ebp                               
0x00594C01:  mov      ebp, esp                          
0x00594C03:  mov      eax, dword ptr [ebp + 0x20]       
0x00594C06:  push     eax                               
0x00594C07:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594C0A:  push     ecx                               
0x00594C0B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594C0E:  push     edx                               
0x00594C0F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594C12:  push     eax                               
0x00594C13:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594C16:  push     ecx                               
0x00594C17:  mov      edx, dword ptr [ebp + 0xc]        
0x00594C1A:  push     edx                               
0x00594C1B:  mov      eax, dword ptr [ebp + 8]          
0x00594C1E:  push     eax                               
0x00594C1F:  push     0                                 
0x00594C21:  call     0x5c06a0                          
0x00594C26:  add      esp, 0x20                         
0x00594C29:  pop      ebp                               
0x00594C2A:  ret                                        
0x00594C2B:  int3                                       
0x00594C2C:  int3                                       
0x00594C2D:  int3                                       
0x00594C2E:  int3                                       
0x00594C2F:  int3                                       
0x00594C30:  push     ebp                               
0x00594C31:  mov      ebp, esp                          
0x00594C33:  mov      eax, dword ptr [ebp + 0x20]       
0x00594C36:  push     eax                               
0x00594C37:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594C3A:  push     ecx                               
0x00594C3B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594C3E:  push     edx                               
0x00594C3F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594C42:  push     eax                               
0x00594C43:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594C46:  push     ecx                               
0x00594C47:  mov      edx, dword ptr [ebp + 0xc]        
0x00594C4A:  push     edx                               
0x00594C4B:  mov      eax, dword ptr [ebp + 8]          
0x00594C4E:  push     eax                               
0x00594C4F:  push     1                                 
0x00594C51:  call     0x5c06a0                          
0x00594C56:  add      esp, 0x20                         
0x00594C59:  pop      ebp                               
0x00594C5A:  ret                                        
0x00594C5B:  int3                                       
0x00594C5C:  int3                                       
0x00594C5D:  int3                                       
0x00594C5E:  int3                                       
0x00594C5F:  int3                                       
0x00594C60:  push     ebp                               
0x00594C61:  mov      ebp, esp                          
0x00594C63:  mov      eax, dword ptr [ebp + 0x20]       
0x00594C66:  push     eax                               
0x00594C67:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594C6A:  push     ecx                               
0x00594C6B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594C6E:  push     edx                               
0x00594C6F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594C72:  push     eax                               
0x00594C73:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594C76:  push     ecx                               
0x00594C77:  mov      edx, dword ptr [ebp + 0xc]        
0x00594C7A:  push     edx                               
0x00594C7B:  mov      eax, dword ptr [ebp + 8]          
0x00594C7E:  push     eax                               
0x00594C7F:  push     2                                 
0x00594C81:  call     0x5c06a0                          
0x00594C86:  add      esp, 0x20                         
0x00594C89:  pop      ebp                               
0x00594C8A:  ret                                        
0x00594C8B:  int3                                       
0x00594C8C:  int3                                       
0x00594C8D:  int3                                       
0x00594C8E:  int3                                       
0x00594C8F:  int3                                       
0x00594C90:  push     ebp                               
0x00594C91:  mov      ebp, esp                          
0x00594C93:  mov      eax, dword ptr [ebp + 0x20]       
0x00594C96:  push     eax                               
0x00594C97:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594C9A:  push     ecx                               
0x00594C9B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594C9E:  push     edx                               
0x00594C9F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594CA2:  push     eax                               
0x00594CA3:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594CA6:  push     ecx                               
0x00594CA7:  mov      edx, dword ptr [ebp + 0xc]        
0x00594CAA:  push     edx                               
0x00594CAB:  mov      eax, dword ptr [ebp + 8]          
0x00594CAE:  push     eax                               
0x00594CAF:  push     3                                 
0x00594CB1:  call     0x5c06a0                          
0x00594CB6:  add      esp, 0x20                         
0x00594CB9:  pop      ebp                               
0x00594CBA:  ret                                        
0x00594CBB:  int3                                       
0x00594CBC:  int3                                       
0x00594CBD:  int3                                       
0x00594CBE:  int3                                       
0x00594CBF:  int3                                       
0x00594CC0:  push     ebp                               
0x00594CC1:  mov      ebp, esp                          
0x00594CC3:  mov      eax, dword ptr [ebp + 0x20]       
0x00594CC6:  push     eax                               
0x00594CC7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594CCA:  push     ecx                               
0x00594CCB:  mov      edx, dword ptr [ebp + 0x18]       
0x00594CCE:  push     edx                               
0x00594CCF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594CD2:  push     eax                               
0x00594CD3:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594CD6:  push     ecx                               
0x00594CD7:  mov      edx, dword ptr [ebp + 0xc]        
0x00594CDA:  push     edx                               
0x00594CDB:  mov      eax, dword ptr [ebp + 8]          
0x00594CDE:  push     eax                               
0x00594CDF:  push     6                                 
0x00594CE1:  call     0x5c06a0                          
0x00594CE6:  add      esp, 0x20                         
0x00594CE9:  pop      ebp                               
0x00594CEA:  ret                                        
0x00594CEB:  int3                                       
0x00594CEC:  int3                                       
0x00594CED:  int3                                       
0x00594CEE:  int3                                       
0x00594CEF:  int3                                       
0x00594CF0:  push     ebp                               
0x00594CF1:  mov      ebp, esp                          
0x00594CF3:  mov      eax, dword ptr [ebp + 0x20]       
0x00594CF6:  push     eax                               
0x00594CF7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594CFA:  push     ecx                               
0x00594CFB:  mov      edx, dword ptr [ebp + 0x18]       
0x00594CFE:  push     edx                               
0x00594CFF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594D02:  push     eax                               
0x00594D03:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594D06:  push     ecx                               
0x00594D07:  mov      edx, dword ptr [ebp + 0xc]        
0x00594D0A:  push     edx                               
0x00594D0B:  mov      eax, dword ptr [ebp + 8]          
0x00594D0E:  push     eax                               
0x00594D0F:  push     7                                 
0x00594D11:  call     0x5c06a0                          
0x00594D16:  add      esp, 0x20                         
0x00594D19:  pop      ebp                               
0x00594D1A:  ret                                        
0x00594D1B:  int3                                       
0x00594D1C:  int3                                       
0x00594D1D:  int3                                       
0x00594D1E:  int3                                       
0x00594D1F:  int3                                       
0x00594D20:  push     ebp                               
0x00594D21:  mov      ebp, esp                          
0x00594D23:  mov      eax, dword ptr [ebp + 0x20]       
0x00594D26:  push     eax                               
0x00594D27:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594D2A:  push     ecx                               
0x00594D2B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594D2E:  push     edx                               
0x00594D2F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594D32:  push     eax                               
0x00594D33:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594D36:  push     ecx                               
0x00594D37:  mov      edx, dword ptr [ebp + 0xc]        
0x00594D3A:  push     edx                               
0x00594D3B:  mov      eax, dword ptr [ebp + 8]          
0x00594D3E:  push     eax                               
0x00594D3F:  push     0xf                               
0x00594D41:  call     0x5c06a0                          
0x00594D46:  add      esp, 0x20                         
0x00594D49:  pop      ebp                               
0x00594D4A:  ret                                        
0x00594D4B:  int3                                       
0x00594D4C:  int3                                       
0x00594D4D:  int3                                       
0x00594D4E:  int3                                       
0x00594D4F:  int3                                       
0x00594D50:  push     ebp                               
0x00594D51:  mov      ebp, esp                          
0x00594D53:  mov      eax, dword ptr [ebp + 0x20]       
0x00594D56:  push     eax                               
0x00594D57:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594D5A:  push     ecx                               
0x00594D5B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594D5E:  push     edx                               
0x00594D5F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594D62:  push     eax                               
0x00594D63:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594D66:  push     ecx                               
0x00594D67:  mov      edx, dword ptr [ebp + 0xc]        
0x00594D6A:  push     edx                               
0x00594D6B:  mov      eax, dword ptr [ebp + 8]          
0x00594D6E:  push     eax                               
0x00594D6F:  push     0x10                              
0x00594D71:  call     0x5c06a0                          
0x00594D76:  add      esp, 0x20                         
0x00594D79:  pop      ebp                               
0x00594D7A:  ret                                        
0x00594D7B:  int3                                       
0x00594D7C:  int3                                       
0x00594D7D:  int3                                       
0x00594D7E:  int3                                       
0x00594D7F:  int3                                       
0x00594D80:  push     ebp                               
0x00594D81:  mov      ebp, esp                          
0x00594D83:  mov      eax, dword ptr [ebp + 0x20]       
0x00594D86:  push     eax                               
0x00594D87:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594D8A:  push     ecx                               
0x00594D8B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594D8E:  push     edx                               
0x00594D8F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594D92:  push     eax                               
0x00594D93:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594D96:  push     ecx                               
0x00594D97:  mov      edx, dword ptr [ebp + 0xc]        
0x00594D9A:  push     edx                               
0x00594D9B:  mov      eax, dword ptr [ebp + 8]          
0x00594D9E:  push     eax                               
0x00594D9F:  push     8                                 
0x00594DA1:  call     0x5c06a0                          
0x00594DA6:  add      esp, 0x20                         
0x00594DA9:  pop      ebp                               
0x00594DAA:  ret                                        
0x00594DAB:  int3                                       
0x00594DAC:  int3                                       
0x00594DAD:  int3                                       
0x00594DAE:  int3                                       
0x00594DAF:  int3                                       
0x00594DB0:  push     ebp                               
0x00594DB1:  mov      ebp, esp                          
0x00594DB3:  mov      eax, dword ptr [ebp + 0x20]       
0x00594DB6:  push     eax                               
0x00594DB7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594DBA:  push     ecx                               
0x00594DBB:  mov      edx, dword ptr [ebp + 0x18]       
0x00594DBE:  push     edx                               
0x00594DBF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594DC2:  push     eax                               
0x00594DC3:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594DC6:  push     ecx                               
0x00594DC7:  mov      edx, dword ptr [ebp + 0xc]        
0x00594DCA:  push     edx                               
0x00594DCB:  mov      eax, dword ptr [ebp + 8]          
0x00594DCE:  push     eax                               
0x00594DCF:  push     9                                 
0x00594DD1:  call     0x5c06a0                          
0x00594DD6:  add      esp, 0x20                         
0x00594DD9:  pop      ebp                               
0x00594DDA:  ret                                        
0x00594DDB:  int3                                       
0x00594DDC:  int3                                       
0x00594DDD:  int3                                       
0x00594DDE:  int3                                       
0x00594DDF:  int3                                       
0x00594DE0:  push     ebp                               
0x00594DE1:  mov      ebp, esp                          
0x00594DE3:  mov      eax, dword ptr [ebp + 0x20]       
0x00594DE6:  push     eax                               
0x00594DE7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594DEA:  push     ecx                               
0x00594DEB:  mov      edx, dword ptr [ebp + 0x18]       
0x00594DEE:  push     edx                               
0x00594DEF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594DF2:  push     eax                               
0x00594DF3:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594DF6:  push     ecx                               
0x00594DF7:  mov      edx, dword ptr [ebp + 0xc]        
0x00594DFA:  push     edx                               
0x00594DFB:  mov      eax, dword ptr [ebp + 8]          
0x00594DFE:  push     eax                               
0x00594DFF:  push     0xa                               
0x00594E01:  call     0x5c06a0                          
0x00594E06:  add      esp, 0x20                         
0x00594E09:  pop      ebp                               
0x00594E0A:  ret                                        
0x00594E0B:  int3                                       
0x00594E0C:  int3                                       
0x00594E0D:  int3                                       
0x00594E0E:  int3                                       
0x00594E0F:  int3                                       
0x00594E10:  push     ebp                               
0x00594E11:  mov      ebp, esp                          
0x00594E13:  mov      eax, dword ptr [ebp + 0x20]       
0x00594E16:  push     eax                               
0x00594E17:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594E1A:  push     ecx                               
0x00594E1B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594E1E:  push     edx                               
0x00594E1F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594E22:  push     eax                               
0x00594E23:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594E26:  push     ecx                               
0x00594E27:  mov      edx, dword ptr [ebp + 0xc]        
0x00594E2A:  push     edx                               
0x00594E2B:  mov      eax, dword ptr [ebp + 8]          
0x00594E2E:  push     eax                               
0x00594E2F:  push     0xb                               
0x00594E31:  call     0x5c06a0                          
0x00594E36:  add      esp, 0x20                         
0x00594E39:  pop      ebp                               
0x00594E3A:  ret                                        
0x00594E3B:  int3                                       
0x00594E3C:  int3                                       
0x00594E3D:  int3                                       
0x00594E3E:  int3                                       
0x00594E3F:  int3                                       
0x00594E40:  push     ebp                               
0x00594E41:  mov      ebp, esp                          
0x00594E43:  mov      eax, dword ptr [ebp + 0x20]       
0x00594E46:  push     eax                               
0x00594E47:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594E4A:  push     ecx                               
0x00594E4B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594E4E:  push     edx                               
0x00594E4F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594E52:  push     eax                               
0x00594E53:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594E56:  push     ecx                               
0x00594E57:  mov      edx, dword ptr [ebp + 0xc]        
0x00594E5A:  push     edx                               
0x00594E5B:  mov      eax, dword ptr [ebp + 8]          
0x00594E5E:  push     eax                               
0x00594E5F:  push     0xc                               
0x00594E61:  call     0x5c06a0                          
0x00594E66:  add      esp, 0x20                         
0x00594E69:  pop      ebp                               
0x00594E6A:  ret                                        
0x00594E6B:  int3                                       
0x00594E6C:  int3                                       
0x00594E6D:  int3                                       
0x00594E6E:  int3                                       
0x00594E6F:  int3                                       
0x00594E70:  push     ebp                               
0x00594E71:  mov      ebp, esp                          
0x00594E73:  mov      eax, dword ptr [ebp + 0x20]       
0x00594E76:  push     eax                               
0x00594E77:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594E7A:  push     ecx                               
0x00594E7B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594E7E:  push     edx                               
0x00594E7F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594E82:  push     eax                               
0x00594E83:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594E86:  push     ecx                               
0x00594E87:  mov      edx, dword ptr [ebp + 0xc]        
0x00594E8A:  push     edx                               
0x00594E8B:  mov      eax, dword ptr [ebp + 8]          
0x00594E8E:  push     eax                               
0x00594E8F:  push     5                                 
0x00594E91:  call     0x5c06a0                          
0x00594E96:  add      esp, 0x20                         
0x00594E99:  pop      ebp                               
0x00594E9A:  ret                                        
0x00594E9B:  int3                                       
0x00594E9C:  int3                                       
0x00594E9D:  int3                                       
0x00594E9E:  int3                                       
0x00594E9F:  int3                                       
0x00594EA0:  push     ebp                               
0x00594EA1:  mov      ebp, esp                          
0x00594EA3:  mov      eax, dword ptr [ebp + 0x20]       
0x00594EA6:  push     eax                               
0x00594EA7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594EAA:  push     ecx                               
0x00594EAB:  mov      edx, dword ptr [ebp + 0x18]       
0x00594EAE:  push     edx                               
0x00594EAF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594EB2:  push     eax                               
0x00594EB3:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594EB6:  push     ecx                               
0x00594EB7:  mov      edx, dword ptr [ebp + 0xc]        
0x00594EBA:  push     edx                               
0x00594EBB:  mov      eax, dword ptr [ebp + 8]          
0x00594EBE:  push     eax                               
0x00594EBF:  push     0xe                               
0x00594EC1:  call     0x5c06a0                          
0x00594EC6:  add      esp, 0x20                         
0x00594EC9:  pop      ebp                               
0x00594ECA:  ret                                        
0x00594ECB:  int3                                       
0x00594ECC:  int3                                       
0x00594ECD:  int3                                       
0x00594ECE:  int3                                       
0x00594ECF:  int3                                       
0x00594ED0:  push     ebp                               
0x00594ED1:  mov      ebp, esp                          
0x00594ED3:  mov      eax, dword ptr [ebp + 0x20]       
0x00594ED6:  push     eax                               
0x00594ED7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594EDA:  push     ecx                               
0x00594EDB:  mov      edx, dword ptr [ebp + 0x18]       
0x00594EDE:  push     edx                               
0x00594EDF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594EE2:  push     eax                               
0x00594EE3:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594EE6:  push     ecx                               
0x00594EE7:  mov      edx, dword ptr [ebp + 0xc]        
0x00594EEA:  push     edx                               
0x00594EEB:  mov      eax, dword ptr [ebp + 8]          
0x00594EEE:  push     eax                               
0x00594EEF:  push     0x14                              
0x00594EF1:  call     0x5c06a0                          
0x00594EF6:  add      esp, 0x20                         
0x00594EF9:  pop      ebp                               
0x00594EFA:  ret                                        
0x00594EFB:  int3                                       
0x00594EFC:  int3                                       
0x00594EFD:  int3                                       
0x00594EFE:  int3                                       
0x00594EFF:  int3                                       
0x00594F00:  push     ebp                               
0x00594F01:  mov      ebp, esp                          
0x00594F03:  mov      eax, dword ptr [ebp + 0x20]       
0x00594F06:  push     eax                               
0x00594F07:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594F0A:  push     ecx                               
0x00594F0B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594F0E:  push     edx                               
0x00594F0F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594F12:  push     eax                               
0x00594F13:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594F16:  push     ecx                               
0x00594F17:  mov      edx, dword ptr [ebp + 0xc]        
0x00594F1A:  push     edx                               
0x00594F1B:  mov      eax, dword ptr [ebp + 8]          
0x00594F1E:  push     eax                               
0x00594F1F:  call     0x5b0720                          
0x00594F24:  add      esp, 0x1c                         
0x00594F27:  pop      ebp                               
0x00594F28:  ret                                        
0x00594F29:  int3                                       
0x00594F2A:  int3                                       
0x00594F2B:  int3                                       
0x00594F2C:  int3                                       
0x00594F2D:  int3                                       
0x00594F2E:  int3                                       
0x00594F2F:  int3                                       
0x00594F30:  push     ebp                               
0x00594F31:  mov      ebp, esp                          
0x00594F33:  mov      eax, dword ptr [ebp + 0x20]       
0x00594F36:  push     eax                               
0x00594F37:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594F3A:  push     ecx                               
0x00594F3B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594F3E:  push     edx                               
0x00594F3F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594F42:  push     eax                               
0x00594F43:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594F46:  push     ecx                               
0x00594F47:  mov      edx, dword ptr [ebp + 0xc]        
0x00594F4A:  push     edx                               
0x00594F4B:  mov      eax, dword ptr [ebp + 8]          
0x00594F4E:  push     eax                               
0x00594F4F:  call     0x5bb1f0                          
0x00594F54:  add      esp, 0x1c                         
0x00594F57:  pop      ebp                               
0x00594F58:  ret                                        
0x00594F59:  int3                                       
0x00594F5A:  int3                                       
0x00594F5B:  int3                                       
0x00594F5C:  int3                                       
0x00594F5D:  int3                                       
0x00594F5E:  int3                                       
0x00594F5F:  int3                                       
0x00594F60:  push     ebp                               
0x00594F61:  mov      ebp, esp                          
0x00594F63:  mov      eax, dword ptr [ebp + 0x20]       
0x00594F66:  push     eax                               
0x00594F67:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594F6A:  push     ecx                               
0x00594F6B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594F6E:  push     edx                               
0x00594F6F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594F72:  push     eax                               
0x00594F73:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594F76:  push     ecx                               
0x00594F77:  mov      edx, dword ptr [ebp + 0xc]        
0x00594F7A:  push     edx                               
0x00594F7B:  mov      eax, dword ptr [ebp + 8]          
0x00594F7E:  push     eax                               
0x00594F7F:  call     0x5a9d30                          
0x00594F84:  add      esp, 0x1c                         
0x00594F87:  pop      ebp                               
0x00594F88:  ret                                        
0x00594F89:  int3                                       
0x00594F8A:  int3                                       
0x00594F8B:  int3                                       
0x00594F8C:  int3                                       
0x00594F8D:  int3                                       
0x00594F8E:  int3                                       
0x00594F8F:  int3                                       
0x00594F90:  push     ebp                               
0x00594F91:  mov      ebp, esp                          
0x00594F93:  mov      eax, dword ptr [ebp + 0x20]       
0x00594F96:  push     eax                               
0x00594F97:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594F9A:  push     ecx                               
0x00594F9B:  mov      edx, dword ptr [ebp + 0x18]       
0x00594F9E:  push     edx                               
0x00594F9F:  mov      eax, dword ptr [ebp + 0x14]       
0x00594FA2:  push     eax                               
0x00594FA3:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594FA6:  push     ecx                               
0x00594FA7:  mov      edx, dword ptr [ebp + 0xc]        
0x00594FAA:  push     edx                               
0x00594FAB:  mov      eax, dword ptr [ebp + 8]          
0x00594FAE:  push     eax                               
0x00594FAF:  call     0x5b66c0                          
0x00594FB4:  add      esp, 0x1c                         
0x00594FB7:  pop      ebp                               
0x00594FB8:  ret                                        
0x00594FB9:  int3                                       
0x00594FBA:  int3                                       
0x00594FBB:  int3                                       
0x00594FBC:  int3                                       
0x00594FBD:  int3                                       
0x00594FBE:  int3                                       
0x00594FBF:  int3                                       
0x00594FC0:  push     ebp                               
0x00594FC1:  mov      ebp, esp                          
0x00594FC3:  mov      eax, dword ptr [ebp + 0x20]       
0x00594FC6:  push     eax                               
0x00594FC7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594FCA:  push     ecx                               
0x00594FCB:  mov      edx, dword ptr [ebp + 0x18]       
0x00594FCE:  push     edx                               
0x00594FCF:  mov      eax, dword ptr [ebp + 0x14]       
0x00594FD2:  push     eax                               
0x00594FD3:  mov      ecx, dword ptr [ebp + 0x10]       
0x00594FD6:  push     ecx                               
0x00594FD7:  mov      edx, dword ptr [ebp + 0xc]        
0x00594FDA:  push     edx                               
0x00594FDB:  mov      eax, dword ptr [ebp + 8]          
0x00594FDE:  push     eax                               
0x00594FDF:  call     0x5b0c10                          
0x00594FE4:  add      esp, 0x1c                         
0x00594FE7:  pop      ebp                               
0x00594FE8:  ret                                        
0x00594FE9:  int3                                       
0x00594FEA:  int3                                       
0x00594FEB:  int3                                       
0x00594FEC:  int3                                       
0x00594FED:  int3                                       
0x00594FEE:  int3                                       
0x00594FEF:  int3                                       
0x00594FF0:  push     ebp                               
0x00594FF1:  mov      ebp, esp                          
0x00594FF3:  mov      eax, dword ptr [ebp + 0x20]       
0x00594FF6:  push     eax                               
0x00594FF7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x00594FFA:  push     ecx                               
0x00594FFB:  mov      edx, dword ptr [ebp + 0x18]       
0x00594FFE:  push     edx                               
0x00594FFF:  mov      eax, dword ptr [ebp + 0x14]       
0x00595002:  push     eax                               
0x00595003:  mov      ecx, dword ptr [ebp + 0x10]       
0x00595006:  push     ecx                               
0x00595007:  mov      edx, dword ptr [ebp + 0xc]        
0x0059500A:  push     edx                               
0x0059500B:  mov      eax, dword ptr [ebp + 8]          
0x0059500E:  push     eax                               
0x0059500F:  call     0x5b1530                          
0x00595014:  add      esp, 0x1c                         
0x00595017:  pop      ebp                               
0x00595018:  ret                                        
0x00595019:  int3                                       
0x0059501A:  int3                                       
0x0059501B:  int3                                       
0x0059501C:  int3                                       
0x0059501D:  int3                                       
0x0059501E:  int3                                       
0x0059501F:  int3                                       
0x00595020:  push     ebp                               
0x00595021:  mov      ebp, esp                          
0x00595023:  mov      eax, dword ptr [ebp + 0x20]       
0x00595026:  push     eax                               
0x00595027:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059502A:  push     ecx                               
0x0059502B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059502E:  push     edx                               
0x0059502F:  mov      eax, dword ptr [ebp + 0x14]       
0x00595032:  push     eax                               
0x00595033:  mov      ecx, dword ptr [ebp + 0x10]       
0x00595036:  push     ecx                               
0x00595037:  mov      edx, dword ptr [ebp + 0xc]        
0x0059503A:  push     edx                               
0x0059503B:  mov      eax, dword ptr [ebp + 8]          
0x0059503E:  push     eax                               
0x0059503F:  call     0x5b1d20                          
0x00595044:  add      esp, 0x1c                         
0x00595047:  pop      ebp                               
0x00595048:  ret                                        
0x00595049:  int3                                       
0x0059504A:  int3                                       
0x0059504B:  int3                                       
0x0059504C:  int3                                       
0x0059504D:  int3                                       
0x0059504E:  int3                                       
0x0059504F:  int3                                       
0x00595050:  push     ebp                               
0x00595051:  mov      ebp, esp                          
0x00595053:  mov      eax, dword ptr [ebp + 0x20]       
0x00595056:  push     eax                               
0x00595057:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059505A:  push     ecx                               
0x0059505B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059505E:  push     edx                               
0x0059505F:  mov      eax, dword ptr [ebp + 0x14]       
0x00595062:  push     eax                               
0x00595063:  mov      ecx, dword ptr [ebp + 0x10]       
0x00595066:  push     ecx                               
0x00595067:  mov      edx, dword ptr [ebp + 0xc]        
0x0059506A:  push     edx                               
0x0059506B:  mov      eax, dword ptr [ebp + 8]          
0x0059506E:  push     eax                               
0x0059506F:  call     0x5a9e90                          
0x00595074:  add      esp, 0x1c                         
0x00595077:  pop      ebp                               
0x00595078:  ret                                        
0x00595079:  int3                                       
0x0059507A:  int3                                       
0x0059507B:  int3                                       
0x0059507C:  int3                                       
0x0059507D:  int3                                       
0x0059507E:  int3                                       
0x0059507F:  int3                                       
0x00595080:  push     ebp                               
0x00595081:  mov      ebp, esp                          
0x00595083:  mov      eax, dword ptr [ebp + 0x20]       
0x00595086:  push     eax                               
0x00595087:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059508A:  push     ecx                               
0x0059508B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059508E:  push     edx                               
0x0059508F:  mov      eax, dword ptr [ebp + 0x14]       
0x00595092:  push     eax                               
0x00595093:  mov      ecx, dword ptr [ebp + 0x10]       
0x00595096:  push     ecx                               
0x00595097:  mov      edx, dword ptr [ebp + 0xc]        
0x0059509A:  push     edx                               
0x0059509B:  mov      eax, dword ptr [ebp + 8]          
0x0059509E:  push     eax                               
0x0059509F:  call     0x5b6820                          
0x005950A4:  add      esp, 0x1c                         
0x005950A7:  pop      ebp                               
0x005950A8:  ret                                        
0x005950A9:  int3                                       
0x005950AA:  int3                                       
0x005950AB:  int3                                       
0x005950AC:  int3                                       
0x005950AD:  int3                                       
0x005950AE:  int3                                       
0x005950AF:  int3                                       
0x005950B0:  push     ebp                               
0x005950B1:  mov      ebp, esp                          
0x005950B3:  mov      eax, dword ptr [ebp + 0x20]       
0x005950B6:  push     eax                               
0x005950B7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005950BA:  push     ecx                               
0x005950BB:  mov      edx, dword ptr [ebp + 0x18]       
0x005950BE:  push     edx                               
0x005950BF:  mov      eax, dword ptr [ebp + 0x14]       
0x005950C2:  push     eax                               
0x005950C3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005950C6:  push     ecx                               
0x005950C7:  mov      edx, dword ptr [ebp + 0xc]        
0x005950CA:  push     edx                               
0x005950CB:  mov      eax, dword ptr [ebp + 8]          
0x005950CE:  push     eax                               
0x005950CF:  call     0x5bb350                          
0x005950D4:  add      esp, 0x1c                         
0x005950D7:  pop      ebp                               
0x005950D8:  ret                                        
0x005950D9:  int3                                       
0x005950DA:  int3                                       
0x005950DB:  int3                                       
0x005950DC:  int3                                       
0x005950DD:  int3                                       
0x005950DE:  int3                                       
0x005950DF:  int3                                       
0x005950E0:  push     ebp                               
0x005950E1:  mov      ebp, esp                          
0x005950E3:  mov      eax, dword ptr [ebp + 0x20]       
0x005950E6:  push     eax                               
0x005950E7:  mov      ecx, dword ptr [ebp + 0x1c]       
0x005950EA:  push     ecx                               
0x005950EB:  mov      edx, dword ptr [ebp + 0x18]       
0x005950EE:  push     edx                               
0x005950EF:  mov      eax, dword ptr [ebp + 0x14]       
0x005950F2:  push     eax                               
0x005950F3:  mov      ecx, dword ptr [ebp + 0x10]       
0x005950F6:  push     ecx                               
0x005950F7:  mov      edx, dword ptr [ebp + 0xc]        
0x005950FA:  push     edx                               
0x005950FB:  mov      eax, dword ptr [ebp + 8]          
0x005950FE:  push     eax                               
0x005950FF:  call     0x5bb5d0                          
0x00595104:  add      esp, 0x1c                         
0x00595107:  pop      ebp                               
0x00595108:  ret                                        
0x00595109:  int3                                       
0x0059510A:  int3                                       
0x0059510B:  int3                                       
0x0059510C:  int3                                       
0x0059510D:  int3                                       
0x0059510E:  int3                                       
0x0059510F:  int3                                       
0x00595110:  push     ebp                               
0x00595111:  mov      ebp, esp                          
0x00595113:  mov      eax, dword ptr [ebp + 0x20]       
0x00595116:  push     eax                               
0x00595117:  mov      ecx, dword ptr [ebp + 0x1c]       
0x0059511A:  push     ecx                               
0x0059511B:  mov      edx, dword ptr [ebp + 0x18]       
0x0059511E:  push     edx                               
0x0059511F:  mov      eax, dword ptr [ebp + 0x14]       
0x00595122:  push     eax                               
0x00595123:  mov      ecx, dword ptr [ebp + 0x10]       
0x00595126:  push     ecx                               
0x00595127:  mov      edx, dword ptr [ebp + 0xc]        
0x0059512A:  push     edx                               
0x0059512B:  mov      eax, dword ptr [ebp + 8]          
0x0059512E:  push     eax                               
0x0059512F:  call     0x5bb840                          
0x00595134:  add      esp, 0x1c                         
0x00595137:  pop      ebp                               
0x00595138:  ret                                        
0x00595139:  int3                                       
0x0059513A:  int3                                       
0x0059513B:  int3                                       
0x0059513C:  int3                                       
0x0059513D:  int3                                       
0x0059513E:  int3                                       
0x0059513F:  int3                                       
0x00595140:  push     ebp                               
0x00595141:  mov      ebp, esp                          
0x00595143:  sub      esp, 0x68                         
0x00595146:  mov      eax, dword ptr [ebp + 8]          
0x00595149:  mov      dword ptr [ebp - 0x14], eax       
0x0059514C:  mov      dword ptr [ebp - 0x68], 0         
0x00595153:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595156:  or       ecx, 1                            
0x00595159:  mov      dword ptr [ebp - 0x68], ecx       
0x0059515C:  push     0x1000                            
0x00595161:  push     0x1000                            
0x00595166:  mov      edx, dword ptr [ebp - 0x14]       
0x00595169:  push     edx                               
0x0059516A:  call     0x62a0c0                          
0x0059516F:  add      esp, 8                            
0x00595172:  fld      dword ptr [0x972464]              
0x00595178:  fstp     dword ptr [esp]                   
0x0059517B:  mov      eax, dword ptr [ebp - 0x14]       
0x0059517E:  push     eax                               
0x0059517F:  call     0x62b890                          
0x00595184:  add      esp, 8                            
0x00595187:  mov      dword ptr [ebp - 0xc], 0          
0x0059518E:  jmp      0x595199                          
0x00595190:  mov      ecx, dword ptr [ebp - 0xc]        
0x00595193:  add      ecx, 1                            
0x00595196:  mov      dword ptr [ebp - 0xc], ecx        
0x00595199:  mov      edx, dword ptr [ebp - 0x14]       
0x0059519C:  mov      eax, dword ptr [ebp - 0xc]        
0x0059519F:  cmp      eax, dword ptr [edx + 0x48]       
0x005951A2:  jge      0x5951cb                          
0x005951A4:  mov      ecx, dword ptr [ebp - 0x14]       
0x005951A7:  mov      edx, dword ptr [ecx + 0x100]      
0x005951AD:  mov      eax, dword ptr [ebp - 0xc]        
0x005951B0:  mov      ecx, dword ptr [edx + eax*4]      
0x005951B3:  mov      dword ptr [ebp - 0x20], ecx       
0x005951B6:  push     0                                 
0x005951B8:  push     0x8002                            
0x005951BD:  mov      edx, dword ptr [ebp - 0x20]       
0x005951C0:  push     edx                               
0x005951C1:  call     0x60f310                          
0x005951C6:  add      esp, 0xc                          
0x005951C9:  jmp      0x595190                          
0x005951CB:  mov      dword ptr [ebp - 0xc], 0          
0x005951D2:  jmp      0x5951dd                          
0x005951D4:  mov      eax, dword ptr [ebp - 0xc]        
0x005951D7:  add      eax, 1                            
0x005951DA:  mov      dword ptr [ebp - 0xc], eax        
0x005951DD:  mov      ecx, dword ptr [ebp - 0x14]       
0x005951E0:  mov      edx, dword ptr [ebp - 0xc]        
0x005951E3:  cmp      edx, dword ptr [ecx + 0x44]       
0x005951E6:  jge      0x595305                          
0x005951EC:  mov      eax, dword ptr [ebp - 0x14]       
0x005951EF:  mov      ecx, dword ptr [eax + 0xfc]       
0x005951F5:  mov      edx, dword ptr [ebp - 0xc]        
0x005951F8:  mov      eax, dword ptr [ecx + edx*4]      
0x005951FB:  mov      dword ptr [ebp - 0x18], eax       
0x005951FE:  cmp      dword ptr [ebp - 0xc], 0          
0x00595202:  jle      0x59521f                          
0x00595204:  mov      ecx, dword ptr [ebp - 0x14]       
0x00595207:  mov      edx, dword ptr [ecx + 0xfc]       
0x0059520D:  mov      eax, dword ptr [ebp - 0xc]        
0x00595210:  mov      ecx, dword ptr [edx + eax*4 - 4]  
0x00595214:  mov      edx, dword ptr [ebp - 0x18]       
0x00595217:  mov      dword ptr [ecx + 0x2bc], edx      
0x0059521D:  jmp      0x59523b                          
0x0059521F:  mov      eax, dword ptr [ebp - 0x14]       
0x00595222:  mov      ecx, dword ptr [eax + 0x44]       
0x00595225:  mov      edx, dword ptr [ebp - 0x14]       
0x00595228:  mov      eax, dword ptr [edx + 0xfc]       
0x0059522E:  mov      ecx, dword ptr [eax + ecx*4 - 4]  
0x00595232:  mov      edx, dword ptr [ebp - 0x18]       
0x00595235:  mov      dword ptr [ecx + 0x2bc], edx      
0x0059523B:  mov      eax, dword ptr [ebp - 0x18]       
0x0059523E:  mov      ecx, dword ptr [eax + 0x40]       
0x00595241:  mov      dword ptr [ebp - 0x64], ecx       
0x00595244:  mov      edx, dword ptr [ebp - 0x64]       
0x00595247:  cmp      dword ptr [edx], 0xc              
0x0059524A:  jne      0x5952af                          
0x0059524C:  mov      eax, dword ptr [ebp - 0x64]       
0x0059524F:  mov      ecx, dword ptr [eax + 4]          
0x00595252:  fld      dword ptr [ecx + 0x24]            
0x00595255:  fmul     qword ptr [0x97bc30]              
0x0059525B:  fstp     dword ptr [ebp - 0x1c]            
0x0059525E:  mov      edx, dword ptr [ebp - 0x64]       
0x00595261:  mov      eax, dword ptr [edx + 4]          
0x00595264:  fld      dword ptr [ebp - 0x1c]            
0x00595267:  fadd     dword ptr [eax + 0x20]            
0x0059526A:  fstp     dword ptr [ebp - 0x1c]            
0x0059526D:  push     0                                 
0x0059526F:  push     ecx                               
0x00595270:  fldz                                       
0x00595272:  fstp     dword ptr [esp]                   
0x00595275:  push     ecx                               
0x00595276:  fldz                                       
0x00595278:  fstp     dword ptr [esp]                   
0x0059527B:  push     ecx                               
0x0059527C:  fld      dword ptr [ebp - 0x1c]            
0x0059527F:  fstp     dword ptr [esp]                   
0x00595282:  mov      ecx, dword ptr [ebp - 0x64]       
0x00595285:  push     ecx                               
0x00595286:  fld      dword ptr [ecx + 0xb0]            
0x0059528C:  fstp     dword ptr [esp]                   
0x0059528F:  push     0xa                               
0x00595291:  lea      edx, [ebp - 0x60]                 
0x00595294:  push     edx                               
0x00595295:  call     0x6aac50                          
0x0059529A:  add      esp, 0x1c                         
0x0059529D:  lea      eax, [ebp - 0x60]                 
0x005952A0:  push     eax                               
0x005952A1:  mov      ecx, dword ptr [ebp - 0x64]       
0x005952A4:  push     ecx                               
0x005952A5:  call     0x597f60                          
0x005952AA:  add      esp, 8                            
0x005952AD:  jmp      0x595300                          
0x005952AF:  mov      edx, dword ptr [ebp - 0x64]       
0x005952B2:  cmp      dword ptr [edx], 0xd              
0x005952B5:  jne      0x595300                          
0x005952B7:  mov      eax, dword ptr [ebp - 0x64]       
0x005952BA:  fld      dword ptr [eax + 0xc]             
0x005952BD:  fstp     dword ptr [ebp - 0x1c]            
0x005952C0:  push     0                                 
0x005952C2:  push     ecx                               
0x005952C3:  fldz                                       
0x005952C5:  fstp     dword ptr [esp]                   
0x005952C8:  push     ecx                               
0x005952C9:  fldz                                       
0x005952CB:  fstp     dword ptr [esp]                   
0x005952CE:  push     ecx                               
0x005952CF:  fld      dword ptr [ebp - 0x1c]            
0x005952D2:  fstp     dword ptr [esp]                   
0x005952D5:  mov      ecx, dword ptr [ebp - 0x64]       
0x005952D8:  push     ecx                               
0x005952D9:  fld      dword ptr [ecx + 0xb0]            
0x005952DF:  fstp     dword ptr [esp]                   
0x005952E2:  push     0xa                               
0x005952E4:  lea      edx, [ebp - 0x60]                 
0x005952E7:  push     edx                               
0x005952E8:  call     0x6aac50                          
0x005952ED:  add      esp, 0x1c                         
0x005952F0:  lea      eax, [ebp - 0x60]                 
0x005952F3:  push     eax                               
0x005952F4:  mov      ecx, dword ptr [ebp - 0x64]       
0x005952F7:  push     ecx                               
0x005952F8:  call     0x597f60                          
0x005952FD:  add      esp, 8                            
0x00595300:  jmp      0x5951d4                          
0x00595305:  mov      dword ptr [ebp - 0xc], 0          
0x0059530C:  jmp      0x595317                          
0x0059530E:  mov      edx, dword ptr [ebp - 0xc]        
0x00595311:  add      edx, 1                            
0x00595314:  mov      dword ptr [ebp - 0xc], edx        
0x00595317:  mov      eax, dword ptr [ebp - 0x14]       
0x0059531A:  mov      ecx, dword ptr [ebp - 0xc]        
0x0059531D:  cmp      ecx, dword ptr [eax + 0x48]       
0x00595320:  jge      0x59544a                          
0x00595326:  mov      edx, dword ptr [ebp - 0x14]       
0x00595329:  mov      eax, dword ptr [edx + 0x100]      
0x0059532F:  mov      ecx, dword ptr [ebp - 0xc]        
0x00595332:  mov      edx, dword ptr [eax + ecx*4]      
0x00595335:  mov      dword ptr [ebp - 0x20], edx       
0x00595338:  mov      eax, dword ptr [ebp - 0x20]       
0x0059533B:  mov      ecx, dword ptr [eax]              
0x0059533D:  mov      dword ptr [ebp - 0x18], ecx       
0x00595340:  mov      edx, dword ptr [ebp - 0x20]       
0x00595343:  mov      eax, dword ptr [edx + 4]          
0x00595346:  mov      dword ptr [ebp - 4], eax          
0x00595349:  mov      ecx, dword ptr [ebp - 0x18]       
0x0059534C:  mov      edx, dword ptr [ecx + 0x40]       
0x0059534F:  mov      eax, dword ptr [ebp - 0x18]       
0x00595352:  mov      ecx, dword ptr [eax + 0x40]       
0x00595355:  fld      dword ptr [edx + 0x30]            
0x00595358:  fadd     dword ptr [ecx + 0x44]            
0x0059535B:  mov      edx, dword ptr [ebp - 0x18]       
0x0059535E:  mov      eax, dword ptr [edx + 0x40]       
0x00595361:  fadd     dword ptr [eax + 0x58]            
0x00595364:  fstp     dword ptr [ebp - 0x10]            
0x00595367:  mov      ecx, dword ptr [ebp - 4]          
0x0059536A:  mov      edx, dword ptr [ecx + 0x40]       
0x0059536D:  mov      eax, dword ptr [ebp - 4]          
0x00595370:  mov      ecx, dword ptr [eax + 0x40]       
0x00595373:  fld      dword ptr [edx + 0x30]            
0x00595376:  fadd     dword ptr [ecx + 0x44]            
0x00595379:  mov      edx, dword ptr [ebp - 4]          
0x0059537C:  mov      eax, dword ptr [edx + 0x40]       
0x0059537F:  fadd     dword ptr [eax + 0x58]            
0x00595382:  fstp     dword ptr [ebp - 8]               
0x00595385:  fld      dword ptr [ebp - 8]               
0x00595388:  fmul     qword ptr [0x98a2a8]              
0x0059538E:  fld      dword ptr [ebp - 0x10]            
0x00595391:  fcompp                                     
0x00595393:  fnstsw   ax                                
0x00595395:  test     ah, 0x41                          
0x00595398:  jne      0x5953e6                          
0x0059539A:  fld      dword ptr [ebp - 0x10]            
0x0059539D:  fdiv     qword ptr [0x97ea78]              
0x005953A3:  fdiv     qword ptr [0x98a2a8]              
0x005953A9:  fstp     dword ptr [ebp - 8]               
0x005953AC:  push     0x40                              
0x005953AE:  push     0xb75200                          
0x005953B3:  lea      ecx, [ebp - 0x60]                 
0x005953B6:  push     ecx                               
0x005953B7:  call     0x497f80                          
0x005953BC:  add      esp, 0xc                          
0x005953BF:  fld      dword ptr [ebp - 8]               
0x005953C2:  fstp     dword ptr [ebp - 0x60]            
0x005953C5:  fld      dword ptr [ebp - 8]               
0x005953C8:  fstp     dword ptr [ebp - 0x4c]            
0x005953CB:  fld      dword ptr [ebp - 8]               
0x005953CE:  fstp     dword ptr [ebp - 0x38]            
0x005953D1:  lea      edx, [ebp - 0x60]                 
0x005953D4:  push     edx                               
0x005953D5:  mov      eax, dword ptr [ebp - 4]          
0x005953D8:  mov      ecx, dword ptr [eax + 0x40]       
0x005953DB:  push     ecx                               
0x005953DC:  call     0x597f60                          
0x005953E1:  add      esp, 8                            
0x005953E4:  jmp      0x595445                          
0x005953E6:  fld      dword ptr [ebp - 0x10]            
0x005953E9:  fmul     qword ptr [0x98a2a8]              
0x005953EF:  fld      dword ptr [ebp - 8]               
0x005953F2:  fcompp                                     
0x005953F4:  fnstsw   ax                                
0x005953F6:  test     ah, 0x41                          
0x005953F9:  jne      0x595445                          
0x005953FB:  fld      dword ptr [ebp - 8]               
0x005953FE:  fdiv     qword ptr [0x97ea78]              
0x00595404:  fdiv     qword ptr [0x98a2a8]              
0x0059540A:  fstp     dword ptr [ebp - 0x10]            
0x0059540D:  push     0x40                              
0x0059540F:  push     0xb75200                          
0x00595414:  lea      edx, [ebp - 0x60]                 
0x00595417:  push     edx                               
0x00595418:  call     0x497f80                          
0x0059541D:  add      esp, 0xc                          
0x00595420:  fld      dword ptr [ebp - 0x10]            
0x00595423:  fstp     dword ptr [ebp - 0x60]            
0x00595426:  fld      dword ptr [ebp - 0x10]            
0x00595429:  fstp     dword ptr [ebp - 0x4c]            
0x0059542C:  fld      dword ptr [ebp - 0x10]            
0x0059542F:  fstp     dword ptr [ebp - 0x38]            
0x00595432:  lea      eax, [ebp - 0x60]                 
0x00595435:  push     eax                               
0x00595436:  mov      ecx, dword ptr [ebp - 0x18]       
0x00595439:  mov      edx, dword ptr [ecx + 0x40]       
0x0059543C:  push     edx                               
0x0059543D:  call     0x597f60                          
0x00595442:  add      esp, 8                            
0x00595445:  jmp      0x59530e                          
0x0059544A:  push     0                                 
0x0059544C:  mov      eax, dword ptr [ebp - 0x68]       
0x0059544F:  push     eax                               
0x00595450:  mov      ecx, dword ptr [ebp - 0x14]       
0x00595453:  push     ecx                               
0x00595454:  call     0x62ba50                          
0x00595459:  add      esp, 0xc                          
0x0059545C:  mov      edx, dword ptr [ebp + 8]          
0x0059545F:  mov      dword ptr [edx + 0x23c], 0        
0x00595469:  mov      eax, dword ptr [ebp + 8]          
0x0059546C:  mov      dword ptr [eax + 0x240], 0        
0x00595476:  mov      ecx, dword ptr [ebp + 8]          
0x00595479:  mov      dword ptr [ecx + 0x234], 0        
0x00595483:  mov      edx, dword ptr [ebp + 8]          
0x00595486:  fldz                                       
0x00595488:  fstp     dword ptr [edx + 0x238]           
0x0059548E:  mov      esp, ebp                          
0x00595490:  pop      ebp                               
0x00595491:  ret                                        
0x00595492:  int3                                       
0x00595493:  int3                                       
0x00595494:  int3                                       
0x00595495:  int3                                       
0x00595496:  int3                                       
0x00595497:  int3                                       
0x00595498:  int3                                       
0x00595499:  int3                                       
0x0059549A:  int3                                       
0x0059549B:  int3                                       
0x0059549C:  int3                                       
0x0059549D:  int3                                       
0x0059549E:  int3                                       
0x0059549F:  int3                                       
0x005954A0:  push     ebp                               
0x005954A1:  mov      ebp, esp                          
0x005954A3:  sub      esp, 0x190                        
0x005954A9:  mov      eax, dword ptr [ebp + 8]          
0x005954AC:  mov      ecx, dword ptr [eax + 0x100]      
0x005954B2:  mov      edx, dword ptr [ecx]              
0x005954B4:  mov      dword ptr [ebp - 0x40], edx       
0x005954B7:  mov      eax, dword ptr [ebp + 8]          
0x005954BA:  mov      ecx, dword ptr [eax + 0x38]       
0x005954BD:  and      ecx, 0x40000                      
0x005954C3:  neg      ecx                               
0x005954C5:  sbb      ecx, ecx                          
0x005954C7:  add      ecx, 1                            
0x005954CA:  mov      dword ptr [ebp - 0x20], ecx       
0x005954CD:  mov      dword ptr [ebp - 0x54], 0         
0x005954D4:  mov      edx, dword ptr [ebp + 8]          
0x005954D7:  mov      eax, dword ptr [ebp - 0x54]       
0x005954DA:  cmp      eax, dword ptr [edx + 0x48]       
0x005954DD:  jge      0x596256                          
0x005954E3:  mov      ecx, dword ptr [ebp - 0x40]       
0x005954E6:  mov      edx, dword ptr [ecx]              
0x005954E8:  mov      dword ptr [ebp - 0x6c], edx       
0x005954EB:  mov      eax, dword ptr [ebp - 0x40]       
0x005954EE:  mov      ecx, dword ptr [eax + 4]          
0x005954F1:  mov      dword ptr [ebp - 0x28], ecx       
0x005954F4:  mov      edx, dword ptr [ebp - 0x40]       
0x005954F7:  add      edx, 0x10                         
0x005954FA:  push     edx                               
0x005954FB:  mov      eax, dword ptr [ebp - 0x6c]       
0x005954FE:  add      eax, 0x74                         
0x00595501:  push     eax                               
0x00595502:  mov      ecx, dword ptr [ebp - 0x40]       
0x00595505:  add      ecx, 0x30                         
0x00595508:  push     ecx                               
0x00595509:  call     0x6ac660                          
0x0059550E:  add      esp, 0xc                          
0x00595511:  xor      edx, edx                          
0x00595513:  jne      0x595511                          
0x00595515:  mov      eax, dword ptr [ebp - 0x40]       
0x00595518:  add      eax, 0x50                         
0x0059551B:  push     eax                               
0x0059551C:  mov      ecx, dword ptr [ebp - 0x6c]       
0x0059551F:  add      ecx, 0x74                         
0x00595522:  push     ecx                               
0x00595523:  mov      edx, dword ptr [ebp - 0x40]       
0x00595526:  add      edx, 0x80                         
0x0059552C:  push     edx                               
0x0059552D:  call     0x6ac660                          
0x00595532:  add      esp, 0xc                          
0x00595535:  mov      eax, dword ptr [ebp - 0x40]       
0x00595538:  add      eax, 0x60                         
0x0059553B:  push     eax                               
0x0059553C:  mov      ecx, dword ptr [ebp - 0x6c]       
0x0059553F:  add      ecx, 0x74                         
0x00595542:  push     ecx                               
0x00595543:  mov      edx, dword ptr [ebp - 0x40]       
0x00595546:  add      edx, 0x90                         
0x0059554C:  push     edx                               
0x0059554D:  call     0x6ac660                          
0x00595552:  add      esp, 0xc                          
0x00595555:  mov      eax, dword ptr [ebp - 0x40]       
0x00595558:  add      eax, 0x70                         
0x0059555B:  push     eax                               
0x0059555C:  mov      ecx, dword ptr [ebp - 0x6c]       
0x0059555F:  add      ecx, 0x74                         
0x00595562:  push     ecx                               
0x00595563:  mov      edx, dword ptr [ebp - 0x40]       
0x00595566:  add      edx, 0xa0                         
0x0059556C:  push     edx                               
0x0059556D:  call     0x6ac660                          
0x00595572:  add      esp, 0xc                          
0x00595575:  mov      eax, dword ptr [ebp - 0x40]       
0x00595578:  add      eax, 0x20                         
0x0059557B:  push     eax                               
0x0059557C:  mov      ecx, dword ptr [ebp - 0x28]       
0x0059557F:  add      ecx, 0x74                         
0x00595582:  push     ecx                               
0x00595583:  mov      edx, dword ptr [ebp - 0x40]       
0x00595586:  add      edx, 0x40                         
0x00595589:  push     edx                               
0x0059558A:  call     0x6ac660                          
0x0059558F:  add      esp, 0xc                          
0x00595592:  mov      eax, dword ptr [ebp - 0x40]       
0x00595595:  mov      ecx, dword ptr [eax + 8]          
0x00595598:  and      ecx, 0x10                         
0x0059559B:  je       0x59595f                          
0x005955A1:  mov      edx, dword ptr [ebp - 0x40]       
0x005955A4:  mov      eax, dword ptr [edx + 0x1cc]      
0x005955AA:  mov      dword ptr [ebp - 0x24], eax       
0x005955AD:  mov      ecx, dword ptr [ebp - 0x24]       
0x005955B0:  push     ecx                               
0x005955B1:  mov      edx, dword ptr [ebp - 0x6c]       
0x005955B4:  add      edx, 0x74                         
0x005955B7:  push     edx                               
0x005955B8:  mov      eax, dword ptr [ebp - 0x24]       
0x005955BB:  add      eax, 0x20                         
0x005955BE:  push     eax                               
0x005955BF:  call     0x6ac660                          
0x005955C4:  add      esp, 0xc                          
0x005955C7:  mov      ecx, dword ptr [ebp - 0x24]       
0x005955CA:  add      ecx, 0x10                         
0x005955CD:  push     ecx                               
0x005955CE:  mov      edx, dword ptr [ebp - 0x28]       
0x005955D1:  add      edx, 0x74                         
0x005955D4:  push     edx                               
0x005955D5:  mov      eax, dword ptr [ebp - 0x24]       
0x005955D8:  add      eax, 0x30                         
0x005955DB:  push     eax                               
0x005955DC:  call     0x6ac660                          
0x005955E1:  add      esp, 0xc                          
0x005955E4:  mov      ecx, dword ptr [ebp - 0x40]       
0x005955E7:  add      ecx, 0x30                         
0x005955EA:  mov      dword ptr [ebp - 0x78], ecx       
0x005955ED:  mov      edx, dword ptr [ebp - 0x40]       
0x005955F0:  add      edx, 0x40                         
0x005955F3:  mov      dword ptr [ebp - 0x74], edx       
0x005955F6:  mov      eax, dword ptr [ebp - 0x24]       
0x005955F9:  add      eax, 0x40                         
0x005955FC:  mov      dword ptr [ebp - 0x70], eax       
0x005955FF:  mov      ecx, dword ptr [ebp - 0x74]       
0x00595602:  fld      dword ptr [ecx]                   
0x00595604:  mov      edx, dword ptr [ebp - 0x78]       
0x00595607:  fsub     dword ptr [edx]                   
0x00595609:  mov      eax, dword ptr [ebp - 0x70]       
0x0059560C:  fstp     dword ptr [eax]                   
0x0059560E:  mov      ecx, dword ptr [ebp - 0x74]       
0x00595611:  fld      dword ptr [ecx + 4]               
0x00595614:  mov      edx, dword ptr [ebp - 0x78]       
0x00595617:  fsub     dword ptr [edx + 4]               
0x0059561A:  mov      eax, dword ptr [ebp - 0x70]       
0x0059561D:  fstp     dword ptr [eax + 4]               
0x00595620:  mov      ecx, dword ptr [ebp - 0x74]       
0x00595623:  fld      dword ptr [ecx + 8]               
0x00595626:  mov      edx, dword ptr [ebp - 0x78]       
0x00595629:  fsub     dword ptr [edx + 8]               
0x0059562C:  mov      eax, dword ptr [ebp - 0x70]       
0x0059562F:  fstp     dword ptr [eax + 8]               
0x00595632:  mov      ecx, dword ptr [ebp - 0x24]       
0x00595635:  add      ecx, 0x30                         
0x00595638:  mov      dword ptr [ebp - 0x84], ecx       
0x0059563E:  mov      edx, dword ptr [ebp - 0x24]       
0x00595641:  add      edx, 0x40                         
0x00595644:  mov      dword ptr [ebp - 0x80], edx       
0x00595647:  mov      eax, dword ptr [ebp - 0x24]       
0x0059564A:  add      eax, 0x40                         
0x0059564D:  mov      dword ptr [ebp - 0x7c], eax       
0x00595650:  mov      ecx, dword ptr [ebp - 0x80]       
0x00595653:  fld      dword ptr [ecx]                   
0x00595655:  mov      edx, dword ptr [ebp - 0x84]       
0x0059565B:  fsub     dword ptr [edx]                   
0x0059565D:  mov      eax, dword ptr [ebp - 0x7c]       
0x00595660:  fstp     dword ptr [eax]                   
0x00595662:  mov      ecx, dword ptr [ebp - 0x80]       
0x00595665:  fld      dword ptr [ecx + 4]               
0x00595668:  mov      edx, dword ptr [ebp - 0x84]       
0x0059566E:  fsub     dword ptr [edx + 4]               
0x00595671:  mov      eax, dword ptr [ebp - 0x7c]       
0x00595674:  fstp     dword ptr [eax + 4]               
0x00595677:  mov      ecx, dword ptr [ebp - 0x80]       
0x0059567A:  fld      dword ptr [ecx + 8]               
0x0059567D:  mov      edx, dword ptr [ebp - 0x84]       
0x00595683:  fsub     dword ptr [edx + 8]               
0x00595686:  mov      eax, dword ptr [ebp - 0x7c]       
0x00595689:  fstp     dword ptr [eax + 8]               
0x0059568C:  mov      ecx, dword ptr [ebp - 0x24]       
0x0059568F:  add      ecx, 0x20                         
0x00595692:  mov      dword ptr [ebp - 0x90], ecx       
0x00595698:  mov      edx, dword ptr [ebp - 0x24]       
0x0059569B:  add      edx, 0x40                         
0x0059569E:  mov      dword ptr [ebp - 0x8c], edx       
0x005956A4:  mov      eax, dword ptr [ebp - 0x24]       
0x005956A7:  add      eax, 0x40                         
0x005956AA:  mov      dword ptr [ebp - 0x88], eax       
0x005956B0:  mov      ecx, dword ptr [ebp - 0x8c]       
0x005956B6:  fld      dword ptr [ecx]                   
0x005956B8:  mov      edx, dword ptr [ebp - 0x90]       
0x005956BE:  fadd     dword ptr [edx]                   
0x005956C0:  mov      eax, dword ptr [ebp - 0x88]       
0x005956C6:  fstp     dword ptr [eax]                   
0x005956C8:  mov      ecx, dword ptr [ebp - 0x8c]       
0x005956CE:  fld      dword ptr [ecx + 4]               
0x005956D1:  mov      edx, dword ptr [ebp - 0x90]       
0x005956D7:  fadd     dword ptr [edx + 4]               
0x005956DA:  mov      eax, dword ptr [ebp - 0x88]       
0x005956E0:  fstp     dword ptr [eax + 4]               
0x005956E3:  mov      ecx, dword ptr [ebp - 0x8c]       
0x005956E9:  fld      dword ptr [ecx + 8]               
0x005956EC:  mov      edx, dword ptr [ebp - 0x90]       
0x005956F2:  fadd     dword ptr [edx + 8]               
0x005956F5:  mov      eax, dword ptr [ebp - 0x88]       
0x005956FB:  fstp     dword ptr [eax + 8]               
0x005956FE:  mov      ecx, dword ptr [ebp - 0x24]       
0x00595701:  add      ecx, 0x40                         
0x00595704:  mov      dword ptr [ebp - 0x94], ecx       
0x0059570A:  mov      edx, dword ptr [ebp - 0x94]       
0x00595710:  fld      dword ptr [edx]                   
0x00595712:  fchs                                       
0x00595714:  mov      eax, dword ptr [ebp - 0x94]       
0x0059571A:  fstp     dword ptr [eax]                   
0x0059571C:  mov      ecx, dword ptr [ebp - 0x94]       
0x00595722:  fld      dword ptr [ecx + 4]               
0x00595725:  fchs                                       
0x00595727:  mov      edx, dword ptr [ebp - 0x94]       
0x0059572D:  fstp     dword ptr [edx + 4]               
0x00595730:  mov      eax, dword ptr [ebp - 0x94]       
0x00595736:  fld      dword ptr [eax + 8]               
0x00595739:  fchs                                       
0x0059573B:  mov      ecx, dword ptr [ebp - 0x94]       
0x00595741:  fstp     dword ptr [ecx + 8]               
0x00595744:  mov      edx, dword ptr [ebp - 0x24]       
0x00595747:  add      edx, 0x40                         
0x0059574A:  mov      dword ptr [ebp - 0x98], edx       
0x00595750:  mov      eax, dword ptr [ebp - 0x98]       
0x00595756:  fld      dword ptr [eax + 8]               
0x00595759:  mov      ecx, dword ptr [ebp - 0x98]       
0x0059575F:  fmul     dword ptr [ecx + 8]               
0x00595762:  mov      edx, dword ptr [ebp - 0x98]       
0x00595768:  fld      dword ptr [edx + 4]               
0x0059576B:  mov      eax, dword ptr [ebp - 0x98]       
0x00595771:  fmul     dword ptr [eax + 4]               
0x00595774:  mov      ecx, dword ptr [ebp - 0x98]       
0x0059577A:  fld      dword ptr [ecx]                   
0x0059577C:  mov      edx, dword ptr [ebp - 0x98]       
0x00595782:  fmul     dword ptr [edx]                   
0x00595784:  faddp    st(1)                             
0x00595786:  faddp    st(1)                             
0x00595788:  mov      eax, dword ptr [ebp - 0x24]       
0x0059578B:  fstp     dword ptr [eax + 0x6c]            
0x0059578E:  mov      ecx, dword ptr [ebp - 0x24]       
0x00595791:  push     ecx                               
0x00595792:  fld      dword ptr [ecx + 0x6c]            
0x00595795:  fstp     dword ptr [esp]                   
0x00595798:  call     0x4d3f80                          
0x0059579D:  add      esp, 4                            
0x005957A0:  mov      edx, dword ptr [ebp - 0x24]       
0x005957A3:  fstp     dword ptr [edx + 0x70]            
0x005957A6:  mov      eax, dword ptr [ebp - 0x24]       
0x005957A9:  fld      dword ptr [eax + 0x70]            
0x005957AC:  fcomp    qword ptr [0x9795d0]              
0x005957B2:  fnstsw   ax                                
0x005957B4:  test     ah, 0x44                          
0x005957B7:  jnp      0x5957db                          
0x005957B9:  mov      ecx, dword ptr [ebp - 0x24]       
0x005957BC:  push     ecx                               
0x005957BD:  fld      dword ptr [ecx + 0x70]            
0x005957C0:  fstp     dword ptr [esp]                   
0x005957C3:  mov      edx, dword ptr [ebp - 0x24]       
0x005957C6:  add      edx, 0x40                         
0x005957C9:  push     edx                               
0x005957CA:  mov      eax, dword ptr [ebp - 0x24]       
0x005957CD:  add      eax, 0x50                         
0x005957D0:  push     eax                               
0x005957D1:  call     0x596260                          
0x005957D6:  add      esp, 0xc                          
0x005957D9:  jmp      0x595812                          
0x005957DB:  mov      ecx, dword ptr [ebp - 0x24]       
0x005957DE:  add      ecx, 0x50                         
0x005957E1:  mov      dword ptr [ebp - 0xb8], ecx       
0x005957E7:  mov      edx, dword ptr [ebp - 0xb8]       
0x005957ED:  fld1                                       
0x005957EF:  fstp     dword ptr [edx]                   
0x005957F1:  mov      eax, dword ptr [ebp - 0xb8]       
0x005957F7:  fldz                                       
0x005957F9:  fstp     dword ptr [eax + 4]               
0x005957FC:  mov      ecx, dword ptr [ebp - 0xb8]       
0x00595802:  fldz                                       
0x00595804:  fstp     dword ptr [ecx + 8]               
0x00595807:  mov      edx, dword ptr [ebp - 0xb8]       
0x0059580D:  fld1                                       
0x0059580F:  fstp     dword ptr [edx + 0xc]             
0x00595812:  mov      eax, dword ptr [ebp - 0x24]       
0x00595815:  fld      dword ptr [eax + 0x70]            
0x00595818:  mov      ecx, dword ptr [ebp - 0x24]       
0x0059581B:  fsub     dword ptr [ecx + 0x68]            
0x0059581E:  mov      edx, dword ptr [ebp - 0x24]       
0x00595821:  fstp     dword ptr [edx + 0x60]            
0x00595824:  mov      eax, dword ptr [ebp - 0x24]       
0x00595827:  fld      dword ptr [eax + 0x60]            
0x0059582A:  fcomp    qword ptr [0x9795d0]              
0x00595830:  fnstsw   ax                                
0x00595832:  test     ah, 0x41                          
0x00595835:  jne      0x595843                          
0x00595837:  mov      dword ptr [ebp - 0x18c], 1        
0x00595841:  jmp      0x59584d                          
0x00595843:  mov      dword ptr [ebp - 0x18c], 0        
0x0059584D:  mov      ecx, dword ptr [ebp - 0x24]       
0x00595850:  mov      edx, dword ptr [ebp - 0x18c]      
0x00595856:  xor      edx, dword ptr [ecx + 0x74]       
0x00595859:  je       0x59589f                          
0x0059585B:  mov      eax, dword ptr [ebp - 0x24]       
0x0059585E:  fldz                                       
0x00595860:  fstp     dword ptr [eax + 0x60]            
0x00595863:  mov      ecx, dword ptr [ebp - 0x24]       
0x00595866:  add      ecx, 0x40                         
0x00595869:  mov      dword ptr [ebp - 0xbc], ecx       
0x0059586F:  mov      edx, dword ptr [ebp - 0xbc]       
0x00595875:  fldz                                       
0x00595877:  fstp     dword ptr [edx]                   
0x00595879:  mov      eax, dword ptr [ebp - 0xbc]       
0x0059587F:  fldz                                       
0x00595881:  fstp     dword ptr [eax + 4]               
0x00595884:  mov      ecx, dword ptr [ebp - 0xbc]       
0x0059588A:  fldz                                       
0x0059588C:  fstp     dword ptr [ecx + 8]               
0x0059588F:  mov      edx, dword ptr [ebp - 0xbc]       
0x00595895:  fld1                                       
0x00595897:  fstp     dword ptr [edx + 0xc]             
0x0059589A:  jmp      0x59595f                          
0x0059589F:  mov      eax, dword ptr [ebp - 0x24]       
0x005958A2:  fld      dword ptr [eax + 0x60]            
0x005958A5:  fstp     dword ptr [ebp - 0xc8]            
0x005958AB:  mov      ecx, dword ptr [ebp - 0x24]       
0x005958AE:  add      ecx, 0x50                         
0x005958B1:  mov      dword ptr [ebp - 0xc4], ecx       
0x005958B7:  mov      edx, dword ptr [ebp - 0x24]       
0x005958BA:  add      edx, 0x40                         
0x005958BD:  mov      dword ptr [ebp - 0xc0], edx       
0x005958C3:  mov      eax, dword ptr [ebp - 0xc4]       
0x005958C9:  fld      dword ptr [eax]                   
0x005958CB:  fmul     dword ptr [ebp - 0xc8]            
0x005958D1:  mov      ecx, dword ptr [ebp - 0xc0]       
0x005958D7:  fstp     dword ptr [ecx]                   
0x005958D9:  mov      edx, dword ptr [ebp - 0xc4]       
0x005958DF:  fld      dword ptr [edx + 4]               
0x005958E2:  fmul     dword ptr [ebp - 0xc8]            
0x005958E8:  mov      eax, dword ptr [ebp - 0xc0]       
0x005958EE:  fstp     dword ptr [eax + 4]               
0x005958F1:  mov      ecx, dword ptr [ebp - 0xc4]       
0x005958F7:  fld      dword ptr [ecx + 8]               
0x005958FA:  fmul     dword ptr [ebp - 0xc8]            
0x00595900:  mov      edx, dword ptr [ebp - 0xc0]       
0x00595906:  fstp     dword ptr [edx + 8]               
0x00595909:  cmp      dword ptr [ebp - 0x20], 0         
0x0059590D:  je       0x59595f                          
0x0059590F:  mov      eax, dword ptr [ebp - 0x24]       
0x00595912:  add      eax, 0x20                         
0x00595915:  push     eax                               
0x00595916:  mov      ecx, dword ptr [ebp - 0x24]       
0x00595919:  add      ecx, 0x40                         
0x0059591C:  push     ecx                               
0x0059591D:  mov      edx, dword ptr [ebp - 0x24]       
0x00595920:  push     ecx                               
0x00595921:  fld      dword ptr [edx + 0x80]            
0x00595927:  fstp     dword ptr [esp]                   
0x0059592A:  mov      eax, dword ptr [ebp - 0x6c]       
0x0059592D:  push     eax                               
0x0059592E:  call     0x599310                          
0x00595933:  add      esp, 0x10                         
0x00595936:  mov      ecx, dword ptr [ebp - 0x24]       
0x00595939:  add      ecx, 0x30                         
0x0059593C:  push     ecx                               
0x0059593D:  mov      edx, dword ptr [ebp - 0x24]       
0x00595940:  add      edx, 0x40                         
0x00595943:  push     edx                               
0x00595944:  mov      eax, dword ptr [ebp - 0x24]       
0x00595947:  fld      dword ptr [eax + 0x80]            
0x0059594D:  fchs                                       
0x0059594F:  push     ecx                               
0x00595950:  fstp     dword ptr [esp]                   
0x00595953:  mov      ecx, dword ptr [ebp - 0x28]       
0x00595956:  push     ecx                               
0x00595957:  call     0x599310                          
0x0059595C:  add      esp, 0x10                         
0x0059595F:  mov      edx, dword ptr [ebp - 0x40]       
0x00595962:  mov      eax, dword ptr [edx + 8]          
0x00595965:  and      eax, 8                            
0x00595968:  je       0x595e1e                          
0x0059596E:  mov      ecx, dword ptr [ebp - 0x40]       
0x00595971:  add      ecx, 0xb0                         
0x00595977:  push     ecx                               
0x00595978:  mov      edx, dword ptr [ebp - 0x6c]       
0x0059597B:  add      edx, 0x74                         
0x0059597E:  push     edx                               
0x0059597F:  mov      eax, dword ptr [ebp - 0x40]       
0x00595982:  add      eax, 0xe0                         
0x00595987:  push     eax                               
0x00595988:  call     0x6ac660                          
0x0059598D:  add      esp, 0xc                          
0x00595990:  mov      ecx, dword ptr [ebp - 0x40]       
0x00595993:  add      ecx, 0xc0                         
0x00595999:  push     ecx                               
0x0059599A:  mov      edx, dword ptr [ebp - 0x6c]       
0x0059599D:  add      edx, 0x74                         
0x005959A0:  push     edx                               
0x005959A1:  mov      eax, dword ptr [ebp - 0x40]       
0x005959A4:  add      eax, 0xf0                         
0x005959A9:  push     eax                               
0x005959AA:  call     0x6ac660                          
0x005959AF:  add      esp, 0xc                          
0x005959B2:  mov      ecx, dword ptr [ebp - 0x40]       
0x005959B5:  add      ecx, 0xd0                         
0x005959BB:  push     ecx                               
0x005959BC:  mov      edx, dword ptr [ebp - 0x6c]       
0x005959BF:  add      edx, 0x74                         
0x005959C2:  push     edx                               
0x005959C3:  mov      eax, dword ptr [ebp - 0x40]       
0x005959C6:  add      eax, 0x100                        
0x005959CB:  push     eax                               
0x005959CC:  call     0x6ac660                          
0x005959D1:  add      esp, 0xc                          
0x005959D4:  mov      ecx, dword ptr [ebp - 0x40]       
0x005959D7:  add      ecx, 0x110                        
0x005959DD:  push     ecx                               
0x005959DE:  mov      edx, dword ptr [ebp - 0x28]       
0x005959E1:  add      edx, 0x74                         
0x005959E4:  push     edx                               
0x005959E5:  mov      eax, dword ptr [ebp - 0x40]       
0x005959E8:  add      eax, 0x130                        
0x005959ED:  push     eax                               
0x005959EE:  call     0x6ac660                          
0x005959F3:  add      esp, 0xc                          
0x005959F6:  mov      ecx, dword ptr [ebp - 0x40]       
0x005959F9:  add      ecx, 0x120                        
0x005959FF:  push     ecx                               
0x00595A00:  mov      edx, dword ptr [ebp - 0x28]       
0x00595A03:  add      edx, 0x74                         
0x00595A06:  push     edx                               
0x00595A07:  mov      eax, dword ptr [ebp - 0x40]       
0x00595A0A:  add      eax, 0x140                        
0x00595A0F:  push     eax                               
0x00595A10:  call     0x6ac660                          
0x00595A15:  add      esp, 0xc                          
0x00595A18:  mov      ecx, dword ptr [ebp - 0x40]       
0x00595A1B:  mov      edx, dword ptr [ecx + 0x1d0]      
0x00595A21:  mov      dword ptr [ebp - 0x68], edx       
0x00595A24:  mov      eax, dword ptr [ebp - 0x40]       
0x00595A27:  push     eax                               
0x00595A28:  call     0x609830                          
0x00595A2D:  add      esp, 4                            
0x00595A30:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595A33:  push     ecx                               
0x00595A34:  mov      edx, dword ptr [ebp - 0x6c]       
0x00595A37:  add      edx, 0x74                         
0x00595A3A:  push     edx                               
0x00595A3B:  mov      eax, dword ptr [ebp - 0x68]       
0x00595A3E:  add      eax, 0x20                         
0x00595A41:  push     eax                               
0x00595A42:  call     0x6ac660                          
0x00595A47:  add      esp, 0xc                          
0x00595A4A:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595A4D:  add      ecx, 0x10                         
0x00595A50:  push     ecx                               
0x00595A51:  mov      edx, dword ptr [ebp - 0x28]       
0x00595A54:  add      edx, 0x74                         
0x00595A57:  push     edx                               
0x00595A58:  mov      eax, dword ptr [ebp - 0x68]       
0x00595A5B:  add      eax, 0x30                         
0x00595A5E:  push     eax                               
0x00595A5F:  call     0x6ac660                          
0x00595A64:  add      esp, 0xc                          
0x00595A67:  mov      ecx, dword ptr [ebp - 0x40]       
0x00595A6A:  add      ecx, 0x30                         
0x00595A6D:  mov      dword ptr [ebp - 0xd4], ecx       
0x00595A73:  mov      edx, dword ptr [ebp - 0x40]       
0x00595A76:  add      edx, 0x40                         
0x00595A79:  mov      dword ptr [ebp - 0xd0], edx       
0x00595A7F:  mov      eax, dword ptr [ebp - 0x68]       
0x00595A82:  add      eax, 0x40                         
0x00595A85:  mov      dword ptr [ebp - 0xcc], eax       
0x00595A8B:  mov      ecx, dword ptr [ebp - 0xd0]       
0x00595A91:  fld      dword ptr [ecx]                   
0x00595A93:  mov      edx, dword ptr [ebp - 0xd4]       
0x00595A99:  fsub     dword ptr [edx]                   
0x00595A9B:  mov      eax, dword ptr [ebp - 0xcc]       
0x00595AA1:  fstp     dword ptr [eax]                   
0x00595AA3:  mov      ecx, dword ptr [ebp - 0xd0]       
0x00595AA9:  fld      dword ptr [ecx + 4]               
0x00595AAC:  mov      edx, dword ptr [ebp - 0xd4]       
0x00595AB2:  fsub     dword ptr [edx + 4]               
0x00595AB5:  mov      eax, dword ptr [ebp - 0xcc]       
0x00595ABB:  fstp     dword ptr [eax + 4]               
0x00595ABE:  mov      ecx, dword ptr [ebp - 0xd0]       
0x00595AC4:  fld      dword ptr [ecx + 8]               
0x00595AC7:  mov      edx, dword ptr [ebp - 0xd4]       
0x00595ACD:  fsub     dword ptr [edx + 8]               
0x00595AD0:  mov      eax, dword ptr [ebp - 0xcc]       
0x00595AD6:  fstp     dword ptr [eax + 8]               
0x00595AD9:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595ADC:  add      ecx, 0x30                         
0x00595ADF:  mov      dword ptr [ebp - 0xe0], ecx       
0x00595AE5:  mov      edx, dword ptr [ebp - 0x68]       
0x00595AE8:  add      edx, 0x40                         
0x00595AEB:  mov      dword ptr [ebp - 0xdc], edx       
0x00595AF1:  mov      eax, dword ptr [ebp - 0x68]       
0x00595AF4:  add      eax, 0x40                         
0x00595AF7:  mov      dword ptr [ebp - 0xd8], eax       
0x00595AFD:  mov      ecx, dword ptr [ebp - 0xdc]       
0x00595B03:  fld      dword ptr [ecx]                   
0x00595B05:  mov      edx, dword ptr [ebp - 0xe0]       
0x00595B0B:  fsub     dword ptr [edx]                   
0x00595B0D:  mov      eax, dword ptr [ebp - 0xd8]       
0x00595B13:  fstp     dword ptr [eax]                   
0x00595B15:  mov      ecx, dword ptr [ebp - 0xdc]       
0x00595B1B:  fld      dword ptr [ecx + 4]               
0x00595B1E:  mov      edx, dword ptr [ebp - 0xe0]       
0x00595B24:  fsub     dword ptr [edx + 4]               
0x00595B27:  mov      eax, dword ptr [ebp - 0xd8]       
0x00595B2D:  fstp     dword ptr [eax + 4]               
0x00595B30:  mov      ecx, dword ptr [ebp - 0xdc]       
0x00595B36:  fld      dword ptr [ecx + 8]               
0x00595B39:  mov      edx, dword ptr [ebp - 0xe0]       
0x00595B3F:  fsub     dword ptr [edx + 8]               
0x00595B42:  mov      eax, dword ptr [ebp - 0xd8]       
0x00595B48:  fstp     dword ptr [eax + 8]               
0x00595B4B:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595B4E:  add      ecx, 0x20                         
0x00595B51:  mov      dword ptr [ebp - 0xec], ecx       
0x00595B57:  mov      edx, dword ptr [ebp - 0x68]       
0x00595B5A:  add      edx, 0x40                         
0x00595B5D:  mov      dword ptr [ebp - 0xe8], edx       
0x00595B63:  mov      eax, dword ptr [ebp - 0x68]       
0x00595B66:  add      eax, 0x40                         
0x00595B69:  mov      dword ptr [ebp - 0xe4], eax       
0x00595B6F:  mov      ecx, dword ptr [ebp - 0xe8]       
0x00595B75:  fld      dword ptr [ecx]                   
0x00595B77:  mov      edx, dword ptr [ebp - 0xec]       
0x00595B7D:  fadd     dword ptr [edx]                   
0x00595B7F:  mov      eax, dword ptr [ebp - 0xe4]       
0x00595B85:  fstp     dword ptr [eax]                   
0x00595B87:  mov      ecx, dword ptr [ebp - 0xe8]       
0x00595B8D:  fld      dword ptr [ecx + 4]               
0x00595B90:  mov      edx, dword ptr [ebp - 0xec]       
0x00595B96:  fadd     dword ptr [edx + 4]               
0x00595B99:  mov      eax, dword ptr [ebp - 0xe4]       
0x00595B9F:  fstp     dword ptr [eax + 4]               
0x00595BA2:  mov      ecx, dword ptr [ebp - 0xe8]       
0x00595BA8:  fld      dword ptr [ecx + 8]               
0x00595BAB:  mov      edx, dword ptr [ebp - 0xec]       
0x00595BB1:  fadd     dword ptr [edx + 8]               
0x00595BB4:  mov      eax, dword ptr [ebp - 0xe4]       
0x00595BBA:  fstp     dword ptr [eax + 8]               
0x00595BBD:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595BC0:  add      ecx, 0x40                         
0x00595BC3:  mov      dword ptr [ebp - 0xf0], ecx       
0x00595BC9:  mov      edx, dword ptr [ebp - 0xf0]       
0x00595BCF:  fld      dword ptr [edx]                   
0x00595BD1:  fchs                                       
0x00595BD3:  mov      eax, dword ptr [ebp - 0xf0]       
0x00595BD9:  fstp     dword ptr [eax]                   
0x00595BDB:  mov      ecx, dword ptr [ebp - 0xf0]       
0x00595BE1:  fld      dword ptr [ecx + 4]               
0x00595BE4:  fchs                                       
0x00595BE6:  mov      edx, dword ptr [ebp - 0xf0]       
0x00595BEC:  fstp     dword ptr [edx + 4]               
0x00595BEF:  mov      eax, dword ptr [ebp - 0xf0]       
0x00595BF5:  fld      dword ptr [eax + 8]               
0x00595BF8:  fchs                                       
0x00595BFA:  mov      ecx, dword ptr [ebp - 0xf0]       
0x00595C00:  fstp     dword ptr [ecx + 8]               
0x00595C03:  mov      edx, dword ptr [ebp - 0x68]       
0x00595C06:  add      edx, 0x40                         
0x00595C09:  mov      dword ptr [ebp - 0xf4], edx       
0x00595C0F:  mov      eax, dword ptr [ebp - 0xf4]       
0x00595C15:  fld      dword ptr [eax + 8]               
0x00595C18:  mov      ecx, dword ptr [ebp - 0xf4]       
0x00595C1E:  fmul     dword ptr [ecx + 8]               
0x00595C21:  mov      edx, dword ptr [ebp - 0xf4]       
0x00595C27:  fld      dword ptr [edx + 4]               
0x00595C2A:  mov      eax, dword ptr [ebp - 0xf4]       
0x00595C30:  fmul     dword ptr [eax + 4]               
0x00595C33:  mov      ecx, dword ptr [ebp - 0xf4]       
0x00595C39:  fld      dword ptr [ecx]                   
0x00595C3B:  mov      edx, dword ptr [ebp - 0xf4]       
0x00595C41:  fmul     dword ptr [edx]                   
0x00595C43:  faddp    st(1)                             
0x00595C45:  faddp    st(1)                             
0x00595C47:  mov      eax, dword ptr [ebp - 0x68]       
0x00595C4A:  fstp     dword ptr [eax + 0x6c]            
0x00595C4D:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595C50:  push     ecx                               
0x00595C51:  fld      dword ptr [ecx + 0x6c]            
0x00595C54:  fstp     dword ptr [esp]                   
0x00595C57:  call     0x4d3f80                          
0x00595C5C:  add      esp, 4                            
0x00595C5F:  mov      edx, dword ptr [ebp - 0x68]       
0x00595C62:  fstp     dword ptr [edx + 0x70]            
0x00595C65:  mov      eax, dword ptr [ebp - 0x68]       
0x00595C68:  fld      dword ptr [eax + 0x70]            
0x00595C6B:  fcomp    qword ptr [0x9795d0]              
0x00595C71:  fnstsw   ax                                
0x00595C73:  test     ah, 0x44                          
0x00595C76:  jnp      0x595c9a                          
0x00595C78:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595C7B:  push     ecx                               
0x00595C7C:  fld      dword ptr [ecx + 0x70]            
0x00595C7F:  fstp     dword ptr [esp]                   
0x00595C82:  mov      edx, dword ptr [ebp - 0x68]       
0x00595C85:  add      edx, 0x40                         
0x00595C88:  push     edx                               
0x00595C89:  mov      eax, dword ptr [ebp - 0x68]       
0x00595C8C:  add      eax, 0x50                         
0x00595C8F:  push     eax                               
0x00595C90:  call     0x596260                          
0x00595C95:  add      esp, 0xc                          
0x00595C98:  jmp      0x595cd1                          
0x00595C9A:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595C9D:  add      ecx, 0x50                         
0x00595CA0:  mov      dword ptr [ebp - 0x114], ecx      
0x00595CA6:  mov      edx, dword ptr [ebp - 0x114]      
0x00595CAC:  fld1                                       
0x00595CAE:  fstp     dword ptr [edx]                   
0x00595CB0:  mov      eax, dword ptr [ebp - 0x114]      
0x00595CB6:  fldz                                       
0x00595CB8:  fstp     dword ptr [eax + 4]               
0x00595CBB:  mov      ecx, dword ptr [ebp - 0x114]      
0x00595CC1:  fldz                                       
0x00595CC3:  fstp     dword ptr [ecx + 8]               
0x00595CC6:  mov      edx, dword ptr [ebp - 0x114]      
0x00595CCC:  fld1                                       
0x00595CCE:  fstp     dword ptr [edx + 0xc]             
0x00595CD1:  mov      eax, dword ptr [ebp - 0x68]       
0x00595CD4:  fld      dword ptr [eax + 0x70]            
0x00595CD7:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595CDA:  fsub     dword ptr [ecx + 0x68]            
0x00595CDD:  mov      edx, dword ptr [ebp - 0x68]       
0x00595CE0:  fstp     dword ptr [edx + 0x60]            
0x00595CE3:  mov      eax, dword ptr [ebp - 0x68]       
0x00595CE6:  fld      dword ptr [eax + 0x60]            
0x00595CE9:  fcomp    qword ptr [0x9795d0]              
0x00595CEF:  fnstsw   ax                                
0x00595CF1:  test     ah, 0x41                          
0x00595CF4:  jne      0x595d02                          
0x00595CF6:  mov      dword ptr [ebp - 0x190], 1        
0x00595D00:  jmp      0x595d0c                          
0x00595D02:  mov      dword ptr [ebp - 0x190], 0        
0x00595D0C:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595D0F:  mov      edx, dword ptr [ebp - 0x190]      
0x00595D15:  xor      edx, dword ptr [ecx + 0x74]       
0x00595D18:  je       0x595d5e                          
0x00595D1A:  mov      eax, dword ptr [ebp - 0x68]       
0x00595D1D:  fldz                                       
0x00595D1F:  fstp     dword ptr [eax + 0x60]            
0x00595D22:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595D25:  add      ecx, 0x40                         
0x00595D28:  mov      dword ptr [ebp - 0x118], ecx      
0x00595D2E:  mov      edx, dword ptr [ebp - 0x118]      
0x00595D34:  fldz                                       
0x00595D36:  fstp     dword ptr [edx]                   
0x00595D38:  mov      eax, dword ptr [ebp - 0x118]      
0x00595D3E:  fldz                                       
0x00595D40:  fstp     dword ptr [eax + 4]               
0x00595D43:  mov      ecx, dword ptr [ebp - 0x118]      
0x00595D49:  fldz                                       
0x00595D4B:  fstp     dword ptr [ecx + 8]               
0x00595D4E:  mov      edx, dword ptr [ebp - 0x118]      
0x00595D54:  fld1                                       
0x00595D56:  fstp     dword ptr [edx + 0xc]             
0x00595D59:  jmp      0x595e1e                          
0x00595D5E:  mov      eax, dword ptr [ebp - 0x68]       
0x00595D61:  fld      dword ptr [eax + 0x60]            
0x00595D64:  fstp     dword ptr [ebp - 0x124]           
0x00595D6A:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595D6D:  add      ecx, 0x50                         
0x00595D70:  mov      dword ptr [ebp - 0x120], ecx      
0x00595D76:  mov      edx, dword ptr [ebp - 0x68]       
0x00595D79:  add      edx, 0x40                         
0x00595D7C:  mov      dword ptr [ebp - 0x11c], edx      
0x00595D82:  mov      eax, dword ptr [ebp - 0x120]      
0x00595D88:  fld      dword ptr [eax]                   
0x00595D8A:  fmul     dword ptr [ebp - 0x124]           
0x00595D90:  mov      ecx, dword ptr [ebp - 0x11c]      
0x00595D96:  fstp     dword ptr [ecx]                   
0x00595D98:  mov      edx, dword ptr [ebp - 0x120]      
0x00595D9E:  fld      dword ptr [edx + 4]               
0x00595DA1:  fmul     dword ptr [ebp - 0x124]           
0x00595DA7:  mov      eax, dword ptr [ebp - 0x11c]      
0x00595DAD:  fstp     dword ptr [eax + 4]               
0x00595DB0:  mov      ecx, dword ptr [ebp - 0x120]      
0x00595DB6:  fld      dword ptr [ecx + 8]               
0x00595DB9:  fmul     dword ptr [ebp - 0x124]           
0x00595DBF:  mov      edx, dword ptr [ebp - 0x11c]      
0x00595DC5:  fstp     dword ptr [edx + 8]               
0x00595DC8:  cmp      dword ptr [ebp - 0x20], 0         
0x00595DCC:  je       0x595e1e                          
0x00595DCE:  mov      eax, dword ptr [ebp - 0x68]       
0x00595DD1:  add      eax, 0x20                         
0x00595DD4:  push     eax                               
0x00595DD5:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595DD8:  add      ecx, 0x40                         
0x00595DDB:  push     ecx                               
0x00595DDC:  mov      edx, dword ptr [ebp - 0x68]       
0x00595DDF:  push     ecx                               
0x00595DE0:  fld      dword ptr [edx + 0x80]            
0x00595DE6:  fstp     dword ptr [esp]                   
0x00595DE9:  mov      eax, dword ptr [ebp - 0x6c]       
0x00595DEC:  push     eax                               
0x00595DED:  call     0x599310                          
0x00595DF2:  add      esp, 0x10                         
0x00595DF5:  mov      ecx, dword ptr [ebp - 0x68]       
0x00595DF8:  add      ecx, 0x30                         
0x00595DFB:  push     ecx                               
0x00595DFC:  mov      edx, dword ptr [ebp - 0x68]       
0x00595DFF:  add      edx, 0x40                         
0x00595E02:  push     edx                               
0x00595E03:  mov      eax, dword ptr [ebp - 0x68]       
0x00595E06:  fld      dword ptr [eax + 0x80]            
0x00595E0C:  fchs                                       
0x00595E0E:  push     ecx                               
0x00595E0F:  fstp     dword ptr [esp]                   
0x00595E12:  mov      ecx, dword ptr [ebp - 0x28]       
0x00595E15:  push     ecx                               
0x00595E16:  call     0x599310                          
0x00595E1B:  add      esp, 0x10                         
0x00595E1E:  mov      edx, dword ptr [ebp - 0x28]       
0x00595E21:  add      edx, 0x54                         
0x00595E24:  mov      dword ptr [ebp - 0x130], edx      
0x00595E2A:  mov      eax, dword ptr [ebp - 0x40]       
0x00595E2D:  add      eax, 0x40                         
0x00595E30:  mov      dword ptr [ebp - 0x12c], eax      
0x00595E36:  mov      ecx, dword ptr [ebp - 0x40]       
0x00595E39:  add      ecx, 0x1e0                        
0x00595E3F:  mov      dword ptr [ebp - 0x128], ecx      
0x00595E45:  mov      edx, dword ptr [ebp - 0x12c]      
0x00595E4B:  fld      dword ptr [edx]                   
0x00595E4D:  mov      eax, dword ptr [ebp - 0x130]      
0x00595E53:  fadd     dword ptr [eax]                   
0x00595E55:  mov      ecx, dword ptr [ebp - 0x128]      
0x00595E5B:  fstp     dword ptr [ecx]                   
0x00595E5D:  mov      edx, dword ptr [ebp - 0x12c]      
0x00595E63:  fld      dword ptr [edx + 4]               
0x00595E66:  mov      eax, dword ptr [ebp - 0x130]      
0x00595E6C:  fadd     dword ptr [eax + 4]               
0x00595E6F:  mov      ecx, dword ptr [ebp - 0x128]      
0x00595E75:  fstp     dword ptr [ecx + 4]               
0x00595E78:  mov      edx, dword ptr [ebp - 0x12c]      
0x00595E7E:  fld      dword ptr [edx + 8]               
0x00595E81:  mov      eax, dword ptr [ebp - 0x130]      
0x00595E87:  fadd     dword ptr [eax + 8]               
0x00595E8A:  mov      ecx, dword ptr [ebp - 0x128]      
0x00595E90:  fstp     dword ptr [ecx + 8]               
0x00595E93:  mov      edx, dword ptr [ebp - 0x40]       
0x00595E96:  add      edx, 0x30                         
0x00595E99:  mov      dword ptr [ebp - 0x13c], edx      
0x00595E9F:  mov      eax, dword ptr [ebp - 0x40]       
0x00595EA2:  add      eax, 0x1e0                        
0x00595EA7:  mov      dword ptr [ebp - 0x138], eax      
0x00595EAD:  mov      ecx, dword ptr [ebp - 0x40]       
0x00595EB0:  add      ecx, 0x1e0                        
0x00595EB6:  mov      dword ptr [ebp - 0x134], ecx      
0x00595EBC:  mov      edx, dword ptr [ebp - 0x138]      
0x00595EC2:  fld      dword ptr [edx]                   
0x00595EC4:  mov      eax, dword ptr [ebp - 0x13c]      
0x00595ECA:  fsub     dword ptr [eax]                   
0x00595ECC:  mov      ecx, dword ptr [ebp - 0x134]      
0x00595ED2:  fstp     dword ptr [ecx]                   
0x00595ED4:  mov      edx, dword ptr [ebp - 0x138]      
0x00595EDA:  fld      dword ptr [edx + 4]               
0x00595EDD:  mov      eax, dword ptr [ebp - 0x13c]      
0x00595EE3:  fsub     dword ptr [eax + 4]               
0x00595EE6:  mov      ecx, dword ptr [ebp - 0x134]      
0x00595EEC:  fstp     dword ptr [ecx + 4]               
0x00595EEF:  mov      edx, dword ptr [ebp - 0x138]      
0x00595EF5:  fld      dword ptr [edx + 8]               
0x00595EF8:  mov      eax, dword ptr [ebp - 0x13c]      
0x00595EFE:  fsub     dword ptr [eax + 8]               
0x00595F01:  mov      ecx, dword ptr [ebp - 0x134]      
0x00595F07:  fstp     dword ptr [ecx + 8]               
0x00595F0A:  mov      edx, dword ptr [ebp - 0x6c]       
0x00595F0D:  add      edx, 0x54                         
0x00595F10:  mov      dword ptr [ebp - 0x148], edx      
0x00595F16:  mov      eax, dword ptr [ebp - 0x40]       
0x00595F19:  add      eax, 0x1e0                        
0x00595F1E:  mov      dword ptr [ebp - 0x144], eax      
0x00595F24:  mov      ecx, dword ptr [ebp - 0x40]       
0x00595F27:  add      ecx, 0x1e0                        
0x00595F2D:  mov      dword ptr [ebp - 0x140], ecx      
0x00595F33:  mov      edx, dword ptr [ebp - 0x144]      
0x00595F39:  fld      dword ptr [edx]                   
0x00595F3B:  mov      eax, dword ptr [ebp - 0x148]      
0x00595F41:  fsub     dword ptr [eax]                   
0x00595F43:  mov      ecx, dword ptr [ebp - 0x140]      
0x00595F49:  fstp     dword ptr [ecx]                   
0x00595F4B:  mov      edx, dword ptr [ebp - 0x144]      
0x00595F51:  fld      dword ptr [edx + 4]               
0x00595F54:  mov      eax, dword ptr [ebp - 0x148]      
0x00595F5A:  fsub     dword ptr [eax + 4]               
0x00595F5D:  mov      ecx, dword ptr [ebp - 0x140]      
0x00595F63:  fstp     dword ptr [ecx + 4]               
0x00595F66:  mov      edx, dword ptr [ebp - 0x144]      
0x00595F6C:  fld      dword ptr [edx + 8]               
0x00595F6F:  mov      eax, dword ptr [ebp - 0x148]      
0x00595F75:  fsub     dword ptr [eax + 8]               
0x00595F78:  mov      ecx, dword ptr [ebp - 0x140]      
0x00595F7E:  fstp     dword ptr [ecx + 8]               
0x00595F81:  mov      dword ptr [ebp - 0xc], 0          
0x00595F88:  jmp      0x595f93                          
0x00595F8A:  mov      edx, dword ptr [ebp - 0xc]        
0x00595F8D:  add      edx, 1                            
0x00595F90:  mov      dword ptr [ebp - 0xc], edx        
0x00595F93:  cmp      dword ptr [ebp - 0xc], 3          
0x00595F97:  jge      0x596004                          
0x00595F99:  mov      eax, dword ptr [ebp - 0xc]        
0x00595F9C:  shl      eax, 4                            
0x00595F9F:  mov      ecx, dword ptr [ebp - 0x40]       
0x00595FA2:  lea      edx, [ecx + eax + 0x80]           
0x00595FA9:  mov      dword ptr [ebp - 0x150], edx      
0x00595FAF:  mov      eax, dword ptr [ebp - 0x40]       
0x00595FB2:  add      eax, 0x1e0                        
0x00595FB7:  mov      dword ptr [ebp - 0x14c], eax      
0x00595FBD:  mov      ecx, dword ptr [ebp - 0x150]      
0x00595FC3:  fld      dword ptr [ecx + 8]               
0x00595FC6:  mov      edx, dword ptr [ebp - 0x14c]      
0x00595FCC:  fmul     dword ptr [edx + 8]               
0x00595FCF:  mov      eax, dword ptr [ebp - 0x150]      
0x00595FD5:  fld      dword ptr [eax + 4]               
0x00595FD8:  mov      ecx, dword ptr [ebp - 0x14c]      
0x00595FDE:  fmul     dword ptr [ecx + 4]               
0x00595FE1:  mov      edx, dword ptr [ebp - 0x150]      
0x00595FE7:  fld      dword ptr [edx]                   
0x00595FE9:  mov      eax, dword ptr [ebp - 0x14c]      
0x00595FEF:  fmul     dword ptr [eax]                   
0x00595FF1:  faddp    st(1)                             
0x00595FF3:  faddp    st(1)                             
0x00595FF5:  mov      ecx, dword ptr [ebp - 0xc]        
0x00595FF8:  mov      edx, dword ptr [ebp - 0x40]       
0x00595FFB:  fstp     dword ptr [edx + ecx*4 + 0x1d4]   
0x00596002:  jmp      0x595f8a                          
0x00596004:  cmp      dword ptr [ebp - 0x20], 0         
0x00596008:  je       0x596211                          
0x0059600E:  mov      eax, dword ptr [ebp - 0x40]       
0x00596011:  mov      ecx, dword ptr [eax + 8]          
0x00596014:  and      ecx, 0x40000                      
0x0059601A:  je       0x596211                          
0x00596020:  mov      edx, dword ptr [ebp - 0x6c]       
0x00596023:  add      edx, 0x184                        
0x00596029:  mov      dword ptr [ebp - 0x158], edx      
0x0059602F:  mov      eax, dword ptr [ebp - 0x28]       
0x00596032:  add      eax, 0x184                        
0x00596037:  mov      dword ptr [ebp - 0x154], eax      
0x0059603D:  mov      ecx, dword ptr [ebp - 0x154]      
0x00596043:  fld      dword ptr [ecx]                   
0x00596045:  mov      edx, dword ptr [ebp - 0x158]      
0x0059604B:  fsub     dword ptr [edx]                   
0x0059604D:  fstp     dword ptr [ebp - 0x64]            
0x00596050:  mov      eax, dword ptr [ebp - 0x154]      
0x00596056:  fld      dword ptr [eax + 4]               
0x00596059:  mov      ecx, dword ptr [ebp - 0x158]      
0x0059605F:  fsub     dword ptr [ecx + 4]               
0x00596062:  fstp     dword ptr [ebp - 0x60]            
0x00596065:  mov      edx, dword ptr [ebp - 0x154]      
0x0059606B:  fld      dword ptr [edx + 8]               
0x0059606E:  mov      eax, dword ptr [ebp - 0x158]      
0x00596074:  fsub     dword ptr [eax + 8]               
0x00596077:  fstp     dword ptr [ebp - 0x5c]            
0x0059607A:  lea      ecx, [ebp - 0x64]                 
0x0059607D:  push     ecx                               
0x0059607E:  lea      edx, [ebp - 0x64]                 
0x00596081:  push     edx                               
0x00596082:  call     0x5962a0                          
0x00596087:  add      esp, 8                            
0x0059608A:  fstp     dword ptr [ebp - 0x2c]            
0x0059608D:  fld      dword ptr [ebp - 0x2c]            
0x00596090:  fcomp    qword ptr [0x9795d0]              
0x00596096:  fnstsw   ax                                
0x00596098:  test     ah, 0x44                          
0x0059609B:  jnp      0x596211                          
0x005960A1:  fld      dword ptr [ebp - 0x64]            
0x005960A4:  fstp     dword ptr [ebp - 0x50]            
0x005960A7:  fld      dword ptr [ebp - 0x60]            
0x005960AA:  fstp     dword ptr [ebp - 0x4c]            
0x005960AD:  fld      dword ptr [ebp - 0x5c]            
0x005960B0:  fstp     dword ptr [ebp - 0x48]            
0x005960B3:  lea      eax, [ebp - 0x50]                 
0x005960B6:  push     eax                               
0x005960B7:  mov      ecx, dword ptr [ebp - 0x6c]       
0x005960BA:  add      ecx, 0x204                        
0x005960C0:  push     ecx                               
0x005960C1:  lea      edx, [ebp - 0x1c]                 
0x005960C4:  push     edx                               
0x005960C5:  call     0x6ac660                          
0x005960CA:  add      esp, 0xc                          
0x005960CD:  lea      eax, [ebp - 0x50]                 
0x005960D0:  push     eax                               
0x005960D1:  mov      ecx, dword ptr [ebp - 0x28]       
0x005960D4:  add      ecx, 0x204                        
0x005960DA:  push     ecx                               
0x005960DB:  lea      edx, [ebp - 0x3c]                 
0x005960DE:  push     edx                               
0x005960DF:  call     0x6ac660                          
0x005960E4:  add      esp, 0xc                          
0x005960E7:  fld      dword ptr [ebp - 0x3c]            
0x005960EA:  fchs                                       
0x005960EC:  fstp     dword ptr [ebp - 0x3c]            
0x005960EF:  fld      dword ptr [ebp - 0x38]            
0x005960F2:  fchs                                       
0x005960F4:  fstp     dword ptr [ebp - 0x38]            
0x005960F7:  fld      dword ptr [ebp - 0x34]            
0x005960FA:  fchs                                       
0x005960FC:  fstp     dword ptr [ebp - 0x34]            
0x005960FF:  fld      dword ptr [ebp - 0x3c]            
0x00596102:  fsub     dword ptr [ebp - 0x1c]            
0x00596105:  fstp     dword ptr [ebp - 0x50]            
0x00596108:  fld      dword ptr [ebp - 0x38]            
0x0059610B:  fsub     dword ptr [ebp - 0x18]            
0x0059610E:  fstp     dword ptr [ebp - 0x4c]            
0x00596111:  fld      dword ptr [ebp - 0x34]            
0x00596114:  fsub     dword ptr [ebp - 0x14]            
0x00596117:  fstp     dword ptr [ebp - 0x48]            
0x0059611A:  fld      dword ptr [ebp - 0x5c]            
0x0059611D:  fmul     dword ptr [ebp - 0x48]            
0x00596120:  fld      dword ptr [ebp - 0x60]            
0x00596123:  fmul     dword ptr [ebp - 0x4c]            
0x00596126:  fld      dword ptr [ebp - 0x64]            
0x00596129:  fmul     dword ptr [ebp - 0x50]            
0x0059612C:  faddp    st(1)                             
0x0059612E:  faddp    st(1)                             
0x00596130:  fstp     dword ptr [ebp - 8]               
0x00596133:  fld      dword ptr [ebp - 0x2c]            
0x00596136:  fchs                                       
0x00596138:  mov      eax, dword ptr [ebp - 0x40]       
0x0059613B:  fmul     dword ptr [eax + 0x268]           
0x00596141:  fmul     dword ptr [ebp + 0xc]             
0x00596144:  fdiv     dword ptr [ebp - 8]               
0x00596147:  fstp     dword ptr [ebp - 4]               
0x0059614A:  mov      ecx, dword ptr [ebp - 0x6c]       
0x0059614D:  add      ecx, 0x184                        
0x00596153:  mov      dword ptr [ebp - 0x180], ecx      
0x00596159:  mov      edx, dword ptr [ebp - 0x6c]       
0x0059615C:  add      edx, 0x184                        
0x00596162:  mov      dword ptr [ebp - 0x17c], edx      
0x00596168:  fld      dword ptr [ebp - 0x1c]            
0x0059616B:  fmul     dword ptr [ebp - 4]               
0x0059616E:  mov      eax, dword ptr [ebp - 0x180]      
0x00596174:  fadd     dword ptr [eax]                   
0x00596176:  mov      ecx, dword ptr [ebp - 0x17c]      
0x0059617C:  fstp     dword ptr [ecx]                   
0x0059617E:  fld      dword ptr [ebp - 0x18]            
0x00596181:  fmul     dword ptr [ebp - 4]               
0x00596184:  mov      edx, dword ptr [ebp - 0x180]      
0x0059618A:  fadd     dword ptr [edx + 4]               
0x0059618D:  mov      eax, dword ptr [ebp - 0x17c]      
0x00596193:  fstp     dword ptr [eax + 4]               
0x00596196:  fld      dword ptr [ebp - 0x14]            
0x00596199:  fmul     dword ptr [ebp - 4]               
0x0059619C:  mov      ecx, dword ptr [ebp - 0x180]      
0x005961A2:  fadd     dword ptr [ecx + 8]               
0x005961A5:  mov      edx, dword ptr [ebp - 0x17c]      
0x005961AB:  fstp     dword ptr [edx + 8]               
0x005961AE:  mov      eax, dword ptr [ebp - 0x28]       
0x005961B1:  add      eax, 0x184                        
0x005961B6:  mov      dword ptr [ebp - 0x188], eax      
0x005961BC:  mov      ecx, dword ptr [ebp - 0x28]       
0x005961BF:  add      ecx, 0x184                        
0x005961C5:  mov      dword ptr [ebp - 0x184], ecx      
0x005961CB:  fld      dword ptr [ebp - 0x3c]            
0x005961CE:  fmul     dword ptr [ebp - 4]               
0x005961D1:  mov      edx, dword ptr [ebp - 0x188]      
0x005961D7:  fadd     dword ptr [edx]                   
0x005961D9:  mov      eax, dword ptr [ebp - 0x184]      
0x005961DF:  fstp     dword ptr [eax]                   
0x005961E1:  fld      dword ptr [ebp - 0x38]            
0x005961E4:  fmul     dword ptr [ebp - 4]               
0x005961E7:  mov      ecx, dword ptr [ebp - 0x188]      
0x005961ED:  fadd     dword ptr [ecx + 4]               
0x005961F0:  mov      edx, dword ptr [ebp - 0x184]      
0x005961F6:  fstp     dword ptr [edx + 4]               
0x005961F9:  fld      dword ptr [ebp - 0x34]            
0x005961FC:  fmul     dword ptr [ebp - 4]               
0x005961FF:  mov      eax, dword ptr [ebp - 0x188]      
0x00596205:  fadd     dword ptr [eax + 8]               
0x00596208:  mov      ecx, dword ptr [ebp - 0x184]      
0x0059620E:  fstp     dword ptr [ecx + 8]               
0x00596211:  mov      edx, dword ptr [ebp - 0x40]       
0x00596214:  cmp      dword ptr [edx + 0xc], 6          
0x00596218:  jne      0x596236                          
0x0059621A:  mov      eax, dword ptr [ebp - 0x40]       
0x0059621D:  mov      ecx, dword ptr [eax + 8]          
0x00596220:  and      ecx, 0x40000                      
0x00596226:  je       0x596236                          
0x00596228:  mov      edx, dword ptr [ebp - 0x40]       
0x0059622B:  add      edx, 0x2a0                        
0x00596231:  mov      dword ptr [ebp - 0x40], edx       
0x00596234:  jmp      0x596251                          
0x00596236:  mov      eax, dword ptr [ebp - 0x54]       
0x00596239:  add      eax, 1                            
0x0059623C:  mov      dword ptr [ebp - 0x54], eax       
0x0059623F:  mov      ecx, dword ptr [ebp + 8]          
0x00596242:  mov      edx, dword ptr [ecx + 0x100]      
0x00596248:  mov      eax, dword ptr [ebp - 0x54]       
0x0059624B:  mov      ecx, dword ptr [edx + eax*4]      
0x0059624E:  mov      dword ptr [ebp - 0x40], ecx       
0x00596251:  jmp      0x5954d4                          
0x00596256:  mov      esp, ebp                          
0x00596258:  pop      ebp                               
0x00596259:  ret                                        
0x0059625A:  int3                                       
0x0059625B:  int3                                       
0x0059625C:  int3                                       
0x0059625D:  int3                                       
0x0059625E:  int3                                       
0x0059625F:  int3                                       
0x00596260:  push     ebp                               
0x00596261:  mov      ebp, esp                          
0x00596263:  push     ecx                               
0x00596264:  fld      dword ptr [ebp + 0x10]            
0x00596267:  fld1                                       
0x00596269:  fdivrp   st(1)                             
0x0059626B:  fstp     dword ptr [ebp - 4]               
0x0059626E:  mov      eax, dword ptr [ebp + 0xc]        
0x00596271:  fld      dword ptr [eax]                   
0x00596273:  fmul     dword ptr [ebp - 4]               
0x00596276:  mov      ecx, dword ptr [ebp + 8]          
0x00596279:  fstp     dword ptr [ecx]                   
0x0059627B:  mov      edx, dword ptr [ebp + 0xc]        
0x0059627E:  fld      dword ptr [edx + 4]               
0x00596281:  fmul     dword ptr [ebp - 4]               
0x00596284:  mov      eax, dword ptr [ebp + 8]          
0x00596287:  fstp     dword ptr [eax + 4]               
0x0059628A:  mov      ecx, dword ptr [ebp + 0xc]        
0x0059628D:  fld      dword ptr [ecx + 8]               
0x00596290:  fmul     dword ptr [ebp - 4]               
0x00596293:  mov      edx, dword ptr [ebp + 8]          
0x00596296:  fstp     dword ptr [edx + 8]               
0x00596299:  mov      esp, ebp                          
0x0059629B:  pop      ebp                               
0x0059629C:  ret                                        
0x0059629D:  int3                                       
0x0059629E:  int3                                       
0x0059629F:  int3                                       
0x005962A0:  push     ebp                               
0x005962A1:  mov      ebp, esp                          
0x005962A3:  sub      esp, 0x24                         
0x005962A6:  mov      eax, dword ptr [ebp + 0xc]        
0x005962A9:  fld      dword ptr [eax + 8]               
0x005962AC:  mov      ecx, dword ptr [ebp + 0xc]        
0x005962AF:  fmul     dword ptr [ecx + 8]               
0x005962B2:  mov      edx, dword ptr [ebp + 0xc]        
0x005962B5:  fld      dword ptr [edx + 4]               
0x005962B8:  mov      eax, dword ptr [ebp + 0xc]        
0x005962BB:  fmul     dword ptr [eax + 4]               
0x005962BE:  mov      ecx, dword ptr [ebp + 0xc]        
0x005962C1:  fld      dword ptr [ecx]                   
0x005962C3:  mov      edx, dword ptr [ebp + 0xc]        
0x005962C6:  fmul     dword ptr [edx]                   
0x005962C8:  faddp    st(1)                             
0x005962CA:  faddp    st(1)                             
0x005962CC:  fstp     dword ptr [ebp - 0x24]            
0x005962CF:  fld      dword ptr [ebp - 0x24]            
0x005962D2:  push     ecx                               
0x005962D3:  fstp     dword ptr [esp]                   
0x005962D6:  call     0x4d3f80                          
0x005962DB:  add      esp, 4                            
0x005962DE:  fstp     dword ptr [ebp - 4]               
0x005962E1:  fld      dword ptr [ebp - 4]               
0x005962E4:  fcomp    qword ptr [0x97ce40]              
0x005962EA:  fnstsw   ax                                
0x005962EC:  test     ah, 5                             
0x005962EF:  jp       0x59630c                          
0x005962F1:  mov      eax, dword ptr [ebp + 8]          
0x005962F4:  fldz                                       
0x005962F6:  fstp     dword ptr [eax]                   
0x005962F8:  mov      ecx, dword ptr [ebp + 8]          
0x005962FB:  fldz                                       
0x005962FD:  fstp     dword ptr [ecx + 4]               
0x00596300:  mov      edx, dword ptr [ebp + 8]          
0x00596303:  fldz                                       
0x00596305:  fstp     dword ptr [edx + 8]               
0x00596308:  fldz                                       
0x0059630A:  jmp      0x596344                          
0x0059630C:  fld      dword ptr [ebp - 4]               
0x0059630F:  fld1                                       
0x00596311:  fdivrp   st(1)                             
0x00596313:  fstp     dword ptr [ebp - 8]               
0x00596316:  mov      eax, dword ptr [ebp + 0xc]        
0x00596319:  fld      dword ptr [eax]                   
0x0059631B:  fmul     dword ptr [ebp - 8]               
0x0059631E:  mov      ecx, dword ptr [ebp + 8]          
0x00596321:  fstp     dword ptr [ecx]                   
0x00596323:  mov      edx, dword ptr [ebp + 0xc]        
0x00596326:  fld      dword ptr [edx + 4]               
0x00596329:  fmul     dword ptr [ebp - 8]               
0x0059632C:  mov      eax, dword ptr [ebp + 8]          
0x0059632F:  fstp     dword ptr [eax + 4]               
0x00596332:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596335:  fld      dword ptr [ecx + 8]               
0x00596338:  fmul     dword ptr [ebp - 8]               
0x0059633B:  mov      edx, dword ptr [ebp + 8]          
0x0059633E:  fstp     dword ptr [edx + 8]               
0x00596341:  fld      dword ptr [ebp - 4]               
0x00596344:  mov      esp, ebp                          
0x00596346:  pop      ebp                               
0x00596347:  ret                                        
0x00596348:  int3                                       
0x00596349:  int3                                       
0x0059634A:  int3                                       
0x0059634B:  int3                                       
0x0059634C:  int3                                       
0x0059634D:  int3                                       
0x0059634E:  int3                                       
0x0059634F:  int3                                       
0x00596350:  push     ebp                               
0x00596351:  mov      ebp, esp                          
0x00596353:  push     ecx                               
0x00596354:  mov      eax, dword ptr [ebp + 8]          
0x00596357:  mov      ecx, dword ptr [eax + 0x108]      
0x0059635D:  mov      dword ptr [ebp - 4], ecx          
0x00596360:  push     ecx                               
0x00596361:  fld      dword ptr [ebp + 0xc]             
0x00596364:  fstp     dword ptr [esp]                   
0x00596367:  mov      edx, dword ptr [ebp + 8]          
0x0059636A:  push     edx                               
0x0059636B:  call     0x5954a0                          
0x00596370:  add      esp, 8                            
0x00596373:  mov      eax, dword ptr [ebp + 8]          
0x00596376:  mov      ecx, dword ptr [eax + 0x38]       
0x00596379:  and      ecx, 0x40000                      
0x0059637F:  jne      0x59638d                          
0x00596381:  mov      edx, dword ptr [ebp - 4]          
0x00596384:  push     edx                               
0x00596385:  call     0x603020                          
0x0059638A:  add      esp, 4                            
0x0059638D:  mov      esp, ebp                          
0x0059638F:  pop      ebp                               
0x00596390:  ret                                        
0x00596391:  int3                                       
0x00596392:  int3                                       
0x00596393:  int3                                       
0x00596394:  int3                                       
0x00596395:  int3                                       
0x00596396:  int3                                       
0x00596397:  int3                                       
0x00596398:  int3                                       
0x00596399:  int3                                       
0x0059639A:  int3                                       
0x0059639B:  int3                                       
0x0059639C:  int3                                       
0x0059639D:  int3                                       
0x0059639E:  int3                                       
0x0059639F:  int3                                       
0x005963A0:  push     ebp                               
0x005963A1:  mov      ebp, esp                          
0x005963A3:  sub      esp, 0x30                         
0x005963A6:  mov      eax, dword ptr [ebp + 8]          
0x005963A9:  cmp      dword ptr [eax + 0x40], 0         
0x005963AD:  jne      0x5963eb                          
0x005963AF:  mov      ecx, dword ptr [ebp + 8]          
0x005963B2:  add      ecx, 0x54                         
0x005963B5:  mov      dword ptr [ebp - 0x14], ecx       
0x005963B8:  mov      edx, dword ptr [ebp + 0xc]        
0x005963BB:  mov      eax, dword ptr [ebp - 0x14]       
0x005963BE:  fld      dword ptr [eax]                   
0x005963C0:  fstp     dword ptr [edx]                   
0x005963C2:  mov      ecx, dword ptr [ebp + 0xc]        
0x005963C5:  mov      edx, dword ptr [ebp - 0x14]       
0x005963C8:  fld      dword ptr [edx + 4]               
0x005963CB:  fstp     dword ptr [ecx + 4]               
0x005963CE:  mov      eax, dword ptr [ebp + 0xc]        
0x005963D1:  mov      ecx, dword ptr [ebp - 0x14]       
0x005963D4:  fld      dword ptr [ecx + 8]               
0x005963D7:  fstp     dword ptr [eax + 8]               
0x005963DA:  mov      edx, dword ptr [ebp + 0xc]        
0x005963DD:  mov      eax, dword ptr [ebp - 0x14]       
0x005963E0:  fld      dword ptr [eax + 0xc]             
0x005963E3:  fstp     dword ptr [edx + 0xc]             
0x005963E6:  jmp      0x59652b                          
0x005963EB:  mov      ecx, dword ptr [ebp + 0x10]       
0x005963EE:  mov      dword ptr [ebp - 0x30], ecx       
0x005963F1:  cmp      dword ptr [ebp - 0x30], 0         
0x005963F5:  je       0x59640c                          
0x005963F7:  cmp      dword ptr [ebp - 0x30], 1         
0x005963FB:  je       0x596468                          
0x005963FD:  cmp      dword ptr [ebp - 0x30], 2         
0x00596401:  je       0x5964f4                          
0x00596407:  jmp      0x59652b                          
0x0059640C:  mov      edx, dword ptr [ebp + 8]          
0x0059640F:  mov      eax, dword ptr [edx + 0x40]       
0x00596412:  add      eax, 0x20                         
0x00596415:  mov      dword ptr [ebp - 0x18], eax       
0x00596418:  mov      ecx, dword ptr [ebp - 0x18]       
0x0059641B:  push     ecx                               
0x0059641C:  mov      edx, dword ptr [ebp + 8]          
0x0059641F:  add      edx, 0x74                         
0x00596422:  push     edx                               
0x00596423:  lea      eax, [ebp - 0x10]                 
0x00596426:  push     eax                               
0x00596427:  call     0x6ac660                          
0x0059642C:  add      esp, 0xc                          
0x0059642F:  mov      ecx, dword ptr [ebp + 8]          
0x00596432:  add      ecx, 0x54                         
0x00596435:  mov      dword ptr [ebp - 0x1c], ecx       
0x00596438:  mov      edx, dword ptr [ebp - 0x1c]       
0x0059643B:  fld      dword ptr [edx]                   
0x0059643D:  fsub     dword ptr [ebp - 0x10]            
0x00596440:  mov      eax, dword ptr [ebp + 0xc]        
0x00596443:  fstp     dword ptr [eax]                   
0x00596445:  mov      ecx, dword ptr [ebp - 0x1c]       
0x00596448:  fld      dword ptr [ecx + 4]               
0x0059644B:  fsub     dword ptr [ebp - 0xc]             
0x0059644E:  mov      edx, dword ptr [ebp + 0xc]        
0x00596451:  fstp     dword ptr [edx + 4]               
0x00596454:  mov      eax, dword ptr [ebp - 0x1c]       
0x00596457:  fld      dword ptr [eax + 8]               
0x0059645A:  fsub     dword ptr [ebp - 8]               
0x0059645D:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596460:  fstp     dword ptr [ecx + 8]               
0x00596463:  jmp      0x59652b                          
0x00596468:  mov      edx, dword ptr [ebp + 8]          
0x0059646B:  mov      eax, dword ptr [edx + 0x40]       
0x0059646E:  add      eax, 0x20                         
0x00596471:  mov      dword ptr [ebp - 0x24], eax       
0x00596474:  mov      ecx, dword ptr [ebp + 8]          
0x00596477:  mov      edx, dword ptr [ecx + 0x40]       
0x0059647A:  add      edx, 0x10                         
0x0059647D:  mov      dword ptr [ebp - 0x20], edx       
0x00596480:  mov      eax, dword ptr [ebp - 0x20]       
0x00596483:  fld      dword ptr [eax]                   
0x00596485:  mov      ecx, dword ptr [ebp - 0x24]       
0x00596488:  fsub     dword ptr [ecx]                   
0x0059648A:  fstp     dword ptr [ebp - 0x10]            
0x0059648D:  mov      edx, dword ptr [ebp - 0x20]       
0x00596490:  fld      dword ptr [edx + 4]               
0x00596493:  mov      eax, dword ptr [ebp - 0x24]       
0x00596496:  fsub     dword ptr [eax + 4]               
0x00596499:  fstp     dword ptr [ebp - 0xc]             
0x0059649C:  mov      ecx, dword ptr [ebp - 0x20]       
0x0059649F:  fld      dword ptr [ecx + 8]               
0x005964A2:  mov      edx, dword ptr [ebp - 0x24]       
0x005964A5:  fsub     dword ptr [edx + 8]               
0x005964A8:  fstp     dword ptr [ebp - 8]               
0x005964AB:  lea      eax, [ebp - 0x10]                 
0x005964AE:  push     eax                               
0x005964AF:  mov      ecx, dword ptr [ebp + 8]          
0x005964B2:  add      ecx, 0x74                         
0x005964B5:  push     ecx                               
0x005964B6:  call     0x6ac5c0                          
0x005964BB:  add      esp, 8                            
0x005964BE:  mov      edx, dword ptr [ebp + 8]          
0x005964C1:  add      edx, 0x54                         
0x005964C4:  mov      dword ptr [ebp - 0x28], edx       
0x005964C7:  mov      eax, dword ptr [ebp - 0x28]       
0x005964CA:  fld      dword ptr [eax]                   
0x005964CC:  fadd     dword ptr [ebp - 0x10]            
0x005964CF:  mov      ecx, dword ptr [ebp + 0xc]        
0x005964D2:  fstp     dword ptr [ecx]                   
0x005964D4:  mov      edx, dword ptr [ebp - 0x28]       
0x005964D7:  fld      dword ptr [edx + 4]               
0x005964DA:  fadd     dword ptr [ebp - 0xc]             
0x005964DD:  mov      eax, dword ptr [ebp + 0xc]        
0x005964E0:  fstp     dword ptr [eax + 4]               
0x005964E3:  mov      ecx, dword ptr [ebp - 0x28]       
0x005964E6:  fld      dword ptr [ecx + 8]               
0x005964E9:  fadd     dword ptr [ebp - 8]               
0x005964EC:  mov      edx, dword ptr [ebp + 0xc]        
0x005964EF:  fstp     dword ptr [edx + 8]               
0x005964F2:  jmp      0x59652b                          
0x005964F4:  mov      eax, dword ptr [ebp + 8]          
0x005964F7:  add      eax, 0x54                         
0x005964FA:  mov      dword ptr [ebp - 0x2c], eax       
0x005964FD:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596500:  mov      edx, dword ptr [ebp - 0x2c]       
0x00596503:  fld      dword ptr [edx]                   
0x00596505:  fstp     dword ptr [ecx]                   
0x00596507:  mov      eax, dword ptr [ebp + 0xc]        
0x0059650A:  mov      ecx, dword ptr [ebp - 0x2c]       
0x0059650D:  fld      dword ptr [ecx + 4]               
0x00596510:  fstp     dword ptr [eax + 4]               
0x00596513:  mov      edx, dword ptr [ebp + 0xc]        
0x00596516:  mov      eax, dword ptr [ebp - 0x2c]       
0x00596519:  fld      dword ptr [eax + 8]               
0x0059651C:  fstp     dword ptr [edx + 8]               
0x0059651F:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596522:  mov      edx, dword ptr [ebp - 0x2c]       
0x00596525:  fld      dword ptr [edx + 0xc]             
0x00596528:  fstp     dword ptr [ecx + 0xc]             
0x0059652B:  mov      esp, ebp                          
0x0059652D:  pop      ebp                               
0x0059652E:  ret                                        
0x0059652F:  int3                                       
0x00596530:  push     ebp                               
0x00596531:  mov      ebp, esp                          
0x00596533:  sub      esp, 0x44                         
0x00596536:  mov      eax, dword ptr [ebp + 8]          
0x00596539:  add      eax, 0x154                        
0x0059653E:  mov      dword ptr [ebp - 4], eax          
0x00596541:  mov      ecx, dword ptr [ebp - 4]          
0x00596544:  mov      edx, dword ptr [ebp + 0xc]        
0x00596547:  fld      dword ptr [edx]                   
0x00596549:  fstp     dword ptr [ecx]                   
0x0059654B:  mov      eax, dword ptr [ebp - 4]          
0x0059654E:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596551:  fld      dword ptr [ecx + 4]               
0x00596554:  fstp     dword ptr [eax + 4]               
0x00596557:  mov      edx, dword ptr [ebp - 4]          
0x0059655A:  mov      eax, dword ptr [ebp + 0xc]        
0x0059655D:  fld      dword ptr [eax + 8]               
0x00596560:  fstp     dword ptr [edx + 8]               
0x00596563:  mov      ecx, dword ptr [ebp - 4]          
0x00596566:  mov      edx, dword ptr [ebp + 0xc]        
0x00596569:  fld      dword ptr [edx + 0xc]             
0x0059656C:  fstp     dword ptr [ecx + 0xc]             
0x0059656F:  mov      eax, dword ptr [ebp + 8]          
0x00596572:  cmp      dword ptr [eax + 0x50], 5         
0x00596576:  jne      0x59660b                          
0x0059657C:  mov      ecx, dword ptr [ebp + 8]          
0x0059657F:  mov      edx, dword ptr [ecx + 0x40]       
0x00596582:  mov      eax, dword ptr [edx + 4]          
0x00596585:  movzx    ecx, word ptr [eax + 0xc]         
0x00596589:  mov      dword ptr [ebp - 0x44], ecx       
0x0059658C:  cmp      dword ptr [ebp - 0x44], 0         
0x00596590:  jl       0x59660b                          
0x00596592:  cmp      dword ptr [ebp - 0x44], 1         
0x00596596:  jle      0x59659a                          
0x00596598:  jmp      0x59660b                          
0x0059659A:  mov      edx, dword ptr [ebp + 8]          
0x0059659D:  fld      dword ptr [edx + 0x54]            
0x005965A0:  fcomp    qword ptr [0x9795d0]              
0x005965A6:  fnstsw   ax                                
0x005965A8:  test     ah, 0x44                          
0x005965AB:  jp       0x5965d3                          
0x005965AD:  mov      eax, dword ptr [ebp + 8]          
0x005965B0:  fld      dword ptr [eax + 0x58]            
0x005965B3:  fcomp    qword ptr [0x9795d0]              
0x005965B9:  fnstsw   ax                                
0x005965BB:  test     ah, 0x44                          
0x005965BE:  jp       0x5965d3                          
0x005965C0:  mov      ecx, dword ptr [ebp + 8]          
0x005965C3:  fld      dword ptr [ecx + 0x5c]            
0x005965C6:  fcomp    qword ptr [0x9795d0]              
0x005965CC:  fnstsw   ax                                
0x005965CE:  test     ah, 0x44                          
0x005965D1:  jnp      0x5965f0                          
0x005965D3:  mov      edx, dword ptr [ebp + 8]          
0x005965D6:  mov      eax, dword ptr [edx + 0x40]       
0x005965D9:  mov      ecx, dword ptr [eax + 4]          
0x005965DC:  mov      edx, dword ptr [ecx + 0x1c]       
0x005965DF:  or       edx, 1                            
0x005965E2:  mov      eax, dword ptr [ebp + 8]          
0x005965E5:  mov      ecx, dword ptr [eax + 0x40]       
0x005965E8:  mov      eax, dword ptr [ecx + 4]          
0x005965EB:  mov      dword ptr [eax + 0x1c], edx       
0x005965EE:  jmp      0x59660b                          
0x005965F0:  mov      ecx, dword ptr [ebp + 8]          
0x005965F3:  mov      edx, dword ptr [ecx + 0x40]       
0x005965F6:  mov      eax, dword ptr [edx + 4]          
0x005965F9:  mov      ecx, dword ptr [eax + 0x1c]       
0x005965FC:  and      ecx, 0xfffffffe                   
0x005965FF:  mov      edx, dword ptr [ebp + 8]          
0x00596602:  mov      eax, dword ptr [edx + 0x40]       
0x00596605:  mov      edx, dword ptr [eax + 4]          
0x00596608:  mov      dword ptr [edx + 0x1c], ecx       
0x0059660B:  mov      eax, dword ptr [ebp + 8]          
0x0059660E:  mov      ecx, dword ptr [eax + 0x3c]       
0x00596611:  and      ecx, 1                            
0x00596614:  je       0x5966b0                          
0x0059661A:  mov      edx, dword ptr [ebp + 8]          
0x0059661D:  mov      eax, dword ptr [edx + 0x4c]       
0x00596620:  or       eax, 0x10                         
0x00596623:  mov      ecx, dword ptr [ebp + 8]          
0x00596626:  mov      dword ptr [ecx + 0x4c], eax       
0x00596629:  cmp      dword ptr [ebp + 0x10], 0         
0x0059662D:  je       0x5966ab                          
0x0059662F:  mov      edx, dword ptr [ebp + 8]          
0x00596632:  add      edx, 0x1a4                        
0x00596638:  mov      dword ptr [ebp - 8], edx          
0x0059663B:  mov      eax, dword ptr [ebp - 8]          
0x0059663E:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596641:  fld      dword ptr [ecx]                   
0x00596643:  fstp     dword ptr [eax]                   
0x00596645:  mov      edx, dword ptr [ebp - 8]          
0x00596648:  mov      eax, dword ptr [ebp + 0xc]        
0x0059664B:  fld      dword ptr [eax + 4]               
0x0059664E:  fstp     dword ptr [edx + 4]               
0x00596651:  mov      ecx, dword ptr [ebp - 8]          
0x00596654:  mov      edx, dword ptr [ebp + 0xc]        
0x00596657:  fld      dword ptr [edx + 8]               
0x0059665A:  fstp     dword ptr [ecx + 8]               
0x0059665D:  mov      eax, dword ptr [ebp - 8]          
0x00596660:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596663:  fld      dword ptr [ecx + 0xc]             
0x00596666:  fstp     dword ptr [eax + 0xc]             
0x00596669:  mov      edx, dword ptr [ebp + 8]          
0x0059666C:  add      edx, 0x64                         
0x0059666F:  mov      dword ptr [ebp - 0x10], edx       
0x00596672:  mov      eax, dword ptr [ebp + 8]          
0x00596675:  add      eax, 0x1b4                        
0x0059667A:  mov      dword ptr [ebp - 0xc], eax        
0x0059667D:  mov      ecx, dword ptr [ebp - 0xc]        
0x00596680:  mov      edx, dword ptr [ebp - 0x10]       
0x00596683:  fld      dword ptr [edx]                   
0x00596685:  fstp     dword ptr [ecx]                   
0x00596687:  mov      eax, dword ptr [ebp - 0xc]        
0x0059668A:  mov      ecx, dword ptr [ebp - 0x10]       
0x0059668D:  fld      dword ptr [ecx + 4]               
0x00596690:  fstp     dword ptr [eax + 4]               
0x00596693:  mov      edx, dword ptr [ebp - 0xc]        
0x00596696:  mov      eax, dword ptr [ebp - 0x10]       
0x00596699:  fld      dword ptr [eax + 8]               
0x0059669C:  fstp     dword ptr [edx + 8]               
0x0059669F:  mov      ecx, dword ptr [ebp - 0xc]        
0x005966A2:  mov      edx, dword ptr [ebp - 0x10]       
0x005966A5:  fld      dword ptr [edx + 0xc]             
0x005966A8:  fstp     dword ptr [ecx + 0xc]             
0x005966AB:  jmp      0x596755                          
0x005966B0:  mov      eax, dword ptr [ebp + 8]          
0x005966B3:  add      eax, 0x1a4                        
0x005966B8:  mov      dword ptr [ebp - 0x14], eax       
0x005966BB:  mov      ecx, dword ptr [ebp - 0x14]       
0x005966BE:  mov      edx, dword ptr [ebp + 0xc]        
0x005966C1:  fld      dword ptr [edx]                   
0x005966C3:  fstp     dword ptr [ecx]                   
0x005966C5:  mov      eax, dword ptr [ebp - 0x14]       
0x005966C8:  mov      ecx, dword ptr [ebp + 0xc]        
0x005966CB:  fld      dword ptr [ecx + 4]               
0x005966CE:  fstp     dword ptr [eax + 4]               
0x005966D1:  mov      edx, dword ptr [ebp - 0x14]       
0x005966D4:  mov      eax, dword ptr [ebp + 0xc]        
0x005966D7:  fld      dword ptr [eax + 8]               
0x005966DA:  fstp     dword ptr [edx + 8]               
0x005966DD:  mov      ecx, dword ptr [ebp - 0x14]       
0x005966E0:  mov      edx, dword ptr [ebp + 0xc]        
0x005966E3:  fld      dword ptr [edx + 0xc]             
0x005966E6:  fstp     dword ptr [ecx + 0xc]             
0x005966E9:  mov      eax, dword ptr [ebp + 8]          
0x005966EC:  add      eax, 0x64                         
0x005966EF:  mov      dword ptr [ebp - 0x1c], eax       
0x005966F2:  mov      ecx, dword ptr [ebp + 8]          
0x005966F5:  add      ecx, 0x1b4                        
0x005966FB:  mov      dword ptr [ebp - 0x18], ecx       
0x005966FE:  mov      edx, dword ptr [ebp - 0x18]       
0x00596701:  mov      eax, dword ptr [ebp - 0x1c]       
0x00596704:  fld      dword ptr [eax]                   
0x00596706:  fstp     dword ptr [edx]                   
0x00596708:  mov      ecx, dword ptr [ebp - 0x18]       
0x0059670B:  mov      edx, dword ptr [ebp - 0x1c]       
0x0059670E:  fld      dword ptr [edx + 4]               
0x00596711:  fstp     dword ptr [ecx + 4]               
0x00596714:  mov      eax, dword ptr [ebp - 0x18]       
0x00596717:  mov      ecx, dword ptr [ebp - 0x1c]       
0x0059671A:  fld      dword ptr [ecx + 8]               
0x0059671D:  fstp     dword ptr [eax + 8]               
0x00596720:  mov      edx, dword ptr [ebp - 0x18]       
0x00596723:  mov      eax, dword ptr [ebp - 0x1c]       
0x00596726:  fld      dword ptr [eax + 0xc]             
0x00596729:  fstp     dword ptr [edx + 0xc]             
0x0059672C:  push     0                                 
0x0059672E:  push     0                                 
0x00596730:  mov      ecx, dword ptr [ebp + 8]          
0x00596733:  add      ecx, 0x64                         
0x00596736:  push     ecx                               
0x00596737:  mov      edx, dword ptr [ebp + 0xc]        
0x0059673A:  push     edx                               
0x0059673B:  mov      eax, dword ptr [ebp + 8]          
0x0059673E:  mov      ecx, dword ptr [eax + 0x44]       
0x00596741:  push     ecx                               
0x00596742:  mov      edx, dword ptr [ebp + 8]          
0x00596745:  mov      eax, dword ptr [edx + 0x40]       
0x00596748:  push     eax                               
0x00596749:  mov      ecx, dword ptr [ebp + 8]          
0x0059674C:  push     ecx                               
0x0059674D:  call     0x59ae90                          
0x00596752:  add      esp, 0x1c                         
0x00596755:  mov      edx, dword ptr [ebp + 0xc]        
0x00596758:  push     edx                               
0x00596759:  mov      eax, dword ptr [ebp + 8]          
0x0059675C:  add      eax, 0x2c                         
0x0059675F:  push     eax                               
0x00596760:  call     0x596770                          
0x00596765:  add      esp, 8                            
0x00596768:  mov      esp, ebp                          
0x0059676A:  pop      ebp                               
0x0059676B:  ret                                        
0x0059676C:  int3                                       
0x0059676D:  int3                                       
0x0059676E:  int3                                       
0x0059676F:  int3                                       
0x00596770:  push     ebp                               
0x00596771:  mov      ebp, esp                          
0x00596773:  sub      esp, 0x28                         
0x00596776:  mov      eax, dword ptr [ebp + 8]          
0x00596779:  mov      ecx, dword ptr [eax + 4]          
0x0059677C:  mov      edx, dword ptr [ebp + 8]          
0x0059677F:  mov      eax, dword ptr [edx]              
0x00596781:  shr      eax, 0x10                         
0x00596784:  movzx    edx, ax                           
0x00596787:  shl      edx, 4                            
0x0059678A:  add      edx, dword ptr [ecx]              
0x0059678C:  mov      dword ptr [ebp - 0xc], edx        
0x0059678F:  mov      eax, dword ptr [ebp - 0xc]        
0x00596792:  fldz                                       
0x00596794:  fstp     dword ptr [eax]                   
0x00596796:  mov      ecx, dword ptr [ebp - 0xc]        
0x00596799:  fldz                                       
0x0059679B:  fstp     dword ptr [ecx + 4]               
0x0059679E:  mov      edx, dword ptr [ebp - 0xc]        
0x005967A1:  fldz                                       
0x005967A3:  fstp     dword ptr [edx + 8]               
0x005967A6:  mov      eax, dword ptr [ebp - 0xc]        
0x005967A9:  fldz                                       
0x005967AB:  fstp     dword ptr [eax + 0xc]             
0x005967AE:  mov      ecx, dword ptr [ebp + 8]          
0x005967B1:  mov      edx, dword ptr [ecx + 4]          
0x005967B4:  mov      eax, dword ptr [ebp + 8]          
0x005967B7:  mov      ecx, dword ptr [eax]              
0x005967B9:  shr      ecx, 0x10                         
0x005967BC:  movzx    eax, cx                           
0x005967BF:  mov      ecx, dword ptr [edx + 0x24]       
0x005967C2:  lea      edx, [ecx + eax*4]                
0x005967C5:  mov      dword ptr [ebp - 0x28], edx       
0x005967C8:  mov      eax, 0x80000                      
0x005967CD:  not      eax                               
0x005967CF:  mov      ecx, dword ptr [ebp - 0x28]       
0x005967D2:  and      eax, dword ptr [ecx]              
0x005967D4:  mov      edx, dword ptr [ebp - 0x28]       
0x005967D7:  mov      dword ptr [edx], eax              
0x005967D9:  mov      eax, dword ptr [ebp + 8]          
0x005967DC:  mov      ecx, dword ptr [eax + 4]          
0x005967DF:  mov      edx, dword ptr [ebp + 8]          
0x005967E2:  mov      eax, dword ptr [edx]              
0x005967E4:  shr      eax, 0x10                         
0x005967E7:  movzx    edx, ax                           
0x005967EA:  mov      eax, dword ptr [ecx + 0x24]       
0x005967ED:  mov      ecx, dword ptr [eax + edx*4]      
0x005967F0:  and      ecx, 0x20000                      
0x005967F6:  je       0x5968e6                          
0x005967FC:  mov      ecx, dword ptr [ebp + 8]          
0x005967FF:  call     0x5dce10                          
0x00596804:  mov      dword ptr [ebp - 8], eax          
0x00596807:  mov      edx, dword ptr [ebp + 0xc]        
0x0059680A:  fld      dword ptr [edx + 8]               
0x0059680D:  mov      eax, dword ptr [ebp - 8]          
0x00596810:  fmul     dword ptr [eax + 8]               
0x00596813:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596816:  fld      dword ptr [ecx + 4]               
0x00596819:  mov      edx, dword ptr [ebp - 8]          
0x0059681C:  fmul     dword ptr [edx + 4]               
0x0059681F:  mov      eax, dword ptr [ebp + 0xc]        
0x00596822:  fld      dword ptr [eax]                   
0x00596824:  mov      ecx, dword ptr [ebp - 8]          
0x00596827:  fmul     dword ptr [ecx]                   
0x00596829:  faddp    st(1)                             
0x0059682B:  faddp    st(1)                             
0x0059682D:  fstp     dword ptr [ebp - 4]               
0x00596830:  fld      dword ptr [ebp - 4]               
0x00596833:  fchs                                       
0x00596835:  fstp     dword ptr [ebp - 0x14]            
0x00596838:  mov      edx, dword ptr [ebp + 8]          
0x0059683B:  mov      eax, dword ptr [edx + 4]          
0x0059683E:  mov      ecx, dword ptr [ebp + 8]          
0x00596841:  mov      edx, dword ptr [ecx]              
0x00596843:  shr      edx, 0x10                         
0x00596846:  movzx    ecx, dx                           
0x00596849:  shl      ecx, 4                            
0x0059684C:  add      ecx, dword ptr [eax + 4]          
0x0059684F:  mov      dword ptr [ebp - 0x10], ecx       
0x00596852:  mov      edx, dword ptr [ebp - 8]          
0x00596855:  fld      dword ptr [edx]                   
0x00596857:  fmul     dword ptr [ebp - 0x14]            
0x0059685A:  mov      eax, dword ptr [ebp + 0xc]        
0x0059685D:  fadd     dword ptr [eax]                   
0x0059685F:  mov      ecx, dword ptr [ebp - 0x10]       
0x00596862:  fstp     dword ptr [ecx]                   
0x00596864:  mov      edx, dword ptr [ebp - 8]          
0x00596867:  fld      dword ptr [edx + 4]               
0x0059686A:  fmul     dword ptr [ebp - 0x14]            
0x0059686D:  mov      eax, dword ptr [ebp + 0xc]        
0x00596870:  fadd     dword ptr [eax + 4]               
0x00596873:  mov      ecx, dword ptr [ebp - 0x10]       
0x00596876:  fstp     dword ptr [ecx + 4]               
0x00596879:  mov      edx, dword ptr [ebp - 8]          
0x0059687C:  fld      dword ptr [edx + 8]               
0x0059687F:  fmul     dword ptr [ebp - 0x14]            
0x00596882:  mov      eax, dword ptr [ebp + 0xc]        
0x00596885:  fadd     dword ptr [eax + 8]               
0x00596888:  mov      ecx, dword ptr [ebp - 0x10]       
0x0059688B:  fstp     dword ptr [ecx + 8]               
0x0059688E:  mov      edx, dword ptr [ebp + 8]          
0x00596891:  mov      eax, dword ptr [edx + 4]          
0x00596894:  mov      ecx, dword ptr [ebp + 8]          
0x00596897:  mov      edx, dword ptr [ecx]              
0x00596899:  shr      edx, 0x10                         
0x0059689C:  movzx    ecx, dx                           
0x0059689F:  shl      ecx, 4                            
0x005968A2:  add      ecx, dword ptr [eax + 4]          
0x005968A5:  mov      dword ptr [ebp - 0x18], ecx       
0x005968A8:  mov      edx, dword ptr [ebp + 8]          
0x005968AB:  mov      eax, dword ptr [edx + 4]          
0x005968AE:  mov      ecx, dword ptr [ebp + 8]          
0x005968B1:  mov      edx, dword ptr [ecx]              
0x005968B3:  shr      edx, 0x10                         
0x005968B6:  movzx    ecx, dx                           
0x005968B9:  shl      ecx, 4                            
0x005968BC:  add      ecx, dword ptr [eax + 8]          
0x005968BF:  mov      dword ptr [ebp - 0x1c], ecx       
0x005968C2:  mov      edx, dword ptr [ebp - 0x1c]       
0x005968C5:  mov      eax, dword ptr [ebp - 0x18]       
0x005968C8:  fld      dword ptr [eax]                   
0x005968CA:  fstp     dword ptr [edx]                   
0x005968CC:  mov      ecx, dword ptr [ebp - 0x1c]       
0x005968CF:  mov      edx, dword ptr [ebp - 0x18]       
0x005968D2:  fld      dword ptr [edx + 4]               
0x005968D5:  fstp     dword ptr [ecx + 4]               
0x005968D8:  mov      eax, dword ptr [ebp - 0x1c]       
0x005968DB:  mov      ecx, dword ptr [ebp - 0x18]       
0x005968DE:  fld      dword ptr [ecx + 8]               
0x005968E1:  fstp     dword ptr [eax + 8]               
0x005968E4:  jmp      0x59695e                          
0x005968E6:  mov      edx, dword ptr [ebp + 8]          
0x005968E9:  mov      eax, dword ptr [edx + 4]          
0x005968EC:  mov      ecx, dword ptr [ebp + 8]          
0x005968EF:  mov      edx, dword ptr [ecx]              
0x005968F1:  shr      edx, 0x10                         
0x005968F4:  movzx    ecx, dx                           
0x005968F7:  shl      ecx, 4                            
0x005968FA:  add      ecx, dword ptr [eax + 4]          
0x005968FD:  mov      dword ptr [ebp - 0x20], ecx       
0x00596900:  mov      edx, dword ptr [ebp - 0x20]       
0x00596903:  mov      eax, dword ptr [ebp + 0xc]        
0x00596906:  fld      dword ptr [eax]                   
0x00596908:  fstp     dword ptr [edx]                   
0x0059690A:  mov      ecx, dword ptr [ebp - 0x20]       
0x0059690D:  mov      edx, dword ptr [ebp + 0xc]        
0x00596910:  fld      dword ptr [edx + 4]               
0x00596913:  fstp     dword ptr [ecx + 4]               
0x00596916:  mov      eax, dword ptr [ebp - 0x20]       
0x00596919:  mov      ecx, dword ptr [ebp + 0xc]        
0x0059691C:  fld      dword ptr [ecx + 8]               
0x0059691F:  fstp     dword ptr [eax + 8]               
0x00596922:  mov      edx, dword ptr [ebp + 8]          
0x00596925:  mov      eax, dword ptr [edx + 4]          
0x00596928:  mov      ecx, dword ptr [ebp + 8]          
0x0059692B:  mov      edx, dword ptr [ecx]              
0x0059692D:  shr      edx, 0x10                         
0x00596930:  movzx    ecx, dx                           
0x00596933:  shl      ecx, 4                            
0x00596936:  add      ecx, dword ptr [eax + 8]          
0x00596939:  mov      dword ptr [ebp - 0x24], ecx       
0x0059693C:  mov      edx, dword ptr [ebp - 0x24]       
0x0059693F:  mov      eax, dword ptr [ebp + 0xc]        
0x00596942:  fld      dword ptr [eax]                   
0x00596944:  fstp     dword ptr [edx]                   
0x00596946:  mov      ecx, dword ptr [ebp - 0x24]       
0x00596949:  mov      edx, dword ptr [ebp + 0xc]        
0x0059694C:  fld      dword ptr [edx + 4]               
0x0059694F:  fstp     dword ptr [ecx + 4]               
0x00596952:  mov      eax, dword ptr [ebp - 0x24]       
0x00596955:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596958:  fld      dword ptr [ecx + 8]               
0x0059695B:  fstp     dword ptr [eax + 8]               
0x0059695E:  mov      esp, ebp                          
0x00596960:  pop      ebp                               
0x00596961:  ret                                        
0x00596962:  int3                                       
0x00596963:  int3                                       
0x00596964:  int3                                       
0x00596965:  int3                                       
0x00596966:  int3                                       
0x00596967:  int3                                       
0x00596968:  int3                                       
0x00596969:  int3                                       
0x0059696A:  int3                                       
0x0059696B:  int3                                       
0x0059696C:  int3                                       
0x0059696D:  int3                                       
0x0059696E:  int3                                       
0x0059696F:  int3                                       
0x00596970:  push     ebp                               
0x00596971:  mov      ebp, esp                          
0x00596973:  sub      esp, 0x30                         
0x00596976:  mov      eax, dword ptr [ebp + 8]          
0x00596979:  cmp      dword ptr [eax + 0x40], 0         
0x0059697D:  jne      0x5969bb                          
0x0059697F:  mov      ecx, dword ptr [ebp + 8]          
0x00596982:  add      ecx, 0x54                         
0x00596985:  mov      dword ptr [ebp - 0x14], ecx       
0x00596988:  mov      edx, dword ptr [ebp - 0x14]       
0x0059698B:  mov      eax, dword ptr [ebp + 0xc]        
0x0059698E:  fld      dword ptr [eax]                   
0x00596990:  fstp     dword ptr [edx]                   
0x00596992:  mov      ecx, dword ptr [ebp - 0x14]       
0x00596995:  mov      edx, dword ptr [ebp + 0xc]        
0x00596998:  fld      dword ptr [edx + 4]               
0x0059699B:  fstp     dword ptr [ecx + 4]               
0x0059699E:  mov      eax, dword ptr [ebp - 0x14]       
0x005969A1:  mov      ecx, dword ptr [ebp + 0xc]        
0x005969A4:  fld      dword ptr [ecx + 8]               
0x005969A7:  fstp     dword ptr [eax + 8]               
0x005969AA:  mov      edx, dword ptr [ebp - 0x14]       
0x005969AD:  mov      eax, dword ptr [ebp + 0xc]        
0x005969B0:  fld      dword ptr [eax + 0xc]             
0x005969B3:  fstp     dword ptr [edx + 0xc]             
0x005969B6:  jmp      0x596b12                          
0x005969BB:  mov      ecx, dword ptr [ebp + 0x10]       
0x005969BE:  mov      dword ptr [ebp - 0x30], ecx       
0x005969C1:  cmp      dword ptr [ebp - 0x30], 0         
0x005969C5:  je       0x5969dc                          
0x005969C7:  cmp      dword ptr [ebp - 0x30], 1         
0x005969CB:  je       0x596a38                          
0x005969CD:  cmp      dword ptr [ebp - 0x30], 2         
0x005969D1:  je       0x596ac4                          
0x005969D7:  jmp      0x596afb                          
0x005969DC:  mov      edx, dword ptr [ebp + 8]          
0x005969DF:  mov      eax, dword ptr [edx + 0x40]       
0x005969E2:  add      eax, 0x20                         
0x005969E5:  mov      dword ptr [ebp - 0x18], eax       
0x005969E8:  mov      ecx, dword ptr [ebp - 0x18]       
0x005969EB:  push     ecx                               
0x005969EC:  mov      edx, dword ptr [ebp + 8]          
0x005969EF:  add      edx, 0x74                         
0x005969F2:  push     edx                               
0x005969F3:  lea      eax, [ebp - 0x10]                 
0x005969F6:  push     eax                               
0x005969F7:  call     0x6ac660                          
0x005969FC:  add      esp, 0xc                          
0x005969FF:  mov      ecx, dword ptr [ebp + 8]          
0x00596A02:  add      ecx, 0x54                         
0x00596A05:  mov      dword ptr [ebp - 0x1c], ecx       
0x00596A08:  mov      edx, dword ptr [ebp + 0xc]        
0x00596A0B:  fld      dword ptr [edx]                   
0x00596A0D:  fadd     dword ptr [ebp - 0x10]            
0x00596A10:  mov      eax, dword ptr [ebp - 0x1c]       
0x00596A13:  fstp     dword ptr [eax]                   
0x00596A15:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596A18:  fld      dword ptr [ecx + 4]               
0x00596A1B:  fadd     dword ptr [ebp - 0xc]             
0x00596A1E:  mov      edx, dword ptr [ebp - 0x1c]       
0x00596A21:  fstp     dword ptr [edx + 4]               
0x00596A24:  mov      eax, dword ptr [ebp + 0xc]        
0x00596A27:  fld      dword ptr [eax + 8]               
0x00596A2A:  fadd     dword ptr [ebp - 8]               
0x00596A2D:  mov      ecx, dword ptr [ebp - 0x1c]       
0x00596A30:  fstp     dword ptr [ecx + 8]               
0x00596A33:  jmp      0x596afb                          
0x00596A38:  mov      edx, dword ptr [ebp + 8]          
0x00596A3B:  mov      eax, dword ptr [edx + 0x40]       
0x00596A3E:  add      eax, 0x20                         
0x00596A41:  mov      dword ptr [ebp - 0x24], eax       
0x00596A44:  mov      ecx, dword ptr [ebp + 8]          
0x00596A47:  mov      edx, dword ptr [ecx + 0x40]       
0x00596A4A:  add      edx, 0x10                         
0x00596A4D:  mov      dword ptr [ebp - 0x20], edx       
0x00596A50:  mov      eax, dword ptr [ebp - 0x20]       
0x00596A53:  fld      dword ptr [eax]                   
0x00596A55:  mov      ecx, dword ptr [ebp - 0x24]       
0x00596A58:  fsub     dword ptr [ecx]                   
0x00596A5A:  fstp     dword ptr [ebp - 0x10]            
0x00596A5D:  mov      edx, dword ptr [ebp - 0x20]       
0x00596A60:  fld      dword ptr [edx + 4]               
0x00596A63:  mov      eax, dword ptr [ebp - 0x24]       
0x00596A66:  fsub     dword ptr [eax + 4]               
0x00596A69:  fstp     dword ptr [ebp - 0xc]             
0x00596A6C:  mov      ecx, dword ptr [ebp - 0x20]       
0x00596A6F:  fld      dword ptr [ecx + 8]               
0x00596A72:  mov      edx, dword ptr [ebp - 0x24]       
0x00596A75:  fsub     dword ptr [edx + 8]               
0x00596A78:  fstp     dword ptr [ebp - 8]               
0x00596A7B:  lea      eax, [ebp - 0x10]                 
0x00596A7E:  push     eax                               
0x00596A7F:  mov      ecx, dword ptr [ebp + 8]          
0x00596A82:  add      ecx, 0x74                         
0x00596A85:  push     ecx                               
0x00596A86:  call     0x6ac5c0                          
0x00596A8B:  add      esp, 8                            
0x00596A8E:  mov      edx, dword ptr [ebp + 8]          
0x00596A91:  add      edx, 0x54                         
0x00596A94:  mov      dword ptr [ebp - 0x28], edx       
0x00596A97:  mov      eax, dword ptr [ebp + 0xc]        
0x00596A9A:  fld      dword ptr [eax]                   
0x00596A9C:  fsub     dword ptr [ebp - 0x10]            
0x00596A9F:  mov      ecx, dword ptr [ebp - 0x28]       
0x00596AA2:  fstp     dword ptr [ecx]                   
0x00596AA4:  mov      edx, dword ptr [ebp + 0xc]        
0x00596AA7:  fld      dword ptr [edx + 4]               
0x00596AAA:  fsub     dword ptr [ebp - 0xc]             
0x00596AAD:  mov      eax, dword ptr [ebp - 0x28]       
0x00596AB0:  fstp     dword ptr [eax + 4]               
0x00596AB3:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596AB6:  fld      dword ptr [ecx + 8]               
0x00596AB9:  fsub     dword ptr [ebp - 8]               
0x00596ABC:  mov      edx, dword ptr [ebp - 0x28]       
0x00596ABF:  fstp     dword ptr [edx + 8]               
0x00596AC2:  jmp      0x596afb                          
0x00596AC4:  mov      eax, dword ptr [ebp + 8]          
0x00596AC7:  add      eax, 0x54                         
0x00596ACA:  mov      dword ptr [ebp - 0x2c], eax       
0x00596ACD:  mov      ecx, dword ptr [ebp - 0x2c]       
0x00596AD0:  mov      edx, dword ptr [ebp + 0xc]        
0x00596AD3:  fld      dword ptr [edx]                   
0x00596AD5:  fstp     dword ptr [ecx]                   
0x00596AD7:  mov      eax, dword ptr [ebp - 0x2c]       
0x00596ADA:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596ADD:  fld      dword ptr [ecx + 4]               
0x00596AE0:  fstp     dword ptr [eax + 4]               
0x00596AE3:  mov      edx, dword ptr [ebp - 0x2c]       
0x00596AE6:  mov      eax, dword ptr [ebp + 0xc]        
0x00596AE9:  fld      dword ptr [eax + 8]               
0x00596AEC:  fstp     dword ptr [edx + 8]               
0x00596AEF:  mov      ecx, dword ptr [ebp - 0x2c]       
0x00596AF2:  mov      edx, dword ptr [ebp + 0xc]        
0x00596AF5:  fld      dword ptr [edx + 0xc]             
0x00596AF8:  fstp     dword ptr [ecx + 0xc]             
0x00596AFB:  mov      eax, dword ptr [ebp + 0x14]       
0x00596AFE:  push     eax                               
0x00596AFF:  mov      ecx, dword ptr [ebp + 8]          
0x00596B02:  add      ecx, 0x54                         
0x00596B05:  push     ecx                               
0x00596B06:  mov      edx, dword ptr [ebp + 8]          
0x00596B09:  push     edx                               
0x00596B0A:  call     0x596530                          
0x00596B0F:  add      esp, 0xc                          
0x00596B12:  mov      esp, ebp                          
0x00596B14:  pop      ebp                               
0x00596B15:  ret                                        
0x00596B16:  int3                                       
0x00596B17:  int3                                       
0x00596B18:  int3                                       
0x00596B19:  int3                                       
0x00596B1A:  int3                                       
0x00596B1B:  int3                                       
0x00596B1C:  int3                                       
0x00596B1D:  int3                                       
0x00596B1E:  int3                                       
0x00596B1F:  int3                                       
0x00596B20:  push     ebp                               
0x00596B21:  mov      ebp, esp                          
0x00596B23:  sub      esp, 8                            
0x00596B26:  mov      eax, dword ptr [ebp + 8]          
0x00596B29:  add      eax, 0x164                        
0x00596B2E:  mov      dword ptr [ebp - 4], eax          
0x00596B31:  mov      ecx, dword ptr [ebp - 4]          
0x00596B34:  mov      edx, dword ptr [ebp + 0xc]        
0x00596B37:  fld      dword ptr [edx]                   
0x00596B39:  fstp     dword ptr [ecx]                   
0x00596B3B:  mov      eax, dword ptr [ebp - 4]          
0x00596B3E:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596B41:  fld      dword ptr [ecx + 4]               
0x00596B44:  fstp     dword ptr [eax + 4]               
0x00596B47:  mov      edx, dword ptr [ebp - 4]          
0x00596B4A:  mov      eax, dword ptr [ebp + 0xc]        
0x00596B4D:  fld      dword ptr [eax + 8]               
0x00596B50:  fstp     dword ptr [edx + 8]               
0x00596B53:  mov      ecx, dword ptr [ebp - 4]          
0x00596B56:  mov      edx, dword ptr [ebp + 0xc]        
0x00596B59:  fld      dword ptr [edx + 0xc]             
0x00596B5C:  fstp     dword ptr [ecx + 0xc]             
0x00596B5F:  mov      eax, dword ptr [ebp + 8]          
0x00596B62:  cmp      dword ptr [eax + 0x50], 5         
0x00596B66:  jne      0x596c1c                          
0x00596B6C:  mov      ecx, dword ptr [ebp + 8]          
0x00596B6F:  mov      edx, dword ptr [ecx + 0x40]       
0x00596B72:  mov      eax, dword ptr [edx + 4]          
0x00596B75:  movzx    ecx, word ptr [eax + 0xc]         
0x00596B79:  mov      dword ptr [ebp - 8], ecx          
0x00596B7C:  cmp      dword ptr [ebp - 8], 0            
0x00596B80:  jl       0x596c1c                          
0x00596B86:  cmp      dword ptr [ebp - 8], 1            
0x00596B8A:  jle      0x596b91                          
0x00596B8C:  jmp      0x596c1c                          
0x00596B91:  mov      edx, dword ptr [ebp + 0xc]        
0x00596B94:  fld      dword ptr [edx]                   
0x00596B96:  fld      dword ptr [0xb01b90]              
0x00596B9C:  fucompp                                    
0x00596B9E:  fnstsw   ax                                
0x00596BA0:  test     ah, 0x44                          
0x00596BA3:  jp       0x596be4                          
0x00596BA5:  mov      eax, dword ptr [ebp + 0xc]        
0x00596BA8:  fld      dword ptr [eax + 4]               
0x00596BAB:  fld      dword ptr [0xb01b94]              
0x00596BB1:  fucompp                                    
0x00596BB3:  fnstsw   ax                                
0x00596BB5:  test     ah, 0x44                          
0x00596BB8:  jp       0x596be4                          
0x00596BBA:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596BBD:  fld      dword ptr [ecx + 8]               
0x00596BC0:  fld      dword ptr [0xb01b98]              
0x00596BC6:  fucompp                                    
0x00596BC8:  fnstsw   ax                                
0x00596BCA:  test     ah, 0x44                          
0x00596BCD:  jp       0x596be4                          
0x00596BCF:  mov      edx, dword ptr [ebp + 0xc]        
0x00596BD2:  fld      dword ptr [edx + 0xc]             
0x00596BD5:  fld      dword ptr [0xb01b9c]              
0x00596BDB:  fucompp                                    
0x00596BDD:  fnstsw   ax                                
0x00596BDF:  test     ah, 0x44                          
0x00596BE2:  jnp      0x596c01                          
0x00596BE4:  mov      eax, dword ptr [ebp + 8]          
0x00596BE7:  mov      ecx, dword ptr [eax + 0x40]       
0x00596BEA:  mov      edx, dword ptr [ecx + 4]          
0x00596BED:  mov      eax, dword ptr [edx + 0x1c]       
0x00596BF0:  or       eax, 2                            
0x00596BF3:  mov      ecx, dword ptr [ebp + 8]          
0x00596BF6:  mov      edx, dword ptr [ecx + 0x40]       
0x00596BF9:  mov      ecx, dword ptr [edx + 4]          
0x00596BFC:  mov      dword ptr [ecx + 0x1c], eax       
0x00596BFF:  jmp      0x596c1c                          
0x00596C01:  mov      edx, dword ptr [ebp + 8]          
0x00596C04:  mov      eax, dword ptr [edx + 0x40]       
0x00596C07:  mov      ecx, dword ptr [eax + 4]          
0x00596C0A:  mov      edx, dword ptr [ecx + 0x1c]       
0x00596C0D:  and      edx, 0xfffffffd                   
0x00596C10:  mov      eax, dword ptr [ebp + 8]          
0x00596C13:  mov      ecx, dword ptr [eax + 0x40]       
0x00596C16:  mov      eax, dword ptr [ecx + 4]          
0x00596C19:  mov      dword ptr [eax + 0x1c], edx       
0x00596C1C:  mov      ecx, dword ptr [ebp + 8]          
0x00596C1F:  mov      edx, dword ptr [ecx + 0x40]       
0x00596C22:  mov      eax, dword ptr [edx + 0xc4]       
0x00596C28:  and      eax, 8                            
0x00596C2B:  jne      0x596c39                          
0x00596C2D:  mov      ecx, dword ptr [ebp + 8]          
0x00596C30:  push     ecx                               
0x00596C31:  call     0x598790                          
0x00596C36:  add      esp, 4                            
0x00596C39:  mov      esp, ebp                          
0x00596C3B:  pop      ebp                               
0x00596C3C:  ret                                        
0x00596C3D:  int3                                       
0x00596C3E:  int3                                       
0x00596C3F:  int3                                       
0x00596C40:  push     ebp                               
0x00596C41:  mov      ebp, esp                          
0x00596C43:  sub      esp, 0x1c                         
0x00596C46:  mov      eax, dword ptr [ebp + 0x10]       
0x00596C49:  mov      dword ptr [ebp - 0x1c], eax       
0x00596C4C:  cmp      dword ptr [ebp - 0x1c], 0         
0x00596C50:  jl       0x596d3f                          
0x00596C56:  cmp      dword ptr [ebp - 0x1c], 1         
0x00596C5A:  jle      0x596c6b                          
0x00596C5C:  cmp      dword ptr [ebp - 0x1c], 2         
0x00596C60:  je       0x596ceb                          
0x00596C66:  jmp      0x596d3f                          
0x00596C6B:  mov      ecx, dword ptr [ebp + 0x10]       
0x00596C6E:  push     ecx                               
0x00596C6F:  lea      edx, [ebp - 0x10]                 
0x00596C72:  push     edx                               
0x00596C73:  mov      eax, dword ptr [ebp + 8]          
0x00596C76:  push     eax                               
0x00596C77:  call     0x5963a0                          
0x00596C7C:  add      esp, 0xc                          
0x00596C7F:  mov      ecx, dword ptr [ebp + 8]          
0x00596C82:  add      ecx, 0x64                         
0x00596C85:  mov      dword ptr [ebp - 0x14], ecx       
0x00596C88:  mov      edx, dword ptr [ebp - 0x14]       
0x00596C8B:  mov      eax, dword ptr [ebp + 0xc]        
0x00596C8E:  fld      dword ptr [eax]                   
0x00596C90:  fstp     dword ptr [edx]                   
0x00596C92:  mov      ecx, dword ptr [ebp - 0x14]       
0x00596C95:  mov      edx, dword ptr [ebp + 0xc]        
0x00596C98:  fld      dword ptr [edx + 4]               
0x00596C9B:  fstp     dword ptr [ecx + 4]               
0x00596C9E:  mov      eax, dword ptr [ebp - 0x14]       
0x00596CA1:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596CA4:  fld      dword ptr [ecx + 8]               
0x00596CA7:  fstp     dword ptr [eax + 8]               
0x00596CAA:  mov      edx, dword ptr [ebp - 0x14]       
0x00596CAD:  mov      eax, dword ptr [ebp + 0xc]        
0x00596CB0:  fld      dword ptr [eax + 0xc]             
0x00596CB3:  fstp     dword ptr [edx + 0xc]             
0x00596CB6:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596CB9:  push     ecx                               
0x00596CBA:  mov      edx, dword ptr [ebp + 8]          
0x00596CBD:  add      edx, 0xb4                         
0x00596CC3:  push     edx                               
0x00596CC4:  mov      eax, dword ptr [ebp + 8]          
0x00596CC7:  add      eax, 0x74                         
0x00596CCA:  push     eax                               
0x00596CCB:  call     0x6b0830                          
0x00596CD0:  add      esp, 0xc                          
0x00596CD3:  push     0                                 
0x00596CD5:  mov      ecx, dword ptr [ebp + 0x10]       
0x00596CD8:  push     ecx                               
0x00596CD9:  lea      edx, [ebp - 0x10]                 
0x00596CDC:  push     edx                               
0x00596CDD:  mov      eax, dword ptr [ebp + 8]          
0x00596CE0:  push     eax                               
0x00596CE1:  call     0x596970                          
0x00596CE6:  add      esp, 0x10                         
0x00596CE9:  jmp      0x596d3f                          
0x00596CEB:  mov      ecx, dword ptr [ebp + 8]          
0x00596CEE:  add      ecx, 0x64                         
0x00596CF1:  mov      dword ptr [ebp - 0x18], ecx       
0x00596CF4:  mov      edx, dword ptr [ebp - 0x18]       
0x00596CF7:  mov      eax, dword ptr [ebp + 0xc]        
0x00596CFA:  fld      dword ptr [eax]                   
0x00596CFC:  fstp     dword ptr [edx]                   
0x00596CFE:  mov      ecx, dword ptr [ebp - 0x18]       
0x00596D01:  mov      edx, dword ptr [ebp + 0xc]        
0x00596D04:  fld      dword ptr [edx + 4]               
0x00596D07:  fstp     dword ptr [ecx + 4]               
0x00596D0A:  mov      eax, dword ptr [ebp - 0x18]       
0x00596D0D:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596D10:  fld      dword ptr [ecx + 8]               
0x00596D13:  fstp     dword ptr [eax + 8]               
0x00596D16:  mov      edx, dword ptr [ebp - 0x18]       
0x00596D19:  mov      eax, dword ptr [ebp + 0xc]        
0x00596D1C:  fld      dword ptr [eax + 0xc]             
0x00596D1F:  fstp     dword ptr [edx + 0xc]             
0x00596D22:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596D25:  push     ecx                               
0x00596D26:  mov      edx, dword ptr [ebp + 8]          
0x00596D29:  add      edx, 0xb4                         
0x00596D2F:  push     edx                               
0x00596D30:  mov      eax, dword ptr [ebp + 8]          
0x00596D33:  add      eax, 0x74                         
0x00596D36:  push     eax                               
0x00596D37:  call     0x6b0830                          
0x00596D3C:  add      esp, 0xc                          
0x00596D3F:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596D42:  push     ecx                               
0x00596D43:  mov      edx, dword ptr [ebp + 8]          
0x00596D46:  push     edx                               
0x00596D47:  call     0x596b20                          
0x00596D4C:  add      esp, 8                            
0x00596D4F:  mov      esp, ebp                          
0x00596D51:  pop      ebp                               
0x00596D52:  ret                                        
0x00596D53:  int3                                       
0x00596D54:  int3                                       
0x00596D55:  int3                                       
0x00596D56:  int3                                       
0x00596D57:  int3                                       
0x00596D58:  int3                                       
0x00596D59:  int3                                       
0x00596D5A:  int3                                       
0x00596D5B:  int3                                       
0x00596D5C:  int3                                       
0x00596D5D:  int3                                       
0x00596D5E:  int3                                       
0x00596D5F:  int3                                       
0x00596D60:  push     ebp                               
0x00596D61:  mov      ebp, esp                          
0x00596D63:  sub      esp, 0x10                         
0x00596D66:  mov      eax, dword ptr [ebp + 8]          
0x00596D69:  mov      ecx, dword ptr [eax + 0x40]       
0x00596D6C:  mov      dword ptr [ebp - 8], ecx          
0x00596D6F:  mov      edx, dword ptr [0xb01b28]         
0x00596D75:  mov      dword ptr [ebp - 4], edx          
0x00596D78:  xor      eax, eax                          
0x00596D7A:  jne      0x596d78                          
0x00596D7C:  mov      ecx, dword ptr [ebp - 8]          
0x00596D7F:  and      ecx, 0xffffff80                   
0x00596D82:  mov      dword ptr [ebp - 0x10], ecx       
0x00596D85:  mov      edx, dword ptr [ebp - 0x10]       
0x00596D88:  prefetchnta byte ptr [edx]                    
0x00596D8B:  mov      eax, dword ptr [ebp + 8]          
0x00596D8E:  add      eax, 0x64                         
0x00596D91:  mov      dword ptr [ebp - 0xc], eax        
0x00596D94:  mov      ecx, dword ptr [ebp - 0xc]        
0x00596D97:  mov      edx, dword ptr [ebp + 0x10]       
0x00596D9A:  fld      dword ptr [edx]                   
0x00596D9C:  fstp     dword ptr [ecx]                   
0x00596D9E:  mov      eax, dword ptr [ebp - 0xc]        
0x00596DA1:  mov      ecx, dword ptr [ebp + 0x10]       
0x00596DA4:  fld      dword ptr [ecx + 4]               
0x00596DA7:  fstp     dword ptr [eax + 4]               
0x00596DAA:  mov      edx, dword ptr [ebp - 0xc]        
0x00596DAD:  mov      eax, dword ptr [ebp + 0x10]       
0x00596DB0:  fld      dword ptr [eax + 8]               
0x00596DB3:  fstp     dword ptr [edx + 8]               
0x00596DB6:  mov      ecx, dword ptr [ebp - 0xc]        
0x00596DB9:  mov      edx, dword ptr [ebp + 0x10]       
0x00596DBC:  fld      dword ptr [edx + 0xc]             
0x00596DBF:  fstp     dword ptr [ecx + 0xc]             
0x00596DC2:  mov      eax, dword ptr [ebp + 0x10]       
0x00596DC5:  push     eax                               
0x00596DC6:  mov      ecx, dword ptr [ebp + 8]          
0x00596DC9:  add      ecx, 0xb4                         
0x00596DCF:  push     ecx                               
0x00596DD0:  mov      edx, dword ptr [ebp + 8]          
0x00596DD3:  add      edx, 0x74                         
0x00596DD6:  push     edx                               
0x00596DD7:  call     0x6b0830                          
0x00596DDC:  add      esp, 0xc                          
0x00596DDF:  mov      eax, dword ptr [ebp + 0x10]       
0x00596DE2:  push     eax                               
0x00596DE3:  mov      ecx, dword ptr [ebp + 8]          
0x00596DE6:  push     ecx                               
0x00596DE7:  call     0x596b20                          
0x00596DEC:  add      esp, 8                            
0x00596DEF:  push     0                                 
0x00596DF1:  mov      edx, dword ptr [ebp + 0x14]       
0x00596DF4:  push     edx                               
0x00596DF5:  mov      eax, dword ptr [ebp + 0xc]        
0x00596DF8:  push     eax                               
0x00596DF9:  mov      ecx, dword ptr [ebp + 8]          
0x00596DFC:  push     ecx                               
0x00596DFD:  call     0x596970                          
0x00596E02:  add      esp, 0x10                         
0x00596E05:  mov      esp, ebp                          
0x00596E07:  pop      ebp                               
0x00596E08:  ret                                        
0x00596E09:  int3                                       
0x00596E0A:  int3                                       
0x00596E0B:  int3                                       
0x00596E0C:  int3                                       
0x00596E0D:  int3                                       
0x00596E0E:  int3                                       
0x00596E0F:  int3                                       
0x00596E10:  push     ebp                               
0x00596E11:  mov      ebp, esp                          
0x00596E13:  push     0                                 
0x00596E15:  mov      eax, dword ptr [ebp + 8]          
0x00596E18:  push     eax                               
0x00596E19:  call     0x597900                          
0x00596E1E:  add      esp, 8                            
0x00596E21:  mov      ecx, dword ptr [ebp + 0x10]       
0x00596E24:  push     ecx                               
0x00596E25:  mov      edx, dword ptr [ebp + 0xc]        
0x00596E28:  push     edx                               
0x00596E29:  mov      eax, dword ptr [ebp + 8]          
0x00596E2C:  push     eax                               
0x00596E2D:  call     0x596c40                          
0x00596E32:  add      esp, 0xc                          
0x00596E35:  pop      ebp                               
0x00596E36:  ret                                        
0x00596E37:  int3                                       
0x00596E38:  int3                                       
0x00596E39:  int3                                       
0x00596E3A:  int3                                       
0x00596E3B:  int3                                       
0x00596E3C:  int3                                       
0x00596E3D:  int3                                       
0x00596E3E:  int3                                       
0x00596E3F:  int3                                       
0x00596E40:  push     ebp                               
0x00596E41:  mov      ebp, esp                          
0x00596E43:  mov      eax, dword ptr [ebp + 8]          
0x00596E46:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596E49:  fld      dword ptr [ecx + 0x150]           
0x00596E4F:  fstp     dword ptr [eax + 0x150]           
0x00596E55:  mov      edx, dword ptr [ebp + 8]          
0x00596E58:  mov      eax, dword ptr [ebp + 0xc]        
0x00596E5B:  fld      dword ptr [eax + 0x270]           
0x00596E61:  fstp     dword ptr [edx + 0x270]           
0x00596E67:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596E6A:  mov      edx, dword ptr [ecx + 0x104]      
0x00596E70:  mov      eax, dword ptr [ebp + 8]          
0x00596E73:  mov      dword ptr [eax + 0x104], edx      
0x00596E79:  mov      ecx, dword ptr [ebp + 8]          
0x00596E7C:  mov      edx, dword ptr [ebp + 0xc]        
0x00596E7F:  mov      eax, dword ptr [edx + 0x28c]      
0x00596E85:  mov      dword ptr [ecx + 0x28c], eax      
0x00596E8B:  mov      ecx, dword ptr [ebp + 8]          
0x00596E8E:  mov      edx, dword ptr [ebp + 0xc]        
0x00596E91:  fld      dword ptr [edx + 0x284]           
0x00596E97:  fstp     dword ptr [ecx + 0x284]           
0x00596E9D:  mov      eax, dword ptr [ebp + 8]          
0x00596EA0:  mov      ecx, dword ptr [ebp + 0xc]        
0x00596EA3:  fld      dword ptr [ecx + 0x288]           
0x00596EA9:  fstp     dword ptr [eax + 0x288]           
0x00596EAF:  mov      edx, dword ptr [ebp + 8]          
0x00596EB2:  mov      eax, dword ptr [ebp + 0xc]        
0x00596EB5:  mov      ecx, dword ptr [eax + 0x14c]      
0x00596EBB:  mov      dword ptr [edx + 0x14c], ecx      
0x00596EC1:  mov      edx, dword ptr [ebp + 8]          
0x00596EC4:  mov      eax, dword ptr [ebp + 0xc]        
0x00596EC7:  mov      ecx, dword ptr [eax + 0x148]      
0x00596ECD:  mov      dword ptr [edx + 0x148], ecx      
0x00596ED3:  mov      edx, dword ptr [ebp + 8]          
0x00596ED6:  mov      eax, dword ptr [ebp + 0xc]        
0x00596ED9:  fld      dword ptr [eax + 0x118]           
0x00596EDF:  fstp     dword ptr [edx + 0x118]           
0x00596EE5:  mov      ecx, dword ptr [ebp + 8]          
0x00596EE8:  mov      edx, dword ptr [ebp + 0xc]        
0x00596EEB:  fld      dword ptr [edx + 0x114]           
0x00596EF1:  fstp     dword ptr [ecx + 0x114]           
0x00596EF7:  mov      eax, dword ptr [ebp + 0xc]        
0x00596EFA:  mov      ecx, dword ptr [eax + 0x3c]       
0x00596EFD:  push     ecx                               
0x00596EFE:  push     0x70fffff                         
0x00596F03:  mov      edx, dword ptr [ebp + 8]          
0x00596F06:  push     edx                               
0x00596F07:  call     0x59cd80                          
0x00596F0C:  add      esp, 0xc                          
0x00596F0F:  mov      eax, dword ptr [ebp + 0xc]        
0x00596F12:  mov      ecx, dword ptr [eax + 0xf4]       
0x00596F18:  push     ecx                               
0x00596F19:  push     0xffff0000                        
0x00596F1E:  mov      edx, dword ptr [ebp + 8]          
0x00596F21:  push     edx                               
0x00596F22:  call     0x59cd50                          
0x00596F27:  add      esp, 0xc                          
0x00596F2A:  pop      ebp                               
0x00596F2B:  ret                                        
0x00596F2C:  int3                                       
0x00596F2D:  int3                                       
0x00596F2E:  int3                                       
0x00596F2F:  int3                                       
0x00596F30:  push     ebp                               
0x00596F31:  mov      ebp, esp                          
0x00596F33:  sub      esp, 0x48                         
0x00596F36:  mov      eax, dword ptr [ebp + 8]          
0x00596F39:  mov      ecx, dword ptr [eax + 0x38]       
0x00596F3C:  mov      edx, dword ptr [ecx + 4]          
0x00596F3F:  mov      dword ptr [ebp - 4], edx          
0x00596F42:  mov      eax, dword ptr [ebp + 8]          
0x00596F45:  mov      ecx, dword ptr [eax + 0x40]       
0x00596F48:  add      ecx, 0x20                         
0x00596F4B:  push     ecx                               
0x00596F4C:  mov      edx, dword ptr [ebp - 4]          
0x00596F4F:  push     edx                               
0x00596F50:  lea      eax, [ebp - 0x24]                 
0x00596F53:  push     eax                               
0x00596F54:  call     0x6ac400                          
0x00596F59:  add      esp, 0xc                          
0x00596F5C:  push     0                                 
0x00596F5E:  push     2                                 
0x00596F60:  lea      ecx, [ebp - 0x24]                 
0x00596F63:  push     ecx                               
0x00596F64:  mov      edx, dword ptr [ebp + 8]          
0x00596F67:  push     edx                               
0x00596F68:  call     0x596970                          
0x00596F6D:  add      esp, 0x10                         
0x00596F70:  cmp      dword ptr [ebp + 0x10], 0         
0x00596F74:  je       0x59706b                          
0x00596F7A:  mov      eax, dword ptr [ebp + 8]          
0x00596F7D:  add      eax, 0x1a4                        
0x00596F82:  mov      dword ptr [ebp - 0x30], eax       
0x00596F85:  mov      ecx, dword ptr [ebp + 8]          
0x00596F88:  add      ecx, 0x54                         
0x00596F8B:  mov      dword ptr [ebp - 0x2c], ecx       
0x00596F8E:  mov      edx, dword ptr [ebp + 8]          
0x00596F91:  add      edx, 0x194                        
0x00596F97:  mov      dword ptr [ebp - 0x28], edx       
0x00596F9A:  mov      eax, dword ptr [ebp - 0x2c]       
0x00596F9D:  fld      dword ptr [eax]                   
0x00596F9F:  mov      ecx, dword ptr [ebp - 0x30]       
0x00596FA2:  fsub     dword ptr [ecx]                   
0x00596FA4:  mov      edx, dword ptr [ebp - 0x28]       
0x00596FA7:  fstp     dword ptr [edx]                   
0x00596FA9:  mov      eax, dword ptr [ebp - 0x2c]       
0x00596FAC:  fld      dword ptr [eax + 4]               
0x00596FAF:  mov      ecx, dword ptr [ebp - 0x30]       
0x00596FB2:  fsub     dword ptr [ecx + 4]               
0x00596FB5:  mov      edx, dword ptr [ebp - 0x28]       
0x00596FB8:  fstp     dword ptr [edx + 4]               
0x00596FBB:  mov      eax, dword ptr [ebp - 0x2c]       
0x00596FBE:  fld      dword ptr [eax + 8]               
0x00596FC1:  mov      ecx, dword ptr [ebp - 0x30]       
0x00596FC4:  fsub     dword ptr [ecx + 8]               
0x00596FC7:  mov      edx, dword ptr [ebp - 0x28]       
0x00596FCA:  fstp     dword ptr [edx + 8]               
0x00596FCD:  mov      eax, dword ptr [ebp - 4]          
0x00596FD0:  fld      dword ptr [eax + 0x13c]           
0x00596FD6:  fcomp    qword ptr [0x9795d0]              
0x00596FDC:  fnstsw   ax                                
0x00596FDE:  test     ah, 0x44                          
0x00596FE1:  jnp      0x597026                          
0x00596FE3:  mov      ecx, dword ptr [ebp - 4]          
0x00596FE6:  fld      dword ptr [ecx + 0x13c]           
0x00596FEC:  fdivr    qword ptr [0x983478]              
0x00596FF2:  fstp     dword ptr [ebp - 0x38]            
0x00596FF5:  mov      edx, dword ptr [ebp + 8]          
0x00596FF8:  add      edx, 0x194                        
0x00596FFE:  mov      dword ptr [ebp - 0x34], edx       
0x00597001:  mov      eax, dword ptr [ebp - 0x34]       
0x00597004:  fld      dword ptr [eax]                   
0x00597006:  fmul     dword ptr [ebp - 0x38]            
0x00597009:  fstp     dword ptr [ebp - 0x14]            
0x0059700C:  mov      ecx, dword ptr [ebp - 0x34]       
0x0059700F:  fld      dword ptr [ecx + 4]               
0x00597012:  fmul     dword ptr [ebp - 0x38]            
0x00597015:  fstp     dword ptr [ebp - 0x10]            
0x00597018:  mov      edx, dword ptr [ebp - 0x34]       
0x0059701B:  fld      dword ptr [edx + 8]               
0x0059701E:  fmul     dword ptr [ebp - 0x38]            
0x00597021:  fstp     dword ptr [ebp - 0xc]             
0x00597024:  jmp      0x59703a                          
0x00597026:  fldz                                       
0x00597028:  fstp     dword ptr [ebp - 0x14]            
0x0059702B:  fldz                                       
0x0059702D:  fstp     dword ptr [ebp - 0x10]            
0x00597030:  fldz                                       
0x00597032:  fstp     dword ptr [ebp - 0xc]             
0x00597035:  fld1                                       
0x00597037:  fstp     dword ptr [ebp - 8]               
0x0059703A:  mov      eax, dword ptr [ebp + 8]          
0x0059703D:  mov      ecx, dword ptr [eax + 0x38]       
0x00597040:  add      ecx, 0x10                         
0x00597043:  mov      dword ptr [ebp - 0x3c], ecx       
0x00597046:  mov      edx, dword ptr [ebp - 0x3c]       
0x00597049:  fld      dword ptr [ebp - 0x14]            
0x0059704C:  fstp     dword ptr [edx]                   
0x0059704E:  mov      eax, dword ptr [ebp - 0x3c]       
0x00597051:  fld      dword ptr [ebp - 0x10]            
0x00597054:  fstp     dword ptr [eax + 4]               
0x00597057:  mov      ecx, dword ptr [ebp - 0x3c]       
0x0059705A:  fld      dword ptr [ebp - 0xc]             
0x0059705D:  fstp     dword ptr [ecx + 8]               
0x00597060:  mov      edx, dword ptr [ebp - 0x3c]       
0x00597063:  fld      dword ptr [ebp - 8]               
0x00597066:  fstp     dword ptr [edx + 0xc]             
0x00597069:  jmp      0x59709a                          
0x0059706B:  mov      eax, dword ptr [ebp + 8]          
0x0059706E:  mov      ecx, dword ptr [eax + 0x38]       
0x00597071:  add      ecx, 0x10                         
0x00597074:  mov      dword ptr [ebp - 0x40], ecx       
0x00597077:  mov      edx, dword ptr [ebp - 0x40]       
0x0059707A:  fld      dword ptr [edx]                   
0x0059707C:  fstp     dword ptr [ebp - 0x14]            
0x0059707F:  mov      eax, dword ptr [ebp - 0x40]       
0x00597082:  fld      dword ptr [eax + 4]               
0x00597085:  fstp     dword ptr [ebp - 0x10]            
0x00597088:  mov      ecx, dword ptr [ebp - 0x40]       
0x0059708B:  fld      dword ptr [ecx + 8]               
0x0059708E:  fstp     dword ptr [ebp - 0xc]             
0x00597091:  mov      edx, dword ptr [ebp - 0x40]       
0x00597094:  fld      dword ptr [edx + 0xc]             
0x00597097:  fstp     dword ptr [ebp - 8]               
0x0059709A:  mov      eax, dword ptr [ebp + 8]          
0x0059709D:  add      eax, 0x1d4                        
0x005970A2:  mov      dword ptr [ebp - 0x44], eax       
0x005970A5:  mov      ecx, dword ptr [ebp - 0x44]       
0x005970A8:  fldz                                       
0x005970AA:  fstp     dword ptr [ecx]                   
0x005970AC:  mov      edx, dword ptr [ebp - 0x44]       
0x005970AF:  fldz                                       
0x005970B1:  fstp     dword ptr [edx + 4]               
0x005970B4:  mov      eax, dword ptr [ebp - 0x44]       
0x005970B7:  fldz                                       
0x005970B9:  fstp     dword ptr [eax + 8]               
0x005970BC:  mov      ecx, dword ptr [ebp - 0x44]       
0x005970BF:  fld1                                       
0x005970C1:  fstp     dword ptr [ecx + 0xc]             
0x005970C4:  mov      edx, dword ptr [ebp + 8]          
0x005970C7:  add      edx, 0x174                        
0x005970CD:  mov      dword ptr [ebp - 0x48], edx       
0x005970D0:  mov      eax, dword ptr [ebp - 0x48]       
0x005970D3:  fld      dword ptr [ebp - 0x14]            
0x005970D6:  fstp     dword ptr [eax]                   
0x005970D8:  mov      ecx, dword ptr [ebp - 0x48]       
0x005970DB:  fld      dword ptr [ebp - 0x10]            
0x005970DE:  fstp     dword ptr [ecx + 4]               
0x005970E1:  mov      edx, dword ptr [ebp - 0x48]       
0x005970E4:  fld      dword ptr [ebp - 0xc]             
0x005970E7:  fstp     dword ptr [edx + 8]               
0x005970EA:  mov      eax, dword ptr [ebp - 0x48]       
0x005970ED:  fld      dword ptr [ebp - 8]               
0x005970F0:  fstp     dword ptr [eax + 0xc]             
0x005970F3:  mov      ecx, dword ptr [ebp + 8]          
0x005970F6:  push     ecx                               
0x005970F7:  call     0x599970                          
0x005970FC:  add      esp, 4                            
0x005970FF:  mov      esp, ebp                          
0x00597101:  pop      ebp                               
0x00597102:  ret                                        
0x00597103:  int3                                       
0x00597104:  int3                                       
0x00597105:  int3                                       
0x00597106:  int3                                       
0x00597107:  int3                                       
0x00597108:  int3                                       
0x00597109:  int3                                       
0x0059710A:  int3                                       
0x0059710B:  int3                                       
0x0059710C:  int3                                       
0x0059710D:  int3                                       
0x0059710E:  int3                                       
0x0059710F:  int3                                       
0x00597110:  push     ebp                               
0x00597111:  mov      ebp, esp                          
0x00597113:  sub      esp, 0x20                         
0x00597116:  mov      eax, dword ptr [ebp + 8]          
0x00597119:  cmp      dword ptr [eax + 0x38], 0         
0x0059711D:  jne      0x597124                          
0x0059711F:  jmp      0x5971dc                          
0x00597124:  mov      ecx, dword ptr [ebp + 8]          
0x00597127:  mov      edx, dword ptr [ecx + 0x38]       
0x0059712A:  mov      eax, dword ptr [edx]              
0x0059712C:  and      eax, 0x10                         
0x0059712F:  jne      0x597136                          
0x00597131:  jmp      0x5971dc                          
0x00597136:  mov      ecx, dword ptr [ebp + 8]          
0x00597139:  mov      edx, dword ptr [ecx + 0x38]       
0x0059713C:  mov      eax, dword ptr [edx]              
0x0059713E:  and      eax, 1                            
0x00597141:  jne      0x597148                          
0x00597143:  jmp      0x5971dc                          
0x00597148:  mov      ecx, dword ptr [ebp + 8]          
0x0059714B:  mov      edx, dword ptr [ecx + 0x38]       
0x0059714E:  mov      eax, dword ptr [edx + 4]          
0x00597151:  mov      dword ptr [ebp - 4], eax          
0x00597154:  xor      ecx, ecx                          
0x00597156:  jne      0x597154                          
0x00597158:  mov      edx, dword ptr [ebp + 8]          
0x0059715B:  mov      eax, dword ptr [edx + 0x38]       
0x0059715E:  mov      ecx, dword ptr [eax]              
0x00597160:  and      ecx, 0x40                         
0x00597163:  je       0x5971dc                          
0x00597165:  mov      edx, dword ptr [ebp + 8]          
0x00597168:  add      edx, 0x1a4                        
0x0059716E:  mov      dword ptr [ebp - 0x1c], edx       
0x00597171:  mov      eax, dword ptr [ebp + 8]          
0x00597174:  add      eax, 0x54                         
0x00597177:  mov      dword ptr [ebp - 0x18], eax       
0x0059717A:  mov      ecx, dword ptr [ebp - 0x18]       
0x0059717D:  fld      dword ptr [ecx]                   
0x0059717F:  mov      edx, dword ptr [ebp - 0x1c]       
0x00597182:  fsub     dword ptr [edx]                   
0x00597184:  fstp     dword ptr [ebp - 0x14]            
0x00597187:  mov      eax, dword ptr [ebp - 0x18]       
0x0059718A:  fld      dword ptr [eax + 4]               
0x0059718D:  mov      ecx, dword ptr [ebp - 0x1c]       
0x00597190:  fsub     dword ptr [ecx + 4]               
0x00597193:  fstp     dword ptr [ebp - 0x10]            
0x00597196:  mov      edx, dword ptr [ebp - 0x18]       
0x00597199:  fld      dword ptr [edx + 8]               
0x0059719C:  mov      eax, dword ptr [ebp - 0x1c]       
0x0059719F:  fsub     dword ptr [eax + 8]               
0x005971A2:  fstp     dword ptr [ebp - 0xc]             
0x005971A5:  mov      ecx, dword ptr [ebp - 4]          
0x005971A8:  add      ecx, 0x100                        
0x005971AE:  mov      dword ptr [ebp - 0x20], ecx       
0x005971B1:  mov      edx, dword ptr [ebp - 0x20]       
0x005971B4:  fld      dword ptr [edx]                   
0x005971B6:  fadd     dword ptr [ebp - 0x14]            
0x005971B9:  mov      eax, dword ptr [ebp - 0x20]       
0x005971BC:  fstp     dword ptr [eax]                   
0x005971BE:  mov      ecx, dword ptr [ebp - 0x20]       
0x005971C1:  fld      dword ptr [ecx + 4]               
0x005971C4:  fadd     dword ptr [ebp - 0x10]            
0x005971C7:  mov      edx, dword ptr [ebp - 0x20]       
0x005971CA:  fstp     dword ptr [edx + 4]               
0x005971CD:  mov      eax, dword ptr [ebp - 0x20]       
0x005971D0:  fld      dword ptr [eax + 8]               
0x005971D3:  fadd     dword ptr [ebp - 0xc]             
0x005971D6:  mov      ecx, dword ptr [ebp - 0x20]       
0x005971D9:  fstp     dword ptr [ecx + 8]               
0x005971DC:  mov      esp, ebp                          
0x005971DE:  pop      ebp                               
0x005971DF:  ret                                        
0x005971E0:  push     ebp                               
0x005971E1:  mov      ebp, esp                          
0x005971E3:  sub      esp, 0x24                         
0x005971E6:  mov      eax, dword ptr [ebp + 8]          
0x005971E9:  cmp      dword ptr [eax + 0x28], 0         
0x005971ED:  je       0x5972bf                          
0x005971F3:  mov      ecx, dword ptr [ebp + 8]          
0x005971F6:  add      ecx, 0x2c                         
0x005971F9:  mov      dword ptr [ebp - 8], ecx          
0x005971FC:  mov      edx, dword ptr [ebp - 8]          
0x005971FF:  mov      eax, dword ptr [edx + 4]          
0x00597202:  mov      ecx, dword ptr [ebp - 8]          
0x00597205:  mov      edx, dword ptr [ecx]              
0x00597207:  shr      edx, 0x10                         
0x0059720A:  movzx    ecx, dx                           
0x0059720D:  mov      edx, dword ptr [eax + 0x34]       
0x00597210:  mov      eax, dword ptr [edx + ecx*4]      
0x00597213:  mov      dword ptr [ebp - 0xc], eax        
0x00597216:  cmp      dword ptr [ebp - 0xc], 0          
0x0059721A:  je       0x5972bf                          
0x00597220:  mov      ecx, dword ptr [ebp + 8]          
0x00597223:  add      ecx, 0x2c                         
0x00597226:  mov      dword ptr [ebp - 0x10], ecx       
0x00597229:  mov      edx, dword ptr [ebp - 0x10]       
0x0059722C:  mov      eax, dword ptr [edx + 4]          
0x0059722F:  mov      ecx, dword ptr [ebp - 0x10]       
0x00597232:  mov      edx, dword ptr [ecx]              
0x00597234:  shr      edx, 0x10                         
0x00597237:  movzx    ecx, dx                           
0x0059723A:  mov      edx, dword ptr [eax + 0xc]        
0x0059723D:  lea      eax, [edx + ecx*8]                
0x00597240:  mov      dword ptr [ebp - 0x14], eax       
0x00597243:  mov      ecx, dword ptr [ebp - 0x14]       
0x00597246:  xor      edx, edx                          
0x00597248:  cmp      dword ptr [ecx], -1               
0x0059724B:  setne    dl                                
0x0059724E:  test     edx, edx                          
0x00597250:  je       0x5972bf                          
0x00597252:  xor      eax, eax                          
0x00597254:  cmp      dword ptr [ebp + 0xc], 0          
0x00597258:  setne    al                                
0x0059725B:  lea      eax, [eax*4 + 1]                  
0x00597262:  mov      dword ptr [ebp - 4], eax          
0x00597265:  mov      ecx, dword ptr [ebp + 8]          
0x00597268:  add      ecx, 0x2c                         
0x0059726B:  mov      dword ptr [ebp - 0x18], ecx       
0x0059726E:  mov      edx, dword ptr [ebp - 0x18]       
0x00597271:  mov      eax, dword ptr [edx + 4]          
0x00597274:  mov      ecx, dword ptr [ebp - 0x18]       
0x00597277:  mov      edx, dword ptr [ecx]              
0x00597279:  shr      edx, 0x10                         
0x0059727C:  movzx    ecx, dx                           
0x0059727F:  mov      edx, dword ptr [eax + 0xc]        
0x00597282:  lea      eax, [edx + ecx*8]                
0x00597285:  mov      dword ptr [ebp - 0x1c], eax       
0x00597288:  mov      ecx, dword ptr [ebp + 8]          
0x0059728B:  add      ecx, 0x2c                         
0x0059728E:  mov      dword ptr [ebp - 0x20], ecx       
0x00597291:  mov      edx, dword ptr [ebp - 0x20]       
0x00597294:  mov      eax, dword ptr [edx + 4]          
0x00597297:  mov      ecx, dword ptr [ebp - 0x20]       
0x0059729A:  mov      edx, dword ptr [ecx]              
0x0059729C:  shr      edx, 0x10                         
0x0059729F:  movzx    ecx, dx                           
0x005972A2:  mov      edx, dword ptr [eax + 0x34]       
0x005972A5:  mov      eax, dword ptr [edx + ecx*4]      
0x005972A8:  mov      dword ptr [ebp - 0x24], eax       
0x005972AB:  mov      ecx, dword ptr [ebp - 4]          
0x005972AE:  push     ecx                               
0x005972AF:  mov      edx, dword ptr [ebp - 0x1c]       
0x005972B2:  push     edx                               
0x005972B3:  mov      eax, dword ptr [ebp - 0x24]       
0x005972B6:  push     eax                               
0x005972B7:  call     0x5f0590                          
0x005972BC:  add      esp, 0xc                          
0x005972BF:  mov      esp, ebp                          
0x005972C1:  pop      ebp                               
0x005972C2:  ret                                        
0x005972C3:  int3                                       
0x005972C4:  int3                                       
0x005972C5:  int3                                       
0x005972C6:  int3                                       
0x005972C7:  int3                                       
0x005972C8:  int3                                       
0x005972C9:  int3                                       
0x005972CA:  int3                                       
0x005972CB:  int3                                       
0x005972CC:  int3                                       
0x005972CD:  int3                                       
0x005972CE:  int3                                       
0x005972CF:  int3                                       
0x005972D0:  push     ebp                               
0x005972D1:  mov      ebp, esp                          
0x005972D3:  mov      eax, dword ptr [ebp + 8]          
0x005972D6:  mov      ecx, dword ptr [eax + 0x4c]       
0x005972D9:  and      ecx, 1                            
0x005972DC:  je       0x5972e0                          
0x005972DE:  jmp      0x59732a                          
0x005972E0:  mov      edx, dword ptr [ebp + 8]          
0x005972E3:  push     edx                               
0x005972E4:  call     0x599970                          
0x005972E9:  add      esp, 4                            
0x005972EC:  push     0                                 
0x005972EE:  push     2                                 
0x005972F0:  mov      eax, dword ptr [ebp + 8]          
0x005972F3:  add      eax, 0x154                        
0x005972F8:  push     eax                               
0x005972F9:  mov      ecx, dword ptr [ebp + 8]          
0x005972FC:  push     ecx                               
0x005972FD:  call     0x596970                          
0x00597302:  add      esp, 0x10                         
0x00597305:  mov      edx, dword ptr [ebp + 8]          
0x00597308:  mov      eax, dword ptr [edx + 0x3c]       
0x0059730B:  and      eax, 0x100                        
0x00597310:  jne      0x59732a                          
0x00597312:  push     2                                 
0x00597314:  mov      ecx, dword ptr [ebp + 8]          
0x00597317:  add      ecx, 0x164                        
0x0059731D:  push     ecx                               
0x0059731E:  mov      edx, dword ptr [ebp + 8]          
0x00597321:  push     edx                               
0x00597322:  call     0x596c40                          
0x00597327:  add      esp, 0xc                          
0x0059732A:  pop      ebp                               
0x0059732B:  ret                                        
0x0059732C:  int3                                       
0x0059732D:  int3                                       
0x0059732E:  int3                                       
0x0059732F:  int3                                       
0x00597330:  push     ebp                               
0x00597331:  mov      ebp, esp                          
0x00597333:  sub      esp, 0x8c                         
0x00597339:  mov      dword ptr [ebp - 8], 0xffffffff   
0x00597340:  mov      dword ptr [ebp - 4], 0            
0x00597347:  mov      dword ptr [ebp - 0x14], 0xffffffff
0x0059734E:  mov      dword ptr [ebp - 0x10], 0         
0x00597355:  cmp      dword ptr [ebp + 0x14], 0         
0x00597359:  jne      0x59737e                          
0x0059735B:  mov      eax, dword ptr [ebp + 8]          
0x0059735E:  mov      ecx, dword ptr [eax + 0x3c]       
0x00597361:  and      ecx, 0x800                        
0x00597367:  je       0x59736e                          
0x00597369:  jmp      0x597861                          
0x0059736E:  mov      edx, dword ptr [ebp + 8]          
0x00597371:  mov      eax, dword ptr [edx + 0x4c]       
0x00597374:  and      eax, 0x20                         
0x00597377:  je       0x59737e                          
0x00597379:  jmp      0x597861                          
0x0059737E:  mov      ecx, dword ptr [ebp + 8]          
0x00597381:  mov      edx, dword ptr [ecx + 0x4c]       
0x00597384:  and      edx, 1                            
0x00597387:  je       0x59738e                          
0x00597389:  jmp      0x597861                          
0x0059738E:  cmp      dword ptr [ebp + 0xc], 0          
0x00597392:  jne      0x5973a1                          
0x00597394:  mov      eax, dword ptr [ebp + 8]          
0x00597397:  mov      dword ptr [eax + 0x2bc], 0        
0x005973A1:  mov      ecx, dword ptr [ebp + 8]          
0x005973A4:  cmp      dword ptr [ecx + 0x28], 0         
0x005973A8:  je       0x5974a2                          
0x005973AE:  mov      edx, dword ptr [ebp + 8]          
0x005973B1:  add      edx, 0x2c                         
0x005973B4:  mov      dword ptr [ebp - 0x20], edx       
0x005973B7:  mov      eax, dword ptr [ebp - 0x20]       
0x005973BA:  mov      ecx, dword ptr [eax + 4]          
0x005973BD:  mov      edx, dword ptr [ebp - 0x20]       
0x005973C0:  mov      eax, dword ptr [edx]              
0x005973C2:  shr      eax, 0x10                         
0x005973C5:  movzx    edx, ax                           
0x005973C8:  mov      eax, dword ptr [ecx + 0x10]       
0x005973CB:  lea      ecx, [eax + edx*8]                
0x005973CE:  mov      dword ptr [ebp - 0x24], ecx       
0x005973D1:  mov      edx, dword ptr [ebp - 0x24]       
0x005973D4:  xor      eax, eax                          
0x005973D6:  cmp      dword ptr [edx], -1               
0x005973D9:  setne    al                                
0x005973DC:  test     eax, eax                          
0x005973DE:  je       0x5974a2                          
0x005973E4:  mov      ecx, dword ptr [ebp + 8]          
0x005973E7:  add      ecx, 0x2c                         
0x005973EA:  mov      dword ptr [ebp - 0x28], ecx       
0x005973ED:  mov      edx, dword ptr [ebp - 0x28]       
0x005973F0:  mov      eax, dword ptr [edx + 4]          
0x005973F3:  mov      ecx, dword ptr [ebp - 0x28]       
0x005973F6:  mov      edx, dword ptr [ecx]              
0x005973F8:  shr      edx, 0x10                         
0x005973FB:  movzx    ecx, dx                           
0x005973FE:  mov      edx, dword ptr [eax + 0x10]       
0x00597401:  lea      eax, [edx + ecx*8]                
0x00597404:  mov      dword ptr [ebp - 0x2c], eax       
0x00597407:  mov      ecx, dword ptr [ebp - 0x2c]       
0x0059740A:  mov      edx, dword ptr [ecx]              
0x0059740C:  mov      dword ptr [ebp - 8], edx          
0x0059740F:  mov      eax, dword ptr [ebp - 0x2c]       
0x00597412:  mov      ecx, dword ptr [eax + 4]          
0x00597415:  mov      dword ptr [ebp - 4], ecx          
0x00597418:  mov      edx, dword ptr [ebp - 4]          
0x0059741B:  mov      eax, dword ptr [ebp - 8]          
0x0059741E:  shr      eax, 0x10                         
0x00597421:  movzx    ecx, ax                           
0x00597424:  mov      edx, dword ptr [edx + 0x14]       
0x00597427:  lea      eax, [edx + ecx*8]                
0x0059742A:  mov      dword ptr [ebp - 0x30], eax       
0x0059742D:  mov      ecx, dword ptr [ebp - 0x30]       
0x00597430:  mov      edx, dword ptr [ecx]              
0x00597432:  mov      dword ptr [ebp - 0x14], edx       
0x00597435:  mov      eax, dword ptr [ebp - 0x30]       
0x00597438:  mov      ecx, dword ptr [eax + 4]          
0x0059743B:  mov      dword ptr [ebp - 0x10], ecx       
0x0059743E:  jmp      0x597466                          
0x00597440:  mov      edx, dword ptr [ebp - 0x10]       
0x00597443:  mov      eax, dword ptr [ebp - 0x14]       
0x00597446:  shr      eax, 0x10                         
0x00597449:  movzx    ecx, ax                           
0x0059744C:  mov      edx, dword ptr [edx + 0x14]       
0x0059744F:  lea      eax, [edx + ecx*8]                
0x00597452:  mov      dword ptr [ebp - 0x34], eax       
0x00597455:  mov      ecx, dword ptr [ebp - 0x34]       
0x00597458:  mov      edx, dword ptr [ecx]              
0x0059745A:  mov      dword ptr [ebp - 0x14], edx       
0x0059745D:  mov      eax, dword ptr [ebp - 0x34]       
0x00597460:  mov      ecx, dword ptr [eax + 4]          
0x00597463:  mov      dword ptr [ebp - 0x10], ecx       
0x00597466:  mov      edx, dword ptr [ebp - 0x14]       
0x00597469:  xor      eax, eax                          
0x0059746B:  cmp      edx, dword ptr [ebp - 8]          
0x0059746E:  setne    al                                
0x00597471:  test     eax, eax                          
0x00597473:  je       0x5974a2                          
0x00597475:  mov      ecx, dword ptr [ebp - 0x10]       
0x00597478:  mov      edx, dword ptr [ebp - 0x14]       
0x0059747B:  shr      edx, 0x10                         
0x0059747E:  movzx    eax, dx                           
0x00597481:  mov      ecx, dword ptr [ecx + 0x3c]       
0x00597484:  mov      edx, dword ptr [ecx + eax*4]      
0x00597487:  mov      dword ptr [ebp - 0x18], edx       
0x0059748A:  cmp      dword ptr [ebp - 0x18], 0         
0x0059748E:  je       0x5974a0                          
0x00597490:  mov      eax, dword ptr [ebp - 0x18]       
0x00597493:  mov      ecx, dword ptr [eax + 0x4c]       
0x00597496:  and      ecx, 1                            
0x00597499:  jne      0x5974a0                          
0x0059749B:  jmp      0x597861                          
0x005974A0:  jmp      0x597440                          
0x005974A2:  mov      edx, dword ptr [ebp + 0x10]       
0x005974A5:  neg      edx                               
0x005974A7:  sbb      edx, edx                          
0x005974A9:  and      edx, 0x200                        
0x005974AF:  add      edx, 1                            
0x005974B2:  mov      dword ptr [ebp - 0xc], edx        
0x005974B5:  mov      eax, dword ptr [ebp + 8]          
0x005974B8:  mov      ecx, dword ptr [eax + 0x4c]       
0x005974BB:  or       ecx, dword ptr [ebp - 0xc]        
0x005974BE:  mov      edx, dword ptr [ebp + 8]          
0x005974C1:  mov      dword ptr [edx + 0x4c], ecx       
0x005974C4:  mov      eax, 1                            
0x005974C9:  shl      eax, 4                            
0x005974CC:  mov      dword ptr [ebp - 0x54], eax       
0x005974CF:  mov      ecx, 1                            
0x005974D4:  shl      ecx, 4                            
0x005974D7:  mov      dword ptr [ebp - 0x50], ecx       
0x005974DA:  mov      edx, 1                            
0x005974DF:  shl      edx, 4                            
0x005974E2:  mov      dword ptr [ebp - 0x4c], edx       
0x005974E5:  mov      eax, 1                            
0x005974EA:  shl      eax, 4                            
0x005974ED:  mov      dword ptr [ebp - 0x48], eax       
0x005974F0:  mov      ecx, dword ptr [ebp + 8]          
0x005974F3:  add      ecx, 0x2c                         
0x005974F6:  mov      dword ptr [ebp - 0x44], ecx       
0x005974F9:  mov      edx, dword ptr [ebp - 0x44]       
0x005974FC:  mov      eax, dword ptr [edx + 4]          
0x005974FF:  mov      ecx, dword ptr [ebp - 0x44]       
0x00597502:  mov      edx, dword ptr [ecx]              
0x00597504:  shr      edx, 0x10                         
0x00597507:  movzx    ecx, dx                           
0x0059750A:  mov      edx, dword ptr [eax + 0x34]       
0x0059750D:  mov      eax, dword ptr [edx + ecx*4]      
0x00597510:  mov      dword ptr [ebp - 0x38], eax       
0x00597513:  cmp      dword ptr [ebp - 0x38], 0         
0x00597517:  je       0x59753b                          
0x00597519:  push     1                                 
0x0059751B:  push     1                                 
0x0059751D:  mov      ecx, dword ptr [ebp - 0x54]       
0x00597520:  push     ecx                               
0x00597521:  mov      edx, dword ptr [ebp - 0x50]       
0x00597524:  push     edx                               
0x00597525:  mov      eax, dword ptr [ebp - 0x4c]       
0x00597528:  push     eax                               
0x00597529:  mov      ecx, dword ptr [ebp - 0x48]       
0x0059752C:  push     ecx                               
0x0059752D:  mov      edx, dword ptr [ebp - 0x44]       
0x00597530:  push     edx                               
0x00597531:  call     0x5f3340                          
0x00597536:  add      esp, 0x1c                         
0x00597539:  jmp      0x597557                          
0x0059753B:  mov      eax, dword ptr [ebp - 0x54]       
0x0059753E:  push     eax                               
0x0059753F:  mov      ecx, dword ptr [ebp - 0x50]       
0x00597542:  push     ecx                               
0x00597543:  mov      edx, dword ptr [ebp - 0x4c]       
0x00597546:  push     edx                               
0x00597547:  mov      eax, dword ptr [ebp - 0x48]       
0x0059754A:  push     eax                               
0x0059754B:  mov      ecx, dword ptr [ebp - 0x44]       
0x0059754E:  push     ecx                               
0x0059754F:  call     0x597870                          
0x00597554:  add      esp, 0x14                         
0x00597557:  mov      edx, dword ptr [ebp + 8]          
0x0059755A:  mov      dword ptr [edx + 0x254], 0        
0x00597564:  mov      eax, dword ptr [ebp + 8]          
0x00597567:  mov      dword ptr [eax + 0x268], 0        
0x00597571:  mov      ecx, dword ptr [ebp + 8]          
0x00597574:  cmp      dword ptr [ecx + 0x28], 0         
0x00597578:  je       0x5975b8                          
0x0059757A:  mov      edx, dword ptr [ebp + 8]          
0x0059757D:  mov      eax, dword ptr [edx + 0x258]      
0x00597583:  mov      ecx, dword ptr [ebp + 8]          
0x00597586:  mov      edx, dword ptr [ecx + 0x34]       
0x00597589:  mov      dword ptr [eax + 0x34], edx       
0x0059758C:  mov      eax, dword ptr [ebp + 8]          
0x0059758F:  mov      ecx, dword ptr [eax + 0x34]       
0x00597592:  mov      edx, dword ptr [ebp + 8]          
0x00597595:  mov      eax, dword ptr [edx + 0x258]      
0x0059759B:  mov      dword ptr [ecx + 0x258], eax      
0x005975A1:  mov      ecx, dword ptr [ebp + 8]          
0x005975A4:  mov      dword ptr [ecx + 0x34], 0         
0x005975AB:  mov      edx, dword ptr [ebp + 8]          
0x005975AE:  mov      dword ptr [edx + 0x258], 0        
0x005975B8:  mov      eax, dword ptr [ebp + 8]          
0x005975BB:  add      eax, 0x174                        
0x005975C0:  mov      dword ptr [ebp - 0x58], eax       
0x005975C3:  mov      ecx, dword ptr [ebp - 0x58]       
0x005975C6:  fldz                                       
0x005975C8:  fstp     dword ptr [ecx]                   
0x005975CA:  mov      edx, dword ptr [ebp - 0x58]       
0x005975CD:  fldz                                       
0x005975CF:  fstp     dword ptr [edx + 4]               
0x005975D2:  mov      eax, dword ptr [ebp - 0x58]       
0x005975D5:  fldz                                       
0x005975D7:  fstp     dword ptr [eax + 8]               
0x005975DA:  mov      ecx, dword ptr [ebp - 0x58]       
0x005975DD:  fld1                                       
0x005975DF:  fstp     dword ptr [ecx + 0xc]             
0x005975E2:  mov      edx, dword ptr [ebp + 8]          
0x005975E5:  add      edx, 0x184                        
0x005975EB:  mov      dword ptr [ebp - 0x5c], edx       
0x005975EE:  mov      eax, dword ptr [ebp - 0x5c]       
0x005975F1:  fldz                                       
0x005975F3:  fstp     dword ptr [eax]                   
0x005975F5:  mov      ecx, dword ptr [ebp - 0x5c]       
0x005975F8:  fldz                                       
0x005975FA:  fstp     dword ptr [ecx + 4]               
0x005975FD:  mov      edx, dword ptr [ebp - 0x5c]       
0x00597600:  fldz                                       
0x00597602:  fstp     dword ptr [edx + 8]               
0x00597605:  mov      eax, dword ptr [ebp - 0x5c]       
0x00597608:  fld1                                       
0x0059760A:  fstp     dword ptr [eax + 0xc]             
0x0059760D:  mov      ecx, dword ptr [ebp + 8]          
0x00597610:  add      ecx, 0x54                         
0x00597613:  mov      dword ptr [ebp - 0x64], ecx       
0x00597616:  mov      edx, dword ptr [ebp + 8]          
0x00597619:  add      edx, 0x1a4                        
0x0059761F:  mov      dword ptr [ebp - 0x60], edx       
0x00597622:  mov      eax, dword ptr [ebp - 0x60]       
0x00597625:  mov      ecx, dword ptr [ebp - 0x64]       
0x00597628:  fld      dword ptr [ecx]                   
0x0059762A:  fstp     dword ptr [eax]                   
0x0059762C:  mov      edx, dword ptr [ebp - 0x60]       
0x0059762F:  mov      eax, dword ptr [ebp - 0x64]       
0x00597632:  fld      dword ptr [eax + 4]               
0x00597635:  fstp     dword ptr [edx + 4]               
0x00597638:  mov      ecx, dword ptr [ebp - 0x60]       
0x0059763B:  mov      edx, dword ptr [ebp - 0x64]       
0x0059763E:  fld      dword ptr [edx + 8]               
0x00597641:  fstp     dword ptr [ecx + 8]               
0x00597644:  mov      eax, dword ptr [ebp - 0x60]       
0x00597647:  mov      ecx, dword ptr [ebp - 0x64]       
0x0059764A:  fld      dword ptr [ecx + 0xc]             
0x0059764D:  fstp     dword ptr [eax + 0xc]             
0x00597650:  mov      edx, dword ptr [ebp + 8]          
0x00597653:  add      edx, 0x54                         
0x00597656:  mov      dword ptr [ebp - 0x6c], edx       
0x00597659:  mov      eax, dword ptr [ebp + 8]          
0x0059765C:  add      eax, 0x154                        
0x00597661:  mov      dword ptr [ebp - 0x68], eax       
0x00597664:  mov      ecx, dword ptr [ebp - 0x68]       
0x00597667:  mov      edx, dword ptr [ebp - 0x6c]       
0x0059766A:  fld      dword ptr [edx]                   
0x0059766C:  fstp     dword ptr [ecx]                   
0x0059766E:  mov      eax, dword ptr [ebp - 0x68]       
0x00597671:  mov      ecx, dword ptr [ebp - 0x6c]       
0x00597674:  fld      dword ptr [ecx + 4]               
0x00597677:  fstp     dword ptr [eax + 4]               
0x0059767A:  mov      edx, dword ptr [ebp - 0x68]       
0x0059767D:  mov      eax, dword ptr [ebp - 0x6c]       
0x00597680:  fld      dword ptr [eax + 8]               
0x00597683:  fstp     dword ptr [edx + 8]               
0x00597686:  mov      ecx, dword ptr [ebp - 0x68]       
0x00597689:  mov      edx, dword ptr [ebp - 0x6c]       
0x0059768C:  fld      dword ptr [edx + 0xc]             
0x0059768F:  fstp     dword ptr [ecx + 0xc]             
0x00597692:  mov      eax, dword ptr [ebp + 8]          
0x00597695:  add      eax, 0x64                         
0x00597698:  mov      dword ptr [ebp - 0x74], eax       
0x0059769B:  mov      ecx, dword ptr [ebp + 8]          
0x0059769E:  add      ecx, 0x1b4                        
0x005976A4:  mov      dword ptr [ebp - 0x70], ecx       
0x005976A7:  mov      edx, dword ptr [ebp - 0x70]       
0x005976AA:  mov      eax, dword ptr [ebp - 0x74]       
0x005976AD:  fld      dword ptr [eax]                   
0x005976AF:  fstp     dword ptr [edx]                   
0x005976B1:  mov      ecx, dword ptr [ebp - 0x70]       
0x005976B4:  mov      edx, dword ptr [ebp - 0x74]       
0x005976B7:  fld      dword ptr [edx + 4]               
0x005976BA:  fstp     dword ptr [ecx + 4]               
0x005976BD:  mov      eax, dword ptr [ebp - 0x70]       
0x005976C0:  mov      ecx, dword ptr [ebp - 0x74]       
0x005976C3:  fld      dword ptr [ecx + 8]               
0x005976C6:  fstp     dword ptr [eax + 8]               
0x005976C9:  mov      edx, dword ptr [ebp - 0x70]       
0x005976CC:  mov      eax, dword ptr [ebp - 0x74]       
0x005976CF:  fld      dword ptr [eax + 0xc]             
0x005976D2:  fstp     dword ptr [edx + 0xc]             
0x005976D5:  mov      ecx, dword ptr [ebp + 8]          
0x005976D8:  add      ecx, 0x64                         
0x005976DB:  mov      dword ptr [ebp - 0x7c], ecx       
0x005976DE:  mov      edx, dword ptr [ebp + 8]          
0x005976E1:  add      edx, 0x164                        
0x005976E7:  mov      dword ptr [ebp - 0x78], edx       
0x005976EA:  mov      eax, dword ptr [ebp - 0x78]       
0x005976ED:  mov      ecx, dword ptr [ebp - 0x7c]       
0x005976F0:  fld      dword ptr [ecx]                   
0x005976F2:  fstp     dword ptr [eax]                   
0x005976F4:  mov      edx, dword ptr [ebp - 0x78]       
0x005976F7:  mov      eax, dword ptr [ebp - 0x7c]       
0x005976FA:  fld      dword ptr [eax + 4]               
0x005976FD:  fstp     dword ptr [edx + 4]               
0x00597700:  mov      ecx, dword ptr [ebp - 0x78]       
0x00597703:  mov      edx, dword ptr [ebp - 0x7c]       
0x00597706:  fld      dword ptr [edx + 8]               
0x00597709:  fstp     dword ptr [ecx + 8]               
0x0059770C:  mov      eax, dword ptr [ebp - 0x78]       
0x0059770F:  mov      ecx, dword ptr [ebp - 0x7c]       
0x00597712:  fld      dword ptr [ecx + 0xc]             
0x00597715:  fstp     dword ptr [eax + 0xc]             
0x00597718:  mov      edx, dword ptr [ebp + 8]          
0x0059771B:  add      edx, 0x1c4                        
0x00597721:  mov      dword ptr [ebp - 0x80], edx       
0x00597724:  mov      eax, dword ptr [ebp - 0x80]       
0x00597727:  fldz                                       
0x00597729:  fstp     dword ptr [eax]                   
0x0059772B:  mov      ecx, dword ptr [ebp - 0x80]       
0x0059772E:  fldz                                       
0x00597730:  fstp     dword ptr [ecx + 4]               
0x00597733:  mov      edx, dword ptr [ebp - 0x80]       
0x00597736:  fldz                                       
0x00597738:  fstp     dword ptr [edx + 8]               
0x0059773B:  mov      eax, dword ptr [ebp - 0x80]       
0x0059773E:  fld1                                       
0x00597740:  fstp     dword ptr [eax + 0xc]             
0x00597743:  mov      ecx, dword ptr [ebp + 8]          
0x00597746:  add      ecx, 0x1e4                        
0x0059774C:  mov      dword ptr [ebp - 0x84], ecx       
0x00597752:  mov      edx, dword ptr [ebp - 0x84]       
0x00597758:  fldz                                       
0x0059775A:  fstp     dword ptr [edx]                   
0x0059775C:  mov      eax, dword ptr [ebp - 0x84]       
0x00597762:  fldz                                       
0x00597764:  fstp     dword ptr [eax + 4]               
0x00597767:  mov      ecx, dword ptr [ebp - 0x84]       
0x0059776D:  fldz                                       
0x0059776F:  fstp     dword ptr [ecx + 8]               
0x00597772:  mov      edx, dword ptr [ebp - 0x84]       
0x00597778:  fld1                                       
0x0059777A:  fstp     dword ptr [edx + 0xc]             
0x0059777D:  mov      eax, dword ptr [ebp + 8]          
0x00597780:  add      eax, 0x64                         
0x00597783:  mov      dword ptr [ebp - 0x8c], eax       
0x00597789:  mov      ecx, dword ptr [ebp + 8]          
0x0059778C:  add      ecx, 0x1b4                        
0x00597792:  mov      dword ptr [ebp - 0x88], ecx       
0x00597798:  mov      edx, dword ptr [ebp - 0x88]       
0x0059779E:  mov      eax, dword ptr [ebp - 0x8c]       
0x005977A4:  fld      dword ptr [eax]                   
0x005977A6:  fstp     dword ptr [edx]                   
0x005977A8:  mov      ecx, dword ptr [ebp - 0x88]       
0x005977AE:  mov      edx, dword ptr [ebp - 0x8c]       
0x005977B4:  fld      dword ptr [edx + 4]               
0x005977B7:  fstp     dword ptr [ecx + 4]               
0x005977BA:  mov      eax, dword ptr [ebp - 0x88]       
0x005977C0:  mov      ecx, dword ptr [ebp - 0x8c]       
0x005977C6:  fld      dword ptr [ecx + 8]               
0x005977C9:  fstp     dword ptr [eax + 8]               
0x005977CC:  mov      edx, dword ptr [ebp - 0x88]       
0x005977D2:  mov      eax, dword ptr [ebp - 0x8c]       
0x005977D8:  fld      dword ptr [eax + 0xc]             
0x005977DB:  fstp     dword ptr [edx + 0xc]             
0x005977DE:  mov      ecx, dword ptr [ebp + 8]          
0x005977E1:  cmp      dword ptr [ecx + 0x2c0], 0        
0x005977E8:  je       0x59780d                          
0x005977EA:  mov      edx, dword ptr [ebp + 8]          
0x005977ED:  mov      eax, dword ptr [edx + 0x28]       
0x005977F0:  mov      dword ptr [ebp - 0x1c], eax       
0x005977F3:  mov      ecx, dword ptr [ebp + 8]          
0x005977F6:  push     ecx                               
0x005977F7:  mov      edx, dword ptr [ebp - 0x1c]       
0x005977FA:  push     edx                               
0x005977FB:  mov      eax, dword ptr [ebp + 8]          
0x005977FE:  mov      ecx, dword ptr [eax + 0x2c0]      
0x00597804:  call     ecx                               
0x00597806:  add      esp, 8                            
0x00597809:  xor      edx, edx                          
0x0059780B:  jne      0x597809                          
0x0059780D:  mov      eax, dword ptr [ebp + 8]          
0x00597810:  mov      ecx, dword ptr [eax + 0x4c]       
0x00597813:  and      ecx, 0x10                         
0x00597816:  je       0x597844                          
0x00597818:  push     0                                 
0x0059781A:  push     0                                 
0x0059781C:  mov      edx, dword ptr [ebp + 8]          
0x0059781F:  add      edx, 0x64                         
0x00597822:  push     edx                               
0x00597823:  mov      eax, dword ptr [ebp + 8]          
0x00597826:  add      eax, 0x54                         
0x00597829:  push     eax                               
0x0059782A:  mov      ecx, dword ptr [ebp + 8]          
0x0059782D:  mov      edx, dword ptr [ecx + 0x44]       
0x00597830:  push     edx                               
0x00597831:  mov      eax, dword ptr [ebp + 8]          
0x00597834:  mov      ecx, dword ptr [eax + 0x40]       
0x00597837:  push     ecx                               
0x00597838:  mov      edx, dword ptr [ebp + 8]          
0x0059783B:  push     edx                               
0x0059783C:  call     0x59ae90                          
0x00597841:  add      esp, 0x1c                         
0x00597844:  push     1                                 
0x00597846:  mov      eax, dword ptr [ebp + 8]          
0x00597849:  push     eax                               
0x0059784A:  call     0x5971e0                          
0x0059784F:  add      esp, 8                            
0x00597852:  mov      ecx, dword ptr [ebp + 8]          
0x00597855:  mov      edx, dword ptr [0xb5cd8c]         
0x0059785B:  mov      dword ptr [ecx + 0x2b8], edx      
0x00597861:  mov      esp, ebp                          
0x00597863:  pop      ebp                               
0x00597864:  ret                                        
0x00597865:  int3                                       
0x00597866:  int3                                       
0x00597867:  int3                                       
0x00597868:  int3                                       
0x00597869:  int3                                       
0x0059786A:  int3                                       
0x0059786B:  int3                                       
0x0059786C:  int3                                       
0x0059786D:  int3                                       
0x0059786E:  int3                                       
0x0059786F:  int3                                       
0x00597870:  push     ebp                               
0x00597871:  mov      ebp, esp                          
0x00597873:  sub      esp, 8                            
0x00597876:  push     esi                               
0x00597877:  mov      eax, dword ptr [ebp + 0x10]       
0x0059787A:  and      eax, dword ptr [ebp + 0xc]        
0x0059787D:  mov      ecx, dword ptr [ebp + 8]          
0x00597880:  mov      edx, dword ptr [ecx + 4]          
0x00597883:  mov      ecx, dword ptr [ebp + 8]          
0x00597886:  mov      ecx, dword ptr [ecx]              
0x00597888:  shr      ecx, 0x10                         
0x0059788B:  movzx    ecx, cx                           
0x0059788E:  mov      edx, dword ptr [edx + 0x20]       
0x00597891:  mov      esi, dword ptr [ebp + 0xc]        
0x00597894:  not      esi                               
0x00597896:  and      esi, dword ptr [edx + ecx*8]      
0x00597899:  or       esi, eax                          
0x0059789B:  mov      dword ptr [ebp - 4], esi          
0x0059789E:  mov      eax, dword ptr [ebp + 8]          
0x005978A1:  mov      ecx, dword ptr [eax + 4]          
0x005978A4:  mov      edx, dword ptr [ebp + 8]          
0x005978A7:  mov      eax, dword ptr [edx]              
0x005978A9:  shr      eax, 0x10                         
0x005978AC:  movzx    edx, ax                           
0x005978AF:  mov      eax, dword ptr [ecx + 0x20]       
0x005978B2:  mov      ecx, dword ptr [ebp - 4]          
0x005978B5:  mov      dword ptr [eax + edx*8], ecx      
0x005978B8:  mov      edx, dword ptr [ebp + 0x18]       
0x005978BB:  and      edx, dword ptr [ebp + 0x14]       
0x005978BE:  mov      eax, dword ptr [ebp + 8]          
0x005978C1:  mov      ecx, dword ptr [eax + 4]          
0x005978C4:  mov      eax, dword ptr [ebp + 8]          
0x005978C7:  mov      eax, dword ptr [eax]              
0x005978C9:  shr      eax, 0x10                         
0x005978CC:  movzx    eax, ax                           
0x005978CF:  mov      ecx, dword ptr [ecx + 0x20]       
0x005978D2:  mov      esi, dword ptr [ebp + 0x14]       
0x005978D5:  not      esi                               
0x005978D7:  and      esi, dword ptr [ecx + eax*8 + 4]  
0x005978DB:  or       esi, edx                          
0x005978DD:  mov      dword ptr [ebp - 8], esi          
0x005978E0:  mov      edx, dword ptr [ebp + 8]          
0x005978E3:  mov      eax, dword ptr [edx + 4]          
0x005978E6:  mov      ecx, dword ptr [ebp + 8]          
0x005978E9:  mov      edx, dword ptr [ecx]              
0x005978EB:  shr      edx, 0x10                         
0x005978EE:  movzx    ecx, dx                           
0x005978F1:  mov      edx, dword ptr [eax + 0x20]       
0x005978F4:  mov      eax, dword ptr [ebp - 8]          
0x005978F7:  mov      dword ptr [edx + ecx*8 + 4], eax  
0x005978FB:  pop      esi                               
0x005978FC:  mov      esp, ebp                          
0x005978FE:  pop      ebp                               
0x005978FF:  ret                                        
0x00597900:  push     ebp                               
0x00597901:  mov      ebp, esp                          
0x00597903:  sub      esp, 0x30                         
0x00597906:  cmp      dword ptr [ebp + 0xc], 0          
0x0059790A:  jne      0x59791f                          
0x0059790C:  mov      eax, dword ptr [ebp + 8]          
0x0059790F:  mov      ecx, dword ptr [eax + 0x4c]       
0x00597912:  and      ecx, 0x200                        
0x00597918:  je       0x59791f                          
0x0059791A:  jmp      0x597b80                          
0x0059791F:  mov      edx, dword ptr [ebp + 8]          
0x00597922:  mov      eax, dword ptr [edx + 0x4c]       
0x00597925:  and      eax, 1                            
0x00597928:  jne      0x59792f                          
0x0059792A:  jmp      0x597b80                          
0x0059792F:  mov      ecx, dword ptr [ebp + 8]          
0x00597932:  mov      edx, dword ptr [ecx + 0x3c]       
0x00597935:  and      edx, 1                            
0x00597938:  jne      0x59793f                          
0x0059793A:  jmp      0x597b80                          
0x0059793F:  mov      eax, dword ptr [ebp + 8]          
0x00597942:  mov      ecx, dword ptr [eax + 0x4c]       
0x00597945:  and      ecx, 0xfffffdbc                   
0x0059794B:  mov      edx, dword ptr [ebp + 8]          
0x0059794E:  mov      dword ptr [edx + 0x4c], ecx       
0x00597951:  mov      eax, dword ptr [ebp + 8]          
0x00597954:  mov      ecx, dword ptr [eax + 0x4c]       
0x00597957:  or       ecx, 0x400                        
0x0059795D:  mov      edx, dword ptr [ebp + 8]          
0x00597960:  mov      dword ptr [edx + 0x4c], ecx       
0x00597963:  mov      eax, 1                            
0x00597968:  shl      eax, 4                            
0x0059796B:  mov      dword ptr [ebp - 0x24], eax       
0x0059796E:  mov      ecx, 1                            
0x00597973:  shl      ecx, 4                            
0x00597976:  mov      dword ptr [ebp - 0x20], ecx       
0x00597979:  mov      edx, dword ptr [ebp + 8]          
0x0059797C:  add      edx, 0x2c                         
0x0059797F:  mov      dword ptr [ebp - 0x1c], edx       
0x00597982:  mov      eax, dword ptr [ebp - 0x1c]       
0x00597985:  mov      ecx, dword ptr [eax + 4]          
0x00597988:  mov      edx, dword ptr [ebp - 0x1c]       
0x0059798B:  mov      eax, dword ptr [edx]              
0x0059798D:  shr      eax, 0x10                         
0x00597990:  movzx    edx, ax                           
0x00597993:  mov      eax, dword ptr [ecx + 0x34]       
0x00597996:  mov      ecx, dword ptr [eax + edx*4]      
0x00597999:  mov      dword ptr [ebp - 0x10], ecx       
0x0059799C:  cmp      dword ptr [ebp - 0x10], 0         
0x005979A0:  je       0x5979c0                          
0x005979A2:  push     1                                 
0x005979A4:  push     1                                 
0x005979A6:  push     0                                 
0x005979A8:  mov      edx, dword ptr [ebp - 0x24]       
0x005979AB:  push     edx                               
0x005979AC:  push     0                                 
0x005979AE:  mov      eax, dword ptr [ebp - 0x20]       
0x005979B1:  push     eax                               
0x005979B2:  mov      ecx, dword ptr [ebp - 0x1c]       
0x005979B5:  push     ecx                               
0x005979B6:  call     0x5f3340                          
0x005979BB:  add      esp, 0x1c                         
0x005979BE:  jmp      0x5979d8                          
0x005979C0:  push     0                                 
0x005979C2:  mov      edx, dword ptr [ebp - 0x24]       
0x005979C5:  push     edx                               
0x005979C6:  push     0                                 
0x005979C8:  mov      eax, dword ptr [ebp - 0x20]       
0x005979CB:  push     eax                               
0x005979CC:  mov      ecx, dword ptr [ebp - 0x1c]       
0x005979CF:  push     ecx                               
0x005979D0:  call     0x597870                          
0x005979D5:  add      esp, 0x14                         
0x005979D8:  mov      edx, dword ptr [ebp + 8]          
0x005979DB:  cmp      dword ptr [edx + 0x28], 0         
0x005979DF:  je       0x597a7b                          
0x005979E5:  mov      eax, dword ptr [ebp + 8]          
0x005979E8:  mov      ecx, dword ptr [eax + 0x28]       
0x005979EB:  mov      dword ptr [ebp - 0x28], ecx       
0x005979EE:  mov      edx, dword ptr [ebp + 8]          
0x005979F1:  mov      eax, dword ptr [edx + 0x3c]       
0x005979F4:  and      eax, 0x8000000                    
0x005979F9:  je       0x597a33                          
0x005979FB:  mov      ecx, dword ptr [ebp + 8]          
0x005979FE:  mov      edx, dword ptr [ecx + 0x38]       
0x00597A01:  mov      eax, dword ptr [edx]              
0x00597A03:  and      eax, 2                            
0x00597A06:  je       0x597a25                          
0x00597A08:  mov      ecx, dword ptr [ebp + 8]          
0x00597A0B:  mov      edx, dword ptr [ecx + 0x38]       
0x00597A0E:  mov      eax, dword ptr [edx]              
0x00597A10:  and      eax, 0x10                         
0x00597A13:  jne      0x597a25                          
0x00597A15:  mov      ecx, dword ptr [ebp - 0x28]       
0x00597A18:  mov      edx, dword ptr [ecx + 0x168]      
0x00597A1E:  mov      dword ptr [ebp - 4], edx          
0x00597A21:  jmp      0x597a45                          
0x00597A23:  jmp      0x597a31                          
0x00597A25:  mov      eax, dword ptr [ebp - 0x28]       
0x00597A28:  mov      ecx, dword ptr [eax + 0x164]      
0x00597A2E:  mov      dword ptr [ebp - 4], ecx          
0x00597A31:  jmp      0x597a45                          
0x00597A33:  mov      edx, dword ptr [ebp - 0x28]       
0x00597A36:  mov      eax, dword ptr [edx + 0x164]      
0x00597A3C:  mov      ecx, dword ptr [eax + 0x258]      
0x00597A42:  mov      dword ptr [ebp - 4], ecx          
0x00597A45:  mov      edx, dword ptr [ebp + 8]          
0x00597A48:  mov      eax, dword ptr [ebp - 4]          
0x00597A4B:  mov      ecx, dword ptr [eax + 0x34]       
0x00597A4E:  mov      dword ptr [edx + 0x34], ecx       
0x00597A51:  mov      edx, dword ptr [ebp + 8]          
0x00597A54:  mov      eax, dword ptr [ebp - 4]          
0x00597A57:  mov      dword ptr [edx + 0x258], eax      
0x00597A5D:  mov      ecx, dword ptr [ebp + 8]          
0x00597A60:  mov      edx, dword ptr [ecx + 0x34]       
0x00597A63:  mov      eax, dword ptr [ebp + 8]          
0x00597A66:  mov      dword ptr [edx + 0x258], eax      
0x00597A6C:  mov      ecx, dword ptr [ebp + 8]          
0x00597A6F:  mov      edx, dword ptr [ecx + 0x258]      
0x00597A75:  mov      eax, dword ptr [ebp + 8]          
0x00597A78:  mov      dword ptr [edx + 0x34], eax       
0x00597A7B:  mov      ecx, dword ptr [ebp + 8]          
0x00597A7E:  add      ecx, 0x174                        
0x00597A84:  mov      dword ptr [ebp - 0x2c], ecx       
0x00597A87:  mov      edx, dword ptr [ebp - 0x2c]       
0x00597A8A:  fldz                                       
0x00597A8C:  fstp     dword ptr [edx]                   
0x00597A8E:  mov      eax, dword ptr [ebp - 0x2c]       
0x00597A91:  fldz                                       
0x00597A93:  fstp     dword ptr [eax + 4]               
0x00597A96:  mov      ecx, dword ptr [ebp - 0x2c]       
0x00597A99:  fldz                                       
0x00597A9B:  fstp     dword ptr [ecx + 8]               
0x00597A9E:  mov      edx, dword ptr [ebp - 0x2c]       
0x00597AA1:  fld1                                       
0x00597AA3:  fstp     dword ptr [edx + 0xc]             
0x00597AA6:  mov      eax, dword ptr [ebp + 8]          
0x00597AA9:  add      eax, 0x184                        
0x00597AAE:  mov      dword ptr [ebp - 0x30], eax       
0x00597AB1:  mov      ecx, dword ptr [ebp - 0x30]       
0x00597AB4:  fldz                                       
0x00597AB6:  fstp     dword ptr [ecx]                   
0x00597AB8:  mov      edx, dword ptr [ebp - 0x30]       
0x00597ABB:  fldz                                       
0x00597ABD:  fstp     dword ptr [edx + 4]               
0x00597AC0:  mov      eax, dword ptr [ebp - 0x30]       
0x00597AC3:  fldz                                       
0x00597AC5:  fstp     dword ptr [eax + 8]               
0x00597AC8:  mov      ecx, dword ptr [ebp - 0x30]       
0x00597ACB:  fld1                                       
0x00597ACD:  fstp     dword ptr [ecx + 0xc]             
0x00597AD0:  mov      edx, dword ptr [ebp + 8]          
0x00597AD3:  cmp      dword ptr [edx + 0x2c0], 0        
0x00597ADA:  je       0x597aff                          
0x00597ADC:  mov      eax, dword ptr [ebp + 8]          
0x00597ADF:  mov      ecx, dword ptr [eax + 0x28]       
0x00597AE2:  mov      dword ptr [ebp - 0xc], ecx        
0x00597AE5:  mov      edx, dword ptr [ebp + 8]          
0x00597AE8:  push     edx                               
0x00597AE9:  mov      eax, dword ptr [ebp - 0xc]        
0x00597AEC:  push     eax                               
0x00597AED:  mov      ecx, dword ptr [ebp + 8]          
0x00597AF0:  mov      edx, dword ptr [ecx + 0x2c0]      
0x00597AF6:  call     edx                               
0x00597AF8:  add      esp, 8                            
0x00597AFB:  xor      eax, eax                          
0x00597AFD:  jne      0x597afb                          
0x00597AFF:  mov      ecx, dword ptr [ebp + 8]          
0x00597B02:  mov      edx, dword ptr [ecx + 0x2bc]      
0x00597B08:  mov      dword ptr [ebp - 8], edx          
0x00597B0B:  cmp      dword ptr [ebp - 8], 0            
0x00597B0F:  je       0x597b80                          
0x00597B11:  mov      eax, dword ptr [ebp + 8]          
0x00597B14:  cmp      dword ptr [eax + 0x28], 0         
0x00597B18:  je       0x597b37                          
0x00597B1A:  mov      ecx, dword ptr [ebp + 8]          
0x00597B1D:  mov      edx, dword ptr [ecx + 0x28]       
0x00597B20:  mov      eax, dword ptr [edx + 0x28]       
0x00597B23:  and      eax, 0x80                         
0x00597B28:  jne      0x597b37                          
0x00597B2A:  mov      ecx, dword ptr [ebp + 8]          
0x00597B2D:  mov      dword ptr [ecx + 0x2bc], 0        
0x00597B37:  cmp      dword ptr [0xb5c360], 0           
0x00597B3E:  je       0x597b4f                          
0x00597B40:  mov      edx, dword ptr [0xb5c360]         
0x00597B46:  cmp      edx, dword ptr [ebp - 8]          
0x00597B49:  jne      0x597b4d                          
0x00597B4B:  jmp      0x597b80                          
0x00597B4D:  jmp      0x597b57                          
0x00597B4F:  mov      eax, dword ptr [ebp + 8]          
0x00597B52:  mov      dword ptr [0xb5c360], eax         
0x00597B57:  xor      ecx, ecx                          
0x00597B59:  jne      0x597b57                          
0x00597B5B:  mov      edx, dword ptr [ebp + 0xc]        
0x00597B5E:  push     edx                               
0x00597B5F:  mov      eax, dword ptr [ebp - 8]          
0x00597B62:  push     eax                               
0x00597B63:  call     0x597900                          
0x00597B68:  add      esp, 8                            
0x00597B6B:  mov      ecx, dword ptr [0xb5c360]         
0x00597B71:  cmp      ecx, dword ptr [ebp + 8]          
0x00597B74:  jne      0x597b80                          
0x00597B76:  mov      dword ptr [0xb5c360], 0           
0x00597B80:  mov      esp, ebp                          
0x00597B82:  pop      ebp                               
0x00597B83:  ret                                        
0x00597B84:  int3                                       
0x00597B85:  int3                                       
0x00597B86:  int3                                       
0x00597B87:  int3                                       
0x00597B88:  int3                                       
0x00597B89:  int3                                       
0x00597B8A:  int3                                       
0x00597B8B:  int3                                       
0x00597B8C:  int3                                       
0x00597B8D:  int3                                       
0x00597B8E:  int3                                       
0x00597B8F:  int3                                       
0x00597B90:  push     ebp                               
0x00597B91:  mov      ebp, esp                          
0x00597B93:  sub      esp, 0x30                         
0x00597B96:  lea      eax, [ebp - 8]                    
0x00597B99:  push     eax                               
0x00597B9A:  lea      ecx, [ebp - 4]                    
0x00597B9D:  push     ecx                               
0x00597B9E:  push     0                                 
0x00597BA0:  push     0                                 
0x00597BA2:  push     0                                 
0x00597BA4:  mov      edx, dword ptr [ebp + 0xc]        
0x00597BA7:  movzx    eax, byte ptr [edx + 0x104]       
0x00597BAE:  push     eax                               
0x00597BAF:  mov      ecx, dword ptr [ebp + 0xc]        
0x00597BB2:  movzx    edx, byte ptr [ecx + 0x104]       
0x00597BB9:  push     edx                               
0x00597BBA:  mov      eax, dword ptr [ebp + 8]          
0x00597BBD:  push     eax                               
0x00597BBE:  call     0x618a10                          
0x00597BC3:  add      esp, 0x20                         
0x00597BC6:  mov      ecx, dword ptr [ebp + 0xc]        
0x00597BC9:  mov      edx, dword ptr [ecx + 0x40]       
0x00597BCC:  fld      dword ptr [edx + 0xc]             
0x00597BCF:  fmul     qword ptr [0x992fc0]              
0x00597BD5:  fstp     dword ptr [ebp - 0x10]            
0x00597BD8:  mov      eax, dword ptr [ebp + 0x10]       
0x00597BDB:  fld      dword ptr [eax]                   
0x00597BDD:  mov      ecx, dword ptr [ebp + 0x10]       
0x00597BE0:  fmul     dword ptr [ecx]                   
0x00597BE2:  mov      edx, dword ptr [ebp + 0x10]       
0x00597BE5:  fld      dword ptr [edx + 4]               
0x00597BE8:  mov      eax, dword ptr [ebp + 0x10]       
0x00597BEB:  fmul     dword ptr [eax + 4]               
0x00597BEE:  faddp    st(1)                             
0x00597BF0:  mov      ecx, dword ptr [ebp + 0x10]       
0x00597BF3:  fld      dword ptr [ecx + 8]               
0x00597BF6:  mov      edx, dword ptr [ebp + 0x10]       
0x00597BF9:  fmul     dword ptr [edx + 8]               
0x00597BFC:  faddp    st(1)                             
0x00597BFE:  fstp     dword ptr [ebp - 0x30]            
0x00597C01:  fld      dword ptr [ebp - 0x30]            
0x00597C04:  push     ecx                               
0x00597C05:  fstp     dword ptr [esp]                   
0x00597C08:  call     0x4d3f80                          
0x00597C0D:  add      esp, 4                            
0x00597C10:  fstp     dword ptr [ebp - 0x2c]            
0x00597C13:  fld      dword ptr [ebp - 0x2c]            
0x00597C16:  mov      eax, dword ptr [ebp + 8]          
0x00597C19:  fdiv     dword ptr [eax + 0x128]           
0x00597C1F:  fstp     dword ptr [ebp - 0xc]             
0x00597C22:  cmp      dword ptr [ebp + 0x18], 0         
0x00597C26:  je       0x597c36                          
0x00597C28:  fld      dword ptr [ebp - 0x10]            
0x00597C2B:  fmul     dword ptr [ebp - 4]               
0x00597C2E:  fmul     dword ptr [ebp - 0xc]             
0x00597C31:  mov      ecx, dword ptr [ebp + 0x18]       
0x00597C34:  fstp     dword ptr [ecx]                   
0x00597C36:  cmp      dword ptr [ebp + 0x1c], 0         
0x00597C3A:  je       0x597c47                          
0x00597C3C:  fld      dword ptr [ebp - 0x10]            
0x00597C3F:  fmul     dword ptr [ebp - 8]               
0x00597C42:  mov      edx, dword ptr [ebp + 0x1c]       
0x00597C45:  fstp     dword ptr [edx]                   
0x00597C47:  mov      esp, ebp                          
0x00597C49:  pop      ebp                               
0x00597C4A:  ret                                        
0x00597C4B:  int3                                       
0x00597C4C:  int3                                       
0x00597C4D:  int3                                       
0x00597C4E:  int3                                       
0x00597C4F:  int3                                       
0x00597C50:  push     ebp                               
0x00597C51:  mov      ebp, esp                          
0x00597C53:  sub      esp, 0x18                         
0x00597C56:  mov      eax, dword ptr [ebp + 8]          
0x00597C59:  fld      dword ptr [eax]                   
0x00597C5B:  mov      ecx, dword ptr [ebp + 0xc]        
0x00597C5E:  fsub     dword ptr [ecx]                   
0x00597C60:  fstp     dword ptr [ebp - 0x14]            
0x00597C63:  mov      edx, dword ptr [ebp + 8]          
0x00597C66:  fld      dword ptr [edx + 4]               
0x00597C69:  mov      eax, dword ptr [ebp + 0xc]        
0x00597C6C:  fsub     dword ptr [eax + 4]               
0x00597C6F:  fstp     dword ptr [ebp - 0x10]            
0x00597C72:  mov      ecx, dword ptr [ebp + 8]          
0x00597C75:  fld      dword ptr [ecx + 8]               
0x00597C78:  mov      edx, dword ptr [ebp + 0xc]        
0x00597C7B:  fsub     dword ptr [edx + 8]               
0x00597C7E:  fstp     dword ptr [ebp - 0xc]             
0x00597C81:  fld      dword ptr [ebp - 0xc]             
0x00597C84:  fmul     dword ptr [ebp - 0xc]             
0x00597C87:  fld      dword ptr [ebp - 0x10]            
0x00597C8A:  fmul     dword ptr [ebp - 0x10]            
0x00597C8D:  fld      dword ptr [ebp - 0x14]            
0x00597C90:  fmul     dword ptr [ebp - 0x14]            
0x00597C93:  faddp    st(1)                             
0x00597C95:  faddp    st(1)                             
0x00597C97:  fstp     dword ptr [ebp - 4]               
0x00597C9A:  fld      dword ptr [ebp + 0x10]            
0x00597C9D:  fmul     dword ptr [ebp + 0x10]            
0x00597CA0:  fld      dword ptr [ebp - 4]               
0x00597CA3:  fcompp                                     
0x00597CA5:  fnstsw   ax                                
0x00597CA7:  test     ah, 0x41                          
0x00597CAA:  jp       0x597cb5                          
0x00597CAC:  mov      dword ptr [ebp - 0x18], 1         
0x00597CB3:  jmp      0x597cbc                          
0x00597CB5:  mov      dword ptr [ebp - 0x18], 0         
0x00597CBC:  mov      eax, dword ptr [ebp - 0x18]       
0x00597CBF:  mov      esp, ebp                          
0x00597CC1:  pop      ebp                               
0x00597CC2:  ret                                        
0x00597CC3:  int3                                       
0x00597CC4:  int3                                       
0x00597CC5:  int3                                       
0x00597CC6:  int3                                       
0x00597CC7:  int3                                       
0x00597CC8:  int3                                       
0x00597CC9:  int3                                       
0x00597CCA:  int3                                       
0x00597CCB:  int3                                       
0x00597CCC:  int3                                       
0x00597CCD:  int3                                       
0x00597CCE:  int3                                       
0x00597CCF:  int3                                       
0x00597CD0:  push     ebp                               
0x00597CD1:  mov      ebp, esp                          
0x00597CD3:  push     ecx                               
0x00597CD4:  mov      eax, dword ptr [ebp + 0xc]        
0x00597CD7:  fld      dword ptr [eax + 0x10]            
0x00597CDA:  mov      ecx, dword ptr [ebp + 8]          
0x00597CDD:  fld      dword ptr [ecx]                   
0x00597CDF:  fcompp                                     
0x00597CE1:  fnstsw   ax                                
0x00597CE3:  test     ah, 5                             
0x00597CE6:  jp       0x597d58                          
0x00597CE8:  mov      edx, dword ptr [ebp + 0xc]        
0x00597CEB:  fld      dword ptr [edx + 0x14]            
0x00597CEE:  mov      eax, dword ptr [ebp + 8]          
0x00597CF1:  fld      dword ptr [eax + 4]               
0x00597CF4:  fcompp                                     
0x00597CF6:  fnstsw   ax                                
0x00597CF8:  test     ah, 5                             
0x00597CFB:  jp       0x597d58                          
0x00597CFD:  mov      ecx, dword ptr [ebp + 0xc]        
0x00597D00:  fld      dword ptr [ecx + 0x18]            
0x00597D03:  mov      edx, dword ptr [ebp + 8]          
0x00597D06:  fld      dword ptr [edx + 8]               
0x00597D09:  fcompp                                     
0x00597D0B:  fnstsw   ax                                
0x00597D0D:  test     ah, 5                             
0x00597D10:  jp       0x597d58                          
0x00597D12:  mov      eax, dword ptr [ebp + 0xc]        
0x00597D15:  fld      dword ptr [eax]                   
0x00597D17:  mov      ecx, dword ptr [ebp + 8]          
0x00597D1A:  fld      dword ptr [ecx]                   
0x00597D1C:  fcompp                                     
0x00597D1E:  fnstsw   ax                                
0x00597D20:  test     ah, 0x41                          
0x00597D23:  jne      0x597d58                          
0x00597D25:  mov      edx, dword ptr [ebp + 0xc]        
0x00597D28:  fld      dword ptr [edx + 4]               
0x00597D2B:  mov      eax, dword ptr [ebp + 8]          
0x00597D2E:  fld      dword ptr [eax + 4]               
0x00597D31:  fcompp                                     
0x00597D33:  fnstsw   ax                                
0x00597D35:  test     ah, 0x41                          
0x00597D38:  jne      0x597d58                          
0x00597D3A:  mov      ecx, dword ptr [ebp + 0xc]        
0x00597D3D:  fld      dword ptr [ecx + 8]               
0x00597D40:  mov      edx, dword ptr [ebp + 8]          
0x00597D43:  fld      dword ptr [edx + 8]               
0x00597D46:  fcompp                                     
0x00597D48:  fnstsw   ax                                
0x00597D4A:  test     ah, 0x41                          
0x00597D4D:  jne      0x597d58                          
0x00597D4F:  mov      dword ptr [ebp - 4], 1            
0x00597D56:  jmp      0x597d5f                          
0x00597D58:  mov      dword ptr [ebp - 4], 0            
0x00597D5F:  mov      eax, dword ptr [ebp - 4]          
0x00597D62:  mov      esp, ebp                          
0x00597D64:  pop      ebp                               
0x00597D65:  ret                                        
0x00597D66:  int3                                       
0x00597D67:  int3                                       
0x00597D68:  int3                                       
0x00597D69:  int3                                       
0x00597D6A:  int3                                       
0x00597D6B:  int3                                       
0x00597D6C:  int3                                       
0x00597D6D:  int3                                       
0x00597D6E:  int3                                       
0x00597D6F:  int3                                       
0x00597D70:  push     ebp                               
0x00597D71:  mov      ebp, esp                          
0x00597D73:  sub      esp, 0x4c                         
0x00597D76:  mov      eax, dword ptr [ebp + 8]          
0x00597D79:  mov      ecx, dword ptr [eax + 0x40]       
0x00597D7C:  push     ecx                               
0x00597D7D:  fld      dword ptr [ecx + 0xc]             
0x00597D80:  fstp     dword ptr [esp]                   
0x00597D83:  mov      edx, dword ptr [ebp + 8]          
0x00597D86:  add      edx, 0x54                         
0x00597D89:  push     edx                               
0x00597D8A:  push     ecx                               
0x00597D8B:  fld      dword ptr [ebp + 0x10]            
0x00597D8E:  fstp     dword ptr [esp]                   
0x00597D91:  mov      eax, dword ptr [ebp + 0xc]        
0x00597D94:  push     eax                               
0x00597D95:  call     0x597e00                          
0x00597D9A:  add      esp, 0x10                         
0x00597D9D:  test     eax, eax                          
0x00597D9F:  jne      0x597da5                          
0x00597DA1:  xor      eax, eax                          
0x00597DA3:  jmp      0x597dfb                          
0x00597DA5:  mov      ecx, dword ptr [ebp + 0xc]        
0x00597DA8:  fld      dword ptr [ecx]                   
0x00597DAA:  fstp     dword ptr [ebp - 0x10]            
0x00597DAD:  mov      edx, dword ptr [ebp + 0xc]        
0x00597DB0:  fld      dword ptr [edx + 4]               
0x00597DB3:  fstp     dword ptr [ebp - 0xc]             
0x00597DB6:  mov      eax, dword ptr [ebp + 0xc]        
0x00597DB9:  fld      dword ptr [eax + 8]               
0x00597DBC:  fstp     dword ptr [ebp - 8]               
0x00597DBF:  mov      ecx, dword ptr [ebp + 0xc]        
0x00597DC2:  fld      dword ptr [ecx + 0xc]             
0x00597DC5:  fstp     dword ptr [ebp - 4]               
0x00597DC8:  lea      edx, [ebp - 0x10]                 
0x00597DCB:  push     edx                               
0x00597DCC:  mov      eax, dword ptr [ebp + 8]          
0x00597DCF:  push     eax                               
0x00597DD0:  call     0x597e80                          
0x00597DD5:  add      esp, 4                            
0x00597DD8:  fld      dword ptr [ebp + 0x10]            
0x00597DDB:  fstp     dword ptr [esp]                   
0x00597DDE:  mov      ecx, dword ptr [ebp + 0xc]        
0x00597DE1:  push     ecx                               
0x00597DE2:  lea      edx, [ebp - 0x10]                 
0x00597DE5:  push     edx                               
0x00597DE6:  call     0x597c50                          
0x00597DEB:  add      esp, 0xc                          
0x00597DEE:  test     eax, eax                          
0x00597DF0:  jne      0x597df6                          
0x00597DF2:  xor      eax, eax                          
0x00597DF4:  jmp      0x597dfb                          
0x00597DF6:  mov      eax, 1                            
0x00597DFB:  mov      esp, ebp                          
0x00597DFD:  pop      ebp                               
0x00597DFE:  ret                                        
0x00597DFF:  int3                                       
0x00597E00:  push     ebp                               
0x00597E01:  mov      ebp, esp                          
0x00597E03:  sub      esp, 0x1c                         
0x00597E06:  mov      eax, dword ptr [ebp + 8]          
0x00597E09:  fld      dword ptr [eax]                   
0x00597E0B:  mov      ecx, dword ptr [ebp + 0x10]       
0x00597E0E:  fsub     dword ptr [ecx]                   
0x00597E10:  fstp     dword ptr [ebp - 0x18]            
0x00597E13:  mov      edx, dword ptr [ebp + 8]          
0x00597E16:  fld      dword ptr [edx + 4]               
0x00597E19:  mov      eax, dword ptr [ebp + 0x10]       
0x00597E1C:  fsub     dword ptr [eax + 4]               
0x00597E1F:  fstp     dword ptr [ebp - 0x14]            
0x00597E22:  mov      ecx, dword ptr [ebp + 8]          
0x00597E25:  fld      dword ptr [ecx + 8]               
0x00597E28:  mov      edx, dword ptr [ebp + 0x10]       
0x00597E2B:  fsub     dword ptr [edx + 8]               
0x00597E2E:  fstp     dword ptr [ebp - 0x10]            
0x00597E31:  fld      dword ptr [ebp - 0x10]            
0x00597E34:  fmul     dword ptr [ebp - 0x10]            
0x00597E37:  fld      dword ptr [ebp - 0x14]            
0x00597E3A:  fmul     dword ptr [ebp - 0x14]            
0x00597E3D:  fld      dword ptr [ebp - 0x18]            
0x00597E40:  fmul     dword ptr [ebp - 0x18]            
0x00597E43:  faddp    st(1)                             
0x00597E45:  faddp    st(1)                             
0x00597E47:  fstp     dword ptr [ebp - 4]               
0x00597E4A:  fld      dword ptr [ebp + 0xc]             
0x00597E4D:  fadd     dword ptr [ebp + 0x14]            
0x00597E50:  fstp     dword ptr [ebp - 8]               
0x00597E53:  fld      dword ptr [ebp - 8]               
0x00597E56:  fmul     dword ptr [ebp - 8]               
0x00597E59:  fld      dword ptr [ebp - 4]               
0x00597E5C:  fcompp                                     
0x00597E5E:  fnstsw   ax                                
0x00597E60:  test     ah, 0x41                          
0x00597E63:  jp       0x597e6e                          
0x00597E65:  mov      dword ptr [ebp - 0x1c], 1         
0x00597E6C:  jmp      0x597e75                          
0x00597E6E:  mov      dword ptr [ebp - 0x1c], 0         
0x00597E75:  mov      eax, dword ptr [ebp - 0x1c]       
0x00597E78:  mov      esp, ebp                          
0x00597E7A:  pop      ebp                               
0x00597E7B:  ret                                        
0x00597E7C:  int3                                       
0x00597E7D:  int3                                       
0x00597E7E:  int3                                       
0x00597E7F:  int3                                       
0x00597E80:  push     ebp                               
0x00597E81:  mov      ebp, esp                          
0x00597E83:  sub      esp, 0x10                         
0x00597E86:  mov      eax, dword ptr [ebp + 0xc]        
0x00597E89:  mov      dword ptr [ebp - 4], eax          
0x00597E8C:  mov      ecx, dword ptr [ebp + 8]          
0x00597E8F:  mov      dword ptr [ebp - 0xc], ecx        
0x00597E92:  mov      edx, dword ptr [ebp + 8]          
0x00597E95:  add      edx, 0x10                         
0x00597E98:  mov      dword ptr [ebp - 0x10], edx       
0x00597E9B:  mov      dword ptr [ebp - 8], 0            
0x00597EA2:  jmp      0x597ec8                          
0x00597EA4:  mov      eax, dword ptr [ebp - 8]          
0x00597EA7:  add      eax, 1                            
0x00597EAA:  mov      dword ptr [ebp - 8], eax          
0x00597EAD:  mov      ecx, dword ptr [ebp - 4]          
0x00597EB0:  add      ecx, 4                            
0x00597EB3:  mov      dword ptr [ebp - 4], ecx          
0x00597EB6:  mov      edx, dword ptr [ebp - 0xc]        
0x00597EB9:  add      edx, 4                            
0x00597EBC:  mov      dword ptr [ebp - 0xc], edx        
0x00597EBF:  mov      eax, dword ptr [ebp - 0x10]       
0x00597EC2:  add      eax, 4                            
0x00597EC5:  mov      dword ptr [ebp - 0x10], eax       
0x00597EC8:  cmp      dword ptr [ebp - 8], 3            
0x00597ECC:  jge      0x597f0c                          
0x00597ECE:  mov      ecx, dword ptr [ebp - 4]          
0x00597ED1:  fld      dword ptr [ecx]                   
0x00597ED3:  mov      edx, dword ptr [ebp - 0xc]        
0x00597ED6:  fld      dword ptr [edx]                   
0x00597ED8:  fcompp                                     
0x00597EDA:  fnstsw   ax                                
0x00597EDC:  test     ah, 0x41                          
0x00597EDF:  jne      0x597eed                          
0x00597EE1:  mov      eax, dword ptr [ebp - 4]          
0x00597EE4:  mov      ecx, dword ptr [ebp - 0xc]        
0x00597EE7:  fld      dword ptr [ecx]                   
0x00597EE9:  fstp     dword ptr [eax]                   
0x00597EEB:  jmp      0x597f0a                          
0x00597EED:  mov      edx, dword ptr [ebp - 4]          
0x00597EF0:  fld      dword ptr [edx]                   
0x00597EF2:  mov      eax, dword ptr [ebp - 0x10]       
0x00597EF5:  fld      dword ptr [eax]                   
0x00597EF7:  fcompp                                     
0x00597EF9:  fnstsw   ax                                
0x00597EFB:  test     ah, 5                             
0x00597EFE:  jp       0x597f0a                          
0x00597F00:  mov      ecx, dword ptr [ebp - 4]          
0x00597F03:  mov      edx, dword ptr [ebp - 0x10]       
0x00597F06:  fld      dword ptr [edx]                   
0x00597F08:  fstp     dword ptr [ecx]                   
0x00597F0A:  jmp      0x597ea4                          
0x00597F0C:  mov      esp, ebp                          
0x00597F0E:  pop      ebp                               
0x00597F0F:  ret                                        
0x00597F10:  push     ebp                               
0x00597F11:  mov      ebp, esp                          
0x00597F13:  sub      esp, 8                            
0x00597F16:  mov      eax, dword ptr [ebp + 0xc]        
0x00597F19:  fld      dword ptr [eax]                   
0x00597F1B:  fstp     dword ptr [ebp - 8]               
0x00597F1E:  mov      ecx, dword ptr [ebp + 0xc]        
0x00597F21:  fld      dword ptr [ecx + 4]               
0x00597F24:  fstp     dword ptr [ebp - 4]               
0x00597F27:  fld      dword ptr [ebp + 0x14]            
0x00597F2A:  fmul     dword ptr [ebp - 8]               
0x00597F2D:  fld      dword ptr [ebp + 0x10]            
0x00597F30:  fmul     dword ptr [ebp - 4]               
0x00597F33:  faddp    st(1)                             
0x00597F35:  mov      edx, dword ptr [ebp + 8]          
0x00597F38:  fstp     dword ptr [edx]                   
0x00597F3A:  fld      dword ptr [ebp + 0x14]            
0x00597F3D:  fmul     dword ptr [ebp - 4]               
0x00597F40:  fld      dword ptr [ebp + 0x10]            
0x00597F43:  fmul     dword ptr [ebp - 8]               
0x00597F46:  fsubp    st(1)                             
0x00597F48:  mov      eax, dword ptr [ebp + 8]          
0x00597F4B:  fstp     dword ptr [eax + 4]               
0x00597F4E:  mov      esp, ebp                          
0x00597F50:  pop      ebp                               
0x00597F51:  ret                                        
0x00597F52:  int3                                       
0x00597F53:  int3                                       
0x00597F54:  int3                                       
0x00597F55:  int3                                       
0x00597F56:  int3                                       
0x00597F57:  int3                                       
0x00597F58:  int3                                       
0x00597F59:  int3                                       
0x00597F5A:  int3                                       
0x00597F5B:  int3                                       
0x00597F5C:  int3                                       
0x00597F5D:  int3                                       
0x00597F5E:  int3                                       
0x00597F5F:  int3                                       
0x00597F60:  push     ebp                               
0x00597F61:  mov      ebp, esp                          
0x00597F63:  sub      esp, 0xc0                         
0x00597F69:  push     0x40                              
0x00597F6B:  mov      eax, dword ptr [ebp + 0xc]        
0x00597F6E:  push     eax                               
0x00597F6F:  mov      ecx, dword ptr [ebp + 8]          
0x00597F72:  add      ecx, 0x30                         
0x00597F75:  push     ecx                               
0x00597F76:  call     0x497f80                          
0x00597F7B:  add      esp, 0xc                          
0x00597F7E:  mov      edx, dword ptr [ebp + 8]          
0x00597F81:  mov      eax, dword ptr [edx + 0xc4]       
0x00597F87:  and      eax, 0xfffffff7                   
0x00597F8A:  mov      ecx, dword ptr [ebp + 8]          
0x00597F8D:  mov      dword ptr [ecx + 0xc4], eax       
0x00597F93:  mov      edx, dword ptr [ebp + 8]          
0x00597F96:  add      edx, 0x30                         
0x00597F99:  push     edx                               
0x00597F9A:  call     0x5985d0                          
0x00597F9F:  add      esp, 4                            
0x00597FA2:  test     eax, eax                          
0x00597FA4:  je       0x598179                          
0x00597FAA:  push     0x40                              
0x00597FAC:  push     0xb75200                          
0x00597FB1:  mov      eax, dword ptr [ebp + 8]          
0x00597FB4:  add      eax, 0x70                         
0x00597FB7:  push     eax                               
0x00597FB8:  call     0x497f80                          
0x00597FBD:  add      esp, 0xc                          
0x00597FC0:  mov      ecx, dword ptr [ebp + 8]          
0x00597FC3:  fld      dword ptr [ecx + 0x30]            
0x00597FC6:  mov      edx, dword ptr [ebp + 8]          
0x00597FC9:  fld      dword ptr [edx + 0x44]            
0x00597FCC:  fucompp                                    
0x00597FCE:  fnstsw   ax                                
0x00597FD0:  test     ah, 0x44                          
0x00597FD3:  jp       0x598065                          
0x00597FD9:  mov      eax, dword ptr [ebp + 8]          
0x00597FDC:  fld      dword ptr [eax + 0x30]            
0x00597FDF:  mov      ecx, dword ptr [ebp + 8]          
0x00597FE2:  fld      dword ptr [ecx + 0x58]            
0x00597FE5:  fucompp                                    
0x00597FE7:  fnstsw   ax                                
0x00597FE9:  test     ah, 0x44                          
0x00597FEC:  jp       0x598065                          
0x00597FEE:  mov      edx, dword ptr [ebp + 8]          
0x00597FF1:  mov      eax, dword ptr [edx + 0xc4]       
0x00597FF7:  or       eax, 8                            
0x00597FFA:  mov      ecx, dword ptr [ebp + 8]          
