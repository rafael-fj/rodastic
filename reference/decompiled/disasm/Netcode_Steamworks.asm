; =============================================================================
; Steamworks Matchmaking, Lobby & P2P Networking Subsystem (0x006B4000..0x006C4600)
; Range: 0x006B4000 .. 0x006C4600 (67072 bytes)
; =============================================================================

0x006B4000:  mov      ecx, dword ptr [0xb752c0]         
0x006B4006:  mov      edx, dword ptr [ebp + 8]          
0x006B4009:  mov      eax, dword ptr [edx + 0x24]       
0x006B400C:  mov      dword ptr [ecx + 0x30], eax       
0x006B400F:  mov      ecx, dword ptr [ebp + 8]          
0x006B4012:  mov      edx, dword ptr [ecx + 0x34]       
0x006B4015:  mov      eax, dword ptr [0xb752c0]         
0x006B401A:  mov      dword ptr [eax + edx*4 + 0x3c], 1 
0x006B4022:  mov      ecx, dword ptr [ebp + 8]          
0x006B4025:  mov      edx, dword ptr [ecx + 0x34]       
0x006B4028:  mov      eax, dword ptr [0xb752c0]         
0x006B402D:  mov      ecx, dword ptr [ebp + 8]          
0x006B4030:  mov      ecx, dword ptr [ecx + 0x24]       
0x006B4033:  mov      dword ptr [eax + edx*4 + 0x78], ecx
0x006B4037:  mov      edx, dword ptr [ebp + 8]          
0x006B403A:  mov      eax, dword ptr [edx + 0x34]       
0x006B403D:  mov      ecx, dword ptr [0xb752c0]         
0x006B4043:  mov      edx, dword ptr [ebp + 8]          
0x006B4046:  mov      edx, dword ptr [edx + 0x14]       
0x006B4049:  mov      dword ptr [ecx + eax*4 + 0xb4], edx
0x006B4050:  mov      eax, dword ptr [0xb752c0]         
0x006B4055:  mov      dword ptr [eax + 0x34], 1         
0x006B405C:  mov      ecx, dword ptr [ebp + 8]          
0x006B405F:  cmp      dword ptr [ecx + 0x38], 0         
0x006B4063:  je       0x6b4091                          
0x006B4065:  mov      edx, dword ptr [ebp + 8]          
0x006B4068:  mov      eax, dword ptr [edx + 0x38]       
0x006B406B:  imul     eax, eax, 0x30                    
0x006B406E:  mov      ecx, dword ptr [0xb752b8]         
0x006B4074:  lea      edx, [ecx + eax + 0x3bc]          
0x006B407B:  mov      dword ptr [ebp - 8], edx          
0x006B407E:  mov      eax, dword ptr [ebp - 8]          
0x006B4081:  cmp      dword ptr [eax + 0x24], 0         
0x006B4085:  je       0x6b4091                          
0x006B4087:  mov      ecx, dword ptr [ebp - 8]          
0x006B408A:  mov      dword ptr [ecx + 0x28], 1         
0x006B4091:  mov      edx, dword ptr [0xb752c0]         
0x006B4097:  mov      eax, dword ptr [ebp + 8]          
0x006B409A:  mov      ecx, dword ptr [eax + 4]          
0x006B409D:  mov      dword ptr [edx + 4], ecx          
0x006B40A0:  mov      esp, ebp                          
0x006B40A2:  pop      ebp                               
0x006B40A3:  ret                                        
0x006B40A4:  int3                                       
0x006B40A5:  int3                                       
0x006B40A6:  int3                                       
0x006B40A7:  int3                                       
0x006B40A8:  int3                                       
0x006B40A9:  int3                                       
0x006B40AA:  int3                                       
0x006B40AB:  int3                                       
0x006B40AC:  int3                                       
0x006B40AD:  int3                                       
0x006B40AE:  int3                                       
0x006B40AF:  int3                                       
0x006B40B0:  push     ebp                               
0x006B40B1:  mov      ebp, esp                          
0x006B40B3:  mov      eax, dword ptr [ebp + 8]          
0x006B40B6:  mov      dword ptr [eax], 0                
0x006B40BC:  mov      ecx, dword ptr [ebp + 8]          
0x006B40BF:  mov      dword ptr [ecx + 4], 0            
0x006B40C6:  mov      edx, dword ptr [ebp + 8]          
0x006B40C9:  push     edx                               
0x006B40CA:  call     0x6b3e70                          
0x006B40CF:  add      esp, 4                            
0x006B40D2:  mov      eax, dword ptr [0xb752c0]         
0x006B40D7:  mov      dword ptr [eax + 0x34], 1         
0x006B40DE:  pop      ebp                               
0x006B40DF:  ret                                        
0x006B40E0:  push     ebp                               
0x006B40E1:  mov      ebp, esp                          
0x006B40E3:  cmp      dword ptr [0xb752cc], 0           
0x006B40EA:  jne      0x6b40ee                          
0x006B40EC:  jmp      0x6b4143                          
0x006B40EE:  call     0x6a0cf0                          
0x006B40F3:  mov      ecx, dword ptr [0xb752cc]         
0x006B40F9:  mov      dword ptr [ecx + 0x298], eax      
0x006B40FF:  mov      dword ptr [ecx + 0x29c], edx      
0x006B4105:  mov      edx, dword ptr [0xb752cc]         
0x006B410B:  mov      eax, dword ptr [ebp + 8]          
0x006B410E:  mov      dword ptr [edx + 0x2a0], eax      
0x006B4114:  mov      ecx, dword ptr [0xb752cc]         
0x006B411A:  mov      edx, dword ptr [ecx + 0x2a4]      
0x006B4120:  cmp      edx, dword ptr [ebp + 0xc]        
0x006B4123:  je       0x6b4134                          
0x006B4125:  mov      eax, dword ptr [0xb752cc]         
0x006B412A:  mov      dword ptr [eax + 0x2a8], 1        
0x006B4134:  mov      ecx, dword ptr [0xb752cc]         
0x006B413A:  mov      edx, dword ptr [ebp + 0xc]        
0x006B413D:  mov      dword ptr [ecx + 0x2a4], edx      
0x006B4143:  pop      ebp                               
0x006B4144:  ret                                        
0x006B4145:  int3                                       
0x006B4146:  int3                                       
0x006B4147:  int3                                       
0x006B4148:  int3                                       
0x006B4149:  int3                                       
0x006B414A:  int3                                       
0x006B414B:  int3                                       
0x006B414C:  int3                                       
0x006B414D:  int3                                       
0x006B414E:  int3                                       
0x006B414F:  int3                                       
0x006B4150:  push     ebp                               
0x006B4151:  mov      ebp, esp                          
0x006B4153:  push     ecx                               
0x006B4154:  cmp      dword ptr [0xb752cc], 0           
0x006B415B:  jne      0x6b4162                          
0x006B415D:  jmp      0x6b426a                          
0x006B4162:  mov      eax, dword ptr [0xb752cc]         
0x006B4167:  cmp      dword ptr [eax + 0x2a4], 0        
0x006B416E:  jne      0x6b418e                          
0x006B4170:  mov      ecx, dword ptr [0xb752b8]         
0x006B4176:  cmp      dword ptr [ecx + 0x468], 0        
0x006B417D:  je       0x6b4189                          
0x006B417F:  push     3                                 
0x006B4181:  call     0x6b3c10                          
0x006B4186:  add      esp, 4                            
0x006B4189:  jmp      0x6b426a                          
0x006B418E:  mov      edx, dword ptr [0xb752cc]         
0x006B4194:  cmp      dword ptr [edx + 0x2a0], 0        
0x006B419B:  jne      0x6b4212                          
0x006B419D:  mov      eax, dword ptr [0xb752cc]         
0x006B41A2:  cmp      dword ptr [eax + 0x2a8], 0        
0x006B41A9:  je       0x6b41f7                          
0x006B41AB:  mov      ecx, dword ptr [0xb752cc]         
0x006B41B1:  mov      edx, dword ptr [ecx + 0x2a4]      
0x006B41B7:  push     edx                               
0x006B41B8:  call     0x6b3340                          
0x006B41BD:  add      esp, 4                            
0x006B41C0:  mov      ecx, dword ptr [0xb752b8]         
0x006B41C6:  mov      dword ptr [ecx + 0x368], eax      
0x006B41CC:  mov      edx, dword ptr [0xb752b8]         
0x006B41D2:  mov      eax, dword ptr [edx + 0x368]      
0x006B41D8:  push     eax                               
0x006B41D9:  push     2                                 
0x006B41DB:  push     3                                 
0x006B41DD:  call     0x6b3ad0                          
0x006B41E2:  add      esp, 0xc                          
0x006B41E5:  mov      ecx, dword ptr [0xb752cc]         
0x006B41EB:  mov      dword ptr [ecx + 0x2a8], 0        
0x006B41F5:  jmp      0x6b4210                          
0x006B41F7:  mov      edx, dword ptr [0xb752b8]         
0x006B41FD:  mov      eax, dword ptr [edx + 0x368]      
0x006B4203:  push     eax                               
0x006B4204:  push     0                                 
0x006B4206:  push     3                                 
0x006B4208:  call     0x6b3ad0                          
0x006B420D:  add      esp, 0xc                          
0x006B4210:  jmp      0x6b426a                          
0x006B4212:  call     0x6a0cf0                          
0x006B4217:  push     edx                               
0x006B4218:  push     eax                               
0x006B4219:  mov      ecx, dword ptr [0xb752cc]         
0x006B421F:  mov      edx, dword ptr [ecx + 0x29c]      
0x006B4225:  push     edx                               
0x006B4226:  mov      eax, dword ptr [ecx + 0x298]      
0x006B422C:  push     eax                               
0x006B422D:  call     0x6a0dd0                          
0x006B4232:  add      esp, 0x10                         
0x006B4235:  push     edx                               
0x006B4236:  push     eax                               
0x006B4237:  call     0x69a850                          
0x006B423C:  add      esp, 8                            
0x006B423F:  fstp     dword ptr [ebp - 4]               
0x006B4242:  mov      ecx, dword ptr [0xb752cc]         
0x006B4248:  fild     dword ptr [ecx + 0x2a0]           
0x006B424E:  fld      dword ptr [ebp - 4]               
0x006B4251:  fcompp                                     
0x006B4253:  fnstsw   ax                                
0x006B4255:  test     ah, 1                             
0x006B4258:  jne      0x6b426a                          
0x006B425A:  mov      edx, dword ptr [0xb752cc]         
0x006B4260:  mov      dword ptr [edx + 0x2a0], 0        
0x006B426A:  mov      esp, ebp                          
0x006B426C:  pop      ebp                               
0x006B426D:  ret                                        
0x006B426E:  int3                                       
0x006B426F:  int3                                       
0x006B4270:  push     ebp                               
0x006B4271:  mov      ebp, esp                          
0x006B4273:  sub      esp, 8                            
0x006B4276:  cmp      dword ptr [0xb752cc], 0           
0x006B427D:  jne      0x6b4284                          
0x006B427F:  jmp      0x6b437c                          
0x006B4284:  cmp      dword ptr [ebp + 0xc], 0          
0x006B4288:  je       0x6b4294                          
0x006B428A:  mov      eax, dword ptr [0xb752cc]         
0x006B428F:  mov      ecx, dword ptr [ebp + 0xc]        
0x006B4292:  mov      dword ptr [eax], ecx              
0x006B4294:  cmp      dword ptr [ebp + 8], 0            
0x006B4298:  je       0x6b42a6                          
0x006B429A:  mov      edx, dword ptr [0xb752cc]         
0x006B42A0:  mov      eax, dword ptr [ebp + 8]          
0x006B42A3:  mov      dword ptr [edx + 4], eax          
0x006B42A6:  mov      ecx, dword ptr [0xb752cc]         
0x006B42AC:  cmp      dword ptr [ecx], 8                
0x006B42AF:  jne      0x6b42c3                          
0x006B42B1:  mov      edx, dword ptr [0xb752b8]         
0x006B42B7:  mov      dword ptr [edx + 0x274], 1        
0x006B42C1:  jmp      0x6b42d2                          
0x006B42C3:  mov      eax, dword ptr [0xb752b8]         
0x006B42C8:  mov      dword ptr [eax + 0x274], 0        
0x006B42D2:  cmp      dword ptr [ebp + 8], 0xdc         
0x006B42D9:  jne      0x6b42eb                          
0x006B42DB:  mov      ecx, dword ptr [0xb752b8]         
0x006B42E1:  mov      dword ptr [ecx + 0x1214], 0       
0x006B42EB:  lea      edx, [ebp + 0x14]                 
0x006B42EE:  mov      dword ptr [ebp - 4], edx          
0x006B42F1:  cmp      dword ptr [ebp + 0x10], 0         
0x006B42F5:  je       0x6b4375                          
0x006B42F7:  mov      eax, dword ptr [ebp - 4]          
0x006B42FA:  add      eax, 4                            
0x006B42FD:  mov      dword ptr [ebp - 4], eax          
0x006B4300:  mov      ecx, dword ptr [ebp - 4]          
0x006B4303:  mov      edx, dword ptr [ecx - 4]          
0x006B4306:  mov      dword ptr [ebp - 8], edx          
0x006B4309:  cmp      dword ptr [ebp - 8], 0x18         
0x006B430D:  jne      0x6b4349                          
0x006B430F:  mov      dword ptr [ebp - 8], 1            
0x006B4316:  jmp      0x6b4321                          
0x006B4318:  mov      eax, dword ptr [ebp - 8]          
0x006B431B:  add      eax, 1                            
0x006B431E:  mov      dword ptr [ebp - 8], eax          
0x006B4321:  cmp      dword ptr [ebp - 8], 0x17         
0x006B4325:  jge      0x6b4347                          
0x006B4327:  mov      ecx, dword ptr [ebp - 8]          
0x006B432A:  push     ecx                               
0x006B432B:  call     0x6b3c10                          
0x006B4330:  add      esp, 4                            
0x006B4333:  cmp      dword ptr [ebp - 8], 3            
0x006B4337:  jne      0x6b4345                          
0x006B4339:  push     0                                 
0x006B433B:  push     0                                 
0x006B433D:  call     0x6b40e0                          
0x006B4342:  add      esp, 8                            
0x006B4345:  jmp      0x6b4318                          
0x006B4347:  jmp      0x6b4367                          
0x006B4349:  mov      edx, dword ptr [ebp - 8]          
0x006B434C:  push     edx                               
0x006B434D:  call     0x6b3c10                          
0x006B4352:  add      esp, 4                            
0x006B4355:  cmp      dword ptr [ebp - 8], 3            
0x006B4359:  jne      0x6b4367                          
0x006B435B:  push     0                                 
0x006B435D:  push     0                                 
0x006B435F:  call     0x6b40e0                          
0x006B4364:  add      esp, 8                            
0x006B4367:  mov      eax, dword ptr [ebp + 0x10]       
0x006B436A:  sub      eax, 1                            
0x006B436D:  mov      dword ptr [ebp + 0x10], eax       
0x006B4370:  jmp      0x6b42f1                          
0x006B4375:  mov      dword ptr [ebp - 4], 0            
0x006B437C:  mov      esp, ebp                          
0x006B437E:  pop      ebp                               
0x006B437F:  ret                                        
0x006B4380:  push     ebp                               
0x006B4381:  mov      ebp, esp                          
0x006B4383:  cmp      dword ptr [0xb752cc], 0           
0x006B438A:  jne      0x6b438e                          
0x006B438C:  jmp      0x6b4405                          
0x006B438E:  mov      eax, dword ptr [0xb752cc]         
0x006B4393:  cmp      dword ptr [eax + 0xdc], 0         
0x006B439A:  je       0x6b43e5                          
0x006B439C:  mov      ecx, dword ptr [0xb752cc]         
0x006B43A2:  mov      edx, dword ptr [ecx + 0xdc]       
0x006B43A8:  push     edx                               
0x006B43A9:  call     0x593d20                          
0x006B43AE:  add      esp, 4                            
0x006B43B1:  push     0                                 
0x006B43B3:  push     1                                 
0x006B43B5:  push     0                                 
0x006B43B7:  push     0                                 
0x006B43B9:  push     0                                 
0x006B43BB:  push     0                                 
0x006B43BD:  mov      eax, dword ptr [0xb752cc]         
0x006B43C2:  mov      ecx, dword ptr [eax + 0xdc]       
0x006B43C8:  push     ecx                               
0x006B43C9:  call     0x680690                          
0x006B43CE:  add      esp, 0x1c                         
0x006B43D1:  mov      edx, dword ptr [0xb752cc]         
0x006B43D7:  mov      dword ptr [edx + 0xdc], 0         
0x006B43E1:  xor      eax, eax                          
0x006B43E3:  jne      0x6b43b1                          
0x006B43E5:  mov      ecx, dword ptr [0xb752cc]         
0x006B43EB:  mov      dword ptr [ecx + 0xdc], 0         
0x006B43F5:  mov      edx, dword ptr [0xb752cc]         
0x006B43FB:  mov      dword ptr [edx + 0xe0], 0         
0x006B4405:  pop      ebp                               
0x006B4406:  ret                                        
0x006B4407:  int3                                       
0x006B4408:  int3                                       
0x006B4409:  int3                                       
0x006B440A:  int3                                       
0x006B440B:  int3                                       
0x006B440C:  int3                                       
0x006B440D:  int3                                       
0x006B440E:  int3                                       
0x006B440F:  int3                                       
0x006B4410:  push     ebp                               
0x006B4411:  mov      ebp, esp                          
0x006B4413:  sub      esp, 0x24                         
0x006B4416:  cmp      dword ptr [0xb752cc], 0           
0x006B441D:  jne      0x6b4424                          
0x006B441F:  jmp      0x6b451b                          
0x006B4424:  call     0x6b4380                          
0x006B4429:  push     0                                 
0x006B442B:  call     0x680dc0                          
0x006B4430:  add      esp, 4                            
0x006B4433:  mov      dword ptr [ebp - 0x24], eax       
0x006B4436:  mov      eax, dword ptr [0xb01b28]         
0x006B443B:  mov      dword ptr [ebp - 0x20], eax       
0x006B443E:  mov      dword ptr [ebp - 0x1c], 0         
0x006B4445:  mov      ecx, dword ptr [ebp - 0x24]       
0x006B4448:  mov      dword ptr [ebp - 0x18], ecx       
0x006B444B:  mov      dword ptr [ebp - 0x14], 1         
0x006B4452:  xor      edx, edx                          
0x006B4454:  neg      edx                               
0x006B4456:  sbb      edx, edx                          
0x006B4458:  and      edx, 2                            
0x006B445B:  or       edx, dword ptr [ebp - 0x14]       
0x006B445E:  mov      dword ptr [ebp - 0x14], edx       
0x006B4461:  mov      byte ptr [ebp - 0x10], 1          
0x006B4465:  mov      dword ptr [ebp - 0xc], 3          
0x006B446C:  mov      dword ptr [ebp - 8], 0            
0x006B4473:  mov      eax, 1                            
0x006B4478:  or       eax, 0x10                         
0x006B447B:  mov      dword ptr [ebp - 0x14], eax       
0x006B447E:  push     1                                 
0x006B4480:  push     0                                 
0x006B4482:  mov      ecx, dword ptr [ebp - 0x20]       
0x006B4485:  push     ecx                               
0x006B4486:  push     0                                 
0x006B4488:  push     4                                 
0x006B448A:  lea      edx, [ebp - 0x1c]                 
0x006B448D:  push     edx                               
0x006B448E:  push     0xa4                              
0x006B4493:  call     0x67ff60                          
0x006B4498:  add      esp, 0x1c                         
0x006B449B:  mov      dword ptr [ebp - 4], eax          
0x006B449E:  cmp      dword ptr [ebp - 4], 0            
0x006B44A2:  je       0x6b44fd                          
0x006B44A4:  xor      eax, eax                          
0x006B44A6:  and      eax, 0xff                         
0x006B44AB:  je       0x6b44c2                          
0x006B44AD:  push     0xa4                              
0x006B44B2:  push     0                                 
0x006B44B4:  mov      ecx, dword ptr [ebp - 4]          
0x006B44B7:  push     ecx                               
0x006B44B8:  call     0x8eb080                          
0x006B44BD:  add      esp, 0xc                          
0x006B44C0:  jmp      0x6b44fd                          
0x006B44C2:  mov      edx, 0xa4                         
0x006B44C7:  cmp      edx, 0xc00                        
0x006B44CD:  jg       0x6b44ea                          
0x006B44CF:  mov      eax, dword ptr [ebp - 4]          
0x006B44D2:  and      eax, 0x7f                         
0x006B44D5:  je       0x6b44ea                          
0x006B44D7:  push     0xa4                              
0x006B44DC:  mov      ecx, dword ptr [ebp - 4]          
0x006B44DF:  push     ecx                               
0x006B44E0:  call     0x6a9700                          
0x006B44E5:  add      esp, 8                            
0x006B44E8:  jmp      0x6b44fd                          
0x006B44EA:  push     0xa4                              
0x006B44EF:  push     0                                 
0x006B44F1:  mov      edx, dword ptr [ebp - 4]          
0x006B44F4:  push     edx                               
0x006B44F5:  call     0x8eb080                          
0x006B44FA:  add      esp, 0xc                          
0x006B44FD:  mov      eax, dword ptr [0xb752cc]         
0x006B4502:  mov      ecx, dword ptr [ebp - 4]          
0x006B4505:  mov      dword ptr [eax + 0xdc], ecx       
0x006B450B:  mov      edx, dword ptr [0xb752cc]         
0x006B4511:  mov      dword ptr [edx + 0xe4], 0         
0x006B451B:  mov      esp, ebp                          
0x006B451D:  pop      ebp                               
0x006B451E:  ret                                        
0x006B451F:  int3                                       
0x006B4520:  push     ebp                               
0x006B4521:  mov      ebp, esp                          
0x006B4523:  mov      eax, dword ptr [0xb752cc]         
0x006B4528:  mov      ecx, dword ptr [eax + 0x174]      
0x006B452E:  mov      dword ptr [0xb01c08], ecx         
0x006B4534:  mov      edx, dword ptr [0xb752cc]         
0x006B453A:  mov      eax, dword ptr [edx + 0x180]      
0x006B4540:  mov      dword ptr [0xb01c0c], eax         
0x006B4545:  push     0xb01bf0                          
0x006B454A:  call     0x6b40b0                          
0x006B454F:  add      esp, 4                            
0x006B4552:  mov      ecx, dword ptr [0xb752cc]         
0x006B4558:  mov      edx, dword ptr [0xb752cc]         
0x006B455E:  mov      eax, dword ptr [edx + 4]          
0x006B4561:  mov      dword ptr [ecx + 0x28c], eax      
0x006B4567:  mov      ecx, dword ptr [0xb752cc]         
0x006B456D:  cmp      dword ptr [ecx + 4], 2            
0x006B4571:  je       0x6b4583                          
0x006B4573:  push     0x18                              
0x006B4575:  push     1                                 
0x006B4577:  push     0                                 
0x006B4579:  push     2                                 
0x006B457B:  call     0x6b4270                          
0x006B4580:  add      esp, 0x10                         
0x006B4583:  mov      edx, dword ptr [0xb752cc]         
0x006B4589:  mov      eax, dword ptr [edx + 0x170]      
0x006B458F:  push     eax                               
0x006B4590:  call     0x6b3340                          
0x006B4595:  add      esp, 4                            
0x006B4598:  mov      ecx, dword ptr [0xb752b8]         
0x006B459E:  mov      dword ptr [ecx + 0x364], eax      
0x006B45A4:  mov      edx, dword ptr [0xb752b8]         
0x006B45AA:  mov      eax, dword ptr [edx + 0x364]      
0x006B45B0:  push     eax                               
0x006B45B1:  push     2                                 
0x006B45B3:  push     2                                 
0x006B45B5:  call     0x6b3ad0                          
0x006B45BA:  add      esp, 0xc                          
0x006B45BD:  pop      ebp                               
0x006B45BE:  ret                                        
0x006B45BF:  int3                                       
0x006B45C0:  push     ebp                               
0x006B45C1:  mov      ebp, esp                          
0x006B45C3:  mov      eax, dword ptr [0xb752cc]         
0x006B45C8:  mov      ecx, dword ptr [ebp + 8]          
0x006B45CB:  mov      dword ptr [eax + 0x174], ecx      
0x006B45D1:  mov      edx, dword ptr [0xb752cc]         
0x006B45D7:  mov      eax, dword ptr [ebp + 0xc]        
0x006B45DA:  mov      dword ptr [edx + 0x178], eax      
0x006B45E0:  mov      ecx, dword ptr [0xb752cc]         
0x006B45E6:  mov      edx, dword ptr [ebp + 0x10]       
0x006B45E9:  mov      dword ptr [ecx + 0x17c], edx      
0x006B45EF:  mov      eax, dword ptr [0xb752cc]         
0x006B45F4:  mov      ecx, dword ptr [ebp + 0x14]       
0x006B45F7:  mov      dword ptr [eax + 0x180], ecx      
0x006B45FD:  mov      edx, dword ptr [0xb752cc]         
0x006B4603:  mov      eax, dword ptr [ebp + 0x18]       
0x006B4606:  mov      dword ptr [edx + 0x184], eax      
0x006B460C:  mov      ecx, dword ptr [0xb752cc]         
0x006B4612:  mov      edx, dword ptr [ebp + 0x1c]       
0x006B4615:  mov      dword ptr [ecx + 0x188], edx      
0x006B461B:  call     0x6b3de0                          
0x006B4620:  call     0x6b4520                          
0x006B4625:  call     0x6b4640                          
0x006B462A:  mov      eax, dword ptr [0xb752b8]         
0x006B462F:  mov      dword ptr [eax + 0x1214], 1       
0x006B4639:  pop      ebp                               
0x006B463A:  ret                                        
0x006B463B:  int3                                       
0x006B463C:  int3                                       
0x006B463D:  int3                                       
0x006B463E:  int3                                       
0x006B463F:  int3                                       
0x006B4640:  push     ebp                               
0x006B4641:  mov      ebp, esp                          
0x006B4643:  cmp      dword ptr [0xb752a8], 0           
0x006B464A:  jne      0x6b468d                          
0x006B464C:  mov      eax, dword ptr [0xb752cc]         
0x006B4651:  cmp      dword ptr [eax + 0x170], 0        
0x006B4658:  je       0x6b467d                          
0x006B465A:  mov      ecx, dword ptr [0xb752cc]         
0x006B4660:  mov      edx, dword ptr [ecx + 0x170]      
0x006B4666:  push     edx                               
0x006B4667:  call     0x6b3340                          
0x006B466C:  add      esp, 4                            
0x006B466F:  mov      ecx, dword ptr [0xb752b8]         
0x006B4675:  mov      dword ptr [ecx + 0x364], eax      
0x006B467B:  jmp      0x6b468d                          
0x006B467D:  mov      edx, dword ptr [0xb752b8]         
0x006B4683:  mov      dword ptr [edx + 0x364], 0        
0x006B468D:  pop      ebp                               
0x006B468E:  ret                                        
0x006B468F:  int3                                       
0x006B4690:  push     ebp                               
0x006B4691:  mov      ebp, esp                          
0x006B4693:  xor      eax, eax                          
0x006B4695:  jne      0x6b4693                          
0x006B4697:  mov      dword ptr [0xb752a8], 0           
0x006B46A1:  mov      ecx, dword ptr [0xb752cc]         
0x006B46A7:  mov      edx, dword ptr [ebp + 8]          
0x006B46AA:  mov      dword ptr [ecx + 0x170], edx      
0x006B46B0:  mov      eax, dword ptr [0xb752cc]         
0x006B46B5:  mov      ecx, dword ptr [ebp + 0xc]        
0x006B46B8:  mov      dword ptr [eax + 0x174], ecx      
0x006B46BE:  mov      edx, dword ptr [0xb752cc]         
0x006B46C4:  mov      eax, dword ptr [ebp + 0x10]       
0x006B46C7:  mov      dword ptr [edx + 0x178], eax      
0x006B46CD:  mov      ecx, dword ptr [0xb752cc]         
0x006B46D3:  mov      edx, dword ptr [ebp + 0x14]       
0x006B46D6:  mov      dword ptr [ecx + 0x17c], edx      
0x006B46DC:  mov      eax, dword ptr [0xb752cc]         
0x006B46E1:  mov      ecx, dword ptr [ebp + 0x18]       
0x006B46E4:  mov      dword ptr [eax + 0x180], ecx      
0x006B46EA:  mov      edx, dword ptr [0xb752cc]         
0x006B46F0:  mov      eax, dword ptr [ebp + 0x1c]       
0x006B46F3:  mov      dword ptr [edx + 0x184], eax      
0x006B46F9:  mov      ecx, dword ptr [0xb752cc]         
0x006B46FF:  mov      edx, dword ptr [ebp + 0x20]       
0x006B4702:  mov      dword ptr [ecx + 0x188], edx      
0x006B4708:  push     0                                 
0x006B470A:  push     0                                 
0x006B470C:  call     0x6b40e0                          
0x006B4711:  add      esp, 8                            
0x006B4714:  mov      eax, dword ptr [0xb752cc]         
0x006B4719:  mov      dword ptr [eax + 0x290], 0        
0x006B4723:  cmp      dword ptr [ebp + 0x24], 0         
0x006B4727:  jne      0x6b472b                          
0x006B4729:  jmp      0x6b474a                          
0x006B472B:  call     0x6b3de0                          
0x006B4730:  call     0x6b4520                          
0x006B4735:  call     0x6b4640                          
0x006B473A:  mov      ecx, dword ptr [0xb752b8]         
0x006B4740:  mov      dword ptr [ecx + 0x1214], 1       
0x006B474A:  pop      ebp                               
0x006B474B:  ret                                        
0x006B474C:  int3                                       
0x006B474D:  int3                                       
0x006B474E:  int3                                       
0x006B474F:  int3                                       
0x006B4750:  push     ebp                               
0x006B4751:  mov      ebp, esp                          
0x006B4753:  cmp      dword ptr [ebp + 8], 0            
0x006B4757:  jne      0x6b4763                          
0x006B4759:  push     0                                 
0x006B475B:  call     0x6b4870                          
0x006B4760:  add      esp, 4                            
0x006B4763:  mov      eax, dword ptr [ebp + 8]          
0x006B4766:  mov      dword ptr [0xb752d4], eax         
0x006B476B:  mov      ecx, dword ptr [ebp + 0xc]        
0x006B476E:  mov      dword ptr [0xb752d8], ecx         
0x006B4774:  pop      ebp                               
0x006B4775:  ret                                        
0x006B4776:  int3                                       
0x006B4777:  int3                                       
0x006B4778:  int3                                       
0x006B4779:  int3                                       
0x006B477A:  int3                                       
0x006B477B:  int3                                       
0x006B477C:  int3                                       
0x006B477D:  int3                                       
0x006B477E:  int3                                       
0x006B477F:  int3                                       
0x006B4780:  push     ebp                               
0x006B4781:  mov      ebp, esp                          
0x006B4783:  push     0                                 
0x006B4785:  call     0x6b4870                          
0x006B478A:  add      esp, 4                            
0x006B478D:  mov      dword ptr [0xb752d4], 0           
0x006B4797:  mov      dword ptr [0xb752d8], 0           
0x006B47A1:  pop      ebp                               
0x006B47A2:  ret                                        
0x006B47A3:  int3                                       
0x006B47A4:  int3                                       
0x006B47A5:  int3                                       
0x006B47A6:  int3                                       
0x006B47A7:  int3                                       
0x006B47A8:  int3                                       
0x006B47A9:  int3                                       
0x006B47AA:  int3                                       
0x006B47AB:  int3                                       
0x006B47AC:  int3                                       
0x006B47AD:  int3                                       
0x006B47AE:  int3                                       
0x006B47AF:  int3                                       
0x006B47B0:  push     ebp                               
0x006B47B1:  mov      ebp, esp                          
0x006B47B3:  cmp      dword ptr [0xb752d4], 0           
0x006B47BA:  jne      0x6b47be                          
0x006B47BC:  jmp      0x6b47d9                          
0x006B47BE:  mov      eax, dword ptr [0xb752d8]         
0x006B47C3:  push     eax                               
0x006B47C4:  mov      ecx, dword ptr [ebp + 0x10]       
0x006B47C7:  push     ecx                               
0x006B47C8:  mov      edx, dword ptr [ebp + 0xc]        
0x006B47CB:  push     edx                               
0x006B47CC:  mov      eax, dword ptr [ebp + 8]          
0x006B47CF:  push     eax                               
0x006B47D0:  call     dword ptr [0xb752d4]              
0x006B47D6:  add      esp, 0x10                         
0x006B47D9:  pop      ebp                               
0x006B47DA:  ret                                        
0x006B47DB:  int3                                       
0x006B47DC:  int3                                       
0x006B47DD:  int3                                       
0x006B47DE:  int3                                       
0x006B47DF:  int3                                       
0x006B47E0:  push     ebp                               
0x006B47E1:  mov      ebp, esp                          
0x006B47E3:  push     ecx                               
0x006B47E4:  mov      dword ptr [ebp - 4], 0            
0x006B47EB:  mov      eax, dword ptr [0xb752ac]         
0x006B47F0:  and      eax, 1                            
0x006B47F3:  je       0x6b47fa                          
0x006B47F5:  mov      eax, dword ptr [ebp - 4]          
0x006B47F8:  jmp      0x6b4804                          
0x006B47FA:  mov      dword ptr [ebp - 4], 1            
0x006B4801:  mov      eax, dword ptr [ebp - 4]          
0x006B4804:  mov      esp, ebp                          
0x006B4806:  pop      ebp                               
0x006B4807:  ret                                        
0x006B4808:  int3                                       
0x006B4809:  int3                                       
0x006B480A:  int3                                       
0x006B480B:  int3                                       
0x006B480C:  int3                                       
0x006B480D:  int3                                       
0x006B480E:  int3                                       
0x006B480F:  int3                                       
0x006B4810:  push     ebp                               
0x006B4811:  mov      ebp, esp                          
0x006B4813:  push     ecx                               
0x006B4814:  mov      dword ptr [ebp - 4], 0            
0x006B481B:  mov      eax, dword ptr [0xb752ac]         
0x006B4820:  and      eax, 2                            
0x006B4823:  je       0x6b482a                          
0x006B4825:  mov      eax, dword ptr [ebp - 4]          
0x006B4828:  jmp      0x6b4834                          
0x006B482A:  mov      dword ptr [ebp - 4], 1            
0x006B4831:  mov      eax, dword ptr [ebp - 4]          
0x006B4834:  mov      esp, ebp                          
0x006B4836:  pop      ebp                               
0x006B4837:  ret                                        
0x006B4838:  int3                                       
0x006B4839:  int3                                       
0x006B483A:  int3                                       
0x006B483B:  int3                                       
0x006B483C:  int3                                       
0x006B483D:  int3                                       
0x006B483E:  int3                                       
0x006B483F:  int3                                       
0x006B4840:  push     ebp                               
0x006B4841:  mov      ebp, esp                          
0x006B4843:  push     ecx                               
0x006B4844:  mov      dword ptr [ebp - 4], 0            
0x006B484B:  mov      eax, dword ptr [0xb752ac]         
0x006B4850:  and      eax, 4                            
0x006B4853:  je       0x6b485a                          
0x006B4855:  mov      eax, dword ptr [ebp - 4]          
0x006B4858:  jmp      0x6b4864                          
0x006B485A:  mov      dword ptr [ebp - 4], 1            
0x006B4861:  mov      eax, dword ptr [ebp - 4]          
0x006B4864:  mov      esp, ebp                          
0x006B4866:  pop      ebp                               
0x006B4867:  ret                                        
0x006B4868:  int3                                       
0x006B4869:  int3                                       
0x006B486A:  int3                                       
0x006B486B:  int3                                       
0x006B486C:  int3                                       
0x006B486D:  int3                                       
0x006B486E:  int3                                       
0x006B486F:  int3                                       
0x006B4870:  push     ebp                               
0x006B4871:  mov      ebp, esp                          
0x006B4873:  cmp      dword ptr [ebp + 8], 0            
0x006B4877:  jne      0x6b4885                          
0x006B4879:  mov      dword ptr [0xb752dc], 0           
0x006B4883:  jmp      0x6b4893                          
0x006B4885:  xor      eax, eax                          
0x006B4887:  jne      0x6b4885                          
0x006B4889:  mov      dword ptr [0xb752dc], 1           
0x006B4893:  pop      ebp                               
0x006B4894:  ret                                        
0x006B4895:  int3                                       
0x006B4896:  int3                                       
0x006B4897:  int3                                       
0x006B4898:  int3                                       
0x006B4899:  int3                                       
0x006B489A:  int3                                       
0x006B489B:  int3                                       
0x006B489C:  int3                                       
0x006B489D:  int3                                       
0x006B489E:  int3                                       
0x006B489F:  int3                                       
0x006B48A0:  push     ebp                               
0x006B48A1:  mov      ebp, esp                          
0x006B48A3:  sub      esp, 0x94                         
0x006B48A9:  mov      eax, dword ptr [0xb089c8]         
0x006B48AE:  xor      eax, ebp                          
0x006B48B0:  mov      dword ptr [ebp - 4], eax          
0x006B48B3:  cmp      dword ptr [ebp + 0xc], 0          
0x006B48B7:  je       0x6b48c1                          
0x006B48B9:  xor      eax, eax                          
0x006B48BB:  mov      ecx, dword ptr [ebp + 0xc]        
0x006B48BE:  mov      word ptr [ecx], ax                
0x006B48C1:  cmp      dword ptr [ebp + 0x10], 0         
0x006B48C5:  je       0x6b48cf                          
0x006B48C7:  xor      edx, edx                          
0x006B48C9:  mov      eax, dword ptr [ebp + 0x10]       
0x006B48CC:  mov      word ptr [eax], dx                
0x006B48CF:  cmp      dword ptr [0xb752cc], 0           
0x006B48D6:  je       0x6b4980                          
0x006B48DC:  mov      ecx, dword ptr [ebp + 8]          
0x006B48DF:  push     ecx                               
0x006B48E0:  call     0x6c3cb0                          
0x006B48E5:  add      esp, 4                            
0x006B48E8:  mov      dword ptr [ebp - 0x8c], eax       
0x006B48EE:  cmp      dword ptr [ebp - 0x8c], 0         
0x006B48F5:  je       0x6b4911                          
0x006B48F7:  push     0x40                              
0x006B48F9:  mov      edx, dword ptr [ebp - 0x8c]       
0x006B48FF:  push     edx                               
0x006B4900:  lea      eax, [ebp - 0x88]                 
0x006B4906:  push     eax                               
0x006B4907:  call     0x6918a0                          
0x006B490C:  add      esp, 0xc                          
0x006B490F:  jmp      0x6b491a                          
0x006B4911:  xor      ecx, ecx                          
0x006B4913:  mov      word ptr [ebp - 0x88], cx         
0x006B491A:  cmp      dword ptr [ebp + 0xc], 0          
0x006B491E:  je       0x6b494d                          
0x006B4920:  lea      edx, [ebp - 0x88]                 
0x006B4926:  test     edx, edx                          
0x006B4928:  je       0x6b4945                          
0x006B492A:  mov      eax, dword ptr [ebp + 0x14]       
0x006B492D:  mov      ecx, dword ptr [eax]              
0x006B492F:  push     ecx                               
0x006B4930:  lea      edx, [ebp - 0x88]                 
0x006B4936:  push     edx                               
0x006B4937:  mov      eax, dword ptr [ebp + 0xc]        
0x006B493A:  push     eax                               
0x006B493B:  call     0x691a80                          
0x006B4940:  add      esp, 0xc                          
0x006B4943:  jmp      0x6b494d                          
0x006B4945:  xor      ecx, ecx                          
0x006B4947:  mov      edx, dword ptr [ebp + 0xc]        
0x006B494A:  mov      word ptr [edx], cx                
0x006B494D:  cmp      dword ptr [ebp + 0x10], 0         
0x006B4951:  je       0x6b4980                          
0x006B4953:  lea      eax, [ebp - 0x88]                 
0x006B4959:  test     eax, eax                          
0x006B495B:  je       0x6b4978                          
0x006B495D:  mov      ecx, dword ptr [ebp + 0x18]       
0x006B4960:  mov      edx, dword ptr [ecx]              
0x006B4962:  push     edx                               
0x006B4963:  lea      eax, [ebp - 0x88]                 
0x006B4969:  push     eax                               
0x006B496A:  mov      ecx, dword ptr [ebp + 0x10]       
0x006B496D:  push     ecx                               
0x006B496E:  call     0x691a80                          
0x006B4973:  add      esp, 0xc                          
0x006B4976:  jmp      0x6b4980                          
0x006B4978:  xor      edx, edx                          
0x006B497A:  mov      eax, dword ptr [ebp + 0x10]       
0x006B497D:  mov      word ptr [eax], dx                
0x006B4980:  cmp      dword ptr [ebp + 0xc], 0          
0x006B4984:  jne      0x6b4992                          
0x006B4986:  mov      dword ptr [ebp - 0x90], 0         
0x006B4990:  jmp      0x6b49a4                          
0x006B4992:  mov      ecx, dword ptr [ebp + 0xc]        
0x006B4995:  push     ecx                               
0x006B4996:  call     0x6919f0                          
0x006B499B:  add      esp, 4                            
0x006B499E:  mov      dword ptr [ebp - 0x90], eax       
0x006B49A4:  mov      edx, dword ptr [ebp + 0x14]       
0x006B49A7:  mov      eax, dword ptr [ebp - 0x90]       
0x006B49AD:  mov      dword ptr [edx], eax              
0x006B49AF:  cmp      dword ptr [ebp + 0x10], 0         
0x006B49B3:  jne      0x6b49c1                          
0x006B49B5:  mov      dword ptr [ebp - 0x94], 0         
0x006B49BF:  jmp      0x6b49d3                          
0x006B49C1:  mov      ecx, dword ptr [ebp + 0x10]       
0x006B49C4:  push     ecx                               
0x006B49C5:  call     0x6919f0                          
0x006B49CA:  add      esp, 4                            
0x006B49CD:  mov      dword ptr [ebp - 0x94], eax       
0x006B49D3:  mov      edx, dword ptr [ebp + 0x18]       
0x006B49D6:  mov      eax, dword ptr [ebp - 0x94]       
0x006B49DC:  mov      dword ptr [edx], eax              
0x006B49DE:  mov      ecx, dword ptr [ebp - 4]          
0x006B49E1:  xor      ecx, ebp                          
0x006B49E3:  call     0x8eac64                          
0x006B49E8:  mov      esp, ebp                          
0x006B49EA:  pop      ebp                               
0x006B49EB:  ret                                        
0x006B49EC:  int3                                       
0x006B49ED:  int3                                       
0x006B49EE:  int3                                       
0x006B49EF:  int3                                       
0x006B49F0:  push     ebp                               
0x006B49F1:  mov      ebp, esp                          
0x006B49F3:  sub      esp, 8                            
0x006B49F6:  cmp      dword ptr [ebp + 0xc], 0          
0x006B49FA:  je       0x6b4a04                          
0x006B49FC:  xor      eax, eax                          
0x006B49FE:  mov      ecx, dword ptr [ebp + 0xc]        
0x006B4A01:  mov      word ptr [ecx], ax                
0x006B4A04:  cmp      dword ptr [ebp + 0x10], 0         
0x006B4A08:  je       0x6b4a12                          
0x006B4A0A:  xor      edx, edx                          
0x006B4A0C:  mov      eax, dword ptr [ebp + 0x10]       
0x006B4A0F:  mov      word ptr [eax], dx                
0x006B4A12:  cmp      dword ptr [ebp + 8], 0            
0x006B4A16:  je       0x6b4a56                          
0x006B4A18:  cmp      dword ptr [ebp + 0xc], 0          
0x006B4A1C:  je       0x6b4a37                          
0x006B4A1E:  mov      ecx, dword ptr [ebp + 0x14]       
0x006B4A21:  mov      edx, dword ptr [ecx]              
0x006B4A23:  push     edx                               
0x006B4A24:  mov      eax, dword ptr [ebp + 8]          
0x006B4A27:  add      eax, 0x14                         
0x006B4A2A:  push     eax                               
0x006B4A2B:  mov      ecx, dword ptr [ebp + 0xc]        
0x006B4A2E:  push     ecx                               
0x006B4A2F:  call     0x691a80                          
0x006B4A34:  add      esp, 0xc                          
0x006B4A37:  cmp      dword ptr [ebp + 0x10], 0         
0x006B4A3B:  je       0x6b4a56                          
0x006B4A3D:  mov      edx, dword ptr [ebp + 0x18]       
0x006B4A40:  mov      eax, dword ptr [edx]              
0x006B4A42:  push     eax                               
0x006B4A43:  mov      ecx, dword ptr [ebp + 8]          
0x006B4A46:  add      ecx, 0x14                         
0x006B4A49:  push     ecx                               
0x006B4A4A:  mov      edx, dword ptr [ebp + 0x10]       
0x006B4A4D:  push     edx                               
0x006B4A4E:  call     0x691a80                          
0x006B4A53:  add      esp, 0xc                          
0x006B4A56:  cmp      dword ptr [ebp + 0xc], 0          
0x006B4A5A:  jne      0x6b4a65                          
0x006B4A5C:  mov      dword ptr [ebp - 4], 0            
0x006B4A63:  jmp      0x6b4a74                          
0x006B4A65:  mov      eax, dword ptr [ebp + 0xc]        
0x006B4A68:  push     eax                               
0x006B4A69:  call     0x6919f0                          
0x006B4A6E:  add      esp, 4                            
0x006B4A71:  mov      dword ptr [ebp - 4], eax          
0x006B4A74:  mov      ecx, dword ptr [ebp + 0x14]       
0x006B4A77:  mov      edx, dword ptr [ebp - 4]          
0x006B4A7A:  mov      dword ptr [ecx], edx              
0x006B4A7C:  cmp      dword ptr [ebp + 0x10], 0         
0x006B4A80:  jne      0x6b4a8b                          
0x006B4A82:  mov      dword ptr [ebp - 8], 0            
0x006B4A89:  jmp      0x6b4a9a                          
0x006B4A8B:  mov      eax, dword ptr [ebp + 0x10]       
0x006B4A8E:  push     eax                               
0x006B4A8F:  call     0x6919f0                          
0x006B4A94:  add      esp, 4                            
0x006B4A97:  mov      dword ptr [ebp - 8], eax          
0x006B4A9A:  mov      ecx, dword ptr [ebp + 0x18]       
0x006B4A9D:  mov      edx, dword ptr [ebp - 8]          
0x006B4AA0:  mov      dword ptr [ecx], edx              
0x006B4AA2:  mov      esp, ebp                          
0x006B4AA4:  pop      ebp                               
0x006B4AA5:  ret                                        
0x006B4AA6:  int3                                       
0x006B4AA7:  int3                                       
0x006B4AA8:  int3                                       
0x006B4AA9:  int3                                       
0x006B4AAA:  int3                                       
0x006B4AAB:  int3                                       
0x006B4AAC:  int3                                       
0x006B4AAD:  int3                                       
0x006B4AAE:  int3                                       
0x006B4AAF:  int3                                       
0x006B4AB0:  push     ebp                               
0x006B4AB1:  mov      ebp, esp                          
0x006B4AB3:  push     0                                 
0x006B4AB5:  push     0x10                              
0x006B4AB7:  mov      eax, dword ptr [ebp + 8]          
0x006B4ABA:  push     eax                               
0x006B4ABB:  call     0x680e00                          
0x006B4AC0:  add      esp, 0xc                          
0x006B4AC3:  pop      ebp                               
0x006B4AC4:  ret                                        
0x006B4AC5:  int3                                       
0x006B4AC6:  int3                                       
0x006B4AC7:  int3                                       
0x006B4AC8:  int3                                       
0x006B4AC9:  int3                                       
0x006B4ACA:  int3                                       
0x006B4ACB:  int3                                       
0x006B4ACC:  int3                                       
0x006B4ACD:  int3                                       
0x006B4ACE:  int3                                       
0x006B4ACF:  int3                                       
0x006B4AD0:  push     ebp                               
0x006B4AD1:  mov      ebp, esp                          
0x006B4AD3:  cmp      dword ptr [0xb752cc], 0           
0x006B4ADA:  jne      0x6b4ae0                          
0x006B4ADC:  xor      eax, eax                          
0x006B4ADE:  jmp      0x6b4af2                          
0x006B4AE0:  cmp      dword ptr [0xb752e0], 0           
0x006B4AE7:  jne      0x6b4aed                          
0x006B4AE9:  xor      eax, eax                          
0x006B4AEB:  jmp      0x6b4af2                          
0x006B4AED:  mov      eax, 1                            
0x006B4AF2:  pop      ebp                               
0x006B4AF3:  ret                                        
0x006B4AF4:  int3                                       
0x006B4AF5:  int3                                       
0x006B4AF6:  int3                                       
0x006B4AF7:  int3                                       
0x006B4AF8:  int3                                       
0x006B4AF9:  int3                                       
0x006B4AFA:  int3                                       
0x006B4AFB:  int3                                       
0x006B4AFC:  int3                                       
0x006B4AFD:  int3                                       
0x006B4AFE:  int3                                       
0x006B4AFF:  int3                                       
0x006B4B00:  push     ebp                               
0x006B4B01:  mov      ebp, esp                          
0x006B4B03:  push     esi                               
0x006B4B04:  cmp      dword ptr [0xb752cc], 0           
0x006B4B0B:  je       0x6b4b1b                          
0x006B4B0D:  mov      eax, dword ptr [0xb752cc]         
0x006B4B12:  cmp      dword ptr [eax + 0xdc], 0         
0x006B4B19:  jne      0x6b4b20                          
0x006B4B1B:  jmp      0x6b4ba1                          
0x006B4B20:  cmp      dword ptr [ebp + 8], 0x10         
0x006B4B24:  jl       0x6b4b28                          
0x006B4B26:  jmp      0x6b4ba1                          
0x006B4B28:  mov      ecx, dword ptr [ebp + 8]          
0x006B4B2B:  imul     ecx, ecx, 0x124                   
0x006B4B31:  mov      edx, dword ptr [0xb752c8]         
0x006B4B37:  cmp      dword ptr [edx + ecx + 0x2c0], 0  
0x006B4B3F:  jne      0x6b4b43                          
0x006B4B41:  jmp      0x6b4ba1                          
0x006B4B43:  mov      eax, dword ptr [0xb752cc]         
0x006B4B48:  cmp      dword ptr [eax + 0xe0], 0         
0x006B4B4F:  jne      0x6b4b53                          
0x006B4B51:  jmp      0x6b4ba1                          
0x006B4B53:  mov      ecx, dword ptr [ebp + 8]          
0x006B4B56:  imul     ecx, ecx, 0x124                   
0x006B4B5C:  mov      edx, dword ptr [0xb752c8]         
0x006B4B62:  movzx    esi, byte ptr [edx + ecx + 0x2b8] 
0x006B4B6A:  mov      eax, dword ptr [0xb752c8]         
0x006B4B6F:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B4B75:  push     ecx                               
0x006B4B76:  call     0x58d200                          
0x006B4B7B:  add      esp, 4                            
0x006B4B7E:  movzx    edx, al                           
0x006B4B81:  cmp      esi, edx                          
0x006B4B83:  je       0x6b4b87                          
0x006B4B85:  jmp      0x6b4ba1                          
0x006B4B87:  mov      eax, dword ptr [ebp + 8]          
0x006B4B8A:  imul     eax, eax, 0x124                   
0x006B4B90:  mov      ecx, dword ptr [0xb752c8]         
0x006B4B96:  mov      dword ptr [ecx + eax + 0x2bc], 1  
0x006B4BA1:  pop      esi                               
0x006B4BA2:  pop      ebp                               
0x006B4BA3:  ret                                        
0x006B4BA4:  int3                                       
0x006B4BA5:  int3                                       
0x006B4BA6:  int3                                       
0x006B4BA7:  int3                                       
0x006B4BA8:  int3                                       
0x006B4BA9:  int3                                       
0x006B4BAA:  int3                                       
0x006B4BAB:  int3                                       
0x006B4BAC:  int3                                       
0x006B4BAD:  int3                                       
0x006B4BAE:  int3                                       
0x006B4BAF:  int3                                       
0x006B4BB0:  push     ebp                               
0x006B4BB1:  mov      ebp, esp                          
0x006B4BB3:  push     esi                               
0x006B4BB4:  cmp      dword ptr [0xb752cc], 0           
0x006B4BBB:  je       0x6b4bcb                          
0x006B4BBD:  mov      eax, dword ptr [0xb752cc]         
0x006B4BC2:  cmp      dword ptr [eax + 0xdc], 0         
0x006B4BC9:  jne      0x6b4bd0                          
0x006B4BCB:  jmp      0x6b4c8d                          
0x006B4BD0:  cmp      dword ptr [ebp + 8], 0x10         
0x006B4BD4:  jl       0x6b4bdb                          
0x006B4BD6:  jmp      0x6b4c8d                          
0x006B4BDB:  mov      ecx, dword ptr [ebp + 8]          
0x006B4BDE:  imul     ecx, ecx, 0x124                   
0x006B4BE4:  mov      edx, dword ptr [0xb752c8]         
0x006B4BEA:  cmp      dword ptr [edx + ecx + 0x2c0], 0  
0x006B4BF2:  jne      0x6b4bf9                          
0x006B4BF4:  jmp      0x6b4c8d                          
0x006B4BF9:  mov      eax, dword ptr [ebp + 8]          
0x006B4BFC:  imul     eax, eax, 0x124                   
0x006B4C02:  mov      ecx, dword ptr [0xb752c8]         
0x006B4C08:  movzx    esi, byte ptr [ecx + eax + 0x2b8] 
0x006B4C10:  mov      edx, dword ptr [0xb752c8]         
0x006B4C16:  mov      eax, dword ptr [edx + 0xe0]       
0x006B4C1C:  push     eax                               
0x006B4C1D:  call     0x58d200                          
0x006B4C22:  add      esp, 4                            
0x006B4C25:  movzx    ecx, al                           
0x006B4C28:  cmp      esi, ecx                          
0x006B4C2A:  je       0x6b4c2e                          
0x006B4C2C:  jmp      0x6b4c8d                          
0x006B4C2E:  mov      edx, dword ptr [0xb752c8]         
0x006B4C34:  cmp      dword ptr [edx + 0xe0], 0         
0x006B4C3B:  jne      0x6b4c3f                          
0x006B4C3D:  jmp      0x6b4c8d                          
0x006B4C3F:  mov      eax, dword ptr [ebp + 8]          
0x006B4C42:  imul     eax, eax, 0x124                   
0x006B4C48:  mov      ecx, dword ptr [0xb752c8]         
0x006B4C4E:  movzx    esi, byte ptr [ecx + eax + 0x2b8] 
0x006B4C56:  mov      edx, dword ptr [0xb752c8]         
0x006B4C5C:  mov      eax, dword ptr [edx + 0xe0]       
0x006B4C62:  push     eax                               
0x006B4C63:  call     0x58d200                          
0x006B4C68:  add      esp, 4                            
0x006B4C6B:  movzx    ecx, al                           
0x006B4C6E:  cmp      esi, ecx                          
0x006B4C70:  je       0x6b4c74                          
0x006B4C72:  jmp      0x6b4c8d                          
0x006B4C74:  mov      edx, dword ptr [ebp + 8]          
0x006B4C77:  imul     edx, edx, 0x124                   
0x006B4C7D:  mov      eax, dword ptr [0xb752c8]         
0x006B4C82:  mov      dword ptr [eax + edx + 0x2bc], 0  
0x006B4C8D:  pop      esi                               
0x006B4C8E:  pop      ebp                               
0x006B4C8F:  ret                                        
0x006B4C90:  push     ebp                               
0x006B4C91:  mov      ebp, esp                          
0x006B4C93:  push     ecx                               
0x006B4C94:  cmp      dword ptr [0xb752c8], 0           
0x006B4C9B:  je       0x6b4cab                          
0x006B4C9D:  mov      eax, dword ptr [0xb752c8]         
0x006B4CA2:  cmp      dword ptr [eax + 0xdc], 0         
0x006B4CA9:  jne      0x6b4cad                          
0x006B4CAB:  jmp      0x6b4cfb                          
0x006B4CAD:  mov      dword ptr [ebp - 4], 0            
0x006B4CB4:  jmp      0x6b4cbf                          
0x006B4CB6:  mov      ecx, dword ptr [ebp - 4]          
0x006B4CB9:  add      ecx, 1                            
0x006B4CBC:  mov      dword ptr [ebp - 4], ecx          
0x006B4CBF:  cmp      dword ptr [ebp - 4], 0x10         
0x006B4CC3:  jge      0x6b4cfb                          
0x006B4CC5:  mov      edx, dword ptr [ebp - 4]          
0x006B4CC8:  imul     edx, edx, 0x124                   
0x006B4CCE:  mov      eax, dword ptr [0xb752c8]         
0x006B4CD3:  cmp      dword ptr [eax + edx + 0x2c0], 0  
0x006B4CDB:  jne      0x6b4cdf                          
0x006B4CDD:  jmp      0x6b4cb6                          
0x006B4CDF:  mov      ecx, dword ptr [ebp - 4]          
0x006B4CE2:  imul     ecx, ecx, 0x124                   
0x006B4CE8:  mov      edx, dword ptr [0xb752c8]         
0x006B4CEE:  mov      dword ptr [edx + ecx + 0x2bc], 0  
0x006B4CF9:  jmp      0x6b4cb6                          
0x006B4CFB:  mov      esp, ebp                          
0x006B4CFD:  pop      ebp                               
0x006B4CFE:  ret                                        
0x006B4CFF:  int3                                       
0x006B4D00:  push     ebp                               
0x006B4D01:  mov      ebp, esp                          
0x006B4D03:  cmp      dword ptr [0xb752e0], 0           
0x006B4D0A:  je       0x6b4d1e                          
0x006B4D0C:  mov      eax, dword ptr [0xb752e0]         
0x006B4D11:  xor      ecx, ecx                          
0x006B4D13:  cmp      dword ptr [eax + 0x24], 0         
0x006B4D17:  sete     cl                                
0x006B4D1A:  mov      eax, ecx                          
0x006B4D1C:  jmp      0x6b4d56                          
0x006B4D1E:  cmp      dword ptr [0xb4a048], 0           
0x006B4D25:  je       0x6b4d36                          
0x006B4D27:  mov      edx, dword ptr [0xb4a048]         
0x006B4D2D:  cmp      dword ptr [edx + 0x1a0], 0        
0x006B4D34:  jne      0x6b4d3a                          
0x006B4D36:  xor      eax, eax                          
0x006B4D38:  jmp      0x6b4d56                          
0x006B4D3A:  mov      eax, dword ptr [0xb4a048]         
0x006B4D3F:  mov      ecx, dword ptr [eax + 0x1a0]      
0x006B4D45:  movzx    edx, byte ptr [ecx + 0x13]        
0x006B4D49:  test     edx, edx                          
0x006B4D4B:  jne      0x6b4d54                          
0x006B4D4D:  mov      eax, 1                            
0x006B4D52:  jmp      0x6b4d56                          
0x006B4D54:  xor      eax, eax                          
0x006B4D56:  pop      ebp                               
0x006B4D57:  ret                                        
0x006B4D58:  int3                                       
0x006B4D59:  int3                                       
0x006B4D5A:  int3                                       
0x006B4D5B:  int3                                       
0x006B4D5C:  int3                                       
0x006B4D5D:  int3                                       
0x006B4D5E:  int3                                       
0x006B4D5F:  int3                                       
0x006B4D60:  push     ebp                               
0x006B4D61:  mov      ebp, esp                          
0x006B4D63:  cmp      dword ptr [0xb752c8], 0           
0x006B4D6A:  jne      0x6b4d70                          
0x006B4D6C:  xor      eax, eax                          
0x006B4D6E:  jmp      0x6b4dea                          
0x006B4D70:  cmp      dword ptr [ebp + 8], 0            
0x006B4D74:  jl       0x6b4d86                          
0x006B4D76:  mov      eax, dword ptr [0xb752c8]         
0x006B4D7B:  mov      ecx, dword ptr [ebp + 8]          
0x006B4D7E:  cmp      ecx, dword ptr [eax + 0xc0]       
0x006B4D84:  jl       0x6b4d8a                          
0x006B4D86:  xor      eax, eax                          
0x006B4D88:  jmp      0x6b4dea                          
0x006B4D8A:  cmp      dword ptr [ebp + 0xc], 0          
0x006B4D8E:  jne      0x6b4dbf                          
0x006B4D90:  mov      edx, dword ptr [0xb752c8]         
0x006B4D96:  cmp      dword ptr [edx + 0xb8], 0         
0x006B4D9D:  je       0x6b4db9                          
0x006B4D9F:  mov      eax, dword ptr [ebp + 8]          
0x006B4DA2:  imul     eax, eax, 0x124                   
0x006B4DA8:  mov      ecx, dword ptr [0xb752c8]         
0x006B4DAE:  lea      eax, [ecx + eax + 0x2b8]          
0x006B4DB5:  jmp      0x6b4dea                          
0x006B4DB7:  jmp      0x6b4dbd                          
0x006B4DB9:  xor      eax, eax                          
0x006B4DBB:  jmp      0x6b4dea                          
0x006B4DBD:  jmp      0x6b4dea                          
0x006B4DBF:  mov      edx, dword ptr [0xb752c8]         
0x006B4DC5:  cmp      dword ptr [edx + 0xbc], 0         
0x006B4DCC:  je       0x6b4de8                          
0x006B4DCE:  mov      eax, dword ptr [ebp + 8]          
0x006B4DD1:  imul     eax, eax, 0x124                   
0x006B4DD7:  mov      ecx, dword ptr [0xb752c8]         
0x006B4DDD:  lea      eax, [ecx + eax + 0x14f8]         
0x006B4DE4:  jmp      0x6b4dea                          
0x006B4DE6:  jmp      0x6b4dea                          
0x006B4DE8:  xor      eax, eax                          
0x006B4DEA:  pop      ebp                               
0x006B4DEB:  ret                                        
0x006B4DEC:  int3                                       
0x006B4DED:  int3                                       
0x006B4DEE:  int3                                       
0x006B4DEF:  int3                                       
0x006B4DF0:  push     ebp                               
0x006B4DF1:  mov      ebp, esp                          
0x006B4DF3:  sub      esp, 0x258                        
0x006B4DF9:  mov      eax, dword ptr [0xb089c8]         
0x006B4DFE:  xor      eax, ebp                          
0x006B4E00:  mov      dword ptr [ebp - 8], eax          
0x006B4E03:  mov      eax, dword ptr [0xb752c8]         
0x006B4E08:  cmp      dword ptr [eax + 0xdc], 0         
0x006B4E0F:  je       0x6b4e23                          
0x006B4E11:  mov      ecx, dword ptr [0xb752c8]         
0x006B4E17:  mov      edx, dword ptr [ecx + 0xdc]       
0x006B4E1D:  cmp      dword ptr [edx + 4], 0            
0x006B4E21:  jne      0x6b4e2a                          
0x006B4E23:  xor      eax, eax                          
0x006B4E25:  jmp      0x6b4ee2                          
0x006B4E2A:  mov      eax, dword ptr [0xb752c8]         
0x006B4E2F:  cmp      dword ptr [eax + 0xe0], 0         
0x006B4E36:  jne      0x6b4e3f                          
0x006B4E38:  xor      eax, eax                          
0x006B4E3A:  jmp      0x6b4ee2                          
0x006B4E3F:  mov      ecx, dword ptr [0xb752c8]         
0x006B4E45:  mov      edx, dword ptr [ecx + 0xe0]       
0x006B4E4B:  push     edx                               
0x006B4E4C:  call     0x58d200                          
0x006B4E51:  add      esp, 4                            
0x006B4E54:  movzx    eax, al                           
0x006B4E57:  test     eax, eax                          
0x006B4E59:  je       0x6b4e62                          
0x006B4E5B:  xor      eax, eax                          
0x006B4E5D:  jmp      0x6b4ee2                          
0x006B4E62:  mov      ecx, dword ptr [0xb752c8]         
0x006B4E68:  cmp      dword ptr [ecx + 0xe4], 0         
0x006B4E6F:  je       0x6b4e75                          
0x006B4E71:  xor      eax, eax                          
0x006B4E73:  jmp      0x6b4ee2                          
0x006B4E75:  mov      edx, dword ptr [0xb752c8]         
0x006B4E7B:  mov      dword ptr [edx + 0xe4], 1         
0x006B4E85:  mov      eax, 0xc                          
0x006B4E8A:  mov      word ptr [ebp - 4], ax            
0x006B4E8E:  mov      cx, word ptr [ebp - 4]            
0x006B4E92:  mov      word ptr [ebp - 0x256], cx        
0x006B4E99:  mov      byte ptr [ebp - 0x251], 0         
0x006B4EA0:  mov      byte ptr [ebp - 0x252], 0         
0x006B4EA7:  mov      byte ptr [ebp - 0x258], 0x25      
0x006B4EAE:  mov      dword ptr [ebp - 0x250], 0x12     
0x006B4EB8:  push     8                                 
0x006B4EBA:  movzx    edx, word ptr [ebp - 4]           
0x006B4EBE:  push     edx                               
0x006B4EBF:  lea      eax, [ebp - 0x258]                
0x006B4EC5:  push     eax                               
0x006B4EC6:  push     0x25                              
0x006B4EC8:  mov      ecx, dword ptr [0xb752c8]         
0x006B4ECE:  mov      edx, dword ptr [ecx + 0xe0]       
0x006B4ED4:  push     edx                               
0x006B4ED5:  call     0x58ce90                          
0x006B4EDA:  add      esp, 0x14                         
0x006B4EDD:  mov      eax, 1                            
0x006B4EE2:  mov      ecx, dword ptr [ebp - 8]          
0x006B4EE5:  xor      ecx, ebp                          
0x006B4EE7:  call     0x8eac64                          
0x006B4EEC:  mov      esp, ebp                          
0x006B4EEE:  pop      ebp                               
0x006B4EEF:  ret                                        
0x006B4EF0:  push     ebp                               
0x006B4EF1:  mov      ebp, esp                          
0x006B4EF3:  mov      eax, dword ptr [ebp + 8]          
0x006B4EF6:  mov      dword ptr [0xb752b0], eax         
0x006B4EFB:  cmp      dword ptr [ebp + 8], 0            
0x006B4EFF:  je       0x6b4f48                          
0x006B4F01:  mov      ecx, 0x7e8                        
0x006B4F06:  cmp      ecx, 0xc00                        
0x006B4F0C:  jg       0x6b4f29                          
0x006B4F0E:  mov      edx, dword ptr [ebp + 8]          
0x006B4F11:  and      edx, 0x7f                         
0x006B4F14:  je       0x6b4f29                          
0x006B4F16:  push     0x7e8                             
0x006B4F1B:  mov      eax, dword ptr [ebp + 8]          
0x006B4F1E:  push     eax                               
0x006B4F1F:  call     0x6a9700                          
0x006B4F24:  add      esp, 8                            
0x006B4F27:  jmp      0x6b4f3c                          
0x006B4F29:  push     0x7e8                             
0x006B4F2E:  push     0                                 
0x006B4F30:  mov      ecx, dword ptr [ebp + 8]          
0x006B4F33:  push     ecx                               
0x006B4F34:  call     0x8eb080                          
0x006B4F39:  add      esp, 0xc                          
0x006B4F3C:  mov      edx, dword ptr [ebp + 8]          
0x006B4F3F:  mov      eax, dword ptr [ebp + 0xc]        
0x006B4F42:  mov      dword ptr [edx + 0x7e4], eax      
0x006B4F48:  pop      ebp                               
0x006B4F49:  ret                                        
0x006B4F4A:  int3                                       
0x006B4F4B:  int3                                       
0x006B4F4C:  int3                                       
0x006B4F4D:  int3                                       
0x006B4F4E:  int3                                       
0x006B4F4F:  int3                                       
0x006B4F50:  push     ebp                               
0x006B4F51:  mov      ebp, esp                          
0x006B4F53:  cmp      dword ptr [0xb752b0], 0           
0x006B4F5A:  je       0x6b4f74                          
0x006B4F5C:  movzx    eax, byte ptr [ebp + 8]           
0x006B4F60:  imul     eax, eax, 0x58                    
0x006B4F63:  mov      ecx, dword ptr [0xb752b0]         
0x006B4F69:  mov      dword ptr [ecx + eax + 0x2a0], 1  
0x006B4F74:  pop      ebp                               
0x006B4F75:  ret                                        
0x006B4F76:  int3                                       
0x006B4F77:  int3                                       
0x006B4F78:  int3                                       
0x006B4F79:  int3                                       
0x006B4F7A:  int3                                       
0x006B4F7B:  int3                                       
0x006B4F7C:  int3                                       
0x006B4F7D:  int3                                       
0x006B4F7E:  int3                                       
0x006B4F7F:  int3                                       
0x006B4F80:  push     ebp                               
0x006B4F81:  mov      ebp, esp                          
0x006B4F83:  cmp      dword ptr [0xb752b0], 0           
0x006B4F8A:  jne      0x6b4f91                          
0x006B4F8C:  jmp      0x6b501a                          
0x006B4F91:  mov      eax, 0xc                          
0x006B4F96:  mov      ecx, dword ptr [0xb752b0]         
0x006B4F9C:  mov      word ptr [ecx + 2], ax            
0x006B4FA0:  mov      edx, dword ptr [0xb752b0]         
0x006B4FA6:  movzx    eax, word ptr [edx + 2]           
0x006B4FAA:  add      eax, 4                            
0x006B4FAD:  mov      ecx, dword ptr [0xb752b0]         
0x006B4FB3:  mov      word ptr [ecx + 2], ax            
0x006B4FB7:  mov      edx, dword ptr [0xb752b0]         
0x006B4FBD:  mov      byte ptr [edx + 7], 0             
0x006B4FC1:  mov      eax, dword ptr [0xb752b0]         
0x006B4FC6:  mov      byte ptr [eax + 6], 0             
0x006B4FCA:  mov      ecx, dword ptr [0xb752b0]         
0x006B4FD0:  mov      byte ptr [ecx + 1], 0x22          
0x006B4FD4:  mov      edx, dword ptr [0xb752b0]         
0x006B4FDA:  mov      byte ptr [edx], 0x25              
0x006B4FDD:  mov      eax, dword ptr [0xb752b0]         
0x006B4FE2:  mov      dword ptr [eax + 8], 0x13         
0x006B4FE9:  mov      ecx, dword ptr [0xb752b0]         
0x006B4FEF:  mov      dword ptr [ecx + 0x7dc], 0        
0x006B4FF9:  mov      edx, dword ptr [0xb752b0]         
0x006B4FFF:  mov      dword ptr [edx + 0xc], 0          
0x006B5006:  mov      eax, dword ptr [0xb752b0]         
0x006B500B:  add      eax, 0x10                         
0x006B500E:  mov      ecx, dword ptr [0xb752b0]         
0x006B5014:  mov      dword ptr [ecx + 0x7e0], eax      
0x006B501A:  pop      ebp                               
0x006B501B:  ret                                        
0x006B501C:  int3                                       
0x006B501D:  int3                                       
0x006B501E:  int3                                       
0x006B501F:  int3                                       
0x006B5020:  push     ebp                               
0x006B5021:  mov      ebp, esp                          
0x006B5023:  sub      esp, 0x28                         
0x006B5026:  mov      dword ptr [ebp - 0x18], 0         
0x006B502D:  mov      dword ptr [ebp - 0x14], 0         
0x006B5034:  cmp      dword ptr [0xb752b0], 0           
0x006B503B:  jne      0x6b5042                          
0x006B503D:  jmp      0x6b51bf                          
0x006B5042:  mov      eax, dword ptr [0xb752c8]         
0x006B5047:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B504D:  push     ecx                               
0x006B504E:  call     0x58d200                          
0x006B5053:  add      esp, 4                            
0x006B5056:  mov      byte ptr [ebp - 0x19], al         
0x006B5059:  mov      edx, 0xc                          
0x006B505E:  mov      eax, dword ptr [0xb752b0]         
0x006B5063:  mov      word ptr [eax + 2], dx            
0x006B5067:  mov      ecx, dword ptr [0xb752b0]         
0x006B506D:  movzx    edx, word ptr [ecx + 2]           
0x006B5071:  add      edx, 8                            
0x006B5074:  mov      eax, dword ptr [0xb752b0]         
0x006B5079:  mov      word ptr [eax + 2], dx            
0x006B507D:  mov      ecx, dword ptr [0xb752b0]         
0x006B5083:  mov      byte ptr [ecx + 7], 0             
0x006B5087:  mov      edx, dword ptr [0xb752b0]         
0x006B508D:  mov      al, byte ptr [ebp - 0x19]         
0x006B5090:  mov      byte ptr [edx + 6], al            
0x006B5093:  mov      ecx, dword ptr [0xb752b0]         
0x006B5099:  mov      byte ptr [ecx + 1], 0x22          
0x006B509D:  mov      edx, dword ptr [0xb752b0]         
0x006B50A3:  mov      byte ptr [edx], 0x25              
0x006B50A6:  mov      eax, dword ptr [0xb752b0]         
0x006B50AB:  mov      dword ptr [eax + 8], 0x14         
0x006B50B2:  movzx    ecx, byte ptr [ebp - 0x19]        
0x006B50B6:  imul     ecx, ecx, 0x58                    
0x006B50B9:  mov      edx, dword ptr [0xb752b0]         
0x006B50BF:  lea      eax, [edx + ecx + 0x250]          
0x006B50C6:  mov      dword ptr [ebp - 0x20], eax       
0x006B50C9:  mov      ecx, dword ptr [0xb752b0]         
0x006B50CF:  add      ecx, 0x14                         
0x006B50D2:  mov      dword ptr [ebp - 4], ecx          
0x006B50D5:  mov      dword ptr [ebp - 0x10], 0         
0x006B50DC:  mov      dword ptr [ebp - 0xc], 0          
0x006B50E3:  jmp      0x6b50f7                          
0x006B50E5:  mov      edx, dword ptr [ebp - 0x10]       
0x006B50E8:  add      edx, 1                            
0x006B50EB:  mov      eax, dword ptr [ebp - 0xc]        
0x006B50EE:  adc      eax, 0                            
0x006B50F1:  mov      dword ptr [ebp - 0x10], edx       
0x006B50F4:  mov      dword ptr [ebp - 0xc], eax        
0x006B50F7:  mov      ecx, dword ptr [0xb752c8]         
0x006B50FD:  mov      eax, dword ptr [ecx + 0xc0]       
0x006B5103:  cdq                                        
0x006B5104:  mov      dword ptr [ebp - 0x28], eax       
0x006B5107:  mov      dword ptr [ebp - 0x24], edx       
0x006B510A:  mov      edx, dword ptr [ebp - 0xc]        
0x006B510D:  cmp      edx, dword ptr [ebp - 0x24]       
0x006B5110:  ja       0x6b5176                          
0x006B5112:  jb       0x6b511c                          
0x006B5114:  mov      eax, dword ptr [ebp - 0x10]       
0x006B5117:  cmp      eax, dword ptr [ebp - 0x28]       
0x006B511A:  jae      0x6b5176                          
0x006B511C:  mov      ecx, dword ptr [ebp - 0x20]       
0x006B511F:  cmp      dword ptr [ecx], 0                
0x006B5122:  je       0x6b5168                          
0x006B5124:  mov      edx, dword ptr [ebp - 4]          
0x006B5127:  mov      eax, dword ptr [ebp - 0x20]       
0x006B512A:  mov      ecx, dword ptr [eax]              
0x006B512C:  mov      dword ptr [edx], ecx              
0x006B512E:  mov      edx, dword ptr [ebp - 4]          
0x006B5131:  add      edx, 4                            
0x006B5134:  mov      dword ptr [ebp - 4], edx          
0x006B5137:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B513A:  mov      eax, 1                            
0x006B513F:  xor      edx, edx                          
0x006B5141:  call     0x8ecd10                          
0x006B5146:  or       eax, dword ptr [ebp - 0x18]       
0x006B5149:  or       edx, dword ptr [ebp - 0x14]       
0x006B514C:  mov      dword ptr [ebp - 0x18], eax       
0x006B514F:  mov      dword ptr [ebp - 0x14], edx       
0x006B5152:  mov      eax, dword ptr [0xb752b0]         
0x006B5157:  movzx    ecx, word ptr [eax + 2]           
0x006B515B:  add      ecx, 4                            
0x006B515E:  mov      edx, dword ptr [0xb752b0]         
0x006B5164:  mov      word ptr [edx + 2], cx            
0x006B5168:  mov      eax, dword ptr [ebp - 0x20]       
0x006B516B:  add      eax, 4                            
0x006B516E:  mov      dword ptr [ebp - 0x20], eax       
0x006B5171:  jmp      0x6b50e5                          
0x006B5176:  mov      ecx, dword ptr [ebp - 0x18]       
0x006B5179:  or       ecx, dword ptr [ebp - 0x14]       
0x006B517C:  jne      0x6b5180                          
0x006B517E:  jmp      0x6b51bf                          
0x006B5180:  mov      edx, dword ptr [0xb752b0]         
0x006B5186:  mov      eax, dword ptr [ebp - 0x18]       
0x006B5189:  mov      dword ptr [edx + 0xc], eax        
0x006B518C:  mov      ecx, dword ptr [ebp - 0x14]       
0x006B518F:  mov      dword ptr [edx + 0x10], ecx       
0x006B5192:  push     0                                 
0x006B5194:  mov      edx, dword ptr [0xb752b0]         
0x006B519A:  movzx    eax, word ptr [edx + 2]           
0x006B519E:  push     eax                               
0x006B519F:  mov      ecx, dword ptr [0xb752b0]         
0x006B51A5:  push     ecx                               
0x006B51A6:  push     0x25                              
0x006B51A8:  push     0                                 
0x006B51AA:  mov      edx, dword ptr [0xb752c8]         
0x006B51B0:  mov      eax, dword ptr [edx + 0xe0]       
0x006B51B6:  push     eax                               
0x006B51B7:  call     0x58cd50                          
0x006B51BC:  add      esp, 0x18                         
0x006B51BF:  mov      esp, ebp                          
0x006B51C1:  pop      ebp                               
0x006B51C2:  ret                                        
0x006B51C3:  int3                                       
0x006B51C4:  int3                                       
0x006B51C5:  int3                                       
0x006B51C6:  int3                                       
0x006B51C7:  int3                                       
0x006B51C8:  int3                                       
0x006B51C9:  int3                                       
0x006B51CA:  int3                                       
0x006B51CB:  int3                                       
0x006B51CC:  int3                                       
0x006B51CD:  int3                                       
0x006B51CE:  int3                                       
0x006B51CF:  int3                                       
0x006B51D0:  push     ebp                               
0x006B51D1:  mov      ebp, esp                          
0x006B51D3:  sub      esp, 0xc                          
0x006B51D6:  mov      eax, dword ptr [0xb752c8]         
0x006B51DB:  cmp      dword ptr [eax + 0xdc], 0         
0x006B51E2:  je       0x6b51fc                          
0x006B51E4:  mov      ecx, dword ptr [0xb752c8]         
0x006B51EA:  cmp      dword ptr [ecx + 0xe0], 0         
0x006B51F1:  je       0x6b51fc                          
0x006B51F3:  cmp      dword ptr [0xb752b0], 0           
0x006B51FA:  jne      0x6b5201                          
0x006B51FC:  jmp      0x6b52a3                          
0x006B5201:  mov      edx, dword ptr [ebp + 8]          
0x006B5204:  imul     edx, edx, 0x58                    
0x006B5207:  mov      eax, dword ptr [0xb752b0]         
0x006B520C:  lea      ecx, [eax + edx + 0x250]          
0x006B5213:  mov      dword ptr [ebp - 0xc], ecx        
0x006B5216:  mov      dword ptr [ebp - 4], 0            
0x006B521D:  jmp      0x6b5228                          
0x006B521F:  mov      edx, dword ptr [ebp - 4]          
0x006B5222:  add      edx, 1                            
0x006B5225:  mov      dword ptr [ebp - 4], edx          
0x006B5228:  mov      eax, dword ptr [0xb752c8]         
0x006B522D:  mov      ecx, dword ptr [ebp - 4]          
0x006B5230:  cmp      ecx, dword ptr [eax + 0xc0]       
0x006B5236:  jge      0x6b52a3                          
0x006B5238:  mov      edx, dword ptr [ebp - 4]          
0x006B523B:  imul     edx, edx, 0x124                   
0x006B5241:  mov      eax, dword ptr [0xb752c8]         
0x006B5246:  lea      ecx, [eax + edx + 0x2b8]          
0x006B524D:  mov      dword ptr [ebp - 8], ecx          
0x006B5250:  mov      edx, dword ptr [ebp - 0xc]        
0x006B5253:  mov      dword ptr [edx + 0x40], 0         
0x006B525A:  mov      eax, dword ptr [ebp - 8]          
0x006B525D:  cmp      dword ptr [eax + 0xe8], 4         
0x006B5264:  jne      0x6b5291                          
0x006B5266:  push     -1                                
0x006B5268:  push     0                                 
0x006B526A:  mov      ecx, dword ptr [ebp - 8]          
0x006B526D:  add      ecx, 0x94                         
0x006B5273:  push     ecx                               
0x006B5274:  call     0x691560                          
0x006B5279:  add      esp, 0xc                          
0x006B527C:  mov      edx, dword ptr [ebp - 4]          
0x006B527F:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B5282:  mov      dword ptr [ecx + edx*4], eax      
0x006B5285:  mov      edx, dword ptr [ebp - 8]          
0x006B5288:  mov      dword ptr [edx + 8], 1            
0x006B528F:  jmp      0x6b529e                          
0x006B5291:  mov      eax, dword ptr [ebp - 4]          
0x006B5294:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B5297:  mov      dword ptr [ecx + eax*4], 0        
0x006B529E:  jmp      0x6b521f                          
0x006B52A3:  mov      esp, ebp                          
0x006B52A5:  pop      ebp                               
0x006B52A6:  ret                                        
0x006B52A7:  int3                                       
0x006B52A8:  int3                                       
0x006B52A9:  int3                                       
0x006B52AA:  int3                                       
0x006B52AB:  int3                                       
0x006B52AC:  int3                                       
0x006B52AD:  int3                                       
0x006B52AE:  int3                                       
0x006B52AF:  int3                                       
0x006B52B0:  push     ebp                               
0x006B52B1:  mov      ebp, esp                          
0x006B52B3:  sub      esp, 0x3c                         
0x006B52B6:  push     esi                               
0x006B52B7:  mov      dword ptr [ebp - 8], 0            
0x006B52BE:  mov      dword ptr [ebp - 0x18], 0         
0x006B52C5:  mov      dword ptr [ebp - 0x1c], 0         
0x006B52CC:  cmp      dword ptr [0xb752b0], 0           
0x006B52D3:  jne      0x6b52da                          
0x006B52D5:  jmp      0x6b5656                          
0x006B52DA:  mov      eax, dword ptr [0xb752c8]         
0x006B52DF:  mov      ecx, dword ptr [eax + 0xc0]       
0x006B52E5:  mov      dword ptr [ebp - 0x24], ecx       
0x006B52E8:  mov      edx, dword ptr [0xb752c8]         
0x006B52EE:  mov      eax, dword ptr [edx + 0xe0]       
0x006B52F4:  push     eax                               
0x006B52F5:  call     0x58d200                          
0x006B52FA:  add      esp, 4                            
0x006B52FD:  mov      byte ptr [ebp - 0xd], al          
0x006B5300:  mov      ecx, dword ptr [0xb752b0]         
0x006B5306:  add      ecx, 0x250                        
0x006B530C:  mov      dword ptr [ebp - 0x14], ecx       
0x006B530F:  cmp      dword ptr [ebp - 0x24], 0         
0x006B5313:  je       0x6b5656                          
0x006B5319:  mov      edx, dword ptr [ebp - 0x24]       
0x006B531C:  sub      edx, 1                            
0x006B531F:  mov      dword ptr [ebp - 0x24], edx       
0x006B5322:  mov      eax, dword ptr [0xb752b0]         
0x006B5327:  mov      cl, byte ptr [eax + 0x7d8]        
0x006B532D:  mov      byte ptr [ebp - 0x35], cl         
0x006B5330:  movzx    edx, byte ptr [ebp - 0x35]        
0x006B5334:  imul     edx, edx, 0x58                    
0x006B5337:  mov      eax, dword ptr [0xb752b0]         
0x006B533C:  lea      ecx, [eax + edx + 0x250]          
0x006B5343:  mov      dword ptr [ebp - 0x30], ecx       
0x006B5346:  movzx    edx, byte ptr [ebp - 0x35]        
0x006B534A:  push     edx                               
0x006B534B:  mov      eax, dword ptr [0xb752c8]         
0x006B5350:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B5356:  push     ecx                               
0x006B5357:  call     0x58c240                          
0x006B535C:  add      esp, 8                            
0x006B535F:  mov      dword ptr [ebp - 0x20], eax       
0x006B5362:  cmp      dword ptr [ebp - 0x20], 0         
0x006B5366:  je       0x6b537a                          
0x006B5368:  mov      edx, dword ptr [ebp - 0x20]       
0x006B536B:  mov      eax, dword ptr [edx + 0x1c]       
0x006B536E:  and      eax, 4                            
0x006B5371:  jne      0x6b537a                          
0x006B5373:  mov      dword ptr [ebp - 0x20], 0         
0x006B537A:  cmp      dword ptr [ebp - 0x20], 0         
0x006B537E:  je       0x6b538c                          
0x006B5380:  movzx    ecx, byte ptr [ebp - 0x35]        
0x006B5384:  movzx    edx, byte ptr [ebp - 0xd]         
0x006B5388:  cmp      ecx, edx                          
0x006B538A:  jne      0x6b53df                          
0x006B538C:  mov      eax, dword ptr [0xb752b0]         
0x006B5391:  mov      cl, byte ptr [eax + 0x7d8]        
0x006B5397:  add      cl, 1                             
0x006B539A:  mov      edx, dword ptr [0xb752b0]         
0x006B53A0:  mov      byte ptr [edx + 0x7d8], cl        
0x006B53A6:  mov      eax, dword ptr [0xb752b0]         
0x006B53AB:  movzx    eax, byte ptr [eax + 0x7d8]       
0x006B53B2:  mov      ecx, dword ptr [0xb752c8]         
0x006B53B8:  cdq                                        
0x006B53B9:  idiv     dword ptr [ecx + 0xc0]            
0x006B53BF:  mov      eax, dword ptr [0xb752b0]         
0x006B53C4:  mov      byte ptr [eax + 0x7d8], dl        
0x006B53CA:  mov      ecx, dword ptr [0xb752b0]         
0x006B53D0:  mov      dword ptr [ecx + 0x7d4], 0        
0x006B53DA:  jmp      0x6b530f                          
0x006B53DF:  mov      dword ptr [ebp - 0x2c], 0         
0x006B53E6:  mov      edx, dword ptr [ebp - 0x30]       
0x006B53E9:  cmp      dword ptr [edx + 0x40], 0         
0x006B53ED:  jne      0x6b55bc                          
0x006B53F3:  call     0x6b4f80                          
0x006B53F8:  mov      dword ptr [ebp - 0x2c], 0         
0x006B53FF:  mov      eax, dword ptr [0xb752c8]         
0x006B5404:  add      eax, 0x3dc                        
0x006B5409:  mov      dword ptr [ebp - 0x28], eax       
0x006B540C:  mov      ecx, dword ptr [0xb752c8]         
0x006B5412:  mov      edx, dword ptr [0xb752b0]         
0x006B5418:  mov      eax, dword ptr [ecx + 0xc0]       
0x006B541E:  sub      eax, dword ptr [edx + 0x7d4]      
0x006B5424:  mov      dword ptr [ebp - 4], eax          
0x006B5427:  mov      dword ptr [ebp - 0xc], 0          
0x006B542E:  cmp      dword ptr [ebp - 4], 0            
0x006B5432:  je       0x6b552e                          
0x006B5438:  mov      ecx, dword ptr [ebp - 4]          
0x006B543B:  sub      ecx, 1                            
0x006B543E:  mov      dword ptr [ebp - 4], ecx          
0x006B5441:  mov      edx, dword ptr [0xb752b0]         
0x006B5447:  mov      eax, dword ptr [edx + 0x7d4]      
0x006B544D:  mov      dword ptr [ebp - 0x1c], eax       
0x006B5450:  mov      ecx, dword ptr [ebp - 0x1c]       
0x006B5453:  imul     ecx, ecx, 0x124                   
0x006B5459:  mov      edx, dword ptr [0xb752c8]         
0x006B545F:  lea      eax, [edx + ecx + 0x2b8]          
0x006B5466:  mov      dword ptr [ebp - 0x28], eax       
0x006B5469:  mov      ecx, dword ptr [0xb752b0]         
0x006B546F:  mov      edx, dword ptr [ecx + 0x7d4]      
0x006B5475:  add      edx, 1                            
0x006B5478:  mov      eax, dword ptr [0xb752b0]         
0x006B547D:  mov      dword ptr [eax + 0x7d4], edx      
0x006B5483:  mov      ecx, dword ptr [0xb752b0]         
0x006B5489:  mov      esi, dword ptr [0xb752c8]         
0x006B548F:  mov      eax, dword ptr [ecx + 0x7d4]      
0x006B5495:  cdq                                        
0x006B5496:  idiv     dword ptr [esi + 0xc0]            
0x006B549C:  mov      eax, dword ptr [0xb752b0]         
0x006B54A1:  mov      dword ptr [eax + 0x7d4], edx      
0x006B54A7:  mov      ecx, dword ptr [ebp - 0x28]       
0x006B54AA:  cmp      dword ptr [ecx + 0xe8], 4         
0x006B54B1:  jne      0x6b5529                          
0x006B54B3:  mov      edx, dword ptr [ebp - 0x28]       
0x006B54B6:  mov      dword ptr [edx + 8], 1            
0x006B54BD:  mov      eax, dword ptr [ebp - 0x1c]       
0x006B54C0:  mov      ecx, dword ptr [ebp - 0x14]       
0x006B54C3:  mov      edx, dword ptr [ebp - 0x1c]       
0x006B54C6:  mov      esi, dword ptr [ebp - 0x30]       
0x006B54C9:  mov      eax, dword ptr [ecx + eax*4]      
0x006B54CC:  cmp      eax, dword ptr [esi + edx*4]      
0x006B54CF:  je       0x6b5504                          
0x006B54D1:  mov      ecx, dword ptr [ebp - 0x1c]       
0x006B54D4:  push     ecx                               
0x006B54D5:  call     0x6ba350                          
0x006B54DA:  add      esp, 4                            
0x006B54DD:  add      eax, dword ptr [ebp - 0x2c]       
0x006B54E0:  mov      dword ptr [ebp - 0x2c], eax       
0x006B54E3:  mov      edx, dword ptr [ebp - 0x30]       
0x006B54E6:  mov      dword ptr [edx + 0x40], 1         
0x006B54ED:  call     0x6a0cf0                          
0x006B54F2:  mov      ecx, dword ptr [ebp - 0x30]       
0x006B54F5:  mov      dword ptr [ecx + 0x48], eax       
0x006B54F8:  mov      dword ptr [ecx + 0x4c], edx       
0x006B54FB:  mov      edx, dword ptr [ebp - 0xc]        
0x006B54FE:  add      edx, 1                            
0x006B5501:  mov      dword ptr [ebp - 0xc], edx        
0x006B5504:  mov      eax, dword ptr [0xb752b0]         
0x006B5509:  mov      ecx, dword ptr [ebp - 0x2c]       
0x006B550C:  cmp      ecx, dword ptr [eax + 0x7e4]      
0x006B5512:  jl       0x6b5529                          
0x006B5514:  mov      dword ptr [ebp - 4], 0            
0x006B551B:  mov      dword ptr [ebp - 0x24], 0         
0x006B5522:  mov      dword ptr [ebp - 0x18], 1         
0x006B5529:  jmp      0x6b542e                          
0x006B552E:  cmp      dword ptr [ebp - 0x2c], 0         
0x006B5532:  je       0x6b55ba                          
0x006B5538:  mov      edx, dword ptr [0xb752b0]         
0x006B553E:  mov      eax, dword ptr [ebp - 0xc]        
0x006B5541:  mov      dword ptr [edx + 0xc], eax        
0x006B5544:  push     0                                 
0x006B5546:  mov      ecx, dword ptr [0xb752b0]         
0x006B554C:  movzx    edx, word ptr [ecx + 2]           
0x006B5550:  push     edx                               
0x006B5551:  mov      eax, dword ptr [0xb752b0]         
0x006B5556:  push     eax                               
0x006B5557:  push     0x25                              
0x006B5559:  movzx    ecx, byte ptr [ebp - 0x35]        
0x006B555D:  push     ecx                               
0x006B555E:  mov      edx, dword ptr [0xb752c8]         
0x006B5564:  mov      eax, dword ptr [edx + 0xe0]       
0x006B556A:  push     eax                               
0x006B556B:  call     0x58cd50                          
0x006B5570:  add      esp, 0x18                         
0x006B5573:  mov      dword ptr [ebp - 0x34], eax       
0x006B5576:  mov      ecx, dword ptr [0xb752b0]         
0x006B557C:  movzx    edx, word ptr [ecx + 2]           
0x006B5580:  cmp      dword ptr [ebp - 0x34], edx       
0x006B5583:  je       0x6b5591                          
0x006B5585:  mov      eax, dword ptr [ebp - 0x30]       
0x006B5588:  mov      dword ptr [eax + 0x40], 0         
0x006B558F:  jmp      0x6b55ab                          
0x006B5591:  mov      ecx, dword ptr [0xb752c8]         
0x006B5597:  mov      dword ptr [ecx + 0x108], 0        
0x006B55A1:  mov      edx, dword ptr [ebp - 0x30]       
0x006B55A4:  mov      dword ptr [edx + 0x50], 0         
0x006B55AB:  mov      eax, dword ptr [0xb752b0]         
0x006B55B0:  movzx    ecx, word ptr [eax + 2]           
0x006B55B4:  add      ecx, dword ptr [ebp - 8]          
0x006B55B7:  mov      dword ptr [ebp - 8], ecx          
0x006B55BA:  jmp      0x6b55f1                          
0x006B55BC:  call     0x6a0cf0                          
0x006B55C1:  mov      ecx, dword ptr [ebp - 0x30]       
0x006B55C4:  sub      eax, dword ptr [ecx + 0x48]       
0x006B55C7:  sbb      edx, dword ptr [ecx + 0x4c]       
0x006B55CA:  push     edx                               
0x006B55CB:  push     eax                               
0x006B55CC:  call     0x69a850                          
0x006B55D1:  add      esp, 8                            
0x006B55D4:  fstp     dword ptr [ebp - 0x3c]            
0x006B55D7:  fld      dword ptr [ebp - 0x3c]            
0x006B55DA:  fcomp    qword ptr [0x99b6f0]              
0x006B55E0:  fnstsw   ax                                
0x006B55E2:  test     ah, 0x41                          
0x006B55E5:  jne      0x6b55f1                          
0x006B55E7:  mov      edx, dword ptr [ebp - 0x30]       
0x006B55EA:  mov      dword ptr [edx + 0x40], 0         
0x006B55F1:  cmp      dword ptr [ebp - 0x2c], 0         
0x006B55F5:  je       0x6b55f9                          
0x006B55F7:  jmp      0x6b5656                          
0x006B55F9:  cmp      dword ptr [ebp - 0x18], 0         
0x006B55FD:  jne      0x6b564f                          
0x006B55FF:  mov      eax, dword ptr [0xb752b0]         
0x006B5604:  mov      cl, byte ptr [eax + 0x7d8]        
0x006B560A:  add      cl, 1                             
0x006B560D:  mov      edx, dword ptr [0xb752b0]         
0x006B5613:  mov      byte ptr [edx + 0x7d8], cl        
0x006B5619:  mov      eax, dword ptr [0xb752b0]         
0x006B561E:  movzx    eax, byte ptr [eax + 0x7d8]       
0x006B5625:  mov      ecx, dword ptr [0xb752c8]         
0x006B562B:  cdq                                        
0x006B562C:  idiv     dword ptr [ecx + 0xc0]            
0x006B5632:  mov      eax, dword ptr [0xb752b0]         
0x006B5637:  mov      byte ptr [eax + 0x7d8], dl        
0x006B563D:  mov      ecx, dword ptr [0xb752b0]         
0x006B5643:  mov      dword ptr [ecx + 0x7d4], 0        
0x006B564D:  jmp      0x6b5651                          
0x006B564F:  jmp      0x6b5656                          
0x006B5651:  jmp      0x6b530f                          
0x006B5656:  pop      esi                               
0x006B5657:  mov      esp, ebp                          
0x006B5659:  pop      ebp                               
0x006B565A:  ret                                        
0x006B565B:  int3                                       
0x006B565C:  int3                                       
0x006B565D:  int3                                       
0x006B565E:  int3                                       
0x006B565F:  int3                                       
0x006B5660:  push     ebp                               
0x006B5661:  mov      ebp, esp                          
0x006B5663:  sub      esp, 0x2c                         
0x006B5666:  mov      dword ptr [ebp - 0x2c], ecx       
0x006B5669:  mov      eax, dword ptr [ebp - 0x2c]       
0x006B566C:  mov      dword ptr [eax + 0x34], 0         
0x006B5673:  mov      ecx, dword ptr [ebp - 0x2c]       
0x006B5676:  mov      dword ptr [ecx + 0x24], 0         
0x006B567D:  mov      edx, dword ptr [ebp - 0x2c]       
0x006B5680:  mov      dword ptr [edx + 0x20], 0         
0x006B5687:  mov      eax, dword ptr [ebp - 0x2c]       
0x006B568A:  mov      dword ptr [eax + 0x18], 1         
0x006B5691:  mov      ecx, dword ptr [ebp - 0x2c]       
0x006B5694:  mov      dword ptr [ecx + 0x1c], 1         
0x006B569B:  mov      edx, dword ptr [ebp - 0x2c]       
0x006B569E:  mov      dword ptr [edx + 8], 0            
0x006B56A5:  mov      eax, dword ptr [ebp - 0x2c]       
0x006B56A8:  mov      dword ptr [eax + 0xc], 0          
0x006B56AF:  mov      ecx, dword ptr [ebp - 0x2c]       
0x006B56B2:  mov      dword ptr [ecx], 0                
0x006B56B8:  mov      edx, dword ptr [ebp - 0x2c]       
0x006B56BB:  mov      dword ptr [edx + 4], 0            
0x006B56C2:  call     0x6a0cf0                          
0x006B56C7:  mov      ecx, dword ptr [ebp - 0x2c]       
0x006B56CA:  mov      dword ptr [ecx + 0x10], eax       
0x006B56CD:  mov      dword ptr [ecx + 0x14], edx       
0x006B56D0:  push     0                                 
0x006B56D2:  call     0x680dc0                          
0x006B56D7:  add      esp, 4                            
0x006B56DA:  mov      dword ptr [ebp - 0x28], eax       
0x006B56DD:  mov      edx, dword ptr [0xb01b28]         
0x006B56E3:  mov      dword ptr [ebp - 0x24], edx       
0x006B56E6:  mov      eax, dword ptr [ebp + 8]          
0x006B56E9:  shl      eax, 2                            
0x006B56EC:  mov      dword ptr [ebp - 0x20], eax       
0x006B56EF:  mov      dword ptr [ebp - 0x1c], 0         
0x006B56F6:  mov      ecx, dword ptr [ebp - 0x28]       
0x006B56F9:  mov      dword ptr [ebp - 0x18], ecx       
0x006B56FC:  mov      dword ptr [ebp - 0x14], 1         
0x006B5703:  xor      edx, edx                          
0x006B5705:  neg      edx                               
0x006B5707:  sbb      edx, edx                          
0x006B5709:  and      edx, 2                            
0x006B570C:  or       edx, dword ptr [ebp - 0x14]       
0x006B570F:  mov      dword ptr [ebp - 0x14], edx       
0x006B5712:  mov      byte ptr [ebp - 0x10], 1          
0x006B5716:  mov      dword ptr [ebp - 0xc], 3          
0x006B571D:  mov      dword ptr [ebp - 8], 0            
0x006B5724:  mov      eax, 1                            
0x006B5729:  or       eax, 0x10                         
0x006B572C:  mov      dword ptr [ebp - 0x14], eax       
0x006B572F:  push     1                                 
0x006B5731:  push     0                                 
0x006B5733:  mov      ecx, dword ptr [ebp - 0x24]       
0x006B5736:  push     ecx                               
0x006B5737:  push     0                                 
0x006B5739:  push     4                                 
0x006B573B:  lea      edx, [ebp - 0x1c]                 
0x006B573E:  push     edx                               
0x006B573F:  mov      eax, dword ptr [ebp - 0x20]       
0x006B5742:  push     eax                               
0x006B5743:  call     0x67ff60                          
0x006B5748:  add      esp, 0x1c                         
0x006B574B:  mov      dword ptr [ebp - 4], eax          
0x006B574E:  cmp      dword ptr [ebp - 4], 0            
0x006B5752:  je       0x6b57a7                          
0x006B5754:  xor      ecx, ecx                          
0x006B5756:  and      ecx, 0xff                         
0x006B575C:  je       0x6b5772                          
0x006B575E:  mov      edx, dword ptr [ebp - 0x20]       
0x006B5761:  push     edx                               
0x006B5762:  push     0                                 
0x006B5764:  mov      eax, dword ptr [ebp - 4]          
0x006B5767:  push     eax                               
0x006B5768:  call     0x8eb080                          
0x006B576D:  add      esp, 0xc                          
0x006B5770:  jmp      0x6b57a7                          
0x006B5772:  cmp      dword ptr [ebp - 0x20], 0xc00     
0x006B5779:  jg       0x6b5795                          
0x006B577B:  mov      ecx, dword ptr [ebp - 4]          
0x006B577E:  and      ecx, 0x7f                         
0x006B5781:  je       0x6b5795                          
0x006B5783:  mov      edx, dword ptr [ebp - 0x20]       
0x006B5786:  push     edx                               
0x006B5787:  mov      eax, dword ptr [ebp - 4]          
0x006B578A:  push     eax                               
0x006B578B:  call     0x6a9700                          
0x006B5790:  add      esp, 8                            
0x006B5793:  jmp      0x6b57a7                          
0x006B5795:  mov      ecx, dword ptr [ebp - 0x20]       
0x006B5798:  push     ecx                               
0x006B5799:  push     0                                 
0x006B579B:  mov      edx, dword ptr [ebp - 4]          
0x006B579E:  push     edx                               
0x006B579F:  call     0x8eb080                          
0x006B57A4:  add      esp, 0xc                          
0x006B57A7:  mov      eax, dword ptr [ebp - 0x2c]       
0x006B57AA:  mov      ecx, dword ptr [ebp - 4]          
0x006B57AD:  mov      dword ptr [eax + 0x28], ecx       
0x006B57B0:  mov      edx, dword ptr [ebp - 0x2c]       
0x006B57B3:  mov      dword ptr [edx + 0x2c], 0xffffffff
0x006B57BA:  mov      eax, dword ptr [ebp - 0x2c]       
0x006B57BD:  mov      dword ptr [eax + 0x30], 0         
0x006B57C4:  mov      eax, dword ptr [ebp - 0x2c]       
0x006B57C7:  mov      esp, ebp                          
0x006B57C9:  pop      ebp                               
0x006B57CA:  ret      4                                 
0x006B57CD:  int3                                       
0x006B57CE:  int3                                       
0x006B57CF:  int3                                       
0x006B57D0:  push     ebp                               
0x006B57D1:  mov      ebp, esp                          
0x006B57D3:  push     ecx                               
0x006B57D4:  mov      dword ptr [ebp - 4], ecx          
0x006B57D7:  push     0                                 
0x006B57D9:  push     1                                 
0x006B57DB:  push     0                                 
0x006B57DD:  push     0                                 
0x006B57DF:  push     0                                 
0x006B57E1:  push     0                                 
0x006B57E3:  mov      eax, dword ptr [ebp - 4]          
0x006B57E6:  mov      ecx, dword ptr [eax + 0x28]       
0x006B57E9:  push     ecx                               
0x006B57EA:  call     0x680690                          
0x006B57EF:  add      esp, 0x1c                         
0x006B57F2:  mov      edx, dword ptr [ebp - 4]          
0x006B57F5:  mov      dword ptr [edx + 0x28], 0         
0x006B57FC:  xor      eax, eax                          
0x006B57FE:  jne      0x6b57d7                          
0x006B5800:  push     0                                 
0x006B5802:  push     0                                 
0x006B5804:  call     0x6b4ef0                          
0x006B5809:  add      esp, 8                            
0x006B580C:  mov      esp, ebp                          
0x006B580E:  pop      ebp                               
0x006B580F:  ret                                        
0x006B5810:  push     ebp                               
0x006B5811:  mov      ebp, esp                          
0x006B5813:  sub      esp, 0x40                         
0x006B5816:  push     esi                               
0x006B5817:  mov      dword ptr [ebp - 0x3c], ecx       
0x006B581A:  mov      eax, dword ptr [ebp - 0x3c]       
0x006B581D:  mov      dword ptr [eax], 0                
0x006B5823:  mov      dword ptr [eax + 4], 0            
0x006B582A:  mov      ecx, dword ptr [ebp - 0x3c]       
0x006B582D:  mov      byte ptr [ecx + 0x10], 0          
0x006B5831:  mov      edx, dword ptr [ebp - 0x3c]       
0x006B5834:  add      edx, 0x20                         
0x006B5837:  mov      dword ptr [ebp - 8], edx          
0x006B583A:  mov      eax, dword ptr [ebp - 8]          
0x006B583D:  mov      dword ptr [eax], 0x99b710         
0x006B5843:  mov      ecx, dword ptr [ebp - 8]          
0x006B5846:  mov      byte ptr [ecx + 4], 0             
0x006B584A:  mov      edx, dword ptr [ebp - 8]          
0x006B584D:  mov      dword ptr [edx + 8], 0            
0x006B5854:  mov      eax, dword ptr [ebp - 8]          
0x006B5857:  mov      dword ptr [eax], 0x99b804         
0x006B585D:  mov      ecx, dword ptr [ebp - 8]          
0x006B5860:  mov      edx, dword ptr [ebp - 0x3c]       
0x006B5863:  mov      dword ptr [ecx + 0xc], edx        
0x006B5866:  mov      eax, dword ptr [ebp - 8]          
0x006B5869:  mov      dword ptr [eax + 0x10], 0x6b5ed0  
0x006B5870:  cmp      dword ptr [ebp - 0x3c], 0         
0x006B5874:  je       0x6b5890                          
0x006B5876:  mov      ecx, 0x6b5ed0                     
0x006B587B:  test     ecx, ecx                          
0x006B587D:  je       0x6b5890                          
0x006B587F:  push     0x6b5ed0                          
0x006B5884:  mov      edx, dword ptr [ebp - 0x3c]       
0x006B5887:  push     edx                               
0x006B5888:  mov      ecx, dword ptr [ebp - 8]          
0x006B588B:  call     0x6c43a0                          
0x006B5890:  mov      eax, dword ptr [ebp - 0x3c]       
0x006B5893:  add      eax, 0x34                         
0x006B5896:  mov      dword ptr [ebp - 0xc], eax        
0x006B5899:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B589C:  mov      dword ptr [ecx], 0x99b710         
0x006B58A2:  mov      edx, dword ptr [ebp - 0xc]        
0x006B58A5:  mov      byte ptr [edx + 4], 0             
0x006B58A9:  mov      eax, dword ptr [ebp - 0xc]        
0x006B58AC:  mov      dword ptr [eax + 8], 0            
0x006B58B3:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B58B6:  mov      dword ptr [ecx], 0x99b704         
0x006B58BC:  mov      edx, dword ptr [ebp - 0xc]        
0x006B58BF:  mov      eax, dword ptr [ebp - 0x3c]       
0x006B58C2:  mov      dword ptr [edx + 0xc], eax        
0x006B58C5:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B58C8:  mov      dword ptr [ecx + 0x10], 0x6b6020  
0x006B58CF:  cmp      dword ptr [ebp - 0x3c], 0         
0x006B58D3:  je       0x6b58ef                          
0x006B58D5:  mov      edx, 0x6b6020                     
0x006B58DA:  test     edx, edx                          
0x006B58DC:  je       0x6b58ef                          
0x006B58DE:  push     0x6b6020                          
0x006B58E3:  mov      eax, dword ptr [ebp - 0x3c]       
0x006B58E6:  push     eax                               
0x006B58E7:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B58EA:  call     0x6c4410                          
0x006B58EF:  mov      ecx, dword ptr [ebp - 0x3c]       
0x006B58F2:  add      ecx, 0x48                         
0x006B58F5:  mov      dword ptr [ebp - 0x10], ecx       
0x006B58F8:  mov      edx, dword ptr [ebp - 0x10]       
0x006B58FB:  mov      dword ptr [edx], 0x99b710         
0x006B5901:  mov      eax, dword ptr [ebp - 0x10]       
0x006B5904:  mov      byte ptr [eax + 4], 0             
0x006B5908:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B590B:  mov      dword ptr [ecx + 8], 0            
0x006B5912:  mov      edx, dword ptr [ebp - 0x10]       
0x006B5915:  mov      dword ptr [edx], 0x99b6f8         
0x006B591B:  mov      eax, dword ptr [ebp - 0x10]       
0x006B591E:  mov      ecx, dword ptr [ebp - 0x3c]       
0x006B5921:  mov      dword ptr [eax + 0xc], ecx        
0x006B5924:  mov      edx, dword ptr [ebp - 0x10]       
0x006B5927:  mov      dword ptr [edx + 0x10], 0x6b60f0  
0x006B592E:  cmp      dword ptr [ebp - 0x3c], 0         
0x006B5932:  je       0x6b594e                          
0x006B5934:  mov      eax, 0x6b60f0                     
0x006B5939:  test     eax, eax                          
0x006B593B:  je       0x6b594e                          
0x006B593D:  push     0x6b60f0                          
0x006B5942:  mov      ecx, dword ptr [ebp - 0x3c]       
0x006B5945:  push     ecx                               
0x006B5946:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B5949:  call     0x6c4480                          
0x006B594E:  call     dword ptr [0x95b39c]              
0x006B5954:  mov      dword ptr [ebp - 0x40], eax       
0x006B5957:  mov      edx, dword ptr [ebp - 0x40]       
0x006B595A:  mov      eax, dword ptr [edx]              
0x006B595C:  mov      ecx, dword ptr [ebp - 0x40]       
0x006B595F:  mov      edx, dword ptr [eax + 0x24]       
0x006B5962:  call     edx                               
0x006B5964:  xor      ecx, ecx                          
0x006B5966:  mov      edx, dword ptr [ebp - 0x3c]       
0x006B5969:  mov      dword ptr [edx], eax              
0x006B596B:  mov      dword ptr [edx + 4], ecx          
0x006B596E:  mov      eax, dword ptr [ebp - 0x3c]       
0x006B5971:  mov      dword ptr [eax + 8], 0            
0x006B5978:  mov      ecx, dword ptr [ebp - 0x3c]       
0x006B597B:  mov      edx, dword ptr [ebp + 0xc]        
0x006B597E:  mov      dword ptr [ecx + 0xc], edx        
0x006B5981:  mov      eax, dword ptr [ebp - 0x3c]       
0x006B5984:  mov      dword ptr [eax + 0x14], 0         
0x006B598B:  push     0                                 
0x006B598D:  call     0x680dc0                          
0x006B5992:  add      esp, 4                            
0x006B5995:  mov      dword ptr [ebp - 0x38], eax       
0x006B5998:  mov      ecx, dword ptr [0xb01b28]         
0x006B599E:  mov      dword ptr [ebp - 0x34], ecx       
0x006B59A1:  mov      edx, dword ptr [ebp + 0xc]        
0x006B59A4:  imul     edx, edx, 0x218                   
0x006B59AA:  mov      dword ptr [ebp - 0x30], edx       
0x006B59AD:  mov      dword ptr [ebp - 0x2c], 0         
0x006B59B4:  mov      eax, dword ptr [ebp - 0x38]       
0x006B59B7:  mov      dword ptr [ebp - 0x28], eax       
0x006B59BA:  mov      dword ptr [ebp - 0x24], 1         
0x006B59C1:  xor      ecx, ecx                          
0x006B59C3:  neg      ecx                               
0x006B59C5:  sbb      ecx, ecx                          
0x006B59C7:  and      ecx, 2                            
0x006B59CA:  or       ecx, dword ptr [ebp - 0x24]       
0x006B59CD:  mov      dword ptr [ebp - 0x24], ecx       
0x006B59D0:  mov      byte ptr [ebp - 0x20], 1          
0x006B59D4:  mov      dword ptr [ebp - 0x1c], 3         
0x006B59DB:  mov      dword ptr [ebp - 0x18], 0         
0x006B59E2:  mov      edx, 1                            
0x006B59E7:  or       edx, 0x10                         
0x006B59EA:  mov      dword ptr [ebp - 0x24], edx       
0x006B59ED:  push     1                                 
0x006B59EF:  push     0                                 
0x006B59F1:  mov      eax, dword ptr [ebp - 0x34]       
0x006B59F4:  push     eax                               
0x006B59F5:  push     0                                 
0x006B59F7:  push     4                                 
0x006B59F9:  lea      ecx, [ebp - 0x2c]                 
0x006B59FC:  push     ecx                               
0x006B59FD:  mov      edx, dword ptr [ebp - 0x30]       
0x006B5A00:  push     edx                               
0x006B5A01:  call     0x67ff60                          
0x006B5A06:  add      esp, 0x1c                         
0x006B5A09:  mov      dword ptr [ebp - 0x14], eax       
0x006B5A0C:  cmp      dword ptr [ebp - 0x14], 0         
0x006B5A10:  je       0x6b5a64                          
0x006B5A12:  xor      eax, eax                          
0x006B5A14:  and      eax, 0xff                         
0x006B5A19:  je       0x6b5a2f                          
0x006B5A1B:  mov      ecx, dword ptr [ebp - 0x30]       
0x006B5A1E:  push     ecx                               
0x006B5A1F:  push     0                                 
0x006B5A21:  mov      edx, dword ptr [ebp - 0x14]       
0x006B5A24:  push     edx                               
0x006B5A25:  call     0x8eb080                          
0x006B5A2A:  add      esp, 0xc                          
0x006B5A2D:  jmp      0x6b5a64                          
0x006B5A2F:  cmp      dword ptr [ebp - 0x30], 0xc00     
0x006B5A36:  jg       0x6b5a52                          
0x006B5A38:  mov      eax, dword ptr [ebp - 0x14]       
0x006B5A3B:  and      eax, 0x7f                         
0x006B5A3E:  je       0x6b5a52                          
0x006B5A40:  mov      ecx, dword ptr [ebp - 0x30]       
0x006B5A43:  push     ecx                               
0x006B5A44:  mov      edx, dword ptr [ebp - 0x14]       
0x006B5A47:  push     edx                               
0x006B5A48:  call     0x6a9700                          
0x006B5A4D:  add      esp, 8                            
0x006B5A50:  jmp      0x6b5a64                          
0x006B5A52:  mov      eax, dword ptr [ebp - 0x30]       
0x006B5A55:  push     eax                               
0x006B5A56:  push     0                                 
0x006B5A58:  mov      ecx, dword ptr [ebp - 0x14]       
0x006B5A5B:  push     ecx                               
0x006B5A5C:  call     0x8eb080                          
0x006B5A61:  add      esp, 0xc                          
0x006B5A64:  mov      edx, dword ptr [ebp - 0x3c]       
0x006B5A67:  mov      eax, dword ptr [ebp - 0x14]       
0x006B5A6A:  mov      dword ptr [edx + 8], eax          
0x006B5A6D:  mov      dword ptr [ebp - 4], 0            
0x006B5A74:  jmp      0x6b5a7f                          
0x006B5A76:  mov      ecx, dword ptr [ebp - 4]          
0x006B5A79:  add      ecx, 1                            
0x006B5A7C:  mov      dword ptr [ebp - 4], ecx          
0x006B5A7F:  mov      edx, dword ptr [ebp - 4]          
0x006B5A82:  cmp      edx, dword ptr [ebp + 0xc]        
0x006B5A85:  jge      0x6b5b2e                          
0x006B5A8B:  mov      eax, dword ptr [ebp - 4]          
0x006B5A8E:  imul     eax, eax, 0xc                     
0x006B5A91:  mov      ecx, dword ptr [ebp + 8]          
0x006B5A94:  mov      edx, dword ptr [ecx + eax + 8]    
0x006B5A98:  push     edx                               
0x006B5A99:  push     0x80                              
0x006B5A9E:  mov      eax, dword ptr [ebp - 4]          
0x006B5AA1:  imul     eax, eax, 0x218                   
0x006B5AA7:  mov      ecx, dword ptr [ebp - 0x3c]       
0x006B5AAA:  mov      edx, dword ptr [ecx + 8]          
0x006B5AAD:  lea      eax, [edx + eax + 4]              
0x006B5AB1:  push     eax                               
0x006B5AB2:  call     0x694410                          
0x006B5AB7:  add      esp, 0xc                          
0x006B5ABA:  mov      ecx, dword ptr [ebp - 4]          
0x006B5ABD:  imul     ecx, ecx, 0xc                     
0x006B5AC0:  mov      edx, dword ptr [ebp - 4]          
0x006B5AC3:  imul     edx, edx, 0x218                   
0x006B5AC9:  mov      eax, dword ptr [ebp - 0x3c]       
0x006B5ACC:  mov      eax, dword ptr [eax + 8]          
0x006B5ACF:  mov      esi, dword ptr [ebp + 8]          
0x006B5AD2:  mov      ecx, dword ptr [esi + ecx]        
0x006B5AD5:  mov      dword ptr [edx + eax], ecx        
0x006B5AD8:  mov      edx, dword ptr [ebp - 4]          
0x006B5ADB:  imul     edx, edx, 0xc                     
0x006B5ADE:  add      edx, dword ptr [ebp + 8]          
0x006B5AE1:  mov      eax, dword ptr [ebp - 4]          
0x006B5AE4:  imul     eax, eax, 0x218                   
0x006B5AEA:  mov      ecx, dword ptr [ebp - 0x3c]       
0x006B5AED:  mov      ecx, dword ptr [ecx + 8]          
0x006B5AF0:  lea      eax, [ecx + eax + 0x20c]          
0x006B5AF7:  mov      ecx, dword ptr [edx]              
0x006B5AF9:  mov      dword ptr [eax], ecx              
0x006B5AFB:  mov      ecx, dword ptr [edx + 4]          
0x006B5AFE:  mov      dword ptr [eax + 4], ecx          
0x006B5B01:  mov      edx, dword ptr [edx + 8]          
0x006B5B04:  mov      dword ptr [eax + 8], edx          
0x006B5B07:  mov      eax, dword ptr [ebp - 4]          
0x006B5B0A:  imul     eax, eax, 0xc                     
0x006B5B0D:  mov      ecx, dword ptr [ebp - 4]          
0x006B5B10:  imul     ecx, ecx, 0x218                   
0x006B5B16:  mov      edx, dword ptr [ebp - 0x3c]       
0x006B5B19:  mov      edx, dword ptr [edx + 8]          
0x006B5B1C:  mov      esi, dword ptr [ebp + 8]          
0x006B5B1F:  mov      eax, dword ptr [esi + eax]        
0x006B5B22:  mov      dword ptr [edx + ecx + 0x210], eax
0x006B5B29:  jmp      0x6b5a76                          
0x006B5B2E:  mov      ecx, dword ptr [ebp - 0x3c]       
0x006B5B31:  call     0x6b6170                          
0x006B5B36:  mov      ecx, dword ptr [ebp - 0x3c]       
0x006B5B39:  call     0x6b5ce0                          
0x006B5B3E:  mov      eax, dword ptr [ebp - 0x3c]       
0x006B5B41:  pop      esi                               
0x006B5B42:  mov      esp, ebp                          
0x006B5B44:  pop      ebp                               
0x006B5B45:  ret      8                                 
0x006B5B48:  int3                                       
0x006B5B49:  int3                                       
0x006B5B4A:  int3                                       
0x006B5B4B:  int3                                       
0x006B5B4C:  int3                                       
0x006B5B4D:  int3                                       
0x006B5B4E:  int3                                       
0x006B5B4F:  int3                                       
0x006B5B50:  push     ebp                               
0x006B5B51:  mov      ebp, esp                          
0x006B5B53:  sub      esp, 0x10                         
0x006B5B56:  mov      dword ptr [ebp - 0x10], ecx       
0x006B5B59:  push     0                                 
0x006B5B5B:  push     1                                 
0x006B5B5D:  push     0                                 
0x006B5B5F:  push     0                                 
0x006B5B61:  push     0                                 
0x006B5B63:  push     0                                 
0x006B5B65:  mov      eax, dword ptr [ebp - 0x10]       
0x006B5B68:  mov      ecx, dword ptr [eax + 8]          
0x006B5B6B:  push     ecx                               
0x006B5B6C:  call     0x680690                          
0x006B5B71:  add      esp, 0x1c                         
0x006B5B74:  mov      edx, dword ptr [ebp - 0x10]       
0x006B5B77:  mov      dword ptr [edx + 8], 0            
0x006B5B7E:  xor      eax, eax                          
0x006B5B80:  jne      0x6b5b59                          
0x006B5B82:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B5B85:  add      ecx, 0x48                         
0x006B5B88:  mov      dword ptr [ebp - 4], ecx          
0x006B5B8B:  mov      edx, dword ptr [ebp - 4]          
0x006B5B8E:  mov      dword ptr [edx], 0x99b6f8         
0x006B5B94:  mov      eax, dword ptr [ebp - 4]          
0x006B5B97:  movzx    ecx, byte ptr [eax + 4]           
0x006B5B9B:  and      ecx, 1                            
0x006B5B9E:  je       0x6b5bad                          
0x006B5BA0:  mov      edx, dword ptr [ebp - 4]          
0x006B5BA3:  push     edx                               
0x006B5BA4:  call     dword ptr [0x95b398]              
0x006B5BAA:  add      esp, 4                            
0x006B5BAD:  mov      eax, dword ptr [ebp - 0x10]       
0x006B5BB0:  add      eax, 0x34                         
0x006B5BB3:  mov      dword ptr [ebp - 8], eax          
0x006B5BB6:  mov      ecx, dword ptr [ebp - 8]          
0x006B5BB9:  mov      dword ptr [ecx], 0x99b704         
0x006B5BBF:  mov      edx, dword ptr [ebp - 8]          
0x006B5BC2:  movzx    eax, byte ptr [edx + 4]           
0x006B5BC6:  and      eax, 1                            
0x006B5BC9:  je       0x6b5bd8                          
0x006B5BCB:  mov      ecx, dword ptr [ebp - 8]          
0x006B5BCE:  push     ecx                               
0x006B5BCF:  call     dword ptr [0x95b398]              
0x006B5BD5:  add      esp, 4                            
0x006B5BD8:  mov      edx, dword ptr [ebp - 0x10]       
0x006B5BDB:  add      edx, 0x20                         
0x006B5BDE:  mov      dword ptr [ebp - 0xc], edx        
0x006B5BE1:  mov      eax, dword ptr [ebp - 0xc]        
0x006B5BE4:  mov      dword ptr [eax], 0x99b804         
0x006B5BEA:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B5BED:  movzx    edx, byte ptr [ecx + 4]           
0x006B5BF1:  and      edx, 1                            
0x006B5BF4:  je       0x6b5c03                          
0x006B5BF6:  mov      eax, dword ptr [ebp - 0xc]        
0x006B5BF9:  push     eax                               
0x006B5BFA:  call     dword ptr [0x95b398]              
0x006B5C00:  add      esp, 4                            
0x006B5C03:  mov      esp, ebp                          
0x006B5C05:  pop      ebp                               
0x006B5C06:  ret                                        
0x006B5C07:  int3                                       
0x006B5C08:  int3                                       
0x006B5C09:  int3                                       
0x006B5C0A:  int3                                       
0x006B5C0B:  int3                                       
0x006B5C0C:  int3                                       
0x006B5C0D:  int3                                       
0x006B5C0E:  int3                                       
0x006B5C0F:  int3                                       
0x006B5C10:  push     ebp                               
0x006B5C11:  mov      ebp, esp                          
0x006B5C13:  sub      esp, 0xc                          
0x006B5C16:  mov      dword ptr [ebp - 0xc], ecx        
0x006B5C19:  mov      dword ptr [ebp - 4], 0            
0x006B5C20:  jmp      0x6b5c2b                          
0x006B5C22:  mov      eax, dword ptr [ebp - 4]          
0x006B5C25:  add      eax, 1                            
0x006B5C28:  mov      dword ptr [ebp - 4], eax          
0x006B5C2B:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B5C2E:  mov      edx, dword ptr [ebp - 4]          
0x006B5C31:  cmp      edx, dword ptr [ecx + 0xc]        
0x006B5C34:  jge      0x6b5c78                          
0x006B5C36:  mov      eax, dword ptr [ebp - 4]          
0x006B5C39:  imul     eax, eax, 0x218                   
0x006B5C3F:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B5C42:  mov      edx, dword ptr [ecx + 8]          
0x006B5C45:  lea      eax, [edx + eax + 4]              
0x006B5C49:  mov      dword ptr [ebp - 8], eax          
0x006B5C4C:  push     0                                 
0x006B5C4E:  mov      ecx, dword ptr [ebp + 8]          
0x006B5C51:  push     ecx                               
0x006B5C52:  mov      edx, dword ptr [ebp - 8]          
0x006B5C55:  push     edx                               
0x006B5C56:  call     0x6944f0                          
0x006B5C5B:  add      esp, 0xc                          
0x006B5C5E:  test     eax, eax                          
0x006B5C60:  jne      0x6b5c76                          
0x006B5C62:  mov      eax, dword ptr [ebp - 4]          
0x006B5C65:  imul     eax, eax, 0x218                   
0x006B5C6B:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B5C6E:  mov      edx, dword ptr [ecx + 8]          
0x006B5C71:  mov      eax, dword ptr [eax + edx]        
0x006B5C74:  jmp      0x6b5c7b                          
0x006B5C76:  jmp      0x6b5c22                          
0x006B5C78:  or       eax, 0xffffffff                   
0x006B5C7B:  mov      esp, ebp                          
0x006B5C7D:  pop      ebp                               
0x006B5C7E:  ret      4                                 
0x006B5C81:  int3                                       
0x006B5C82:  int3                                       
0x006B5C83:  int3                                       
0x006B5C84:  int3                                       
0x006B5C85:  int3                                       
0x006B5C86:  int3                                       
0x006B5C87:  int3                                       
0x006B5C88:  int3                                       
0x006B5C89:  int3                                       
0x006B5C8A:  int3                                       
0x006B5C8B:  int3                                       
0x006B5C8C:  int3                                       
0x006B5C8D:  int3                                       
0x006B5C8E:  int3                                       
0x006B5C8F:  int3                                       
0x006B5C90:  push     ebp                               
0x006B5C91:  mov      ebp, esp                          
0x006B5C93:  sub      esp, 8                            
0x006B5C96:  mov      dword ptr [ebp - 8], ecx          
0x006B5C99:  mov      dword ptr [ebp - 4], 0            
0x006B5CA0:  jmp      0x6b5cab                          
0x006B5CA2:  mov      eax, dword ptr [ebp - 4]          
0x006B5CA5:  add      eax, 1                            
0x006B5CA8:  mov      dword ptr [ebp - 4], eax          
0x006B5CAB:  mov      ecx, dword ptr [ebp - 8]          
0x006B5CAE:  mov      edx, dword ptr [ebp - 4]          
0x006B5CB1:  cmp      edx, dword ptr [ecx + 0xc]        
0x006B5CB4:  jge      0x6b5cd4                          
0x006B5CB6:  mov      eax, dword ptr [ebp - 4]          
0x006B5CB9:  imul     eax, eax, 0x218                   
0x006B5CBF:  mov      ecx, dword ptr [ebp - 8]          
0x006B5CC2:  mov      edx, dword ptr [ecx + 8]          
0x006B5CC5:  mov      eax, dword ptr [eax + edx]        
0x006B5CC8:  cmp      eax, dword ptr [ebp + 8]          
0x006B5CCB:  jne      0x6b5cd2                          
0x006B5CCD:  mov      eax, dword ptr [ebp - 4]          
0x006B5CD0:  jmp      0x6b5cd7                          
0x006B5CD2:  jmp      0x6b5ca2                          
0x006B5CD4:  or       eax, 0xffffffff                   
0x006B5CD7:  mov      esp, ebp                          
0x006B5CD9:  pop      ebp                               
0x006B5CDA:  ret      4                                 
0x006B5CDD:  int3                                       
0x006B5CDE:  int3                                       
0x006B5CDF:  int3                                       
0x006B5CE0:  push     ebp                               
0x006B5CE1:  mov      ebp, esp                          
0x006B5CE3:  sub      esp, 8                            
0x006B5CE6:  mov      dword ptr [ebp - 8], ecx          
0x006B5CE9:  mov      eax, dword ptr [ebp - 8]          
0x006B5CEC:  mov      dword ptr [eax + 0x14], 0         
0x006B5CF3:  cmp      dword ptr [0xb75298], 0           
0x006B5CFA:  je       0x6b5d05                          
0x006B5CFC:  cmp      dword ptr [0xb75260], 0           
0x006B5D03:  jne      0x6b5d09                          
0x006B5D05:  xor      eax, eax                          
0x006B5D07:  jmp      0x6b5d52                          
0x006B5D09:  mov      ecx, dword ptr [0xb75260]         
0x006B5D0F:  mov      edx, dword ptr [ecx]              
0x006B5D11:  mov      ecx, dword ptr [0xb75260]         
0x006B5D17:  mov      eax, dword ptr [edx + 4]          
0x006B5D1A:  call     eax                               
0x006B5D1C:  movzx    ecx, al                           
0x006B5D1F:  test     ecx, ecx                          
0x006B5D21:  jne      0x6b5d27                          
0x006B5D23:  xor      eax, eax                          
0x006B5D25:  jmp      0x6b5d52                          
0x006B5D27:  mov      edx, dword ptr [0xb75298]         
0x006B5D2D:  mov      eax, dword ptr [edx]              
0x006B5D2F:  mov      ecx, dword ptr [0xb75298]         
0x006B5D35:  mov      edx, dword ptr [eax]              
0x006B5D37:  call     edx                               
0x006B5D39:  movzx    eax, al                           
0x006B5D3C:  mov      dword ptr [ebp - 4], eax          
0x006B5D3F:  cmp      dword ptr [ebp - 4], 0            
0x006B5D43:  je       0x6b5d4f                          
0x006B5D45:  mov      ecx, dword ptr [ebp - 8]          
0x006B5D48:  mov      dword ptr [ecx + 0x14], 1         
0x006B5D4F:  mov      eax, dword ptr [ebp - 4]          
0x006B5D52:  mov      esp, ebp                          
0x006B5D54:  pop      ebp                               
0x006B5D55:  ret                                        
0x006B5D56:  int3                                       
0x006B5D57:  int3                                       
0x006B5D58:  int3                                       
0x006B5D59:  int3                                       
0x006B5D5A:  int3                                       
0x006B5D5B:  int3                                       
0x006B5D5C:  int3                                       
0x006B5D5D:  int3                                       
0x006B5D5E:  int3                                       
0x006B5D5F:  int3                                       
0x006B5D60:  push     ebp                               
0x006B5D61:  mov      ebp, esp                          
0x006B5D63:  sub      esp, 0xc                          
0x006B5D66:  mov      dword ptr [ebp - 0xc], ecx        
0x006B5D69:  mov      eax, dword ptr [ebp + 8]          
0x006B5D6C:  push     eax                               
0x006B5D6D:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B5D70:  call     0x6b61c0                          
0x006B5D75:  test     eax, eax                          
0x006B5D77:  je       0x6b5d83                          
0x006B5D79:  mov      eax, 1                            
0x006B5D7E:  jmp      0x6b5e06                          
0x006B5D83:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B5D86:  call     0x6b6220                          
0x006B5D8B:  mov      dword ptr [ebp - 8], eax          
0x006B5D8E:  cmp      dword ptr [ebp - 8], 0            
0x006B5D92:  jne      0x6b5d98                          
0x006B5D94:  xor      eax, eax                          
0x006B5D96:  jmp      0x6b5e06                          
0x006B5D98:  mov      ecx, dword ptr [ebp + 8]          
0x006B5D9B:  push     ecx                               
0x006B5D9C:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B5D9F:  call     0x6b5c90                          
0x006B5DA4:  mov      dword ptr [ebp - 4], eax          
0x006B5DA7:  cmp      dword ptr [ebp - 4], 0            
0x006B5DAB:  jge      0x6b5dc3                          
0x006B5DAD:  mov      edx, dword ptr [ebp - 8]          
0x006B5DB0:  mov      eax, dword ptr [ebp + 8]          
0x006B5DB3:  mov      dword ptr [edx], eax              
0x006B5DB5:  mov      ecx, dword ptr [ebp - 8]          
0x006B5DB8:  mov      dword ptr [ecx + 8], 4            
0x006B5DBF:  xor      eax, eax                          
0x006B5DC1:  jmp      0x6b5e06                          
0x006B5DC3:  mov      edx, dword ptr [ebp - 0xc]        
0x006B5DC6:  movzx    eax, byte ptr [edx + 0x10]        
0x006B5DCA:  test     eax, eax                          
0x006B5DCC:  je       0x6b5df2                          
0x006B5DCE:  mov      ecx, dword ptr [ebp - 8]          
0x006B5DD1:  mov      edx, dword ptr [ebp + 8]          
0x006B5DD4:  mov      dword ptr [ecx], edx              
0x006B5DD6:  mov      eax, dword ptr [ebp - 8]          
0x006B5DD9:  mov      ecx, dword ptr [ebp - 4]          
0x006B5DDC:  mov      dword ptr [eax + 4], ecx          
0x006B5DDF:  mov      edx, dword ptr [ebp - 8]          
0x006B5DE2:  mov      dword ptr [edx + 8], 1            
0x006B5DE9:  mov      eax, 1                            
0x006B5DEE:  jmp      0x6b5e06                          
0x006B5DF0:  jmp      0x6b5e06                          
0x006B5DF2:  mov      eax, dword ptr [ebp - 8]          
0x006B5DF5:  mov      ecx, dword ptr [ebp + 8]          
0x006B5DF8:  mov      dword ptr [eax], ecx              
0x006B5DFA:  mov      edx, dword ptr [ebp - 8]          
0x006B5DFD:  mov      dword ptr [edx + 8], 5            
0x006B5E04:  xor      eax, eax                          
0x006B5E06:  mov      esp, ebp                          
0x006B5E08:  pop      ebp                               
0x006B5E09:  ret      4                                 
0x006B5E0C:  int3                                       
0x006B5E0D:  int3                                       
0x006B5E0E:  int3                                       
0x006B5E0F:  int3                                       
0x006B5E10:  push     ebp                               
0x006B5E11:  mov      ebp, esp                          
0x006B5E13:  sub      esp, 8                            
0x006B5E16:  mov      dword ptr [ebp - 8], ecx          
0x006B5E19:  mov      eax, dword ptr [ebp - 8]          
0x006B5E1C:  movzx    ecx, byte ptr [eax + 0x10]        
0x006B5E20:  test     ecx, ecx                          
0x006B5E22:  je       0x6b5eb5                          
0x006B5E28:  mov      edx, dword ptr [ebp + 8]          
0x006B5E2B:  mov      eax, dword ptr [edx + 4]          
0x006B5E2E:  imul     eax, eax, 0x218                   
0x006B5E34:  mov      ecx, dword ptr [ebp - 8]          
0x006B5E37:  mov      edx, dword ptr [ecx + 8]          
0x006B5E3A:  lea      eax, [edx + eax + 4]              
0x006B5E3E:  push     eax                               
0x006B5E3F:  mov      ecx, dword ptr [0xb75298]         
0x006B5E45:  mov      edx, dword ptr [ecx]              
0x006B5E47:  mov      ecx, dword ptr [0xb75298]         
0x006B5E4D:  mov      eax, dword ptr [edx + 0x1c]       
0x006B5E50:  call     eax                               
0x006B5E52:  movzx    ecx, al                           
0x006B5E55:  mov      dword ptr [ebp - 4], ecx          
0x006B5E58:  cmp      dword ptr [ebp - 4], 0            
0x006B5E5C:  jne      0x6b5e6c                          
0x006B5E5E:  mov      edx, dword ptr [ebp + 8]          
0x006B5E61:  mov      dword ptr [edx + 8], 4            
0x006B5E68:  jmp      0x6b5ebf                          
0x006B5E6A:  jmp      0x6b5ea0                          
0x006B5E6C:  mov      eax, dword ptr [ebp + 8]          
0x006B5E6F:  mov      ecx, dword ptr [eax + 4]          
0x006B5E72:  imul     ecx, ecx, 0x218                   
0x006B5E78:  mov      edx, dword ptr [ebp - 8]          
0x006B5E7B:  mov      eax, dword ptr [edx + 8]          
0x006B5E7E:  movzx    ecx, byte ptr [eax + ecx + 0x204] 
0x006B5E86:  test     ecx, ecx                          
0x006B5E88:  je       0x6b5e96                          
0x006B5E8A:  mov      edx, dword ptr [ebp + 8]          
0x006B5E8D:  mov      dword ptr [edx + 8], 3            
0x006B5E94:  jmp      0x6b5ea0                          
0x006B5E96:  mov      eax, dword ptr [ebp + 8]          
0x006B5E99:  mov      dword ptr [eax + 8], 2            
0x006B5EA0:  mov      ecx, dword ptr [0xb75298]         
0x006B5EA6:  mov      edx, dword ptr [ecx]              
0x006B5EA8:  mov      ecx, dword ptr [0xb75298]         
0x006B5EAE:  mov      eax, dword ptr [edx + 0x28]       
0x006B5EB1:  call     eax                               
0x006B5EB3:  jmp      0x6b5ebf                          
0x006B5EB5:  mov      ecx, dword ptr [ebp + 8]          
0x006B5EB8:  mov      dword ptr [ecx + 8], 5            
0x006B5EBF:  mov      esp, ebp                          
0x006B5EC1:  pop      ebp                               
0x006B5EC2:  ret      4                                 
0x006B5EC5:  int3                                       
0x006B5EC6:  int3                                       
0x006B5EC7:  int3                                       
0x006B5EC8:  int3                                       
0x006B5EC9:  int3                                       
0x006B5ECA:  int3                                       
0x006B5ECB:  int3                                       
0x006B5ECC:  int3                                       
0x006B5ECD:  int3                                       
0x006B5ECE:  int3                                       
0x006B5ECF:  int3                                       
0x006B5ED0:  push     ebp                               
0x006B5ED1:  mov      ebp, esp                          
0x006B5ED3:  sub      esp, 0x14                         
0x006B5ED6:  mov      dword ptr [ebp - 0xc], ecx        
0x006B5ED9:  mov      eax, dword ptr [ebp - 0xc]        
0x006B5EDC:  mov      ecx, dword ptr [ebp + 8]          
0x006B5EDF:  mov      dword ptr [ebp - 0x10], eax       
0x006B5EE2:  mov      dword ptr [ebp - 0x14], ecx       
0x006B5EE5:  mov      edx, dword ptr [ebp - 0x10]       
0x006B5EE8:  mov      eax, dword ptr [ebp - 0x14]       
0x006B5EEB:  mov      ecx, dword ptr [edx]              
0x006B5EED:  cmp      ecx, dword ptr [eax]              
0x006B5EEF:  jne      0x6b600d                          
0x006B5EF5:  mov      edx, dword ptr [ebp - 0x10]       
0x006B5EF8:  mov      eax, dword ptr [ebp - 0x14]       
0x006B5EFB:  mov      ecx, dword ptr [edx + 4]          
0x006B5EFE:  cmp      ecx, dword ptr [eax + 4]          
0x006B5F01:  jne      0x6b600d                          
0x006B5F07:  mov      edx, dword ptr [ebp + 8]          
0x006B5F0A:  cmp      dword ptr [edx + 8], 1            
0x006B5F0E:  jne      0x6b5fee                          
0x006B5F14:  mov      eax, dword ptr [ebp - 0xc]        
0x006B5F17:  mov      dword ptr [eax + 0x14], 2         
0x006B5F1E:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B5F21:  mov      byte ptr [ecx + 0x10], 1          
0x006B5F25:  mov      dword ptr [ebp - 4], 0            
0x006B5F2C:  jmp      0x6b5f37                          
0x006B5F2E:  mov      edx, dword ptr [ebp - 4]          
0x006B5F31:  add      edx, 1                            
0x006B5F34:  mov      dword ptr [ebp - 4], edx          
0x006B5F37:  mov      eax, dword ptr [ebp - 0xc]        
0x006B5F3A:  mov      ecx, dword ptr [ebp - 4]          
0x006B5F3D:  cmp      ecx, dword ptr [eax + 0xc]        
0x006B5F40:  jge      0x6b5fec                          
0x006B5F46:  mov      edx, dword ptr [ebp - 4]          
0x006B5F49:  imul     edx, edx, 0x218                   
0x006B5F4F:  mov      eax, dword ptr [ebp - 0xc]        
0x006B5F52:  add      edx, dword ptr [eax + 8]          
0x006B5F55:  mov      dword ptr [ebp - 8], edx          
0x006B5F58:  mov      ecx, dword ptr [ebp - 8]          
0x006B5F5B:  add      ecx, 0x204                        
0x006B5F61:  push     ecx                               
0x006B5F62:  mov      edx, dword ptr [ebp - 8]          
0x006B5F65:  add      edx, 4                            
0x006B5F68:  push     edx                               
0x006B5F69:  mov      eax, dword ptr [0xb75298]         
0x006B5F6E:  mov      edx, dword ptr [eax]              
0x006B5F70:  mov      ecx, dword ptr [0xb75298]         
0x006B5F76:  mov      eax, dword ptr [edx + 0x18]       
0x006B5F79:  call     eax                               
0x006B5F7B:  push     0x99b724                           ; "name"
0x006B5F80:  mov      ecx, dword ptr [ebp - 8]          
0x006B5F83:  add      ecx, 4                            
0x006B5F86:  push     ecx                               
0x006B5F87:  mov      edx, dword ptr [0xb75298]         
0x006B5F8D:  mov      eax, dword ptr [edx]              
0x006B5F8F:  mov      ecx, dword ptr [0xb75298]         
0x006B5F95:  mov      edx, dword ptr [eax + 0x30]       
0x006B5F98:  call     edx                               
0x006B5F9A:  push     eax                               
0x006B5F9B:  push     0x80                              
0x006B5FA0:  mov      eax, dword ptr [ebp - 8]          
0x006B5FA3:  add      eax, 0x84                         
0x006B5FA8:  push     eax                               
0x006B5FA9:  call     0x694410                          
0x006B5FAE:  add      esp, 0xc                          
0x006B5FB1:  push     0x99b71c                           ; "desc"
0x006B5FB6:  mov      ecx, dword ptr [ebp - 8]          
0x006B5FB9:  add      ecx, 4                            
0x006B5FBC:  push     ecx                               
0x006B5FBD:  mov      edx, dword ptr [0xb75298]         
0x006B5FC3:  mov      eax, dword ptr [edx]              
0x006B5FC5:  mov      ecx, dword ptr [0xb75298]         
0x006B5FCB:  mov      edx, dword ptr [eax + 0x30]       
0x006B5FCE:  call     edx                               
0x006B5FD0:  push     eax                               
0x006B5FD1:  push     0x100                             
0x006B5FD6:  mov      eax, dword ptr [ebp - 8]          
0x006B5FD9:  add      eax, 0x104                        
0x006B5FDE:  push     eax                               
0x006B5FDF:  call     0x694410                          
0x006B5FE4:  add      esp, 0xc                          
0x006B5FE7:  jmp      0x6b5f2e                          
0x006B5FEC:  jmp      0x6b600d                          
0x006B5FEE:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B5FF1:  mov      dword ptr [ecx + 0x14], 0         
0x006B5FF8:  mov      edx, dword ptr [ebp - 0xc]        
0x006B5FFB:  mov      byte ptr [edx + 0x10], 0          
0x006B5FFF:  push     3                                 
0x006B6001:  push     0                                 
0x006B6003:  push     0                                 
0x006B6005:  call     0x6b6490                          
0x006B600A:  add      esp, 0xc                          
0x006B600D:  mov      esp, ebp                          
0x006B600F:  pop      ebp                               
0x006B6010:  ret      4                                 
0x006B6013:  int3                                       
0x006B6014:  int3                                       
0x006B6015:  int3                                       
0x006B6016:  int3                                       
0x006B6017:  int3                                       
0x006B6018:  int3                                       
0x006B6019:  int3                                       
0x006B601A:  int3                                       
0x006B601B:  int3                                       
0x006B601C:  int3                                       
0x006B601D:  int3                                       
0x006B601E:  int3                                       
0x006B601F:  int3                                       
0x006B6020:  push     ebp                               
0x006B6021:  mov      ebp, esp                          
0x006B6023:  sub      esp, 0x1c                         
0x006B6026:  mov      dword ptr [ebp - 0x10], ecx       
0x006B6029:  mov      eax, dword ptr [ebp - 0x10]       
0x006B602C:  mov      ecx, dword ptr [ebp + 8]          
0x006B602F:  mov      dword ptr [ebp - 0x14], eax       
0x006B6032:  mov      dword ptr [ebp - 0x18], ecx       
0x006B6035:  mov      edx, dword ptr [ebp - 0x14]       
0x006B6038:  mov      eax, dword ptr [ebp - 0x18]       
0x006B603B:  mov      ecx, dword ptr [edx]              
0x006B603D:  cmp      ecx, dword ptr [eax]              
0x006B603F:  jne      0x6b60df                          
0x006B6045:  mov      edx, dword ptr [ebp - 0x14]       
0x006B6048:  mov      eax, dword ptr [ebp - 0x18]       
0x006B604B:  mov      ecx, dword ptr [edx + 4]          
0x006B604E:  cmp      ecx, dword ptr [eax + 4]          
0x006B6051:  jne      0x6b60df                          
0x006B6057:  mov      edx, dword ptr [ebp + 8]          
0x006B605A:  cmp      dword ptr [edx + 8], 1            
0x006B605E:  jne      0x6b6062                          
0x006B6060:  jmp      0x6b60df                          
0x006B6062:  mov      eax, dword ptr [ebp + 8]          
0x006B6065:  cmp      dword ptr [eax + 8], 3            
0x006B6069:  jne      0x6b6074                          
0x006B606B:  mov      dword ptr [ebp - 8], 5            
0x006B6072:  jmp      0x6b607b                          
0x006B6074:  mov      dword ptr [ebp - 8], 4            
0x006B607B:  mov      dword ptr [ebp - 4], 0            
0x006B6082:  jmp      0x6b608d                          
0x006B6084:  mov      ecx, dword ptr [ebp - 4]          
0x006B6087:  add      ecx, 1                            
0x006B608A:  mov      dword ptr [ebp - 4], ecx          
0x006B608D:  cmp      dword ptr [ebp - 4], 8            
0x006B6091:  jge      0x6b60c5                          
0x006B6093:  mov      edx, dword ptr [ebp - 4]          
0x006B6096:  imul     edx, edx, 0xc                     
0x006B6099:  mov      eax, dword ptr [ebp - 0x10]       
0x006B609C:  lea      ecx, [eax + edx + 0x5c]           
0x006B60A0:  mov      dword ptr [ebp - 0xc], ecx        
0x006B60A3:  mov      edx, dword ptr [ebp - 0xc]        
0x006B60A6:  mov      eax, dword ptr [edx + 8]          
0x006B60A9:  mov      dword ptr [ebp - 0x1c], eax       
0x006B60AC:  cmp      dword ptr [ebp - 0x1c], 0         
0x006B60B0:  jle      0x6b60c3                          
0x006B60B2:  cmp      dword ptr [ebp - 0x1c], 2         
0x006B60B6:  jle      0x6b60ba                          
0x006B60B8:  jmp      0x6b60c3                          
0x006B60BA:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B60BD:  mov      edx, dword ptr [ebp - 8]          
0x006B60C0:  mov      dword ptr [ecx + 8], edx          
0x006B60C3:  jmp      0x6b6084                          
0x006B60C5:  mov      eax, dword ptr [ebp + 8]          
0x006B60C8:  cmp      dword ptr [eax + 8], 3            
0x006B60CC:  jne      0x6b60df                          
0x006B60CE:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B60D1:  mov      dword ptr [ecx + 0x14], 0         
0x006B60D8:  mov      edx, dword ptr [ebp - 0x10]       
0x006B60DB:  mov      byte ptr [edx + 0x10], 0          
0x006B60DF:  mov      esp, ebp                          
0x006B60E1:  pop      ebp                               
0x006B60E2:  ret      4                                 
0x006B60E5:  int3                                       
0x006B60E6:  int3                                       
0x006B60E7:  int3                                       
0x006B60E8:  int3                                       
0x006B60E9:  int3                                       
0x006B60EA:  int3                                       
0x006B60EB:  int3                                       
0x006B60EC:  int3                                       
0x006B60ED:  int3                                       
0x006B60EE:  int3                                       
0x006B60EF:  int3                                       
0x006B60F0:  push     ebp                               
0x006B60F1:  mov      ebp, esp                          
0x006B60F3:  sub      esp, 0x14                         
0x006B60F6:  mov      dword ptr [ebp - 0xc], ecx        
0x006B60F9:  mov      eax, dword ptr [ebp - 0xc]        
0x006B60FC:  mov      ecx, dword ptr [ebp + 8]          
0x006B60FF:  mov      dword ptr [ebp - 0x10], eax       
0x006B6102:  mov      dword ptr [ebp - 0x14], ecx       
0x006B6105:  mov      edx, dword ptr [ebp - 0x10]       
0x006B6108:  mov      eax, dword ptr [ebp - 0x14]       
0x006B610B:  mov      ecx, dword ptr [edx]              
0x006B610D:  cmp      ecx, dword ptr [eax]              
0x006B610F:  jne      0x6b615d                          
0x006B6111:  mov      edx, dword ptr [ebp - 0x10]       
0x006B6114:  mov      eax, dword ptr [ebp - 0x14]       
0x006B6117:  mov      ecx, dword ptr [edx + 4]          
0x006B611A:  cmp      ecx, dword ptr [eax + 4]          
0x006B611D:  jne      0x6b615d                          
0x006B611F:  mov      edx, dword ptr [ebp + 8]          
0x006B6122:  add      edx, 9                            
0x006B6125:  push     edx                               
0x006B6126:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B6129:  call     0x6b5c10                          
0x006B612E:  mov      dword ptr [ebp - 4], eax          
0x006B6131:  mov      eax, dword ptr [ebp - 4]          
0x006B6134:  push     eax                               
0x006B6135:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B6138:  call     0x6b5c90                          
0x006B613D:  mov      dword ptr [ebp - 8], eax          
0x006B6140:  cmp      dword ptr [ebp - 8], 0            
0x006B6144:  jl       0x6b615d                          
0x006B6146:  mov      ecx, dword ptr [ebp - 8]          
0x006B6149:  imul     ecx, ecx, 0x218                   
0x006B614F:  mov      edx, dword ptr [ebp - 0xc]        
0x006B6152:  mov      eax, dword ptr [edx + 8]          
0x006B6155:  mov      byte ptr [eax + ecx + 0x204], 1   
0x006B615D:  mov      esp, ebp                          
0x006B615F:  pop      ebp                               
0x006B6160:  ret      4                                 
0x006B6163:  int3                                       
0x006B6164:  int3                                       
0x006B6165:  int3                                       
0x006B6166:  int3                                       
0x006B6167:  int3                                       
0x006B6168:  int3                                       
0x006B6169:  int3                                       
0x006B616A:  int3                                       
0x006B616B:  int3                                       
0x006B616C:  int3                                       
0x006B616D:  int3                                       
0x006B616E:  int3                                       
0x006B616F:  int3                                       
0x006B6170:  push     ebp                               
0x006B6171:  mov      ebp, esp                          
0x006B6173:  sub      esp, 8                            
0x006B6176:  mov      dword ptr [ebp - 8], ecx          
0x006B6179:  mov      dword ptr [ebp - 4], 0            
0x006B6180:  jmp      0x6b618b                          
0x006B6182:  mov      eax, dword ptr [ebp - 4]          
0x006B6185:  add      eax, 1                            
0x006B6188:  mov      dword ptr [ebp - 4], eax          
0x006B618B:  cmp      dword ptr [ebp - 4], 8            
0x006B618F:  jge      0x6b61a4                          
0x006B6191:  mov      ecx, dword ptr [ebp - 4]          
0x006B6194:  imul     ecx, ecx, 0xc                     
0x006B6197:  mov      edx, dword ptr [ebp - 8]          
0x006B619A:  mov      dword ptr [edx + ecx + 0x64], 0   
0x006B61A2:  jmp      0x6b6182                          
0x006B61A4:  mov      dword ptr [0xb01bec], 0           
0x006B61AE:  mov      esp, ebp                          
0x006B61B0:  pop      ebp                               
0x006B61B1:  ret                                        
0x006B61B2:  int3                                       
0x006B61B3:  int3                                       
0x006B61B4:  int3                                       
0x006B61B5:  int3                                       
0x006B61B6:  int3                                       
0x006B61B7:  int3                                       
0x006B61B8:  int3                                       
0x006B61B9:  int3                                       
0x006B61BA:  int3                                       
0x006B61BB:  int3                                       
0x006B61BC:  int3                                       
0x006B61BD:  int3                                       
0x006B61BE:  int3                                       
0x006B61BF:  int3                                       
0x006B61C0:  push     ebp                               
0x006B61C1:  mov      ebp, esp                          
0x006B61C3:  sub      esp, 8                            
0x006B61C6:  mov      dword ptr [ebp - 8], ecx          
0x006B61C9:  mov      dword ptr [ebp - 4], 0            
0x006B61D0:  jmp      0x6b61db                          
0x006B61D2:  mov      eax, dword ptr [ebp - 4]          
0x006B61D5:  add      eax, 1                            
0x006B61D8:  mov      dword ptr [ebp - 4], eax          
0x006B61DB:  cmp      dword ptr [ebp - 4], 8            
0x006B61DF:  jge      0x6b620c                          
0x006B61E1:  mov      ecx, dword ptr [ebp - 4]          
0x006B61E4:  imul     ecx, ecx, 0xc                     
0x006B61E7:  mov      edx, dword ptr [ebp - 8]          
0x006B61EA:  mov      eax, dword ptr [edx + ecx + 0x5c] 
0x006B61EE:  cmp      eax, dword ptr [ebp + 8]          
0x006B61F1:  jne      0x6b620a                          
0x006B61F3:  mov      ecx, dword ptr [ebp - 4]          
0x006B61F6:  imul     ecx, ecx, 0xc                     
0x006B61F9:  mov      edx, dword ptr [ebp - 8]          
0x006B61FC:  cmp      dword ptr [edx + ecx + 0x64], 0   
0x006B6201:  je       0x6b620a                          
0x006B6203:  mov      eax, 1                            
0x006B6208:  jmp      0x6b620e                          
0x006B620A:  jmp      0x6b61d2                          
0x006B620C:  xor      eax, eax                          
0x006B620E:  mov      esp, ebp                          
0x006B6210:  pop      ebp                               
0x006B6211:  ret      4                                 
0x006B6214:  int3                                       
0x006B6215:  int3                                       
0x006B6216:  int3                                       
0x006B6217:  int3                                       
0x006B6218:  int3                                       
0x006B6219:  int3                                       
0x006B621A:  int3                                       
0x006B621B:  int3                                       
0x006B621C:  int3                                       
0x006B621D:  int3                                       
0x006B621E:  int3                                       
0x006B621F:  int3                                       
0x006B6220:  push     ebp                               
0x006B6221:  mov      ebp, esp                          
0x006B6223:  sub      esp, 0xc                          
0x006B6226:  mov      dword ptr [ebp - 0xc], ecx        
0x006B6229:  mov      dword ptr [ebp - 8], 0            
0x006B6230:  mov      dword ptr [ebp - 4], 0            
0x006B6237:  jmp      0x6b6242                          
0x006B6239:  mov      eax, dword ptr [ebp - 4]          
0x006B623C:  add      eax, 1                            
0x006B623F:  mov      dword ptr [ebp - 4], eax          
0x006B6242:  cmp      dword ptr [ebp - 4], 8            
0x006B6246:  jge      0x6b626c                          
0x006B6248:  mov      ecx, dword ptr [ebp - 4]          
0x006B624B:  imul     ecx, ecx, 0xc                     
0x006B624E:  mov      edx, dword ptr [ebp - 0xc]        
0x006B6251:  cmp      dword ptr [edx + ecx + 0x64], 0   
0x006B6256:  jne      0x6b626a                          
0x006B6258:  mov      eax, dword ptr [ebp - 4]          
0x006B625B:  imul     eax, eax, 0xc                     
0x006B625E:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B6261:  lea      edx, [ecx + eax + 0x5c]           
0x006B6265:  mov      dword ptr [ebp - 8], edx          
0x006B6268:  jmp      0x6b626c                          
0x006B626A:  jmp      0x6b6239                          
0x006B626C:  mov      eax, dword ptr [ebp - 8]          
0x006B626F:  mov      esp, ebp                          
0x006B6271:  pop      ebp                               
0x006B6272:  ret                                        
0x006B6273:  int3                                       
0x006B6274:  int3                                       
0x006B6275:  int3                                       
0x006B6276:  int3                                       
0x006B6277:  int3                                       
0x006B6278:  int3                                       
0x006B6279:  int3                                       
0x006B627A:  int3                                       
0x006B627B:  int3                                       
0x006B627C:  int3                                       
0x006B627D:  int3                                       
0x006B627E:  int3                                       
0x006B627F:  int3                                       
0x006B6280:  push     ebp                               
0x006B6281:  mov      ebp, esp                          
0x006B6283:  sub      esp, 0x18                         
0x006B6286:  mov      dword ptr [ebp - 0x10], ecx       
0x006B6289:  cmp      dword ptr [0xb01bec], 0           
0x006B6290:  je       0x6b629a                          
0x006B6292:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B6295:  call     0x6b6170                          
0x006B629A:  mov      eax, dword ptr [ebp - 0x10]       
0x006B629D:  movzx    ecx, byte ptr [eax + 0x10]        
0x006B62A1:  test     ecx, ecx                          
0x006B62A3:  jne      0x6b632a                          
0x006B62A9:  mov      edx, dword ptr [ebp - 0x10]       
0x006B62AC:  mov      eax, dword ptr [edx + 0x14]       
0x006B62AF:  mov      dword ptr [ebp - 0x14], eax       
0x006B62B2:  cmp      dword ptr [ebp - 0x14], 0         
0x006B62B6:  je       0x6b62c8                          
0x006B62B8:  cmp      dword ptr [ebp - 0x14], 2         
0x006B62BC:  je       0x6b6323                          
0x006B62BE:  cmp      dword ptr [ebp - 0x14], 3         
0x006B62C2:  je       0x6b62e2                          
0x006B62C4:  jmp      0x6b632a                          
0x006B62C6:  jmp      0x6b632a                          
0x006B62C8:  call     0x6a0cf0                          
0x006B62CD:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B62D0:  mov      dword ptr [ecx + 0x18], eax       
0x006B62D3:  mov      dword ptr [ecx + 0x1c], edx       
0x006B62D6:  mov      edx, dword ptr [ebp - 0x10]       
0x006B62D9:  mov      dword ptr [edx + 0x14], 3         
0x006B62E0:  jmp      0x6b632a                          
0x006B62E2:  call     0x6a0cf0                          
0x006B62E7:  push     edx                               
0x006B62E8:  push     eax                               
0x006B62E9:  mov      eax, dword ptr [ebp - 0x10]       
0x006B62EC:  mov      ecx, dword ptr [eax + 0x1c]       
0x006B62EF:  push     ecx                               
0x006B62F0:  mov      edx, dword ptr [eax + 0x18]       
0x006B62F3:  push     edx                               
0x006B62F4:  call     0x6a0dd0                          
0x006B62F9:  add      esp, 0x10                         
0x006B62FC:  push     edx                               
0x006B62FD:  push     eax                               
0x006B62FE:  call     0x69a850                          
0x006B6303:  add      esp, 8                            
0x006B6306:  fstp     dword ptr [ebp - 8]               
0x006B6309:  fld      dword ptr [ebp - 8]               
0x006B630C:  fcomp    qword ptr [0x99b730]              
0x006B6312:  fnstsw   ax                                
0x006B6314:  test     ah, 1                             
0x006B6317:  jne      0x6b6321                          
0x006B6319:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B631C:  call     0x6b5ce0                          
0x006B6321:  jmp      0x6b632a                          
0x006B6323:  mov      eax, dword ptr [ebp - 0x10]       
0x006B6326:  mov      byte ptr [eax + 0x10], 1          
0x006B632A:  mov      dword ptr [ebp - 4], 0            
0x006B6331:  jmp      0x6b633c                          
0x006B6333:  mov      ecx, dword ptr [ebp - 4]          
0x006B6336:  add      ecx, 1                            
0x006B6339:  mov      dword ptr [ebp - 4], ecx          
0x006B633C:  cmp      dword ptr [ebp - 4], 8            
0x006B6340:  jge      0x6b646c                          
0x006B6346:  mov      edx, dword ptr [ebp - 4]          
0x006B6349:  imul     edx, edx, 0xc                     
0x006B634C:  mov      eax, dword ptr [ebp - 0x10]       
0x006B634F:  lea      ecx, [eax + edx + 0x5c]           
0x006B6353:  mov      dword ptr [ebp - 0xc], ecx        
0x006B6356:  mov      edx, dword ptr [ebp - 0xc]        
0x006B6359:  cmp      dword ptr [edx + 8], 0            
0x006B635D:  jne      0x6b6361                          
0x006B635F:  jmp      0x6b6333                          
0x006B6361:  mov      eax, dword ptr [ebp - 0xc]        
0x006B6364:  mov      ecx, dword ptr [eax + 8]          
0x006B6367:  mov      dword ptr [ebp - 0x18], ecx       
0x006B636A:  mov      edx, dword ptr [ebp - 0x18]       
0x006B636D:  sub      edx, 1                            
0x006B6370:  mov      dword ptr [ebp - 0x18], edx       
0x006B6373:  cmp      dword ptr [ebp - 0x18], 4         
0x006B6377:  ja       0x6b6467                          
0x006B637D:  mov      eax, dword ptr [ebp - 0x18]       
0x006B6380:  jmp      dword ptr [eax*4 + 0x6b6470]      
0x006B6387:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B638A:  push     ecx                               
0x006B638B:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B638E:  call     0x6b5e10                          
0x006B6393:  jmp      0x6b646c                          
0x006B6398:  mov      edx, dword ptr [ebp - 0xc]        
0x006B639B:  mov      eax, dword ptr [edx + 4]          
0x006B639E:  imul     eax, eax, 0x218                   
0x006B63A4:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B63A7:  mov      edx, dword ptr [ecx + 8]          
0x006B63AA:  movzx    eax, byte ptr [edx + eax + 0x204] 
0x006B63B2:  cmp      eax, 1                            
0x006B63B5:  jne      0x6b63d3                          
0x006B63B7:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B63BA:  mov      dword ptr [ecx + 8], 0            
0x006B63C1:  push     4                                 
0x006B63C3:  mov      edx, dword ptr [ebp - 0xc]        
0x006B63C6:  mov      eax, dword ptr [edx]              
0x006B63C8:  push     eax                               
0x006B63C9:  push     0                                 
0x006B63CB:  call     0x6b6490                          
0x006B63D0:  add      esp, 0xc                          
0x006B63D3:  jmp      0x6b6467                          
0x006B63D8:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B63DB:  mov      dword ptr [ecx + 8], 0            
0x006B63E2:  push     4                                 
0x006B63E4:  mov      edx, dword ptr [ebp - 0xc]        
0x006B63E7:  mov      eax, dword ptr [edx]              
0x006B63E9:  push     eax                               
0x006B63EA:  push     0                                 
0x006B63EC:  call     0x6b6490                          
0x006B63F1:  add      esp, 0xc                          
0x006B63F4:  jmp      0x6b6467                          
0x006B63F6:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B63F9:  mov      dword ptr [ecx + 8], 0            
0x006B6400:  push     5                                 
0x006B6402:  mov      edx, dword ptr [ebp - 0xc]        
0x006B6405:  mov      eax, dword ptr [edx]              
0x006B6407:  push     eax                               
0x006B6408:  push     0                                 
0x006B640A:  call     0x6b6490                          
0x006B640F:  add      esp, 0xc                          
0x006B6412:  jmp      0x6b6467                          
0x006B6414:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B6417:  mov      dword ptr [ecx + 8], 0            
0x006B641E:  cmp      dword ptr [0xb75260], 0           
0x006B6425:  je       0x6b6441                          
0x006B6427:  mov      edx, dword ptr [0xb75260]         
0x006B642D:  mov      eax, dword ptr [edx]              
0x006B642F:  mov      ecx, dword ptr [0xb75260]         
0x006B6435:  mov      edx, dword ptr [eax + 4]          
0x006B6438:  call     edx                               
0x006B643A:  movzx    eax, al                           
0x006B643D:  test     eax, eax                          
0x006B643F:  jne      0x6b6455                          
0x006B6441:  push     2                                 
0x006B6443:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B6446:  mov      edx, dword ptr [ecx]              
0x006B6448:  push     edx                               
0x006B6449:  push     0                                 
0x006B644B:  call     0x6b6490                          
0x006B6450:  add      esp, 0xc                          
0x006B6453:  jmp      0x6b6467                          
0x006B6455:  push     1                                 
0x006B6457:  mov      eax, dword ptr [ebp - 0xc]        
0x006B645A:  mov      ecx, dword ptr [eax]              
0x006B645C:  push     ecx                               
0x006B645D:  push     0                                 
0x006B645F:  call     0x6b6490                          
0x006B6464:  add      esp, 0xc                          
0x006B6467:  jmp      0x6b6333                          
0x006B646C:  mov      esp, ebp                          
0x006B646E:  pop      ebp                               
0x006B646F:  ret                                        
0x006B6470:  xchg     dword ptr [ebx + 0x6b], esp       
0x006B6473:  add      byte ptr [eax - 0x27ff949d], bl   
0x006B6479:  arpl     word ptr [ebx], bp                
0x006B647C:  mul      byte ptr [ebx + 0x6b]             
0x006B647F:  add      byte ptr [esp], dl                
0x006B6482:  imul     eax, dword ptr [eax], -0x34       
0x006B6485:  int3                                       
0x006B6486:  int3                                       
0x006B6487:  int3                                       
0x006B6488:  int3                                       
0x006B6489:  int3                                       
0x006B648A:  int3                                       
0x006B648B:  int3                                       
0x006B648C:  int3                                       
0x006B648D:  int3                                       
0x006B648E:  int3                                       
0x006B648F:  int3                                       
0x006B6490:  push     ebp                               
0x006B6491:  mov      ebp, esp                          
0x006B6493:  cmp      dword ptr [0xb752e4], 0           
0x006B649A:  jne      0x6b649e                          
0x006B649C:  jmp      0x6b64b9                          
0x006B649E:  mov      eax, dword ptr [0xb752e8]         
0x006B64A3:  push     eax                               
0x006B64A4:  mov      ecx, dword ptr [ebp + 0x10]       
0x006B64A7:  push     ecx                               
0x006B64A8:  mov      edx, dword ptr [ebp + 0xc]        
0x006B64AB:  push     edx                               
0x006B64AC:  mov      eax, dword ptr [ebp + 8]          
0x006B64AF:  push     eax                               
0x006B64B0:  call     dword ptr [0xb752e4]              
0x006B64B6:  add      esp, 0x10                         
0x006B64B9:  pop      ebp                               
0x006B64BA:  ret                                        
0x006B64BB:  int3                                       
0x006B64BC:  int3                                       
0x006B64BD:  int3                                       
0x006B64BE:  int3                                       
0x006B64BF:  int3                                       
0x006B64C0:  push     ebp                               
0x006B64C1:  mov      ebp, esp                          
0x006B64C3:  cmp      dword ptr [0xb752ec], 0           
0x006B64CA:  je       0x6b64d3                          
0x006B64CC:  mov      eax, 1                            
0x006B64D1:  jmp      0x6b64e9                          
0x006B64D3:  cmp      dword ptr [ebp + 8], 0            
0x006B64D7:  je       0x6b64e7                          
0x006B64D9:  push     0                                 
0x006B64DB:  push     0                                 
0x006B64DD:  push     6                                 
0x006B64DF:  call     0x6b47b0                          
0x006B64E4:  add      esp, 0xc                          
0x006B64E7:  xor      eax, eax                          
0x006B64E9:  pop      ebp                               
0x006B64EA:  ret                                        
0x006B64EB:  int3                                       
0x006B64EC:  int3                                       
0x006B64ED:  int3                                       
0x006B64EE:  int3                                       
0x006B64EF:  int3                                       
0x006B64F0:  push     ebp                               
0x006B64F1:  mov      ebp, esp                          
0x006B64F3:  cmp      dword ptr [ebp + 8], 0            
0x006B64F7:  jl       0x6b64ff                          
0x006B64F9:  cmp      dword ptr [ebp + 8], 1            
0x006B64FD:  jl       0x6b6503                          
0x006B64FF:  xor      eax, eax                          
0x006B6501:  jmp      0x6b6508                          
0x006B6503:  mov      eax, 1                            
0x006B6508:  pop      ebp                               
0x006B6509:  ret                                        
0x006B650A:  int3                                       
0x006B650B:  int3                                       
0x006B650C:  int3                                       
0x006B650D:  int3                                       
0x006B650E:  int3                                       
0x006B650F:  int3                                       
0x006B6510:  push     ebp                               
0x006B6511:  mov      ebp, esp                          
0x006B6513:  cmp      dword ptr [0xb752ec], 0           
0x006B651A:  je       0x6b6529                          
0x006B651C:  mov      ecx, dword ptr [0xb752ec]         
0x006B6522:  call     0x6b6280                          
0x006B6527:  jmp      0x6b654a                          
0x006B6529:  cmp      dword ptr [0xb752f0], 0           
0x006B6530:  je       0x6b654a                          
0x006B6532:  mov      dword ptr [0xb752f0], 0           
0x006B653C:  push     0                                 
0x006B653E:  push     -1                                
0x006B6540:  push     0                                 
0x006B6542:  call     0x6b6490                          
0x006B6547:  add      esp, 0xc                          
0x006B654A:  pop      ebp                               
0x006B654B:  ret                                        
0x006B654C:  int3                                       
0x006B654D:  int3                                       
0x006B654E:  int3                                       
0x006B654F:  int3                                       
0x006B6550:  push     ebp                               
0x006B6551:  mov      ebp, esp                          
0x006B6553:  mov      eax, dword ptr [ebp + 8]          
0x006B6556:  mov      dword ptr [0xb752e4], eax         
0x006B655B:  mov      ecx, dword ptr [ebp + 0xc]        
0x006B655E:  mov      dword ptr [0xb752e8], ecx         
0x006B6564:  pop      ebp                               
0x006B6565:  ret                                        
0x006B6566:  int3                                       
0x006B6567:  int3                                       
0x006B6568:  int3                                       
0x006B6569:  int3                                       
0x006B656A:  int3                                       
0x006B656B:  int3                                       
0x006B656C:  int3                                       
0x006B656D:  int3                                       
0x006B656E:  int3                                       
0x006B656F:  int3                                       
0x006B6570:  push     ebp                               
0x006B6571:  mov      ebp, esp                          
0x006B6573:  sub      esp, 0x2c                         
0x006B6576:  cmp      dword ptr [0xb752ec], 0           
0x006B657D:  je       0x6b6589                          
0x006B657F:  mov      eax, 1                            
0x006B6584:  jmp      0x6b668f                          
0x006B6589:  push     0                                 
0x006B658B:  push     1                                 
0x006B658D:  push     0                                 
0x006B658F:  push     1                                 
0x006B6591:  push     0                                 
0x006B6593:  mov      eax, dword ptr [0xb01b28]         
0x006B6598:  push     eax                               
0x006B6599:  push     0xc0                              
0x006B659E:  call     0x688fe0                          
0x006B65A3:  add      esp, 0x1c                         
0x006B65A6:  mov      dword ptr [ebp - 0x28], eax       
0x006B65A9:  cmp      dword ptr [ebp - 0x28], 0         
0x006B65AD:  je       0x6b65c4                          
0x006B65AF:  mov      ecx, dword ptr [ebp + 0xc]        
0x006B65B2:  push     ecx                               
0x006B65B3:  mov      edx, dword ptr [ebp + 8]          
0x006B65B6:  push     edx                               
0x006B65B7:  mov      ecx, dword ptr [ebp - 0x28]       
0x006B65BA:  call     0x6b5810                          
0x006B65BF:  mov      dword ptr [ebp - 0x2c], eax       
0x006B65C2:  jmp      0x6b65cb                          
0x006B65C4:  mov      dword ptr [ebp - 0x2c], 0         
0x006B65CB:  mov      eax, dword ptr [ebp - 0x2c]       
0x006B65CE:  mov      dword ptr [0xb752ec], eax         
0x006B65D3:  cmp      dword ptr [0xb752ec], 0           
0x006B65DA:  jne      0x6b65e3                          
0x006B65DC:  xor      eax, eax                          
0x006B65DE:  jmp      0x6b668f                          
0x006B65E3:  mov      ecx, 0x20                         
0x006B65E8:  cmp      ecx, 0xc00                        
0x006B65EE:  jg       0x6b6608                          
0x006B65F0:  lea      edx, [ebp - 0x24]                 
0x006B65F3:  and      edx, 0x7f                         
0x006B65F6:  je       0x6b6608                          
0x006B65F8:  push     0x20                              
0x006B65FA:  lea      eax, [ebp - 0x24]                 
0x006B65FD:  push     eax                               
0x006B65FE:  call     0x6a9700                          
0x006B6603:  add      esp, 8                            
0x006B6606:  jmp      0x6b6622                          
0x006B6608:  xor      ecx, ecx                          
0x006B660A:  mov      dword ptr [ebp - 0x24], ecx       
0x006B660D:  mov      dword ptr [ebp - 0x20], ecx       
0x006B6610:  mov      dword ptr [ebp - 0x1c], ecx       
0x006B6613:  mov      dword ptr [ebp - 0x18], ecx       
0x006B6616:  mov      dword ptr [ebp - 0x14], ecx       
0x006B6619:  mov      dword ptr [ebp - 0x10], ecx       
0x006B661C:  mov      dword ptr [ebp - 0xc], ecx        
0x006B661F:  mov      dword ptr [ebp - 8], ecx          
0x006B6622:  mov      dword ptr [ebp - 4], 0            
0x006B6629:  mov      edx, 0x24                         
0x006B662E:  cmp      edx, 0xc00                        
0x006B6634:  jg       0x6b664e                          
0x006B6636:  lea      eax, [ebp - 0x24]                 
0x006B6639:  and      eax, 0x7f                         
0x006B663C:  je       0x6b664e                          
0x006B663E:  push     0x24                              
0x006B6640:  lea      ecx, [ebp - 0x24]                 
0x006B6643:  push     ecx                               
0x006B6644:  call     0x6a9700                          
0x006B6649:  add      esp, 8                            
0x006B664C:  jmp      0x6b666b                          
0x006B664E:  xor      edx, edx                          
0x006B6650:  mov      dword ptr [ebp - 0x24], edx       
0x006B6653:  mov      dword ptr [ebp - 0x20], edx       
0x006B6656:  mov      dword ptr [ebp - 0x1c], edx       
0x006B6659:  mov      dword ptr [ebp - 0x18], edx       
0x006B665C:  mov      dword ptr [ebp - 0x14], edx       
0x006B665F:  mov      dword ptr [ebp - 0x10], edx       
0x006B6662:  mov      dword ptr [ebp - 0xc], edx        
0x006B6665:  mov      dword ptr [ebp - 8], edx          
0x006B6668:  mov      dword ptr [ebp - 4], edx          
0x006B666B:  mov      dword ptr [ebp - 0x18], 0x6b6510  
0x006B6672:  mov      dword ptr [ebp - 8], 0x6b6820     
0x006B6679:  lea      eax, [ebp - 0x24]                 
0x006B667C:  push     eax                               
0x006B667D:  push     0x40000                           
0x006B6682:  call     0x689e70                          
0x006B6687:  add      esp, 8                            
0x006B668A:  mov      eax, 1                            
0x006B668F:  mov      esp, ebp                          
0x006B6691:  pop      ebp                               
0x006B6692:  ret                                        
0x006B6693:  int3                                       
0x006B6694:  int3                                       
0x006B6695:  int3                                       
0x006B6696:  int3                                       
0x006B6697:  int3                                       
0x006B6698:  int3                                       
0x006B6699:  int3                                       
0x006B669A:  int3                                       
0x006B669B:  int3                                       
0x006B669C:  int3                                       
0x006B669D:  int3                                       
0x006B669E:  int3                                       
0x006B669F:  int3                                       
0x006B66A0:  push     ebp                               
0x006B66A1:  mov      ebp, esp                          
0x006B66A3:  push     ecx                               
0x006B66A4:  cmp      dword ptr [0xb752ec], 0           
0x006B66AB:  jne      0x6b66b1                          
0x006B66AD:  xor      eax, eax                          
0x006B66AF:  jmp      0x6b66e6                          
0x006B66B1:  mov      eax, dword ptr [ebp + 8]          
0x006B66B4:  push     eax                               
0x006B66B5:  mov      ecx, dword ptr [0xb752ec]         
0x006B66BB:  call     0x6b5c90                          
0x006B66C0:  mov      dword ptr [ebp - 4], eax          
0x006B66C3:  cmp      dword ptr [ebp - 4], 0            
0x006B66C7:  jl       0x6b66e4                          
0x006B66C9:  mov      ecx, dword ptr [ebp - 4]          
0x006B66CC:  imul     ecx, ecx, 0x218                   
0x006B66D2:  mov      edx, dword ptr [0xb752ec]         
0x006B66D8:  mov      eax, dword ptr [edx + 8]          
0x006B66DB:  lea      eax, [eax + ecx + 0x20c]          
0x006B66E2:  jmp      0x6b66e6                          
0x006B66E4:  xor      eax, eax                          
0x006B66E6:  mov      esp, ebp                          
0x006B66E8:  pop      ebp                               
0x006B66E9:  ret                                        
0x006B66EA:  int3                                       
0x006B66EB:  int3                                       
0x006B66EC:  int3                                       
0x006B66ED:  int3                                       
0x006B66EE:  int3                                       
0x006B66EF:  int3                                       
0x006B66F0:  push     ebp                               
0x006B66F1:  mov      ebp, esp                          
0x006B66F3:  mov      eax, dword ptr [ebp + 8]          
0x006B66F6:  push     eax                               
0x006B66F7:  call     0x6b64f0                          
0x006B66FC:  add      esp, 4                            
0x006B66FF:  test     eax, eax                          
0x006B6701:  jne      0x6b6707                          
0x006B6703:  xor      eax, eax                          
0x006B6705:  jmp      0x6b6732                          
0x006B6707:  push     1                                 
0x006B6709:  call     0x6b64c0                          
0x006B670E:  add      esp, 4                            
0x006B6711:  test     eax, eax                          
0x006B6713:  jne      0x6b6723                          
0x006B6715:  mov      dword ptr [0xb752f0], 1           
0x006B671F:  xor      eax, eax                          
0x006B6721:  jmp      0x6b6732                          
0x006B6723:  mov      ecx, dword ptr [ebp + 0xc]        
0x006B6726:  push     ecx                               
0x006B6727:  mov      ecx, dword ptr [0xb752ec]         
0x006B672D:  call     0x6b5d60                          
0x006B6732:  pop      ebp                               
0x006B6733:  ret                                        
0x006B6734:  int3                                       
0x006B6735:  int3                                       
0x006B6736:  int3                                       
0x006B6737:  int3                                       
0x006B6738:  int3                                       
0x006B6739:  int3                                       
0x006B673A:  int3                                       
0x006B673B:  int3                                       
0x006B673C:  int3                                       
0x006B673D:  int3                                       
0x006B673E:  int3                                       
0x006B673F:  int3                                       
0x006B6740:  push     ebp                               
0x006B6741:  mov      ebp, esp                          
0x006B6743:  cmp      dword ptr [0xb7525c], 0           
0x006B674A:  je       0x6b6753                          
0x006B674C:  mov      eax, 1                            
0x006B6751:  jmp      0x6b6791                          
0x006B6753:  mov      eax, dword ptr [ebp + 8]          
0x006B6756:  push     eax                               
0x006B6757:  call     0x6b64f0                          
0x006B675C:  add      esp, 4                            
0x006B675F:  test     eax, eax                          
0x006B6761:  jne      0x6b6767                          
0x006B6763:  xor      eax, eax                          
0x006B6765:  jmp      0x6b6791                          
0x006B6767:  cmp      dword ptr [0xb7524c], 0           
0x006B676E:  jne      0x6b6774                          
0x006B6770:  xor      eax, eax                          
0x006B6772:  jmp      0x6b6791                          
0x006B6774:  push     0x99b738                           ; "Achievements"
0x006B6779:  mov      ecx, dword ptr [0xb7524c]         
0x006B677F:  mov      edx, dword ptr [ecx]              
0x006B6781:  mov      ecx, dword ptr [0xb7524c]         
0x006B6787:  mov      eax, dword ptr [edx + 0x54]       
0x006B678A:  call     eax                               
0x006B678C:  mov      eax, 1                            
0x006B6791:  pop      ebp                               
0x006B6792:  ret                                        
0x006B6793:  int3                                       
0x006B6794:  int3                                       
0x006B6795:  int3                                       
0x006B6796:  int3                                       
0x006B6797:  int3                                       
0x006B6798:  int3                                       
0x006B6799:  int3                                       
0x006B679A:  int3                                       
0x006B679B:  int3                                       
0x006B679C:  int3                                       
0x006B679D:  int3                                       
0x006B679E:  int3                                       
0x006B679F:  int3                                       
0x006B67A0:  push     ebp                               
0x006B67A1:  mov      ebp, esp                          
0x006B67A3:  push     ecx                               
0x006B67A4:  cmp      dword ptr [0xb752ec], 0           
0x006B67AB:  je       0x6b680f                          
0x006B67AD:  mov      eax, dword ptr [0xb752ec]         
0x006B67B2:  movzx    ecx, byte ptr [eax + 0x10]        
0x006B67B6:  test     ecx, ecx                          
0x006B67B8:  je       0x6b6808                          
0x006B67BA:  mov      edx, dword ptr [ebp + 0xc]        
0x006B67BD:  push     edx                               
0x006B67BE:  mov      ecx, dword ptr [0xb752ec]         
0x006B67C4:  call     0x6b5c90                          
0x006B67C9:  mov      dword ptr [ebp - 4], eax          
0x006B67CC:  cmp      dword ptr [ebp - 4], 0            
0x006B67D0:  jl       0x6b67ff                          
0x006B67D2:  mov      eax, dword ptr [ebp - 4]          
0x006B67D5:  imul     eax, eax, 0x218                   
0x006B67DB:  mov      ecx, dword ptr [0xb752ec]         
0x006B67E1:  mov      edx, dword ptr [ecx + 8]          
0x006B67E4:  movzx    eax, byte ptr [edx + eax + 0x204] 
0x006B67EC:  test     eax, eax                          
0x006B67EE:  je       0x6b67f9                          
0x006B67F0:  mov      eax, 1                            
0x006B67F5:  jmp      0x6b6814                          
0x006B67F7:  jmp      0x6b67fd                          
0x006B67F9:  xor      eax, eax                          
0x006B67FB:  jmp      0x6b6814                          
0x006B67FD:  jmp      0x6b6806                          
0x006B67FF:  mov      eax, 3                            
0x006B6804:  jmp      0x6b6814                          
0x006B6806:  jmp      0x6b680f                          
0x006B6808:  mov      eax, 2                            
0x006B680D:  jmp      0x6b6814                          
0x006B680F:  mov      eax, 4                            
0x006B6814:  mov      esp, ebp                          
0x006B6816:  pop      ebp                               
0x006B6817:  ret                                        
0x006B6818:  int3                                       
0x006B6819:  int3                                       
0x006B681A:  int3                                       
0x006B681B:  int3                                       
0x006B681C:  int3                                       
0x006B681D:  int3                                       
0x006B681E:  int3                                       
0x006B681F:  int3                                       
0x006B6820:  push     ebp                               
0x006B6821:  mov      ebp, esp                          
0x006B6823:  sub      esp, 0xc                          
0x006B6826:  cmp      dword ptr [0xb752ec], 0           
0x006B682D:  je       0x6b687e                          
0x006B682F:  mov      eax, dword ptr [0xb752ec]         
0x006B6834:  mov      dword ptr [ebp - 8], eax          
0x006B6837:  mov      ecx, dword ptr [ebp - 8]          
0x006B683A:  mov      dword ptr [ebp - 4], ecx          
0x006B683D:  cmp      dword ptr [ebp - 4], 0            
0x006B6841:  je       0x6b6869                          
0x006B6843:  mov      ecx, dword ptr [ebp - 4]          
0x006B6846:  call     0x6b5b50                          
0x006B684B:  mov      edx, 1                            
0x006B6850:  and      edx, 1                            
0x006B6853:  je       0x6b6861                          
0x006B6855:  mov      eax, dword ptr [ebp - 4]          
0x006B6858:  push     eax                               
0x006B6859:  call     0x688fb0                          
0x006B685E:  add      esp, 4                            
0x006B6861:  mov      ecx, dword ptr [ebp - 4]          
0x006B6864:  mov      dword ptr [ebp - 0xc], ecx        
0x006B6867:  jmp      0x6b6870                          
0x006B6869:  mov      dword ptr [ebp - 0xc], 0          
0x006B6870:  mov      dword ptr [0xb752ec], 0           
0x006B687A:  xor      edx, edx                          
0x006B687C:  jne      0x6b682f                          
0x006B687E:  mov      esp, ebp                          
0x006B6880:  pop      ebp                               
0x006B6881:  ret                                        
0x006B6882:  int3                                       
0x006B6883:  int3                                       
0x006B6884:  int3                                       
0x006B6885:  int3                                       
0x006B6886:  int3                                       
0x006B6887:  int3                                       
0x006B6888:  int3                                       
0x006B6889:  int3                                       
0x006B688A:  int3                                       
0x006B688B:  int3                                       
0x006B688C:  int3                                       
0x006B688D:  int3                                       
0x006B688E:  int3                                       
0x006B688F:  int3                                       
0x006B6890:  push     ebp                               
0x006B6891:  mov      ebp, esp                          
0x006B6893:  cmp      dword ptr [0xb752c8], 0           
0x006B689A:  je       0x6b68a7                          
0x006B689C:  mov      eax, dword ptr [0xb752c8]         
0x006B68A1:  cmp      dword ptr [eax + 4], 2            
0x006B68A5:  je       0x6b68a9                          
0x006B68A7:  jmp      0x6b68ae                          
0x006B68A9:  call     0x6b68b0                          
0x006B68AE:  pop      ebp                               
0x006B68AF:  ret                                        
0x006B68B0:  push     ebp                               
0x006B68B1:  mov      ebp, esp                          
0x006B68B3:  mov      eax, dword ptr [0xb752c8]         
0x006B68B8:  cmp      dword ptr [eax + 0x174], 0        
0x006B68BF:  jne      0x6b68c3                          
0x006B68C1:  jmp      0x6b68f5                          
0x006B68C3:  push     0                                 
0x006B68C5:  mov      ecx, dword ptr [0xb752c8]         
0x006B68CB:  mov      edx, dword ptr [ecx + 0x178]      
0x006B68D1:  push     edx                               
0x006B68D2:  mov      eax, dword ptr [0xb752c8]         
0x006B68D7:  mov      ecx, dword ptr [eax + 0x17c]      
0x006B68DD:  push     ecx                               
0x006B68DE:  call     0x6b4270                          
0x006B68E3:  add      esp, 0xc                          
0x006B68E6:  push     2                                 
0x006B68E8:  call     0x6b3c10                          
0x006B68ED:  add      esp, 4                            
0x006B68F0:  call     0x6b3de0                          
0x006B68F5:  pop      ebp                               
0x006B68F6:  ret                                        
0x006B68F7:  int3                                       
0x006B68F8:  int3                                       
0x006B68F9:  int3                                       
0x006B68FA:  int3                                       
0x006B68FB:  int3                                       
0x006B68FC:  int3                                       
0x006B68FD:  int3                                       
0x006B68FE:  int3                                       
0x006B68FF:  int3                                       
0x006B6900:  push     ebp                               
0x006B6901:  mov      ebp, esp                          
0x006B6903:  cmp      dword ptr [0xb752c8], 0           
0x006B690A:  je       0x6b6917                          
0x006B690C:  mov      eax, dword ptr [0xb752c8]         
0x006B6911:  cmp      dword ptr [eax + 4], 2            
0x006B6915:  je       0x6b6919                          
0x006B6917:  jmp      0x6b691e                          
0x006B6919:  call     0x6b6920                          
0x006B691E:  pop      ebp                               
0x006B691F:  ret                                        
0x006B6920:  push     ebp                               
0x006B6921:  mov      ebp, esp                          
0x006B6923:  mov      eax, dword ptr [0xb752c8]         
0x006B6928:  cmp      dword ptr [eax + 0x180], 0        
0x006B692F:  jne      0x6b6933                          
0x006B6931:  jmp      0x6b6965                          
0x006B6933:  push     0                                 
0x006B6935:  mov      ecx, dword ptr [0xb752c8]         
0x006B693B:  mov      edx, dword ptr [ecx + 0x184]      
0x006B6941:  push     edx                               
0x006B6942:  mov      eax, dword ptr [0xb752c8]         
0x006B6947:  mov      ecx, dword ptr [eax + 0x188]      
0x006B694D:  push     ecx                               
0x006B694E:  call     0x6b4270                          
0x006B6953:  add      esp, 0xc                          
0x006B6956:  push     2                                 
0x006B6958:  call     0x6b3c10                          
0x006B695D:  add      esp, 4                            
0x006B6960:  call     0x6b3de0                          
0x006B6965:  pop      ebp                               
0x006B6966:  ret                                        
0x006B6967:  int3                                       
0x006B6968:  int3                                       
0x006B6969:  int3                                       
0x006B696A:  int3                                       
0x006B696B:  int3                                       
0x006B696C:  int3                                       
0x006B696D:  int3                                       
0x006B696E:  int3                                       
0x006B696F:  int3                                       
0x006B6970:  push     ebp                               
0x006B6971:  mov      ebp, esp                          
0x006B6973:  sub      esp, 8                            
0x006B6976:  mov      dword ptr [ebp - 4], 0            
0x006B697D:  mov      eax, dword ptr [ebp + 8]          
0x006B6980:  mov      dword ptr [ebp - 8], eax          
0x006B6983:  cmp      dword ptr [ebp - 8], 0            
0x006B6987:  je       0x6b698b                          
0x006B6989:  jmp      0x6b6994                          
0x006B698B:  mov      dword ptr [ebp - 4], 0xe28c50dc   
0x006B6992:  jmp      0x6b699b                          
0x006B6994:  mov      dword ptr [ebp - 4], 0x86bc7d51   
0x006B699B:  cmp      dword ptr [ebp - 4], 0            
0x006B699F:  je       0x6b69c9                          
0x006B69A1:  push     1                                 
0x006B69A3:  mov      ecx, dword ptr [ebp + 0x10]       
0x006B69A6:  push     ecx                               
0x006B69A7:  mov      edx, dword ptr [ebp + 0xc]        
0x006B69AA:  push     edx                               
0x006B69AB:  push     0xaf4aca09                        
0x006B69B0:  push     0                                 
0x006B69B2:  push     0                                 
0x006B69B4:  push     0                                 
0x006B69B6:  mov      eax, dword ptr [ebp - 4]          
0x006B69B9:  push     eax                               
0x006B69BA:  call     0x6b4690                          
0x006B69BF:  add      esp, 0x20                         
0x006B69C2:  mov      eax, 1                            
0x006B69C7:  jmp      0x6b69cb                          
0x006B69C9:  xor      eax, eax                          
0x006B69CB:  mov      esp, ebp                          
0x006B69CD:  pop      ebp                               
0x006B69CE:  ret                                        
0x006B69CF:  int3                                       
0x006B69D0:  push     ebp                               
0x006B69D1:  mov      ebp, esp                          
0x006B69D3:  sub      esp, 8                            
0x006B69D6:  mov      dword ptr [ebp - 4], 0            
0x006B69DD:  mov      dword ptr [ebp - 4], 0x12387829   
0x006B69E4:  mov      eax, dword ptr [ebp + 8]          
0x006B69E7:  mov      dword ptr [ebp - 8], eax          
0x006B69EA:  cmp      dword ptr [ebp - 8], 0            
0x006B69EE:  je       0x6b69f2                          
0x006B69F0:  jmp      0x6b69f4                          
0x006B69F2:  jmp      0x6b69fb                          
0x006B69F4:  mov      dword ptr [ebp - 4], 0xd780cbb8   
0x006B69FB:  cmp      dword ptr [ebp - 4], 0            
0x006B69FF:  je       0x6b6a29                          
0x006B6A01:  push     1                                 
0x006B6A03:  mov      ecx, dword ptr [ebp + 0x10]       
0x006B6A06:  push     ecx                               
0x006B6A07:  mov      edx, dword ptr [ebp + 0xc]        
0x006B6A0A:  push     edx                               
0x006B6A0B:  push     0xaf4aca09                        
0x006B6A10:  push     0                                 
0x006B6A12:  push     0                                 
0x006B6A14:  push     0                                 
0x006B6A16:  mov      eax, dword ptr [ebp - 4]          
0x006B6A19:  push     eax                               
0x006B6A1A:  call     0x6b4690                          
0x006B6A1F:  add      esp, 0x20                         
0x006B6A22:  mov      eax, 1                            
0x006B6A27:  jmp      0x6b6a2b                          
0x006B6A29:  xor      eax, eax                          
0x006B6A2B:  mov      esp, ebp                          
0x006B6A2D:  pop      ebp                               
0x006B6A2E:  ret                                        
0x006B6A2F:  int3                                       
0x006B6A30:  push     ebp                               
0x006B6A31:  mov      ebp, esp                          
0x006B6A33:  cmp      dword ptr [0xb752e0], 0           
0x006B6A3A:  je       0x6b6a49                          
0x006B6A3C:  mov      eax, dword ptr [0xb752e0]         
0x006B6A41:  cmp      dword ptr [eax + 0x20], 0         
0x006B6A45:  je       0x6b6a49                          
0x006B6A47:  jmp      0x6b6a5f                          
0x006B6A49:  call     0x6b3de0                          
0x006B6A4E:  push     0                                 
0x006B6A50:  push     0                                 
0x006B6A52:  push     0xa7                              
0x006B6A57:  call     0x6b4270                          
0x006B6A5C:  add      esp, 0xc                          
0x006B6A5F:  pop      ebp                               
0x006B6A60:  ret                                        
0x006B6A61:  int3                                       
0x006B6A62:  int3                                       
0x006B6A63:  int3                                       
0x006B6A64:  int3                                       
0x006B6A65:  int3                                       
0x006B6A66:  int3                                       
0x006B6A67:  int3                                       
0x006B6A68:  int3                                       
0x006B6A69:  int3                                       
0x006B6A6A:  int3                                       
0x006B6A6B:  int3                                       
0x006B6A6C:  int3                                       
0x006B6A6D:  int3                                       
0x006B6A6E:  int3                                       
0x006B6A6F:  int3                                       
0x006B6A70:  push     ebp                               
0x006B6A71:  mov      ebp, esp                          
0x006B6A73:  cmp      dword ptr [0xb752e0], 0           
0x006B6A7A:  je       0x6b6a89                          
0x006B6A7C:  mov      eax, dword ptr [0xb752e0]         
0x006B6A81:  cmp      dword ptr [eax + 0x20], 0         
0x006B6A85:  je       0x6b6a89                          
0x006B6A87:  jmp      0x6b6a9f                          
0x006B6A89:  call     0x6b3de0                          
0x006B6A8E:  push     0                                 
0x006B6A90:  push     0                                 
0x006B6A92:  push     0xa6                              
0x006B6A97:  call     0x6b4270                          
0x006B6A9C:  add      esp, 0xc                          
0x006B6A9F:  pop      ebp                               
0x006B6AA0:  ret                                        
0x006B6AA1:  int3                                       
0x006B6AA2:  int3                                       
0x006B6AA3:  int3                                       
0x006B6AA4:  int3                                       
0x006B6AA5:  int3                                       
0x006B6AA6:  int3                                       
0x006B6AA7:  int3                                       
0x006B6AA8:  int3                                       
0x006B6AA9:  int3                                       
0x006B6AAA:  int3                                       
0x006B6AAB:  int3                                       
0x006B6AAC:  int3                                       
0x006B6AAD:  int3                                       
0x006B6AAE:  int3                                       
0x006B6AAF:  int3                                       
0x006B6AB0:  push     ebp                               
0x006B6AB1:  mov      ebp, esp                          
0x006B6AB3:  call     0x6b3de0                          
0x006B6AB8:  push     0                                 
0x006B6ABA:  push     7                                 
0x006B6ABC:  push     0xaf                              
0x006B6AC1:  call     0x6b4270                          
0x006B6AC6:  add      esp, 0xc                          
0x006B6AC9:  pop      ebp                               
0x006B6ACA:  ret                                        
0x006B6ACB:  int3                                       
0x006B6ACC:  int3                                       
0x006B6ACD:  int3                                       
0x006B6ACE:  int3                                       
0x006B6ACF:  int3                                       
0x006B6AD0:  push     ebp                               
0x006B6AD1:  mov      ebp, esp                          
0x006B6AD3:  push     8                                 
0x006B6AD5:  push     1                                 
0x006B6AD7:  push     0                                 
0x006B6AD9:  push     0xaa                              
0x006B6ADE:  call     0x6b4270                          
0x006B6AE3:  add      esp, 0x10                         
0x006B6AE6:  call     0x6b3de0                          
0x006B6AEB:  pop      ebp                               
0x006B6AEC:  ret                                        
0x006B6AED:  int3                                       
0x006B6AEE:  int3                                       
0x006B6AEF:  int3                                       
0x006B6AF0:  push     ebp                               
0x006B6AF1:  mov      ebp, esp                          
0x006B6AF3:  push     8                                 
0x006B6AF5:  push     1                                 
0x006B6AF7:  push     0                                 
0x006B6AF9:  push     0xb2                              
0x006B6AFE:  call     0x6b4270                          
0x006B6B03:  add      esp, 0x10                         
0x006B6B06:  call     0x6b3de0                          
0x006B6B0B:  pop      ebp                               
0x006B6B0C:  ret                                        
0x006B6B0D:  int3                                       
0x006B6B0E:  int3                                       
0x006B6B0F:  int3                                       
0x006B6B10:  push     ebp                               
0x006B6B11:  mov      ebp, esp                          
0x006B6B13:  push     0                                 
0x006B6B15:  push     0xa6                              
0x006B6B1A:  push     7                                 
0x006B6B1C:  push     0xe35a2a84                        
0x006B6B21:  push     0                                 
0x006B6B23:  push     0                                 
0x006B6B25:  push     0                                 
0x006B6B27:  push     0x2a77c594                        
0x006B6B2C:  call     0x6b4690                          
0x006B6B31:  add      esp, 0x20                         
0x006B6B34:  mov      eax, dword ptr [0xb752c8]         
0x006B6B39:  mov      ecx, dword ptr [eax + 0xd0]       
0x006B6B3F:  or       ecx, 0x400000                     
0x006B6B45:  mov      edx, dword ptr [0xb752c8]         
0x006B6B4B:  mov      dword ptr [edx + 0xd0], ecx       
0x006B6B51:  call     0x6b6ab0                          
0x006B6B56:  pop      ebp                               
0x006B6B57:  ret                                        
0x006B6B58:  int3                                       
0x006B6B59:  int3                                       
0x006B6B5A:  int3                                       
0x006B6B5B:  int3                                       
0x006B6B5C:  int3                                       
0x006B6B5D:  int3                                       
0x006B6B5E:  int3                                       
0x006B6B5F:  int3                                       
0x006B6B60:  push     ebp                               
0x006B6B61:  mov      ebp, esp                          
0x006B6B63:  call     0x6b4ad0                          
0x006B6B68:  test     eax, eax                          
0x006B6B6A:  jne      0x6b6b70                          
0x006B6B6C:  xor      eax, eax                          
0x006B6B6E:  jmp      0x6b6bae                          
0x006B6B70:  mov      eax, dword ptr [0xb752e0]         
0x006B6B75:  xor      ecx, ecx                          
0x006B6B77:  cmp      dword ptr [eax + 0x24], 1         
0x006B6B7B:  sete     cl                                
0x006B6B7E:  test     ecx, ecx                          
0x006B6B80:  je       0x6b6b86                          
0x006B6B82:  xor      eax, eax                          
0x006B6B84:  jmp      0x6b6bae                          
0x006B6B86:  mov      edx, dword ptr [0xb752c8]         
0x006B6B8C:  mov      eax, dword ptr [edx + 0xe0]       
0x006B6B92:  mov      ecx, dword ptr [eax + 0x14]       
0x006B6B95:  and      ecx, 0x200000                     
0x006B6B9B:  je       0x6b6ba4                          
0x006B6B9D:  mov      eax, 1                            
0x006B6BA2:  jmp      0x6b6bae                          
0x006B6BA4:  call     0x6b6a30                          
0x006B6BA9:  mov      eax, 1                            
0x006B6BAE:  pop      ebp                               
0x006B6BAF:  ret                                        
0x006B6BB0:  push     ebp                               
0x006B6BB1:  mov      ebp, esp                          
0x006B6BB3:  sub      esp, 8                            
0x006B6BB6:  cmp      dword ptr [0xb752c8], 0           
0x006B6BBD:  je       0x6b6bdc                          
0x006B6BBF:  mov      eax, dword ptr [0xb752c8]         
0x006B6BC4:  cmp      dword ptr [eax + 0xdc], 0         
0x006B6BCB:  je       0x6b6bdc                          
0x006B6BCD:  mov      ecx, dword ptr [0xb752c8]         
0x006B6BD3:  cmp      dword ptr [ecx + 0xe0], 0         
0x006B6BDA:  jne      0x6b6be1                          
0x006B6BDC:  jmp      0x6b6c8b                          
0x006B6BE1:  mov      edx, dword ptr [0xb752c8]         
0x006B6BE7:  mov      eax, dword ptr [edx + 0xe0]       
0x006B6BED:  push     eax                               
0x006B6BEE:  call     0x58d200                          
0x006B6BF3:  add      esp, 4                            
0x006B6BF6:  movzx    ecx, al                           
0x006B6BF9:  mov      dword ptr [ebp - 8], ecx          
0x006B6BFC:  cmp      dword ptr [ebp - 8], 0            
0x006B6C00:  je       0x6b6c07                          
0x006B6C02:  jmp      0x6b6c8b                          
0x006B6C07:  mov      dword ptr [ebp - 4], 0            
0x006B6C0E:  jmp      0x6b6c19                          
0x006B6C10:  mov      edx, dword ptr [ebp - 4]          
0x006B6C13:  add      edx, 1                            
0x006B6C16:  mov      dword ptr [ebp - 4], edx          
0x006B6C19:  cmp      dword ptr [ebp - 4], 0x10         
0x006B6C1D:  jge      0x6b6c8b                          
0x006B6C1F:  mov      eax, dword ptr [ebp - 4]          
0x006B6C22:  imul     eax, eax, 0x124                   
0x006B6C28:  mov      ecx, dword ptr [0xb752c8]         
0x006B6C2E:  cmp      dword ptr [ecx + eax + 0x2c0], 0  
0x006B6C36:  jne      0x6b6c3a                          
0x006B6C38:  jmp      0x6b6c10                          
0x006B6C3A:  mov      edx, dword ptr [ebp - 4]          
0x006B6C3D:  imul     edx, edx, 0x124                   
0x006B6C43:  mov      eax, dword ptr [0xb752c8]         
0x006B6C48:  movzx    ecx, byte ptr [eax + edx + 0x2b8] 
0x006B6C50:  cmp      ecx, dword ptr [ebp - 8]          
0x006B6C53:  je       0x6b6c57                          
0x006B6C55:  jmp      0x6b6c10                          
0x006B6C57:  mov      edx, dword ptr [ebp - 4]          
0x006B6C5A:  imul     edx, edx, 0x124                   
0x006B6C60:  mov      eax, dword ptr [0xb752c8]         
0x006B6C65:  movzx    ecx, word ptr [eax + edx + 0x3c4] 
0x006B6C6D:  or       ecx, 0x8000                       
0x006B6C73:  mov      edx, dword ptr [ebp - 4]          
0x006B6C76:  imul     edx, edx, 0x124                   
0x006B6C7C:  mov      eax, dword ptr [0xb752c8]         
0x006B6C81:  mov      word ptr [eax + edx + 0x3c4], cx  
0x006B6C89:  jmp      0x6b6c10                          
0x006B6C8B:  mov      esp, ebp                          
0x006B6C8D:  pop      ebp                               
0x006B6C8E:  ret                                        
0x006B6C8F:  int3                                       
0x006B6C90:  push     ebp                               
0x006B6C91:  mov      ebp, esp                          
0x006B6C93:  sub      esp, 0x10                         
0x006B6C96:  mov      eax, dword ptr [0xb752c4]         
0x006B6C9B:  mov      dword ptr [ebp - 0xc], eax        
0x006B6C9E:  mov      dword ptr [ebp - 0x10], 0         
0x006B6CA5:  mov      ecx, dword ptr [0xb752c8]         
0x006B6CAB:  mov      edx, dword ptr [ecx + 0xe0]       
0x006B6CB1:  push     edx                               
0x006B6CB2:  call     0x58d270                          
0x006B6CB7:  add      esp, 4                            
0x006B6CBA:  mov      ecx, dword ptr [0xb752c8]         
0x006B6CC0:  cmp      dword ptr [ecx + 0xc4], eax       
0x006B6CC6:  je       0x6b6cd8                          
0x006B6CC8:  mov      edx, dword ptr [0xb752c8]         
0x006B6CCE:  mov      dword ptr [edx + 0x108], 0        
0x006B6CD8:  mov      dword ptr [ebp - 4], 0            
0x006B6CDF:  mov      eax, dword ptr [0xb752c8]         
0x006B6CE4:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B6CEA:  push     ecx                               
0x006B6CEB:  call     0x58d270                          
0x006B6CF0:  add      esp, 4                            
0x006B6CF3:  mov      edx, dword ptr [0xb752c8]         
0x006B6CF9:  mov      dword ptr [edx + 0xc4], eax       
0x006B6CFF:  mov      dword ptr [ebp - 8], 0            
0x006B6D06:  jmp      0x6b6d11                          
0x006B6D08:  mov      eax, dword ptr [ebp - 8]          
0x006B6D0B:  add      eax, 1                            
0x006B6D0E:  mov      dword ptr [ebp - 8], eax          
0x006B6D11:  cmp      dword ptr [ebp - 8], 0x10         
0x006B6D15:  jge      0x6b6dae                          
0x006B6D1B:  mov      ecx, dword ptr [ebp - 8]          
0x006B6D1E:  imul     ecx, ecx, 0x124                   
0x006B6D24:  mov      edx, dword ptr [0xb752c8]         
0x006B6D2A:  cmp      dword ptr [edx + ecx + 0x2c0], 0  
0x006B6D32:  jne      0x6b6d36                          
0x006B6D34:  jmp      0x6b6d08                          
0x006B6D36:  mov      eax, dword ptr [0xb752c8]         
0x006B6D3B:  cmp      dword ptr [eax + 0x108], 0        
0x006B6D42:  jne      0x6b6da0                          
0x006B6D44:  mov      ecx, dword ptr [ebp - 8]          
0x006B6D47:  imul     ecx, ecx, 0x124                   
0x006B6D4D:  mov      edx, dword ptr [0xb752c8]         
0x006B6D53:  lea      eax, [edx + ecx + 0x34c]          
0x006B6D5A:  push     eax                               
0x006B6D5B:  mov      ecx, dword ptr [ebp - 8]          
0x006B6D5E:  imul     ecx, ecx, 0x124                   
0x006B6D64:  mov      edx, dword ptr [0xb752c8]         
0x006B6D6A:  lea      eax, [edx + ecx + 0x2cc]          
0x006B6D71:  push     eax                               
0x006B6D72:  call     0x691980                          
0x006B6D77:  add      esp, 8                            
0x006B6D7A:  mov      ecx, dword ptr [ebp - 8]          
0x006B6D7D:  imul     ecx, ecx, 0x124                   
0x006B6D83:  mov      edx, dword ptr [0xb752c8]         
0x006B6D89:  lea      eax, [edx + ecx + 0x2cc]          
0x006B6D90:  mov      ecx, dword ptr [ebp - 4]          
0x006B6D93:  mov      edx, dword ptr [0xb752c8]         
0x006B6D99:  mov      dword ptr [edx + ecx*4 + 0x114], eax
0x006B6DA0:  mov      eax, dword ptr [ebp - 4]          
0x006B6DA3:  add      eax, 1                            
0x006B6DA6:  mov      dword ptr [ebp - 4], eax          
0x006B6DA9:  jmp      0x6b6d08                          
0x006B6DAE:  mov      ecx, dword ptr [0xb752c8]         
0x006B6DB4:  cmp      dword ptr [ecx + 0x108], 0        
0x006B6DBB:  jne      0x6b6dee                          
0x006B6DBD:  call     0x6b6bb0                          
0x006B6DC2:  mov      edx, dword ptr [ebp - 0xc]        
0x006B6DC5:  mov      eax, dword ptr [ebp - 4]          
0x006B6DC8:  mov      dword ptr [edx], eax              
0x006B6DCA:  mov      dword ptr [ebp - 0x10], 2         
0x006B6DD1:  mov      ecx, dword ptr [0xb752c8]         
0x006B6DD7:  mov      dword ptr [ecx + 0x108], 1        
0x006B6DE1:  mov      edx, dword ptr [0xb752c0]         
0x006B6DE7:  mov      dword ptr [edx + 0x34], 1         
0x006B6DEE:  mov      eax, dword ptr [ebp - 0xc]        
0x006B6DF1:  cmp      dword ptr [eax], 0                
0x006B6DF4:  jne      0x6b6dfa                          
0x006B6DF6:  jmp      0x6b6e22                          
0x006B6DF8:  jmp      0x6b6e22                          
0x006B6DFA:  push     0                                 
0x006B6DFC:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B6DFF:  mov      edx, dword ptr [ecx + 4]          
0x006B6E02:  push     edx                               
0x006B6E03:  mov      eax, dword ptr [0xb752c8]         
0x006B6E08:  add      eax, 0x114                        
0x006B6E0D:  push     eax                               
0x006B6E0E:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B6E11:  mov      edx, dword ptr [ecx]              
0x006B6E13:  push     edx                               
0x006B6E14:  mov      eax, dword ptr [ebp - 0x10]       
0x006B6E17:  push     eax                               
0x006B6E18:  push     6                                 
0x006B6E1A:  call     0x6b3990                          
0x006B6E1F:  add      esp, 0x18                         
0x006B6E22:  mov      esp, ebp                          
0x006B6E24:  pop      ebp                               
0x006B6E25:  ret                                        
0x006B6E26:  int3                                       
0x006B6E27:  int3                                       
0x006B6E28:  int3                                       
0x006B6E29:  int3                                       
0x006B6E2A:  int3                                       
0x006B6E2B:  int3                                       
0x006B6E2C:  int3                                       
0x006B6E2D:  int3                                       
0x006B6E2E:  int3                                       
0x006B6E2F:  int3                                       
0x006B6E30:  push     ebp                               
0x006B6E31:  mov      ebp, esp                          
0x006B6E33:  push     ecx                               
0x006B6E34:  mov      eax, dword ptr [0xb752c8]         
0x006B6E39:  cmp      dword ptr [eax + 0xdc], 0         
0x006B6E40:  je       0x6b6e86                          
0x006B6E42:  cmp      dword ptr [0xb752e0], 0           
0x006B6E49:  je       0x6b6e81                          
0x006B6E4B:  mov      ecx, dword ptr [0xb752e0]         
0x006B6E51:  add      ecx, 0x44                         
0x006B6E54:  call     0x6b6f10                          
0x006B6E59:  movzx    ecx, al                           
0x006B6E5C:  test     ecx, ecx                          
0x006B6E5E:  je       0x6b6e81                          
0x006B6E60:  mov      edx, dword ptr [0xb752e0]         
0x006B6E66:  mov      eax, dword ptr [edx + 0x48]       
0x006B6E69:  push     eax                               
0x006B6E6A:  mov      ecx, dword ptr [edx + 0x44]       
0x006B6E6D:  push     ecx                               
0x006B6E6E:  mov      edx, dword ptr [0xb75244]         
0x006B6E74:  mov      eax, dword ptr [edx]              
0x006B6E76:  mov      ecx, dword ptr [0xb75244]         
0x006B6E7C:  mov      edx, dword ptr [eax + 0x3c]       
0x006B6E7F:  call     edx                               
0x006B6E81:  call     0x6b4380                          
0x006B6E86:  mov      eax, dword ptr [0xb752c8]         
0x006B6E8B:  mov      dword ptr [eax + 0xb8], 0         
0x006B6E95:  mov      ecx, dword ptr [0xb752c8]         
0x006B6E9B:  mov      dword ptr [ecx + 0xbc], 0         
0x006B6EA5:  mov      edx, dword ptr [0xb752c8]         
0x006B6EAB:  mov      eax, dword ptr [0xb752b8]         
0x006B6EB0:  mov      ecx, dword ptr [eax + 0x34c]      
0x006B6EB6:  mov      dword ptr [edx + 0xc0], ecx       
0x006B6EBC:  mov      edx, dword ptr [0xb752c8]         
0x006B6EC2:  mov      dword ptr [edx + 0x164], 0        
0x006B6ECC:  mov      eax, dword ptr [0xb752c8]         
0x006B6ED1:  mov      dword ptr [eax + 0x168], 0        
0x006B6EDB:  mov      ecx, dword ptr [0xb752c8]         
0x006B6EE1:  add      ecx, 0x28c0                       
0x006B6EE7:  mov      dword ptr [ebp - 4], ecx          
0x006B6EEA:  mov      edx, dword ptr [ebp - 4]          
0x006B6EED:  mov      dword ptr [edx], 0                
0x006B6EF3:  mov      dword ptr [edx + 4], 0            
0x006B6EFA:  call     0x58aee0                          
0x006B6EFF:  mov      esp, ebp                          
0x006B6F01:  pop      ebp                               
0x006B6F02:  ret                                        
0x006B6F03:  int3                                       
0x006B6F04:  int3                                       
0x006B6F05:  int3                                       
0x006B6F06:  int3                                       
0x006B6F07:  int3                                       
0x006B6F08:  int3                                       
0x006B6F09:  int3                                       
0x006B6F0A:  int3                                       
0x006B6F0B:  int3                                       
0x006B6F0C:  int3                                       
0x006B6F0D:  int3                                       
0x006B6F0E:  int3                                       
0x006B6F0F:  int3                                       
0x006B6F10:  push     ebp                               
0x006B6F11:  mov      ebp, esp                          
0x006B6F13:  push     ecx                               
0x006B6F14:  mov      dword ptr [ebp - 4], ecx          
0x006B6F17:  mov      eax, dword ptr [ebp - 4]          
0x006B6F1A:  mov      ecx, dword ptr [eax + 4]          
0x006B6F1D:  shr      ecx, 0x14                         
0x006B6F20:  and      ecx, 0xf                          
0x006B6F23:  jbe      0x6b6f36                          
0x006B6F25:  mov      edx, dword ptr [ebp - 4]          
0x006B6F28:  mov      eax, dword ptr [edx + 4]          
0x006B6F2B:  shr      eax, 0x14                         
0x006B6F2E:  and      eax, 0xf                          
0x006B6F31:  cmp      eax, 0xb                          
0x006B6F34:  jb       0x6b6f3d                          
0x006B6F36:  xor      al, al                            
0x006B6F38:  jmp      0x6b6fdd                          
0x006B6F3D:  mov      ecx, dword ptr [ebp - 4]          
0x006B6F40:  mov      edx, dword ptr [ecx + 4]          
0x006B6F43:  shl      edx, 0                            
0x006B6F46:  sar      edx, 0x18                         
0x006B6F49:  test     edx, edx                          
0x006B6F4B:  jle      0x6b6f5e                          
0x006B6F4D:  mov      eax, dword ptr [ebp - 4]          
0x006B6F50:  mov      ecx, dword ptr [eax + 4]          
0x006B6F53:  shl      ecx, 0                            
0x006B6F56:  sar      ecx, 0x18                         
0x006B6F59:  cmp      ecx, 6                            
0x006B6F5C:  jl       0x6b6f62                          
0x006B6F5E:  xor      al, al                            
0x006B6F60:  jmp      0x6b6fdd                          
0x006B6F62:  mov      edx, dword ptr [ebp - 4]          
0x006B6F65:  mov      eax, dword ptr [edx + 4]          
0x006B6F68:  shr      eax, 0x14                         
0x006B6F6B:  and      eax, 0xf                          
0x006B6F6E:  cmp      eax, 1                            
0x006B6F71:  jne      0x6b6f91                          
0x006B6F73:  mov      ecx, dword ptr [ebp - 4]          
0x006B6F76:  mov      edx, dword ptr [ecx]              
0x006B6F78:  test     edx, edx                          
0x006B6F7A:  je       0x6b6f8d                          
0x006B6F7C:  mov      eax, dword ptr [ebp - 4]          
0x006B6F7F:  mov      ecx, dword ptr [eax + 4]          
0x006B6F82:  and      ecx, 0xfffff                      
0x006B6F88:  cmp      ecx, 4                            
0x006B6F8B:  jbe      0x6b6f91                          
0x006B6F8D:  xor      al, al                            
0x006B6F8F:  jmp      0x6b6fdd                          
0x006B6F91:  mov      edx, dword ptr [ebp - 4]          
0x006B6F94:  mov      eax, dword ptr [edx + 4]          
0x006B6F97:  shr      eax, 0x14                         
0x006B6F9A:  and      eax, 0xf                          
0x006B6F9D:  cmp      eax, 7                            
0x006B6FA0:  jne      0x6b6fbd                          
0x006B6FA2:  mov      ecx, dword ptr [ebp - 4]          
0x006B6FA5:  mov      edx, dword ptr [ecx]              
0x006B6FA7:  test     edx, edx                          
0x006B6FA9:  je       0x6b6fb9                          
0x006B6FAB:  mov      eax, dword ptr [ebp - 4]          
0x006B6FAE:  mov      ecx, dword ptr [eax + 4]          
0x006B6FB1:  and      ecx, 0xfffff                      
0x006B6FB7:  je       0x6b6fbd                          
0x006B6FB9:  xor      al, al                            
0x006B6FBB:  jmp      0x6b6fdd                          
0x006B6FBD:  mov      edx, dword ptr [ebp - 4]          
0x006B6FC0:  mov      eax, dword ptr [edx + 4]          
0x006B6FC3:  shr      eax, 0x14                         
0x006B6FC6:  and      eax, 0xf                          
0x006B6FC9:  cmp      eax, 3                            
0x006B6FCC:  jne      0x6b6fdb                          
0x006B6FCE:  mov      ecx, dword ptr [ebp - 4]          
0x006B6FD1:  mov      edx, dword ptr [ecx]              
0x006B6FD3:  test     edx, edx                          
0x006B6FD5:  jne      0x6b6fdb                          
0x006B6FD7:  xor      al, al                            
0x006B6FD9:  jmp      0x6b6fdd                          
0x006B6FDB:  mov      al, 1                             
0x006B6FDD:  mov      esp, ebp                          
0x006B6FDF:  pop      ebp                               
0x006B6FE0:  ret                                        
0x006B6FE1:  int3                                       
0x006B6FE2:  int3                                       
0x006B6FE3:  int3                                       
0x006B6FE4:  int3                                       
0x006B6FE5:  int3                                       
0x006B6FE6:  int3                                       
0x006B6FE7:  int3                                       
0x006B6FE8:  int3                                       
0x006B6FE9:  int3                                       
0x006B6FEA:  int3                                       
0x006B6FEB:  int3                                       
0x006B6FEC:  int3                                       
0x006B6FED:  int3                                       
0x006B6FEE:  int3                                       
0x006B6FEF:  int3                                       
0x006B6FF0:  push     ebp                               
0x006B6FF1:  mov      ebp, esp                          
0x006B6FF3:  sub      esp, 8                            
0x006B6FF6:  cmp      dword ptr [0xb752b8], 0           
0x006B6FFD:  je       0x6b701e                          
0x006B6FFF:  mov      eax, dword ptr [0xb752b8]         
0x006B7004:  mov      dword ptr [eax + 0x298], 0        
0x006B700E:  mov      ecx, dword ptr [0xb752b8]         
0x006B7014:  mov      dword ptr [ecx + 0x2a0], 0        
0x006B701E:  cmp      dword ptr [0xb752c8], 0           
0x006B7025:  jne      0x6b702c                          
0x006B7027:  jmp      0x6b711a                          
0x006B702C:  mov      edx, dword ptr [0xb752c8]         
0x006B7032:  add      edx, 0x2b8                        
0x006B7038:  mov      dword ptr [ebp - 8], edx          
0x006B703B:  mov      eax, 0x1240                       
0x006B7040:  cmp      eax, 0xc00                        
0x006B7045:  jg       0x6b7062                          
0x006B7047:  mov      ecx, dword ptr [ebp - 8]          
0x006B704A:  and      ecx, 0x7f                         
0x006B704D:  je       0x6b7062                          
0x006B704F:  push     0x1240                            
0x006B7054:  mov      edx, dword ptr [ebp - 8]          
0x006B7057:  push     edx                               
0x006B7058:  call     0x6a9700                          
0x006B705D:  add      esp, 8                            
0x006B7060:  jmp      0x6b7075                          
0x006B7062:  push     0x1240                            
0x006B7067:  push     0                                 
0x006B7069:  mov      eax, dword ptr [ebp - 8]          
0x006B706C:  push     eax                               
0x006B706D:  call     0x8eb080                          
0x006B7072:  add      esp, 0xc                          
0x006B7075:  mov      dword ptr [ebp - 4], 0            
0x006B707C:  jmp      0x6b7087                          
0x006B707E:  mov      ecx, dword ptr [ebp - 4]          
0x006B7081:  add      ecx, 1                            
0x006B7084:  mov      dword ptr [ebp - 4], ecx          
0x006B7087:  cmp      dword ptr [ebp - 4], 0x10         
0x006B708B:  jge      0x6b70a2                          
0x006B708D:  mov      edx, dword ptr [ebp - 4]          
0x006B7090:  mov      eax, dword ptr [0xb752c8]         
0x006B7095:  mov      dword ptr [eax + edx*4 + 0x2840], 0
0x006B70A0:  jmp      0x6b707e                          
0x006B70A2:  mov      ecx, dword ptr [0xb752c8]         
0x006B70A8:  mov      dword ptr [ecx + 0xbc], 0         
0x006B70B2:  mov      edx, dword ptr [0xb752c8]         
0x006B70B8:  mov      dword ptr [edx + 0xb8], 0         
0x006B70C2:  mov      eax, dword ptr [0xb752c8]         
0x006B70C7:  mov      dword ptr [eax + 0xc4], 0         
0x006B70D1:  mov      ecx, dword ptr [0xb752c8]         
0x006B70D7:  mov      dword ptr [ecx + 0x164], 0        
0x006B70E1:  mov      edx, dword ptr [0xb752c8]         
0x006B70E7:  mov      dword ptr [edx + 0x3c], 0         
0x006B70EE:  mov      eax, dword ptr [0xb752c8]         
0x006B70F3:  mov      dword ptr [eax + 0x38], 0         
0x006B70FA:  cmp      dword ptr [0xb752e0], 0           
0x006B7101:  je       0x6b711a                          
0x006B7103:  push     0x1f8                             
0x006B7108:  mov      ecx, dword ptr [0xb752e0]         
0x006B710E:  add      ecx, 0x50                         
0x006B7111:  push     ecx                               
0x006B7112:  call     0x6b4ef0                          
0x006B7117:  add      esp, 8                            
0x006B711A:  mov      esp, ebp                          
0x006B711C:  pop      ebp                               
0x006B711D:  ret                                        
0x006B711E:  int3                                       
0x006B711F:  int3                                       
0x006B7120:  push     ebp                               
0x006B7121:  mov      ebp, esp                          
0x006B7123:  cmp      dword ptr [0xb752e0], 0           
0x006B712A:  jne      0x6b7133                          
0x006B712C:  xor      eax, eax                          
0x006B712E:  jmp      0x6b71b8                          
0x006B7133:  mov      eax, dword ptr [ebp + 8]          
0x006B7136:  mov      ecx, dword ptr [0xb752c8]         
0x006B713C:  mov      edx, dword ptr [ecx + eax*4 + 0x2810]
0x006B7143:  cmp      dword ptr [edx + 8], 0            
0x006B7147:  je       0x6b716a                          
0x006B7149:  mov      eax, dword ptr [0xb752c8]         
0x006B714E:  mov      ecx, dword ptr [eax + 0xdc]       
0x006B7154:  mov      edx, dword ptr [ecx + 4]          
0x006B7157:  or       edx, 0x20                         
0x006B715A:  mov      eax, dword ptr [0xb752c8]         
0x006B715F:  mov      ecx, dword ptr [eax + 0xdc]       
0x006B7165:  mov      dword ptr [ecx + 4], edx          
0x006B7168:  jmp      0x6b718b                          
0x006B716A:  mov      edx, dword ptr [0xb752c8]         
0x006B7170:  mov      eax, dword ptr [edx + 0xdc]       
0x006B7176:  mov      ecx, dword ptr [eax + 4]          
0x006B7179:  and      ecx, 0xffffffdf                   
0x006B717C:  mov      edx, dword ptr [0xb752c8]         
0x006B7182:  mov      eax, dword ptr [edx + 0xdc]       
0x006B7188:  mov      dword ptr [eax + 4], ecx          
0x006B718B:  mov      ecx, dword ptr [0xb752c8]         
0x006B7191:  mov      edx, dword ptr [ecx + 0xdc]       
0x006B7197:  push     edx                               
0x006B7198:  call     0x5939b0                          
0x006B719D:  add      esp, 4                            
0x006B71A0:  test     eax, eax                          
0x006B71A2:  je       0x6b71b6                          
0x006B71A4:  mov      ecx, dword ptr [0xb752e0]         
0x006B71AA:  call     0x6be310                          
0x006B71AF:  mov      eax, 1                            
0x006B71B4:  jmp      0x6b71b8                          
0x006B71B6:  xor      eax, eax                          
0x006B71B8:  pop      ebp                               
0x006B71B9:  ret                                        
0x006B71BA:  int3                                       
0x006B71BB:  int3                                       
0x006B71BC:  int3                                       
0x006B71BD:  int3                                       
0x006B71BE:  int3                                       
0x006B71BF:  int3                                       
0x006B71C0:  push     ebp                               
0x006B71C1:  mov      ebp, esp                          
0x006B71C3:  sub      esp, 0xc                          
0x006B71C6:  mov      eax, dword ptr [0xb752c8]         
0x006B71CB:  add      eax, 0x2b8                        
0x006B71D0:  mov      dword ptr [ebp - 0xc], eax        
0x006B71D3:  mov      ecx, dword ptr [0xb752c8]         
0x006B71D9:  add      ecx, 0x14f8                       
0x006B71DF:  mov      dword ptr [ebp - 8], ecx          
0x006B71E2:  xor      edx, edx                          
0x006B71E4:  jne      0x6b71e2                          
0x006B71E6:  mov      eax, 0x1240                       
0x006B71EB:  cmp      eax, 0xc00                        
0x006B71F0:  jg       0x6b722b                          
0x006B71F2:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B71F5:  and      ecx, 0x7f                         
0x006B71F8:  jne      0x6b7202                          
0x006B71FA:  mov      edx, dword ptr [ebp - 8]          
0x006B71FD:  and      edx, 0x7f                         
0x006B7200:  je       0x6b722b                          
0x006B7202:  mov      eax, dword ptr [ebp - 0xc]        
0x006B7205:  and      eax, 0x7f                         
0x006B7208:  mov      ecx, dword ptr [ebp - 8]          
0x006B720B:  and      ecx, 0x7f                         
0x006B720E:  cmp      eax, ecx                          
0x006B7210:  jne      0x6b722b                          
0x006B7212:  push     0x1240                            
0x006B7217:  mov      edx, dword ptr [ebp - 0xc]        
0x006B721A:  push     edx                               
0x006B721B:  mov      eax, dword ptr [ebp - 8]          
0x006B721E:  push     eax                               
0x006B721F:  call     0x6a98f0                          
0x006B7224:  add      esp, 0xc                          
0x006B7227:  jmp      0x6b7240                          
0x006B7229:  jmp      0x6b7240                          
0x006B722B:  push     0x1240                            
0x006B7230:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B7233:  push     ecx                               
0x006B7234:  mov      edx, dword ptr [ebp - 8]          
0x006B7237:  push     edx                               
0x006B7238:  call     0x8eb4a0                          
0x006B723D:  add      esp, 0xc                          
0x006B7240:  mov      eax, dword ptr [0xb752c8]         
0x006B7245:  mov      ecx, dword ptr [0xb752c8]         
0x006B724B:  mov      edx, dword ptr [ecx + 0xc4]       
0x006B7251:  mov      dword ptr [eax + 0x154], edx      
0x006B7257:  mov      dword ptr [ebp - 4], 0            
0x006B725E:  jmp      0x6b7269                          
0x006B7260:  mov      eax, dword ptr [ebp - 4]          
0x006B7263:  add      eax, 1                            
0x006B7266:  mov      dword ptr [ebp - 4], eax          
0x006B7269:  cmp      dword ptr [ebp - 4], 0x10         
0x006B726D:  jge      0x6b728b                          
0x006B726F:  mov      ecx, dword ptr [ebp - 4]          
0x006B7272:  imul     ecx, ecx, 0x124                   
0x006B7278:  mov      edx, dword ptr [0xb752c8]         
0x006B727E:  mov      dword ptr [edx + ecx + 0x15d4], 0 
0x006B7289:  jmp      0x6b7260                          
0x006B728B:  mov      eax, dword ptr [0xb752c8]         
0x006B7290:  mov      dword ptr [eax + 0xbc], 1         
0x006B729A:  mov      esp, ebp                          
0x006B729C:  pop      ebp                               
0x006B729D:  ret                                        
0x006B729E:  int3                                       
0x006B729F:  int3                                       
0x006B72A0:  push     ebp                               
0x006B72A1:  mov      ebp, esp                          
0x006B72A3:  sub      esp, 0x2b0                        
0x006B72A9:  mov      eax, dword ptr [0xb089c8]         
0x006B72AE:  xor      eax, ebp                          
0x006B72B0:  mov      dword ptr [ebp - 0x14], eax       
0x006B72B3:  mov      eax, dword ptr [0xb752c8]         
0x006B72B8:  add      eax, 0x2b8                        
0x006B72BD:  mov      dword ptr [ebp - 0x60], eax       
0x006B72C0:  lea      ecx, [ebp - 0x58]                 
0x006B72C3:  mov      dword ptr [ebp - 0x10], ecx       
0x006B72C6:  xor      edx, edx                          
0x006B72C8:  mov      word ptr [ebp - 0x5c], dx         
0x006B72CC:  cmp      dword ptr [ebp + 8], 0            
0x006B72D0:  jne      0x6b73a1                          
0x006B72D6:  mov      dword ptr [ebp - 4], 0            
0x006B72DD:  jmp      0x6b72e8                          
0x006B72DF:  mov      eax, dword ptr [ebp - 4]          
0x006B72E2:  add      eax, 1                            
0x006B72E5:  mov      dword ptr [ebp - 4], eax          
0x006B72E8:  mov      ecx, dword ptr [0xb752c8]         
0x006B72EE:  mov      edx, dword ptr [ebp - 4]          
0x006B72F1:  cmp      edx, dword ptr [ecx + 0xc0]       
0x006B72F7:  jge      0x6b739c                          
0x006B72FD:  mov      eax, dword ptr [ebp - 4]          
0x006B7300:  imul     eax, eax, 0x124                   
0x006B7306:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B7309:  mov      edx, dword ptr [ebp - 0x60]       
0x006B730C:  mov      ax, word ptr [edx + eax + 0x10c]  
0x006B7314:  mov      word ptr [ecx], ax                
0x006B7317:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B731A:  add      ecx, 2                            
0x006B731D:  mov      dword ptr [ebp - 0x10], ecx       
0x006B7320:  mov      edx, dword ptr [ebp - 4]          
0x006B7323:  imul     edx, edx, 0x124                   
0x006B7329:  mov      eax, dword ptr [ebp - 0x10]       
0x006B732C:  mov      ecx, dword ptr [ebp - 0x60]       
0x006B732F:  mov      dx, word ptr [ecx + edx + 0x104]  
0x006B7337:  mov      word ptr [eax], dx                
0x006B733A:  mov      eax, dword ptr [ebp - 0x10]       
0x006B733D:  add      eax, 2                            
0x006B7340:  mov      dword ptr [ebp - 0x10], eax       
0x006B7343:  mov      ecx, dword ptr [ebp - 4]          
0x006B7346:  imul     ecx, ecx, 0x124                   
0x006B734C:  mov      edx, dword ptr [ebp - 0x60]       
0x006B734F:  movzx    eax, word ptr [edx + ecx + 0x10c] 
0x006B7357:  and      eax, 0x8000                       
0x006B735C:  je       0x6b7397                          
0x006B735E:  mov      ecx, dword ptr [ebp - 4]          
0x006B7361:  imul     ecx, ecx, 0x124                   
0x006B7367:  mov      edx, dword ptr [ebp - 0x60]       
0x006B736A:  movzx    eax, word ptr [edx + ecx + 0x10c] 
0x006B7372:  and      eax, 0x9b                         
0x006B7377:  mov      ecx, dword ptr [ebp - 4]          
0x006B737A:  imul     ecx, ecx, 0x124                   
0x006B7380:  mov      edx, dword ptr [ebp - 0x60]       
0x006B7383:  mov      word ptr [edx + ecx + 0x10c], ax  
0x006B738B:  mov      ax, word ptr [ebp - 0x5c]         
0x006B738F:  add      ax, 1                             
0x006B7393:  mov      word ptr [ebp - 0x5c], ax         
0x006B7397:  jmp      0x6b72df                          
0x006B739C:  jmp      0x6b747e                          
0x006B73A1:  mov      dword ptr [ebp - 4], 0            
0x006B73A8:  jmp      0x6b73b3                          
0x006B73AA:  mov      ecx, dword ptr [ebp - 4]          
0x006B73AD:  add      ecx, 1                            
0x006B73B0:  mov      dword ptr [ebp - 4], ecx          
0x006B73B3:  mov      edx, dword ptr [0xb752c8]         
0x006B73B9:  mov      eax, dword ptr [ebp - 4]          
0x006B73BC:  cmp      eax, dword ptr [edx + 0xc0]       
0x006B73C2:  jge      0x6b747e                          
0x006B73C8:  mov      ecx, dword ptr [ebp - 4]          
0x006B73CB:  imul     ecx, ecx, 0x124                   
0x006B73D1:  mov      edx, dword ptr [ebp - 0x10]       
0x006B73D4:  mov      eax, dword ptr [ebp - 0x60]       
0x006B73D7:  mov      cx, word ptr [eax + ecx + 0x10c]  
0x006B73DF:  mov      word ptr [edx], cx                
0x006B73E2:  mov      edx, dword ptr [ebp - 0x10]       
0x006B73E5:  add      edx, 2                            
0x006B73E8:  mov      dword ptr [ebp - 0x10], edx       
0x006B73EB:  mov      eax, dword ptr [ebp - 4]          
0x006B73EE:  imul     eax, eax, 0x124                   
0x006B73F4:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B73F7:  mov      edx, dword ptr [ebp - 0x60]       
0x006B73FA:  mov      ax, word ptr [edx + eax + 0x104]  
0x006B7402:  mov      word ptr [ecx], ax                
0x006B7405:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B7408:  add      ecx, 2                            
0x006B740B:  mov      dword ptr [ebp - 0x10], ecx       
0x006B740E:  mov      edx, dword ptr [ebp - 4]          
0x006B7411:  imul     edx, edx, 0x124                   
0x006B7417:  mov      eax, dword ptr [ebp - 0x60]       
0x006B741A:  movzx    ecx, word ptr [eax + edx + 0x10c] 
0x006B7422:  and      ecx, 0x8000                       
0x006B7428:  je       0x6b7479                          
0x006B742A:  mov      edx, dword ptr [ebp - 4]          
0x006B742D:  imul     edx, edx, 0x124                   
0x006B7433:  mov      eax, dword ptr [ebp - 0x60]       
0x006B7436:  movzx    ecx, byte ptr [eax + edx]         
0x006B743A:  cmp      ecx, dword ptr [ebp + 8]          
0x006B743D:  jne      0x6b7479                          
0x006B743F:  mov      edx, dword ptr [ebp - 4]          
0x006B7442:  imul     edx, edx, 0x124                   
0x006B7448:  mov      eax, dword ptr [ebp - 0x60]       
0x006B744B:  movzx    ecx, word ptr [eax + edx + 0x10c] 
0x006B7453:  and      ecx, 0x9b                         
0x006B7459:  mov      edx, dword ptr [ebp - 4]          
0x006B745C:  imul     edx, edx, 0x124                   
0x006B7462:  mov      eax, dword ptr [ebp - 0x60]       
0x006B7465:  mov      word ptr [eax + edx + 0x10c], cx  
0x006B746D:  mov      cx, word ptr [ebp - 0x5c]         
0x006B7471:  add      cx, 1                             
0x006B7475:  mov      word ptr [ebp - 0x5c], cx         
0x006B7479:  jmp      0x6b73aa                          
0x006B747E:  movzx    edx, word ptr [ebp - 0x5c]        
0x006B7482:  test     edx, edx                          
0x006B7484:  jne      0x6b748b                          
0x006B7486:  jmp      0x6b754b                          
0x006B748B:  mov      eax, dword ptr [0xb752c8]         
0x006B7490:  mov      ecx, dword ptr [eax + 0xc0]       
0x006B7496:  shl      ecx, 1                            
0x006B7498:  shl      ecx, 1                            
0x006B749A:  mov      dword ptr [ebp - 8], ecx          
0x006B749D:  movzx    edx, word ptr [ebp - 8]           
0x006B74A1:  add      edx, 0xc                          
0x006B74A4:  mov      word ptr [ebp - 0x5c], dx         
0x006B74A8:  mov      ax, word ptr [ebp - 0x5c]         
0x006B74AC:  mov      word ptr [ebp - 0x2ae], ax        
0x006B74B3:  mov      byte ptr [ebp - 0x2a9], 0         
0x006B74BA:  mov      cl, byte ptr [ebp + 8]            
0x006B74BD:  mov      byte ptr [ebp - 0x2aa], cl        
0x006B74C3:  mov      byte ptr [ebp - 0x2af], 0         
0x006B74CA:  mov      byte ptr [ebp - 0x2b0], 0x25      
0x006B74D1:  mov      dword ptr [ebp - 0x2a8], 0xe      
0x006B74DB:  lea      edx, [ebp - 0x2a4]                
0x006B74E1:  mov      dword ptr [ebp - 0xc], edx        
0x006B74E4:  mov      eax, dword ptr [ebp - 8]          
0x006B74E7:  push     eax                               
0x006B74E8:  lea      ecx, [ebp - 0x58]                 
0x006B74EB:  push     ecx                               
0x006B74EC:  mov      edx, dword ptr [ebp - 0xc]        
0x006B74EF:  push     edx                               
0x006B74F0:  call     0x497f80                          
0x006B74F5:  add      esp, 0xc                          
0x006B74F8:  cmp      dword ptr [ebp + 8], 0            
0x006B74FC:  jne      0x6b7525                          
0x006B74FE:  push     0x22                              
0x006B7500:  movzx    eax, word ptr [ebp - 0x5c]        
0x006B7504:  push     eax                               
0x006B7505:  lea      ecx, [ebp - 0x2b0]                
0x006B750B:  push     ecx                               
0x006B750C:  push     0x25                              
0x006B750E:  mov      edx, dword ptr [0xb752c8]         
0x006B7514:  mov      eax, dword ptr [edx + 0xe0]       
0x006B751A:  push     eax                               
0x006B751B:  call     0x58ce90                          
0x006B7520:  add      esp, 0x14                         
0x006B7523:  jmp      0x6b754b                          
0x006B7525:  push     0x22                              
0x006B7527:  movzx    ecx, word ptr [ebp - 0x5c]        
0x006B752B:  push     ecx                               
0x006B752C:  lea      edx, [ebp - 0x2b0]                
0x006B7532:  push     edx                               
0x006B7533:  push     0x25                              
0x006B7535:  push     0                                 
0x006B7537:  mov      eax, dword ptr [0xb752c8]         
0x006B753C:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B7542:  push     ecx                               
0x006B7543:  call     0x58cd50                          
0x006B7548:  add      esp, 0x18                         
0x006B754B:  mov      ecx, dword ptr [ebp - 0x14]       
0x006B754E:  xor      ecx, ebp                          
0x006B7550:  call     0x8eac64                          
0x006B7555:  mov      esp, ebp                          
0x006B7557:  pop      ebp                               
0x006B7558:  ret                                        
0x006B7559:  int3                                       
0x006B755A:  int3                                       
0x006B755B:  int3                                       
0x006B755C:  int3                                       
0x006B755D:  int3                                       
0x006B755E:  int3                                       
0x006B755F:  int3                                       
0x006B7560:  push     ebp                               
0x006B7561:  mov      ebp, esp                          
0x006B7563:  sub      esp, 0x38                         
0x006B7566:  mov      dword ptr [ebp - 0x1c], 0         
0x006B756D:  mov      dword ptr [ebp - 0x18], 0         
0x006B7574:  mov      dword ptr [ebp - 0x10], 1         
0x006B757B:  mov      eax, dword ptr [0xb752b8]         
0x006B7580:  mov      dword ptr [eax + 0x27c], 0        
0x006B758A:  mov      ecx, dword ptr [0xb752b8]         
0x006B7590:  mov      dword ptr [ecx + 0x280], 0        
0x006B759A:  mov      edx, dword ptr [0xb752b8]         
0x006B75A0:  mov      dword ptr [edx + 0x29c], 0        
0x006B75AA:  mov      eax, dword ptr [0xb752b8]         
0x006B75AF:  mov      dword ptr [eax + 0x284], 0        
0x006B75B9:  mov      ecx, dword ptr [0xb752b8]         
0x006B75BF:  mov      dword ptr [ecx + 0x288], 0        
0x006B75C9:  mov      edx, dword ptr [0xb752b8]         
0x006B75CF:  mov      dword ptr [edx + 0x28c], 0        
0x006B75D9:  cmp      dword ptr [0xb752c8], 0           
0x006B75E0:  je       0x6b75ff                          
0x006B75E2:  mov      eax, dword ptr [0xb752c8]         
0x006B75E7:  cmp      dword ptr [eax + 0xdc], 0         
0x006B75EE:  je       0x6b75ff                          
0x006B75F0:  mov      ecx, dword ptr [0xb752c8]         
0x006B75F6:  cmp      dword ptr [ecx + 0xe0], 0         
0x006B75FD:  jne      0x6b7604                          
0x006B75FF:  jmp      0x6b7aa3                          
0x006B7604:  mov      edx, dword ptr [0xb752c8]         
0x006B760A:  mov      eax, dword ptr [edx + 0xe0]       
0x006B7610:  push     eax                               
0x006B7611:  call     0x58d200                          
0x006B7616:  add      esp, 4                            
0x006B7619:  movzx    ecx, al                           
0x006B761C:  mov      dword ptr [ebp - 0x2c], ecx       
0x006B761F:  mov      dword ptr [ebp - 8], 0            
0x006B7626:  mov      dword ptr [ebp - 0x24], 0         
0x006B762D:  mov      dword ptr [ebp - 0x28], 0         
0x006B7634:  mov      dword ptr [ebp - 0x34], 0         
0x006B763B:  mov      dword ptr [ebp - 0x30], 0         
0x006B7642:  mov      edx, dword ptr [ebp - 0x30]       
0x006B7645:  mov      dword ptr [ebp - 0x14], edx       
0x006B7648:  mov      eax, dword ptr [ebp - 0x14]       
0x006B764B:  mov      dword ptr [ebp - 0xc], eax        
0x006B764E:  mov      dword ptr [ebp - 4], 0            
0x006B7655:  jmp      0x6b7660                          
0x006B7657:  mov      ecx, dword ptr [ebp - 4]          
0x006B765A:  add      ecx, 1                            
0x006B765D:  mov      dword ptr [ebp - 4], ecx          
0x006B7660:  cmp      dword ptr [ebp - 4], 0x10         
0x006B7664:  jge      0x6b79be                          
0x006B766A:  mov      edx, dword ptr [ebp - 4]          
0x006B766D:  imul     edx, edx, 0x124                   
0x006B7673:  mov      eax, dword ptr [0xb752c8]         
0x006B7678:  cmp      dword ptr [eax + edx + 0x3a0], 4  
0x006B7680:  jne      0x6b795c                          
0x006B7686:  mov      ecx, dword ptr [ebp - 4]          
0x006B7689:  imul     ecx, ecx, 0x124                   
0x006B768F:  mov      edx, dword ptr [0xb752c8]         
0x006B7695:  lea      eax, [edx + ecx + 0x2b8]          
0x006B769C:  mov      dword ptr [ebp - 0x38], eax       
0x006B769F:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B76A2:  cmp      dword ptr [ecx + 8], 0            
0x006B76A6:  jne      0x6b76bf                          
0x006B76A8:  mov      edx, dword ptr [ebp - 0x38]       
0x006B76AB:  mov      dword ptr [edx + 8], 1            
0x006B76B2:  mov      eax, dword ptr [ebp - 0x38]       
0x006B76B5:  mov      dword ptr [eax + 0xd8], 0         
0x006B76BF:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B76C2:  cmp      dword ptr [ecx + 0x114], 0        
0x006B76C9:  je       0x6b76eb                          
0x006B76CB:  mov      edx, dword ptr [ebp - 0x38]       
0x006B76CE:  movzx    ecx, byte ptr [edx]               
0x006B76D1:  mov      eax, 1                            
0x006B76D6:  shl      eax, cl                           
0x006B76D8:  or       eax, dword ptr [ebp - 0x1c]       
0x006B76DB:  mov      dword ptr [ebp - 0x1c], eax       
0x006B76DE:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B76E1:  mov      dword ptr [ecx + 0x114], 0        
0x006B76EB:  mov      edx, 1                            
0x006B76F0:  mov      ecx, dword ptr [ebp - 4]          
0x006B76F3:  shl      edx, cl                           
0x006B76F5:  or       edx, dword ptr [ebp - 8]          
0x006B76F8:  mov      dword ptr [ebp - 8], edx          
0x006B76FB:  mov      eax, 1                            
0x006B7700:  mov      ecx, dword ptr [ebp - 4]          
0x006B7703:  shl      eax, cl                           
0x006B7705:  and      eax, dword ptr [ebp - 0x24]       
0x006B7708:  je       0x6b7719                          
0x006B770A:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B770D:  mov      dword ptr [ecx + 0x110], 1        
0x006B7717:  jmp      0x6b7726                          
0x006B7719:  mov      edx, dword ptr [ebp - 0x38]       
0x006B771C:  mov      dword ptr [edx + 0x110], 0        
0x006B7726:  mov      eax, dword ptr [ebp - 0x38]       
0x006B7729:  movzx    ecx, byte ptr [eax]               
0x006B772C:  cmp      ecx, dword ptr [ebp - 0x2c]       
0x006B772F:  jne      0x6b778e                          
0x006B7731:  mov      edx, 1                            
0x006B7736:  mov      ecx, dword ptr [ebp - 4]          
0x006B7739:  shl      edx, cl                           
0x006B773B:  and      edx, dword ptr [ebp - 0x28]       
0x006B773E:  je       0x6b7772                          
0x006B7740:  mov      eax, dword ptr [ebp - 0x38]       
0x006B7743:  mov      dword ptr [eax + 0xf0], 1         
0x006B774D:  mov      ecx, dword ptr [ebp - 4]          
0x006B7750:  mov      edx, dword ptr [0xb752c8]         
0x006B7756:  cmp      dword ptr [edx + ecx*4 + 0x2840], 0
0x006B775E:  je       0x6b7770                          
0x006B7760:  mov      eax, 1                            
0x006B7765:  mov      ecx, dword ptr [ebp - 4]          
0x006B7768:  shl      eax, cl                           
0x006B776A:  or       eax, dword ptr [ebp - 0x30]       
0x006B776D:  mov      dword ptr [ebp - 0x30], eax       
0x006B7770:  jmp      0x6b777f                          
0x006B7772:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B7775:  mov      dword ptr [ecx + 0xf0], 0         
0x006B777F:  mov      edx, dword ptr [ebp - 0x38]       
0x006B7782:  mov      dword ptr [edx + 0xf8], 0         
0x006B778C:  jmp      0x6b77db                          
0x006B778E:  mov      eax, 1                            
0x006B7793:  mov      ecx, dword ptr [ebp - 4]          
0x006B7796:  shl      eax, cl                           
0x006B7798:  and      eax, dword ptr [ebp - 0x28]       
0x006B779B:  je       0x6b77ce                          
0x006B779D:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B77A0:  mov      dword ptr [ecx + 0xf0], 1         
0x006B77AA:  mov      edx, dword ptr [ebp - 4]          
0x006B77AD:  mov      eax, dword ptr [0xb752c8]         
0x006B77B2:  cmp      dword ptr [eax + edx*4 + 0x2840], 0
0x006B77BA:  je       0x6b77cc                          
0x006B77BC:  mov      edx, 1                            
0x006B77C1:  mov      ecx, dword ptr [ebp - 4]          
0x006B77C4:  shl      edx, cl                           
0x006B77C6:  or       edx, dword ptr [ebp - 0x30]       
0x006B77C9:  mov      dword ptr [ebp - 0x30], edx       
0x006B77CC:  jmp      0x6b77db                          
0x006B77CE:  mov      eax, dword ptr [ebp - 0x38]       
0x006B77D1:  mov      dword ptr [eax + 0xf0], 0         
0x006B77DB:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B77DE:  cmp      dword ptr [ecx + 0xf8], 0         
0x006B77E5:  je       0x6b77fc                          
0x006B77E7:  mov      edx, dword ptr [ebp - 0x38]       
0x006B77EA:  movzx    ecx, byte ptr [edx]               
0x006B77ED:  mov      eax, 1                            
0x006B77F2:  shl      eax, cl                           
0x006B77F4:  or       eax, dword ptr [ebp - 0xc]        
0x006B77F7:  mov      dword ptr [ebp - 0xc], eax        
0x006B77FA:  jmp      0x6b7811                          
0x006B77FC:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B77FF:  movzx    ecx, byte ptr [ecx]               
0x006B7802:  mov      edx, 1                            
0x006B7807:  shl      edx, cl                           
0x006B7809:  not      edx                               
0x006B780B:  and      edx, dword ptr [ebp - 0xc]        
0x006B780E:  mov      dword ptr [ebp - 0xc], edx        
0x006B7811:  mov      eax, dword ptr [ebp - 0x38]       
0x006B7814:  cmp      dword ptr [eax + 0xfc], 0         
0x006B781B:  je       0x6b782f                          
0x006B781D:  mov      edx, 1                            
0x006B7822:  mov      ecx, dword ptr [ebp - 4]          
0x006B7825:  shl      edx, cl                           
0x006B7827:  or       edx, dword ptr [ebp - 0x14]       
0x006B782A:  mov      dword ptr [ebp - 0x14], edx       
0x006B782D:  jmp      0x6b7841                          
0x006B782F:  mov      eax, 1                            
0x006B7834:  mov      ecx, dword ptr [ebp - 4]          
0x006B7837:  shl      eax, cl                           
0x006B7839:  not      eax                               
0x006B783B:  and      eax, dword ptr [ebp - 0x14]       
0x006B783E:  mov      dword ptr [ebp - 0x14], eax       
0x006B7841:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B7844:  cmp      dword ptr [ecx + 4], 0            
0x006B7848:  jne      0x6b7853                          
0x006B784A:  mov      dword ptr [ebp - 0x10], 0         
0x006B7851:  jmp      0x6b7863                          
0x006B7853:  mov      edx, 1                            
0x006B7858:  mov      ecx, dword ptr [ebp - 4]          
0x006B785B:  shl      edx, cl                           
0x006B785D:  or       edx, dword ptr [ebp - 0x34]       
0x006B7860:  mov      dword ptr [ebp - 0x34], edx       
0x006B7863:  mov      eax, dword ptr [ebp - 0x38]       
0x006B7866:  movzx    ecx, byte ptr [eax]               
0x006B7869:  cmp      ecx, dword ptr [ebp - 0x2c]       
0x006B786C:  je       0x6b7873                          
0x006B786E:  jmp      0x6b7657                          
0x006B7873:  mov      edx, dword ptr [ebp - 0x38]       
0x006B7876:  xor      eax, eax                          
0x006B7878:  cmp      dword ptr [edx + 4], 0            
0x006B787C:  setne    al                                
0x006B787F:  mov      word ptr [ebp - 0x20], ax         
0x006B7883:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B7886:  mov      edx, dword ptr [ecx + 0xf0]       
0x006B788C:  neg      edx                               
0x006B788E:  sbb      edx, edx                          
0x006B7890:  and      edx, 2                            
0x006B7893:  movzx    eax, word ptr [ebp - 0x20]        
0x006B7897:  or       eax, edx                          
0x006B7899:  mov      word ptr [ebp - 0x20], ax         
0x006B789D:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B78A0:  mov      edx, dword ptr [ecx + 0xf8]       
0x006B78A6:  neg      edx                               
0x006B78A8:  sbb      edx, edx                          
0x006B78AA:  and      edx, 8                            
0x006B78AD:  movzx    eax, word ptr [ebp - 0x20]        
0x006B78B1:  or       eax, edx                          
0x006B78B3:  mov      word ptr [ebp - 0x20], ax         
0x006B78B7:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B78BA:  mov      edx, dword ptr [ecx + 0xfc]       
0x006B78C0:  neg      edx                               
0x006B78C2:  sbb      edx, edx                          
0x006B78C4:  and      edx, 0x10                         
0x006B78C7:  movzx    eax, word ptr [ebp - 0x20]        
0x006B78CB:  or       eax, edx                          
0x006B78CD:  mov      word ptr [ebp - 0x20], ax         
0x006B78D1:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B78D4:  movzx    edx, word ptr [ecx + 0x10c]       
0x006B78DB:  and      edx, 0x9b                         
0x006B78E1:  movzx    eax, word ptr [ebp - 0x20]        
0x006B78E5:  cmp      edx, eax                          
0x006B78E7:  je       0x6b790e                          
0x006B78E9:  movzx    ecx, word ptr [ebp - 0x20]        
0x006B78ED:  or       ecx, 0x8000                       
0x006B78F3:  mov      word ptr [ebp - 0x20], cx         
0x006B78F7:  mov      edx, dword ptr [ebp - 0x38]       
0x006B78FA:  mov      ax, word ptr [ebp - 0x20]         
0x006B78FE:  mov      word ptr [edx + 0x10c], ax        
0x006B7905:  mov      dword ptr [ebp - 0x18], 1         
0x006B790C:  jmp      0x6b795a                          
0x006B790E:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B7911:  movzx    edx, word ptr [ecx + 0x104]       
0x006B7918:  mov      eax, dword ptr [ebp - 0x38]       
0x006B791B:  movzx    ecx, word ptr [eax + 0x10e]       
0x006B7922:  cmp      edx, ecx                          
0x006B7924:  je       0x6b795a                          
0x006B7926:  mov      edx, dword ptr [ebp - 0x38]       
0x006B7929:  movzx    eax, word ptr [edx + 0x10c]       
0x006B7930:  or       eax, 0x8000                       
0x006B7935:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B7938:  mov      word ptr [ecx + 0x10c], ax        
0x006B793F:  mov      edx, dword ptr [ebp - 0x38]       
0x006B7942:  mov      eax, dword ptr [ebp - 0x38]       
0x006B7945:  mov      cx, word ptr [eax + 0x104]        
0x006B794C:  mov      word ptr [edx + 0x10e], cx        
0x006B7953:  mov      dword ptr [ebp - 0x18], 1         
0x006B795A:  jmp      0x6b79b9                          
0x006B795C:  mov      edx, dword ptr [ebp - 4]          
0x006B795F:  imul     edx, edx, 0x124                   
0x006B7965:  mov      eax, dword ptr [0xb752c8]         
0x006B796A:  mov      dword ptr [eax + edx + 0x2c0], 0  
0x006B7975:  mov      edx, 1                            
0x006B797A:  mov      ecx, dword ptr [ebp - 4]          
0x006B797D:  shl      edx, cl                           
0x006B797F:  not      edx                               
0x006B7981:  and      edx, dword ptr [ebp - 0x28]       
0x006B7984:  mov      dword ptr [ebp - 0x28], edx       
0x006B7987:  mov      eax, 1                            
0x006B798C:  mov      ecx, dword ptr [ebp - 4]          
0x006B798F:  shl      eax, cl                           
0x006B7991:  not      eax                               
0x006B7993:  and      eax, dword ptr [ebp - 0x24]       
0x006B7996:  mov      dword ptr [ebp - 0x24], eax       
0x006B7999:  mov      ecx, dword ptr [ebp - 4]          
0x006B799C:  imul     ecx, ecx, 0x124                   
0x006B79A2:  mov      edx, dword ptr [0xb752c8]         
0x006B79A8:  cmp      dword ptr [edx + ecx + 0x390], 0  
0x006B79B0:  je       0x6b79b9                          
0x006B79B2:  mov      dword ptr [ebp - 0x10], 0         
0x006B79B9:  jmp      0x6b7657                          
0x006B79BE:  mov      eax, dword ptr [0xb752b8]         
0x006B79C3:  mov      ecx, dword ptr [ebp - 8]          
0x006B79C6:  cmp      ecx, dword ptr [eax + 0x298]      
0x006B79CC:  je       0x6b79f4                          
0x006B79CE:  mov      edx, dword ptr [0xb752b8]         
0x006B79D4:  mov      eax, dword ptr [ebp - 8]          
0x006B79D7:  mov      dword ptr [edx + 0x298], eax      
0x006B79DD:  mov      ecx, dword ptr [0xb752b8]         
0x006B79E3:  mov      dword ptr [ecx + 0x2a0], 1        
0x006B79ED:  mov      dword ptr [ebp - 0x18], 1         
0x006B79F4:  cmp      dword ptr [0xb752e0], 0           
0x006B79FB:  je       0x6b7a15                          
0x006B79FD:  mov      edx, dword ptr [0xb752e0]         
0x006B7A03:  xor      eax, eax                          
0x006B7A05:  cmp      dword ptr [edx + 0x24], 1         
0x006B7A09:  sete     al                                
0x006B7A0C:  test     eax, eax                          
0x006B7A0E:  je       0x6b7a15                          
0x006B7A10:  call     0x8adae0                          
0x006B7A15:  cmp      dword ptr [ebp - 0x18], 0         
0x006B7A19:  jne      0x6b7a21                          
0x006B7A1B:  cmp      dword ptr [ebp - 0x2c], 0         
0x006B7A1F:  jne      0x6b7a2d                          
0x006B7A21:  mov      ecx, dword ptr [ebp - 0x2c]       
0x006B7A24:  push     ecx                               
0x006B7A25:  call     0x6b72a0                          
0x006B7A2A:  add      esp, 4                            
0x006B7A2D:  mov      edx, dword ptr [0xb752c8]         
0x006B7A33:  mov      dword ptr [edx + 0xb8], 1         
0x006B7A3D:  mov      eax, dword ptr [0xb752b8]         
0x006B7A42:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B7A45:  mov      dword ptr [eax + 0x268], ecx      
0x006B7A4B:  mov      edx, dword ptr [0xb752b8]         
0x006B7A51:  mov      eax, dword ptr [ebp - 0x28]       
0x006B7A54:  mov      dword ptr [edx + 0x27c], eax      
0x006B7A5A:  mov      ecx, dword ptr [0xb752b8]         
0x006B7A60:  mov      edx, dword ptr [ebp - 0x24]       
0x006B7A63:  mov      dword ptr [ecx + 0x280], edx      
0x006B7A69:  mov      eax, dword ptr [0xb752b8]         
0x006B7A6E:  mov      ecx, dword ptr [ebp - 0x34]       
0x006B7A71:  mov      dword ptr [eax + 0x29c], ecx      
0x006B7A77:  mov      edx, dword ptr [0xb752b8]         
0x006B7A7D:  mov      eax, dword ptr [ebp - 0xc]        
0x006B7A80:  mov      dword ptr [edx + 0x284], eax      
0x006B7A86:  mov      ecx, dword ptr [0xb752b8]         
0x006B7A8C:  mov      edx, dword ptr [ebp - 0x14]       
0x006B7A8F:  mov      dword ptr [ecx + 0x288], edx      
0x006B7A95:  mov      eax, dword ptr [0xb752b8]         
0x006B7A9A:  mov      ecx, dword ptr [ebp - 0x30]       
0x006B7A9D:  mov      dword ptr [eax + 0x28c], ecx      
0x006B7AA3:  mov      esp, ebp                          
0x006B7AA5:  pop      ebp                               
0x006B7AA6:  ret                                        
0x006B7AA7:  int3                                       
0x006B7AA8:  int3                                       
0x006B7AA9:  int3                                       
0x006B7AAA:  int3                                       
0x006B7AAB:  int3                                       
0x006B7AAC:  int3                                       
0x006B7AAD:  int3                                       
0x006B7AAE:  int3                                       
0x006B7AAF:  int3                                       
0x006B7AB0:  push     ebp                               
0x006B7AB1:  mov      ebp, esp                          
0x006B7AB3:  sub      esp, 0x260                        
0x006B7AB9:  mov      eax, dword ptr [0xb089c8]         
0x006B7ABE:  xor      eax, ebp                          
0x006B7AC0:  mov      dword ptr [ebp - 0x10], eax       
0x006B7AC3:  mov      dword ptr [ebp - 0xc], 8          
0x006B7ACA:  mov      ax, word ptr [ebp - 0xc]          
0x006B7ACE:  mov      word ptr [ebp - 0x25e], ax        
0x006B7AD5:  mov      byte ptr [ebp - 0x259], 0         
0x006B7ADC:  mov      byte ptr [ebp - 0x25f], 0         
0x006B7AE3:  mov      byte ptr [ebp - 0x260], 0x25      
0x006B7AEA:  mov      dword ptr [ebp - 0x258], 1        
0x006B7AF4:  mov      dword ptr [ebp - 0xc], 0xd        
0x006B7AFB:  cmp      dword ptr [0xb4a048], 0           
0x006B7B02:  je       0x6b7b1c                          
0x006B7B04:  mov      ecx, dword ptr [0xb4a048]         
0x006B7B0A:  cmp      dword ptr [ecx + 0x170], 0        
0x006B7B11:  je       0x6b7b1c                          
0x006B7B13:  mov      byte ptr [ebp - 0x254], 1         
0x006B7B1A:  jmp      0x6b7b23                          
0x006B7B1C:  mov      byte ptr [ebp - 0x254], 0         
0x006B7B23:  mov      byte ptr [ebp - 5], 1             
0x006B7B27:  jmp      0x6b7b32                          
0x006B7B29:  mov      dl, byte ptr [ebp - 5]            
0x006B7B2C:  add      dl, 1                             
0x006B7B2F:  mov      byte ptr [ebp - 5], dl            
0x006B7B32:  movzx    eax, byte ptr [ebp - 5]           
0x006B7B36:  mov      ecx, dword ptr [0xb752c8]         
0x006B7B3C:  cmp      eax, dword ptr [ecx + 0xc0]       
0x006B7B42:  jge      0x6b7b9c                          
0x006B7B44:  movzx    edx, byte ptr [ebp - 5]           
0x006B7B48:  push     edx                               
0x006B7B49:  mov      eax, dword ptr [0xb752c8]         
0x006B7B4E:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B7B54:  push     ecx                               
0x006B7B55:  call     0x58c240                          
0x006B7B5A:  add      esp, 8                            
0x006B7B5D:  mov      dword ptr [ebp - 4], eax          
0x006B7B60:  cmp      dword ptr [ebp - 4], 0            
0x006B7B64:  jne      0x6b7b68                          
0x006B7B66:  jmp      0x6b7b29                          
0x006B7B68:  mov      edx, dword ptr [ebp - 4]          
0x006B7B6B:  cmp      dword ptr [edx], -1               
0x006B7B6E:  jne      0x6b7b72                          
0x006B7B70:  jmp      0x6b7b29                          
0x006B7B72:  push     0x22                              
0x006B7B74:  mov      eax, dword ptr [ebp - 0xc]        
0x006B7B77:  push     eax                               
0x006B7B78:  lea      ecx, [ebp - 0x260]                
0x006B7B7E:  push     ecx                               
0x006B7B7F:  push     0x25                              
0x006B7B81:  movzx    edx, byte ptr [ebp - 5]           
0x006B7B85:  push     edx                               
0x006B7B86:  mov      eax, dword ptr [0xb752c8]         
0x006B7B8B:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B7B91:  push     ecx                               
0x006B7B92:  call     0x58cd50                          
0x006B7B97:  add      esp, 0x18                         
0x006B7B9A:  jmp      0x6b7b29                          
0x006B7B9C:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B7B9F:  xor      ecx, ebp                          
0x006B7BA1:  call     0x8eac64                          
0x006B7BA6:  mov      esp, ebp                          
0x006B7BA8:  pop      ebp                               
0x006B7BA9:  ret                                        
0x006B7BAA:  int3                                       
0x006B7BAB:  int3                                       
0x006B7BAC:  int3                                       
0x006B7BAD:  int3                                       
0x006B7BAE:  int3                                       
0x006B7BAF:  int3                                       
0x006B7BB0:  push     ebp                               
0x006B7BB1:  mov      ebp, esp                          
0x006B7BB3:  sub      esp, 0x390                        
0x006B7BB9:  mov      eax, dword ptr [0xb089c8]         
0x006B7BBE:  xor      eax, ebp                          
0x006B7BC0:  mov      dword ptr [ebp - 4], eax          
0x006B7BC3:  lea      ecx, [ebp - 0x14]                 
0x006B7BC6:  call     0x6b7dd0                          
0x006B7BCB:  mov      dword ptr [ebp - 0x138], 0x110    
0x006B7BD5:  mov      dword ptr [ebp - 0x134], 0xffffffff
0x006B7BDF:  mov      eax, dword ptr [0xb752c8]         
0x006B7BE4:  cmp      dword ptr [eax + 0xe0], 0         
0x006B7BEB:  jne      0x6b7bf2                          
0x006B7BED:  jmp      0x6b7dc1                          
0x006B7BF2:  cmp      dword ptr [ebp + 8], 0            
0x006B7BF6:  jge      0x6b7bff                          
0x006B7BF8:  mov      dword ptr [ebp + 8], 0            
0x006B7BFF:  mov      ecx, 0x124                        
0x006B7C04:  cmp      ecx, 0xc00                        
0x006B7C0A:  jg       0x6b7c2d                          
0x006B7C0C:  lea      edx, [ebp - 0x130]                
0x006B7C12:  and      edx, 0x7f                         
0x006B7C15:  je       0x6b7c2d                          
0x006B7C17:  push     0x124                             
0x006B7C1C:  lea      eax, [ebp - 0x130]                
0x006B7C22:  push     eax                               
0x006B7C23:  call     0x6a9700                          
0x006B7C28:  add      esp, 8                            
0x006B7C2B:  jmp      0x6b7c43                          
0x006B7C2D:  push     0x124                             
0x006B7C32:  push     0                                 
0x006B7C34:  lea      ecx, [ebp - 0x130]                
0x006B7C3A:  push     ecx                               
0x006B7C3B:  call     0x8eb080                          
0x006B7C40:  add      esp, 0xc                          
0x006B7C43:  mov      dx, word ptr [ebp - 0x138]        
0x006B7C4A:  mov      word ptr [ebp - 0x38e], dx        
0x006B7C51:  mov      byte ptr [ebp - 0x389], 0         
0x006B7C58:  mov      byte ptr [ebp - 0x38f], 0x22      
0x006B7C5F:  mov      byte ptr [ebp - 0x390], 0x25      
0x006B7C66:  mov      dword ptr [ebp - 0x388], 0        
0x006B7C70:  mov      dword ptr [ebp - 0x13c], 0        
0x006B7C7A:  jmp      0x6b7c8b                          
0x006B7C7C:  mov      eax, dword ptr [ebp - 0x13c]      
0x006B7C82:  add      eax, 1                            
0x006B7C85:  mov      dword ptr [ebp - 0x13c], eax      
0x006B7C8B:  cmp      dword ptr [ebp - 0x13c], 4        
0x006B7C92:  jge      0x6b7cd6                          
0x006B7C94:  mov      ecx, dword ptr [ebp - 0x13c]      
0x006B7C9A:  mov      edx, dword ptr [0xb752c8]         
0x006B7CA0:  cmp      dword ptr [edx + ecx*4 + 0x2810], 0
0x006B7CA8:  je       0x6b7cd4                          
0x006B7CAA:  mov      eax, dword ptr [ebp - 0x13c]      
0x006B7CB0:  mov      ecx, dword ptr [0xb752c8]         
0x006B7CB6:  mov      edx, dword ptr [ecx + eax*4 + 0x2810]
0x006B7CBD:  movsx    eax, byte ptr [edx + 6]           
0x006B7CC1:  cmp      eax, dword ptr [ebp + 0xc]        
0x006B7CC4:  jne      0x6b7cd4                          
0x006B7CC6:  mov      ecx, dword ptr [ebp - 0x13c]      
0x006B7CCC:  mov      dword ptr [ebp - 0x134], ecx      
0x006B7CD2:  jmp      0x6b7cd6                          
0x006B7CD4:  jmp      0x6b7c7c                          
0x006B7CD6:  cmp      dword ptr [ebp - 0x134], -1       
0x006B7CDD:  jne      0x6b7ce3                          
0x006B7CDF:  xor      edx, edx                          
0x006B7CE1:  jne      0x6b7cdf                          
0x006B7CE3:  mov      eax, dword ptr [ebp - 0x134]      
0x006B7CE9:  mov      ecx, dword ptr [0xb752c8]         
0x006B7CEF:  mov      edx, dword ptr [ecx + eax*4 + 0x2810]
0x006B7CF6:  mov      eax, dword ptr [edx + 0xd0]       
0x006B7CFC:  mov      ecx, dword ptr [edx + 0xd4]       
0x006B7D02:  mov      dword ptr [ebp - 0x14], eax       
0x006B7D05:  mov      dword ptr [ebp - 0x10], ecx       
0x006B7D08:  mov      edx, dword ptr [ebp - 0x134]      
0x006B7D0E:  mov      eax, dword ptr [0xb752c8]         
0x006B7D13:  mov      ecx, dword ptr [eax + edx*4 + 0x2810]
0x006B7D1A:  mov      edx, dword ptr [ecx]              
0x006B7D1C:  push     edx                               
0x006B7D1D:  push     0x981030                          
0x006B7D22:  push     0x40                              
0x006B7D24:  lea      eax, [ebp - 0x9c]                 
0x006B7D2A:  push     eax                               
0x006B7D2B:  call     0x694410                          
0x006B7D30:  add      esp, 0x10                         
0x006B7D33:  mov      ecx, dword ptr [ebp + 0xc]        
0x006B7D36:  mov      dword ptr [ebp - 0x5c], ecx       
0x006B7D39:  mov      edx, dword ptr [ebp - 0x134]      
0x006B7D3F:  mov      eax, dword ptr [0xb752c8]         
0x006B7D44:  mov      ecx, dword ptr [eax + edx*4 + 0x2810]
0x006B7D4B:  mov      edx, dword ptr [ecx + 8]          
0x006B7D4E:  mov      dword ptr [ebp - 0x30], edx       
0x006B7D51:  mov      eax, dword ptr [0xb752c8]         
0x006B7D56:  mov      ecx, dword ptr [eax + 0x28]       
0x006B7D59:  mov      dword ptr [ebp - 0x44], ecx       
0x006B7D5C:  mov      edx, dword ptr [ebp - 0x138]      
0x006B7D62:  push     edx                               
0x006B7D63:  lea      eax, [ebp - 0x130]                
0x006B7D69:  push     eax                               
0x006B7D6A:  lea      ecx, [ebp - 0x384]                
0x006B7D70:  push     ecx                               
0x006B7D71:  call     0x497f80                          
0x006B7D76:  add      esp, 0xc                          
0x006B7D79:  mov      edx, dword ptr [ebp - 0x138]      
0x006B7D7F:  add      edx, 0xc                          
0x006B7D82:  mov      dword ptr [ebp - 0x138], edx      
0x006B7D88:  push     0x22                              
0x006B7D8A:  mov      eax, dword ptr [ebp - 0x138]      
0x006B7D90:  push     eax                               
0x006B7D91:  lea      ecx, [ebp - 0x390]                
0x006B7D97:  push     ecx                               
0x006B7D98:  push     0x25                              
0x006B7D9A:  push     0                                 
0x006B7D9C:  mov      edx, dword ptr [0xb752c8]         
0x006B7DA2:  mov      eax, dword ptr [edx + 0xe0]       
0x006B7DA8:  push     eax                               
0x006B7DA9:  call     0x58cd50                          
0x006B7DAE:  add      esp, 0x18                         
0x006B7DB1:  mov      ecx, dword ptr [0xb752c8]         
0x006B7DB7:  mov      dword ptr [ecx + 0x108], 0        
0x006B7DC1:  mov      ecx, dword ptr [ebp - 4]          
0x006B7DC4:  xor      ecx, ebp                          
0x006B7DC6:  call     0x8eac64                          
0x006B7DCB:  mov      esp, ebp                          
0x006B7DCD:  pop      ebp                               
0x006B7DCE:  ret                                        
0x006B7DCF:  int3                                       
0x006B7DD0:  push     ebp                               
0x006B7DD1:  mov      ebp, esp                          
0x006B7DD3:  push     ecx                               
0x006B7DD4:  mov      dword ptr [ebp - 4], ecx          
0x006B7DD7:  mov      eax, dword ptr [ebp - 4]          
0x006B7DDA:  mov      ecx, dword ptr [eax]              
0x006B7DDC:  and      ecx, 0                            
0x006B7DDF:  mov      edx, dword ptr [ebp - 4]          
0x006B7DE2:  mov      dword ptr [edx], ecx              
0x006B7DE4:  mov      eax, dword ptr [ebp - 4]          
0x006B7DE7:  mov      ecx, dword ptr [eax + 4]          
0x006B7DEA:  and      ecx, 0xff0fffff                   
0x006B7DF0:  mov      edx, dword ptr [ebp - 4]          
0x006B7DF3:  mov      dword ptr [edx + 4], ecx          
0x006B7DF6:  mov      eax, dword ptr [ebp - 4]          
0x006B7DF9:  mov      ecx, dword ptr [eax + 4]          
0x006B7DFC:  and      ecx, 0xffffff                     
0x006B7E02:  mov      edx, dword ptr [ebp - 4]          
0x006B7E05:  mov      dword ptr [edx + 4], ecx          
0x006B7E08:  mov      eax, dword ptr [ebp - 4]          
0x006B7E0B:  mov      ecx, dword ptr [eax + 4]          
0x006B7E0E:  and      ecx, 0xfff00000                   
0x006B7E14:  mov      edx, dword ptr [ebp - 4]          
0x006B7E17:  mov      dword ptr [edx + 4], ecx          
0x006B7E1A:  mov      eax, dword ptr [ebp - 4]          
0x006B7E1D:  mov      esp, ebp                          
0x006B7E1F:  pop      ebp                               
0x006B7E20:  ret                                        
0x006B7E21:  int3                                       
0x006B7E22:  int3                                       
0x006B7E23:  int3                                       
0x006B7E24:  int3                                       
0x006B7E25:  int3                                       
0x006B7E26:  int3                                       
0x006B7E27:  int3                                       
0x006B7E28:  int3                                       
0x006B7E29:  int3                                       
0x006B7E2A:  int3                                       
0x006B7E2B:  int3                                       
0x006B7E2C:  int3                                       
0x006B7E2D:  int3                                       
0x006B7E2E:  int3                                       
0x006B7E2F:  int3                                       
0x006B7E30:  push     ebp                               
0x006B7E31:  mov      ebp, esp                          
0x006B7E33:  sub      esp, 0x270                        
0x006B7E39:  mov      eax, dword ptr [0xb089c8]         
0x006B7E3E:  xor      eax, ebp                          
0x006B7E40:  mov      dword ptr [ebp - 0x1c], eax       
0x006B7E43:  cmp      dword ptr [0xb752e0], 0           
0x006B7E4A:  je       0x6b7e57                          
0x006B7E4C:  mov      ecx, dword ptr [0xb752e0]         
0x006B7E52:  call     0x6be310                          
0x006B7E57:  cmp      dword ptr [0xb752e0], 0           
0x006B7E5E:  je       0x6b7e6b                          
0x006B7E60:  mov      ecx, dword ptr [0xb752e0]         
0x006B7E66:  call     0x7dae50                          
0x006B7E6B:  mov      eax, 0x40                         
0x006B7E70:  mov      word ptr [ebp - 0x26e], ax        
0x006B7E77:  mov      byte ptr [ebp - 0x269], 0         
0x006B7E7E:  mov      byte ptr [ebp - 0x26a], 0         
0x006B7E85:  mov      byte ptr [ebp - 0x26f], 0         
0x006B7E8C:  mov      byte ptr [ebp - 0x270], 0x25      
0x006B7E93:  mov      dword ptr [ebp - 0x268], 2        
0x006B7E9D:  lea      ecx, [ebp - 0x264]                
0x006B7EA3:  mov      dword ptr [ebp - 0x10], ecx       
0x006B7EA6:  mov      edx, dword ptr [ebp - 0x10]       
0x006B7EA9:  mov      eax, dword ptr [0xb752e0]         
0x006B7EAE:  mov      ecx, dword ptr [eax + 4]          
0x006B7EB1:  mov      dword ptr [edx], ecx              
0x006B7EB3:  mov      edx, dword ptr [ebp - 0x10]       
0x006B7EB6:  add      edx, 4                            
0x006B7EB9:  mov      dword ptr [ebp - 0x10], edx       
0x006B7EBC:  mov      eax, dword ptr [ebp - 0x10]       
0x006B7EBF:  mov      ecx, dword ptr [0xb752e0]         
0x006B7EC5:  mov      edx, dword ptr [ecx]              
0x006B7EC7:  mov      dword ptr [eax], edx              
0x006B7EC9:  mov      eax, dword ptr [ebp - 0x10]       
0x006B7ECC:  add      eax, 4                            
0x006B7ECF:  mov      dword ptr [ebp - 0x10], eax       
0x006B7ED2:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B7ED5:  mov      edx, dword ptr [0xb752e0]         
0x006B7EDB:  mov      eax, dword ptr [edx + 0xc]        
0x006B7EDE:  mov      dword ptr [ecx], eax              
0x006B7EE0:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B7EE3:  add      ecx, 4                            
0x006B7EE6:  mov      dword ptr [ebp - 0x10], ecx       
0x006B7EE9:  mov      edx, dword ptr [ebp - 0x10]       
0x006B7EEC:  mov      eax, dword ptr [0xb752e0]         
0x006B7EF1:  mov      ecx, dword ptr [eax + 8]          
0x006B7EF4:  mov      dword ptr [edx], ecx              
0x006B7EF6:  mov      edx, dword ptr [ebp - 0x10]       
0x006B7EF9:  add      edx, 4                            
0x006B7EFC:  mov      dword ptr [ebp - 0x10], edx       
0x006B7EFF:  mov      eax, dword ptr [0xb752b8]         
0x006B7F04:  mov      ecx, dword ptr [eax + 0x24]       
0x006B7F07:  mov      dword ptr [ebp - 0xc], ecx        
0x006B7F0A:  mov      edx, dword ptr [ebp - 0x10]       
0x006B7F0D:  mov      eax, dword ptr [ebp - 0xc]        
0x006B7F10:  mov      dword ptr [edx], eax              
0x006B7F12:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B7F15:  add      ecx, 4                            
0x006B7F18:  mov      dword ptr [ebp - 0x10], ecx       
0x006B7F1B:  mov      edx, dword ptr [0xb752c8]         
0x006B7F21:  mov      eax, dword ptr [edx + 0x48]       
0x006B7F24:  mov      dword ptr [ebp - 0xc], eax        
0x006B7F27:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B7F2A:  mov      edx, dword ptr [ebp - 0xc]        
0x006B7F2D:  mov      dword ptr [ecx], edx              
0x006B7F2F:  mov      eax, dword ptr [ebp - 0x10]       
0x006B7F32:  add      eax, 4                            
0x006B7F35:  mov      dword ptr [ebp - 0x10], eax       
0x006B7F38:  mov      dword ptr [ebp - 0x18], 0x4c      
0x006B7F3F:  mov      ecx, dword ptr [ebp - 0x18]       
0x006B7F42:  push     ecx                               
0x006B7F43:  mov      edx, dword ptr [0xb752b8]         
0x006B7F49:  add      edx, 0x54                         
0x006B7F4C:  push     edx                               
0x006B7F4D:  mov      eax, dword ptr [ebp - 0x10]       
0x006B7F50:  push     eax                               
0x006B7F51:  call     0x497f80                          
0x006B7F56:  add      esp, 0xc                          
0x006B7F59:  mov      ecx, dword ptr [ebp - 0x18]       
0x006B7F5C:  add      ecx, 0xc                          
0x006B7F5F:  mov      dword ptr [ebp - 0x18], ecx       
0x006B7F62:  mov      edx, dword ptr [ebp - 0x10]       
0x006B7F65:  lea      eax, [ebp - 0x264]                
0x006B7F6B:  sub      edx, eax                          
0x006B7F6D:  add      edx, dword ptr [ebp - 0x18]       
0x006B7F70:  mov      dword ptr [ebp - 0x18], edx       
0x006B7F73:  mov      byte ptr [ebp - 0x11], 1          
0x006B7F77:  jmp      0x6b7f82                          
0x006B7F79:  mov      cl, byte ptr [ebp - 0x11]         
0x006B7F7C:  add      cl, 1                             
0x006B7F7F:  mov      byte ptr [ebp - 0x11], cl         
0x006B7F82:  movzx    edx, byte ptr [ebp - 0x11]        
0x006B7F86:  mov      eax, dword ptr [0xb752c8]         
0x006B7F8B:  cmp      edx, dword ptr [eax + 0xc0]       
0x006B7F91:  jge      0x6b7ff0                          
0x006B7F93:  movzx    ecx, byte ptr [ebp - 0x11]        
0x006B7F97:  push     ecx                               
0x006B7F98:  mov      edx, dword ptr [0xb752c8]         
0x006B7F9E:  mov      eax, dword ptr [edx + 0xe0]       
0x006B7FA4:  push     eax                               
0x006B7FA5:  call     0x58c240                          
0x006B7FAA:  add      esp, 8                            
0x006B7FAD:  mov      dword ptr [ebp - 8], eax          
0x006B7FB0:  cmp      dword ptr [ebp - 8], 0            
0x006B7FB4:  jne      0x6b7fb8                          
0x006B7FB6:  jmp      0x6b7f79                          
0x006B7FB8:  mov      ecx, dword ptr [ebp - 8]          
0x006B7FBB:  cmp      dword ptr [ecx], -1               
0x006B7FBE:  jne      0x6b7fc2                          
0x006B7FC0:  jmp      0x6b7f79                          
0x006B7FC2:  push     0x22                              
0x006B7FC4:  mov      edx, dword ptr [ebp - 0x18]       
0x006B7FC7:  push     edx                               
0x006B7FC8:  lea      eax, [ebp - 0x270]                
0x006B7FCE:  push     eax                               
0x006B7FCF:  push     0x25                              
0x006B7FD1:  movzx    ecx, byte ptr [ebp - 0x11]        
0x006B7FD5:  push     ecx                               
0x006B7FD6:  mov      edx, dword ptr [0xb752c8]         
0x006B7FDC:  mov      eax, dword ptr [edx + 0xe0]       
0x006B7FE2:  push     eax                               
0x006B7FE3:  call     0x58cd50                          
0x006B7FE8:  add      esp, 0x18                         
0x006B7FEB:  mov      dword ptr [ebp - 4], eax          
0x006B7FEE:  jmp      0x6b7f79                          
0x006B7FF0:  mov      ecx, dword ptr [0xb752c8]         
0x006B7FF6:  mov      dword ptr [ecx + 0x108], 0        
0x006B8000:  mov      edx, dword ptr [0xb752e0]         
0x006B8006:  mov      dword ptr [edx + 0x1c], 0         
0x006B800D:  mov      eax, dword ptr [0xb752b8]         
0x006B8012:  mov      dword ptr [eax + 0x54], 0         
0x006B8019:  mov      ecx, dword ptr [ebp - 0x1c]       
0x006B801C:  xor      ecx, ebp                          
0x006B801E:  call     0x8eac64                          
0x006B8023:  mov      esp, ebp                          
0x006B8025:  pop      ebp                               
0x006B8026:  ret                                        
0x006B8027:  int3                                       
0x006B8028:  int3                                       
0x006B8029:  int3                                       
0x006B802A:  int3                                       
0x006B802B:  int3                                       
0x006B802C:  int3                                       
0x006B802D:  int3                                       
0x006B802E:  int3                                       
0x006B802F:  int3                                       
0x006B8030:  push     ebp                               
0x006B8031:  mov      ebp, esp                          
0x006B8033:  sub      esp, 0x4c                         
0x006B8036:  mov      eax, dword ptr [ebp + 8]          
0x006B8039:  movzx    ecx, byte ptr [eax + 6]           
0x006B803D:  mov      dword ptr [ebp - 8], ecx          
0x006B8040:  mov      edx, dword ptr [ebp + 8]          
0x006B8043:  mov      eax, dword ptr [edx + 8]          
0x006B8046:  mov      dword ptr [ebp - 0x3c], eax       
0x006B8049:  cmp      dword ptr [ebp - 0x3c], 0         
0x006B804D:  je       0x6b8068                          
0x006B804F:  cmp      dword ptr [ebp - 0x3c], 0xe       
0x006B8053:  je       0x6b81a0                          
0x006B8059:  cmp      dword ptr [ebp - 0x3c], 0x14      
0x006B805D:  je       0x6b830e                          
0x006B8063:  jmp      0x6b840e                          
0x006B8068:  mov      ecx, dword ptr [ebp + 8]          
0x006B806B:  add      ecx, 0xc                          
0x006B806E:  mov      dword ptr [ebp - 4], ecx          
0x006B8071:  mov      edx, dword ptr [ebp - 4]          
0x006B8074:  mov      eax, dword ptr [edx + 0xd4]       
0x006B807A:  mov      dword ptr [ebp - 0xc], eax        
0x006B807D:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B8080:  imul     ecx, ecx, 0x124                   
0x006B8086:  mov      edx, dword ptr [0xb752c8]         
0x006B808C:  mov      dword ptr [edx + ecx + 0x3a0], 1  
0x006B8097:  mov      eax, dword ptr [ebp - 4]          
0x006B809A:  add      eax, 0x94                         
0x006B809F:  push     eax                               
0x006B80A0:  push     0x981030                          
0x006B80A5:  push     0x40                              
0x006B80A7:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B80AA:  imul     ecx, ecx, 0x124                   
0x006B80B0:  mov      edx, dword ptr [0xb752c8]         
0x006B80B6:  lea      eax, [edx + ecx + 0x34c]          
0x006B80BD:  push     eax                               
0x006B80BE:  call     0x694410                          
0x006B80C3:  add      esp, 0x10                         
0x006B80C6:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B80C9:  imul     ecx, ecx, 0x124                   
0x006B80CF:  mov      edx, dword ptr [0xb752c8]         
0x006B80D5:  mov      eax, dword ptr [ebp + 8]          
0x006B80D8:  mov      al, byte ptr [eax + 6]            
0x006B80DB:  mov      byte ptr [edx + ecx + 0x2b8], al  
0x006B80E2:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B80E5:  imul     ecx, ecx, 0x124                   
0x006B80EB:  mov      edx, dword ptr [0xb752c8]         
0x006B80F1:  mov      eax, dword ptr [edx + ecx + 0x2c4]
0x006B80F8:  or       eax, 2                            
0x006B80FB:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B80FE:  imul     ecx, ecx, 0x124                   
0x006B8104:  mov      edx, dword ptr [0xb752c8]         
0x006B810A:  mov      dword ptr [edx + ecx + 0x2c4], eax
0x006B8111:  mov      eax, dword ptr [ebp - 0xc]        
0x006B8114:  imul     eax, eax, 0x124                   
0x006B811A:  mov      ecx, dword ptr [0xb752c8]         
0x006B8120:  mov      edx, dword ptr [ebp - 4]          
0x006B8123:  mov      edx, dword ptr [edx + 0x100]      
0x006B8129:  mov      dword ptr [ecx + eax + 0x3b8], edx
0x006B8130:  mov      eax, dword ptr [ebp - 0xc]        
0x006B8133:  imul     eax, eax, 0x124                   
0x006B8139:  mov      ecx, dword ptr [0xb752c8]         
0x006B813F:  mov      edx, dword ptr [ebp - 4]          
0x006B8142:  mov      edx, dword ptr [edx + 0xec]       
0x006B8148:  mov      dword ptr [ecx + eax + 0x3a4], edx
0x006B814F:  mov      eax, dword ptr [ebp - 4]          
0x006B8152:  mov      ecx, dword ptr [eax + 0xe4]       
0x006B8158:  mov      edx, dword ptr [ebp - 0xc]        
0x006B815B:  imul     edx, edx, 0x124                   
0x006B8161:  mov      eax, dword ptr [0xb752c8]         
0x006B8166:  mov      dword ptr [eax + edx + 0x39c], ecx
0x006B816D:  push     0                                 
0x006B816F:  call     0x6b51d0                          
0x006B8174:  add      esp, 4                            
0x006B8177:  mov      ecx, dword ptr [ebp + 8]          
0x006B817A:  movzx    edx, byte ptr [ecx + 6]           
0x006B817E:  push     edx                               
0x006B817F:  call     0x6b4f50                          
0x006B8184:  add      esp, 4                            
0x006B8187:  mov      eax, dword ptr [0xb752c8]         
0x006B818C:  mov      dword ptr [eax + 0x108], 0        
0x006B8196:  jmp      0x6b840e                          
0x006B819B:  jmp      0x6b840e                          
0x006B81A0:  mov      ecx, dword ptr [ebp + 8]          
0x006B81A3:  add      ecx, 0xc                          
0x006B81A6:  mov      dword ptr [ebp - 0x14], ecx       
0x006B81A9:  cmp      dword ptr [0xb752c8], 0           
0x006B81B0:  je       0x6b81c1                          
0x006B81B2:  mov      edx, dword ptr [0xb752c8]         
0x006B81B8:  cmp      dword ptr [edx + 0xe0], 0         
0x006B81BF:  jne      0x6b81c6                          
0x006B81C1:  jmp      0x6b840e                          
0x006B81C6:  mov      eax, dword ptr [0xb752c8]         
0x006B81CB:  add      eax, 0x2b8                        
0x006B81D0:  mov      dword ptr [ebp - 0x10], eax       
0x006B81D3:  mov      dword ptr [ebp - 0xc], 0          
0x006B81DA:  jmp      0x6b81e5                          
0x006B81DC:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B81DF:  add      ecx, 1                            
0x006B81E2:  mov      dword ptr [ebp - 0xc], ecx        
0x006B81E5:  mov      edx, dword ptr [0xb752c8]         
0x006B81EB:  mov      eax, dword ptr [ebp - 0xc]        
0x006B81EE:  cmp      eax, dword ptr [edx + 0xc0]       
0x006B81F4:  jge      0x6b8309                          
0x006B81FA:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B81FD:  imul     ecx, ecx, 0x124                   
0x006B8203:  mov      edx, dword ptr [ebp - 0x10]       
0x006B8206:  movzx    eax, byte ptr [edx + ecx]         
0x006B820A:  cmp      eax, dword ptr [ebp - 8]          
0x006B820D:  jne      0x6b82fb                          
0x006B8213:  mov      ecx, dword ptr [ebp - 0x14]       
0x006B8216:  mov      dx, word ptr [ecx]                
0x006B8219:  mov      word ptr [ebp - 0x18], dx         
0x006B821D:  mov      eax, dword ptr [ebp - 0xc]        
0x006B8220:  imul     eax, eax, 0x124                   
0x006B8226:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B8229:  mov      dx, word ptr [ebp - 0x18]         
0x006B822D:  mov      word ptr [ecx + eax + 0x10c], dx  
0x006B8235:  movzx    eax, word ptr [ebp - 0x18]        
0x006B8239:  and      eax, 1                            
0x006B823C:  neg      eax                               
0x006B823E:  sbb      eax, eax                          
0x006B8240:  neg      eax                               
0x006B8242:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B8245:  imul     ecx, ecx, 0x124                   
0x006B824B:  mov      edx, dword ptr [ebp - 0x10]       
0x006B824E:  mov      dword ptr [edx + ecx + 4], eax    
0x006B8252:  movzx    eax, word ptr [ebp - 0x18]        
0x006B8256:  and      eax, 2                            
0x006B8259:  neg      eax                               
0x006B825B:  sbb      eax, eax                          
0x006B825D:  neg      eax                               
0x006B825F:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B8262:  imul     ecx, ecx, 0x124                   
0x006B8268:  mov      edx, dword ptr [ebp - 0x10]       
0x006B826B:  mov      dword ptr [edx + ecx + 0xf0], eax 
0x006B8272:  movzx    eax, word ptr [ebp - 0x18]        
0x006B8276:  and      eax, 8                            
0x006B8279:  neg      eax                               
0x006B827B:  sbb      eax, eax                          
0x006B827D:  neg      eax                               
0x006B827F:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B8282:  imul     ecx, ecx, 0x124                   
0x006B8288:  mov      edx, dword ptr [ebp - 0x10]       
0x006B828B:  mov      dword ptr [edx + ecx + 0xf8], eax 
0x006B8292:  movzx    eax, word ptr [ebp - 0x18]        
0x006B8296:  and      eax, 0x10                         
0x006B8299:  neg      eax                               
0x006B829B:  sbb      eax, eax                          
0x006B829D:  neg      eax                               
0x006B829F:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B82A2:  imul     ecx, ecx, 0x124                   
0x006B82A8:  mov      edx, dword ptr [ebp - 0x10]       
0x006B82AB:  mov      dword ptr [edx + ecx + 0xfc], eax 
0x006B82B2:  mov      eax, dword ptr [ebp - 0xc]        
0x006B82B5:  imul     eax, eax, 0x124                   
0x006B82BB:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B82BE:  mov      edx, dword ptr [ebp - 0x14]       
0x006B82C1:  mov      dx, word ptr [edx + 2]            
0x006B82C5:  mov      word ptr [ecx + eax + 0x104], dx  
0x006B82CD:  mov      eax, dword ptr [ebp - 0xc]        
0x006B82D0:  imul     eax, eax, 0x124                   
0x006B82D6:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B82D9:  movzx    edx, word ptr [ecx + eax + 0x10c] 
0x006B82E1:  or       edx, 0x8000                       
0x006B82E7:  mov      eax, dword ptr [ebp - 0xc]        
0x006B82EA:  imul     eax, eax, 0x124                   
0x006B82F0:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B82F3:  mov      word ptr [ecx + eax + 0x10c], dx  
0x006B82FB:  mov      edx, dword ptr [ebp - 0x14]       
0x006B82FE:  add      edx, 4                            
0x006B8301:  mov      dword ptr [ebp - 0x14], edx       
0x006B8304:  jmp      0x6b81dc                          
0x006B8309:  jmp      0x6b840e                          
0x006B830E:  mov      dword ptr [ebp - 0x30], 0         
0x006B8315:  mov      dword ptr [ebp - 0x2c], 0         
0x006B831C:  cmp      dword ptr [0xb752b0], 0           
0x006B8323:  je       0x6b840e                          
0x006B8329:  mov      eax, dword ptr [ebp + 8]          
0x006B832C:  mov      cl, byte ptr [eax + 6]            
0x006B832F:  mov      byte ptr [ebp - 0x31], cl         
0x006B8332:  movzx    edx, byte ptr [ebp - 0x31]        
0x006B8336:  imul     edx, edx, 0x58                    
0x006B8339:  mov      eax, dword ptr [0xb752b0]         
0x006B833E:  lea      ecx, [eax + edx + 0x250]          
0x006B8345:  mov      dword ptr [ebp - 0x38], ecx       
0x006B8348:  mov      edx, dword ptr [ebp + 8]          
0x006B834B:  add      edx, 0x14                         
0x006B834E:  mov      dword ptr [ebp - 0x1c], edx       
0x006B8351:  mov      eax, dword ptr [ebp + 8]          
0x006B8354:  mov      ecx, dword ptr [eax + 0xc]        
0x006B8357:  mov      dword ptr [ebp - 0x30], ecx       
0x006B835A:  mov      edx, dword ptr [eax + 0x10]       
0x006B835D:  mov      dword ptr [ebp - 0x2c], edx       
0x006B8360:  mov      dword ptr [ebp - 0x28], 0         
0x006B8367:  mov      dword ptr [ebp - 0x24], 0         
0x006B836E:  jmp      0x6b8382                          
0x006B8370:  mov      eax, dword ptr [ebp - 0x28]       
0x006B8373:  add      eax, 1                            
0x006B8376:  mov      ecx, dword ptr [ebp - 0x24]       
0x006B8379:  adc      ecx, 0                            
0x006B837C:  mov      dword ptr [ebp - 0x28], eax       
0x006B837F:  mov      dword ptr [ebp - 0x24], ecx       
0x006B8382:  mov      edx, dword ptr [0xb752c8]         
0x006B8388:  mov      eax, dword ptr [edx + 0xc0]       
0x006B838E:  cdq                                        
0x006B838F:  mov      dword ptr [ebp - 0x44], eax       
0x006B8392:  mov      dword ptr [ebp - 0x40], edx       
0x006B8395:  mov      eax, dword ptr [ebp - 0x24]       
0x006B8398:  cmp      eax, dword ptr [ebp - 0x40]       
0x006B839B:  ja       0x6b83f6                          
0x006B839D:  jb       0x6b83a7                          
0x006B839F:  mov      ecx, dword ptr [ebp - 0x28]       
0x006B83A2:  cmp      ecx, dword ptr [ebp - 0x44]       
0x006B83A5:  jae      0x6b83f6                          
0x006B83A7:  mov      ecx, dword ptr [ebp - 0x28]       
0x006B83AA:  mov      eax, 1                            
0x006B83AF:  xor      edx, edx                          
0x006B83B1:  call     0x8ecd10                          
0x006B83B6:  and      eax, dword ptr [ebp - 0x30]       
0x006B83B9:  and      edx, dword ptr [ebp - 0x2c]       
0x006B83BC:  mov      dword ptr [ebp - 0x4c], eax       
0x006B83BF:  mov      dword ptr [ebp - 0x48], edx       
0x006B83C2:  mov      edx, dword ptr [ebp - 0x4c]       
0x006B83C5:  or       edx, dword ptr [ebp - 0x48]       
0x006B83C8:  je       0x6b83df                          
0x006B83CA:  mov      eax, dword ptr [ebp - 0x38]       
0x006B83CD:  mov      ecx, dword ptr [ebp - 0x1c]       
0x006B83D0:  mov      edx, dword ptr [ecx]              
0x006B83D2:  mov      dword ptr [eax], edx              
0x006B83D4:  mov      eax, dword ptr [ebp - 0x1c]       
0x006B83D7:  add      eax, 4                            
0x006B83DA:  mov      dword ptr [ebp - 0x1c], eax       
0x006B83DD:  jmp      0x6b83e8                          
0x006B83DF:  mov      ecx, dword ptr [ebp - 0x38]       
0x006B83E2:  mov      dword ptr [ecx], 0                
0x006B83E8:  mov      edx, dword ptr [ebp - 0x38]       
0x006B83EB:  add      edx, 4                            
0x006B83EE:  mov      dword ptr [ebp - 0x38], edx       
0x006B83F1:  jmp      0x6b8370                          
0x006B83F6:  movzx    eax, byte ptr [ebp - 0x31]        
0x006B83FA:  imul     eax, eax, 0x58                    
0x006B83FD:  mov      ecx, dword ptr [0xb752b0]         
0x006B8403:  mov      dword ptr [ecx + eax + 0x290], 0  
0x006B840E:  mov      esp, ebp                          
0x006B8410:  pop      ebp                               
0x006B8411:  ret                                        
0x006B8412:  int3                                       
0x006B8413:  int3                                       
0x006B8414:  int3                                       
0x006B8415:  int3                                       
0x006B8416:  int3                                       
0x006B8417:  int3                                       
0x006B8418:  int3                                       
0x006B8419:  int3                                       
0x006B841A:  int3                                       
0x006B841B:  int3                                       
0x006B841C:  int3                                       
0x006B841D:  int3                                       
0x006B841E:  int3                                       
0x006B841F:  int3                                       
0x006B8420:  push     ebp                               
0x006B8421:  mov      ebp, esp                          
0x006B8423:  sub      esp, 0x48                         
0x006B8426:  mov      eax, dword ptr [ebp + 8]          
0x006B8429:  mov      ecx, dword ptr [eax + 8]          
0x006B842C:  mov      dword ptr [ebp - 0x48], ecx       
0x006B842F:  cmp      dword ptr [ebp - 0x48], 0x13      
0x006B8433:  ja       0x6b8b27                          
0x006B8439:  mov      edx, dword ptr [ebp - 0x48]       
0x006B843C:  movzx    eax, byte ptr [edx + 0x6b8b54]    
0x006B8443:  jmp      dword ptr [eax*4 + 0x6b8b2c]      
0x006B844A:  mov      ecx, dword ptr [ebp + 8]          
0x006B844D:  add      ecx, 0xc                          
0x006B8450:  mov      dword ptr [ebp - 8], ecx          
0x006B8453:  mov      edx, dword ptr [ebp - 8]          
0x006B8456:  mov      eax, dword ptr [edx + 0xd4]       
0x006B845C:  mov      dword ptr [ebp - 0xc], eax        
0x006B845F:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B8462:  imul     ecx, ecx, 0x124                   
0x006B8468:  mov      edx, dword ptr [0xb752c8]         
0x006B846E:  lea      eax, [edx + ecx + 0x2b8]          
0x006B8475:  mov      dword ptr [ebp - 0x14], eax       
0x006B8478:  mov      ecx, dword ptr [ebp - 8]          
0x006B847B:  add      ecx, 0x94                         
0x006B8481:  push     ecx                               
0x006B8482:  push     0x981030                          
0x006B8487:  push     0x40                              
0x006B8489:  mov      edx, dword ptr [ebp - 0x14]       
0x006B848C:  add      edx, 0x94                         
0x006B8492:  push     edx                               
0x006B8493:  call     0x694410                          
0x006B8498:  add      esp, 0x10                         
0x006B849B:  mov      eax, dword ptr [ebp - 0x14]       
0x006B849E:  mov      ecx, dword ptr [ebp - 8]          
0x006B84A1:  mov      edx, dword ptr [ecx + 0xe8]       
0x006B84A7:  mov      dword ptr [eax + 0xe8], edx       
0x006B84AD:  mov      eax, dword ptr [ebp - 0x14]       
0x006B84B0:  mov      ecx, dword ptr [eax + 0xc]        
0x006B84B3:  or       ecx, 2                            
0x006B84B6:  mov      edx, dword ptr [ebp - 0x14]       
0x006B84B9:  mov      dword ptr [edx + 0xc], ecx        
0x006B84BC:  mov      eax, dword ptr [ebp - 0x14]       
0x006B84BF:  mov      ecx, dword ptr [ebp - 8]          
0x006B84C2:  mov      edx, dword ptr [ecx + 0x100]      
0x006B84C8:  mov      dword ptr [eax + 0x100], edx      
0x006B84CE:  mov      eax, dword ptr [ebp - 0x14]       
0x006B84D1:  mov      ecx, dword ptr [ebp - 8]          
0x006B84D4:  mov      edx, dword ptr [ecx + 0xec]       
0x006B84DA:  mov      dword ptr [eax + 0xec], edx       
0x006B84E0:  mov      eax, dword ptr [ebp - 8]          
0x006B84E3:  mov      ecx, dword ptr [eax + 0xe4]       
0x006B84E9:  mov      edx, dword ptr [ebp - 0x14]       
0x006B84EC:  mov      dword ptr [edx + 0xe4], ecx       
0x006B84F2:  mov      eax, dword ptr [0xb752c8]         
0x006B84F7:  mov      dword ptr [eax + 0x108], 0        
0x006B8501:  jmp      0x6b8b27                          
0x006B8506:  mov      ecx, dword ptr [ebp + 8]          
0x006B8509:  add      ecx, 0xc                          
0x006B850C:  mov      dword ptr [ebp - 0x18], ecx       
0x006B850F:  mov      edx, dword ptr [ebp + 8]          
0x006B8512:  movzx    eax, word ptr [edx + 2]           
0x006B8516:  mov      dword ptr [ebp - 0x10], eax       
0x006B8519:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B851C:  sub      ecx, 0xc                          
0x006B851F:  mov      dword ptr [ebp - 0x10], ecx       
0x006B8522:  mov      eax, dword ptr [ebp - 0x10]       
0x006B8525:  xor      edx, edx                          
0x006B8527:  mov      ecx, 0x48                         
0x006B852C:  div      ecx                               
0x006B852E:  mov      dword ptr [ebp - 0x10], eax       
0x006B8531:  cmp      dword ptr [0xb752c8], 0           
0x006B8538:  je       0x6b8549                          
0x006B853A:  mov      edx, dword ptr [0xb752c8]         
0x006B8540:  cmp      dword ptr [edx + 0xe0], 0         
0x006B8547:  jne      0x6b854e                          
0x006B8549:  jmp      0x6b8b27                          
0x006B854E:  mov      dword ptr [ebp - 4], 0            
0x006B8555:  jmp      0x6b8560                          
0x006B8557:  mov      eax, dword ptr [ebp - 4]          
0x006B855A:  add      eax, 1                            
0x006B855D:  mov      dword ptr [ebp - 4], eax          
0x006B8560:  mov      ecx, dword ptr [ebp - 4]          
0x006B8563:  cmp      ecx, dword ptr [ebp - 0x10]       
0x006B8566:  jge      0x6b860e                          
0x006B856C:  mov      edx, dword ptr [ebp - 0x18]       
0x006B856F:  movzx    eax, byte ptr [edx + 0x40]        
0x006B8573:  mov      dword ptr [ebp - 0xc], eax        
0x006B8576:  mov      ecx, dword ptr [ebp - 0xc]        
0x006B8579:  imul     ecx, ecx, 0x124                   
0x006B857F:  mov      edx, dword ptr [0xb752c8]         
0x006B8585:  lea      eax, [edx + ecx + 0x2b8]          
0x006B858C:  mov      dword ptr [ebp - 0x14], eax       
0x006B858F:  cmp      dword ptr [ebp - 0xc], 0x10       
0x006B8593:  jge      0x6b8600                          
0x006B8595:  mov      ecx, dword ptr [ebp - 0x18]       
0x006B8598:  push     ecx                               
0x006B8599:  push     0x981030                          
0x006B859E:  push     0x40                              
0x006B85A0:  mov      edx, dword ptr [ebp - 0x14]       
0x006B85A3:  add      edx, 0x94                         
0x006B85A9:  push     edx                               
0x006B85AA:  call     0x694410                          
0x006B85AF:  add      esp, 0x10                         
0x006B85B2:  mov      eax, dword ptr [ebp - 0x18]       
0x006B85B5:  movzx    ecx, byte ptr [eax + 0x42]        
0x006B85B9:  mov      edx, dword ptr [ebp - 0x14]       
0x006B85BC:  mov      dword ptr [edx + 0xe8], ecx       
0x006B85C2:  mov      eax, dword ptr [ebp - 0x14]       
0x006B85C5:  mov      ecx, dword ptr [eax + 0xc]        
0x006B85C8:  or       ecx, 2                            
0x006B85CB:  mov      edx, dword ptr [ebp - 0x14]       
0x006B85CE:  mov      dword ptr [edx + 0xc], ecx        
0x006B85D1:  mov      eax, dword ptr [ebp - 0x18]       
0x006B85D4:  movzx    ecx, byte ptr [eax + 0x41]        
0x006B85D8:  mov      edx, dword ptr [ebp - 0x14]       
0x006B85DB:  mov      dword ptr [edx + 0x100], ecx      
0x006B85E1:  mov      eax, dword ptr [ebp - 0x18]       
0x006B85E4:  movzx    ecx, byte ptr [eax + 0x43]        
0x006B85E8:  mov      edx, dword ptr [ebp - 0x14]       
0x006B85EB:  mov      dword ptr [edx + 0xec], ecx       
0x006B85F1:  mov      eax, dword ptr [ebp - 0x18]       
0x006B85F4:  mov      ecx, dword ptr [eax + 0x44]       
0x006B85F7:  mov      edx, dword ptr [ebp - 0x14]       
0x006B85FA:  mov      dword ptr [edx + 0xe4], ecx       
0x006B8600:  mov      eax, dword ptr [ebp - 0x18]       
0x006B8603:  add      eax, 0x48                         
0x006B8606:  mov      dword ptr [ebp - 0x18], eax       
0x006B8609:  jmp      0x6b8557                          
0x006B860E:  mov      ecx, dword ptr [0xb752c8]         
0x006B8614:  mov      dword ptr [ecx + 0x108], 0        
0x006B861E:  jmp      0x6b8b27                          
0x006B8623:  mov      edx, dword ptr [ebp + 8]          
0x006B8626:  movsx    eax, byte ptr [edx + 0xc]         
0x006B862A:  test     eax, eax                          
0x006B862C:  je       0x6b863d                          
0x006B862E:  mov      ecx, dword ptr [0xb752b8]         
0x006B8634:  mov      dword ptr [ecx + 0x30], 1         
0x006B863B:  jmp      0x6b864a                          
0x006B863D:  mov      edx, dword ptr [0xb752b8]         
0x006B8643:  mov      dword ptr [edx + 0x30], 0         
0x006B864A:  call     0x6b71c0                          
0x006B864F:  call     0x6bc460                          
0x006B8654:  call     0x6b3de0                          
0x006B8659:  push     0                                 
0x006B865B:  push     7                                 
0x006B865D:  push     0xb0                              
0x006B8662:  call     0x6b4270                          
0x006B8667:  add      esp, 0xc                          
0x006B866A:  mov      eax, dword ptr [0xb752c8]         
0x006B866F:  mov      ecx, dword ptr [eax + 0xd0]       
0x006B8675:  or       ecx, 4                            
0x006B8678:  mov      edx, dword ptr [0xb752c8]         
0x006B867E:  mov      dword ptr [edx + 0xd0], ecx       
0x006B8684:  jmp      0x6b8b27                          
0x006B8689:  mov      eax, dword ptr [ebp + 8]          
0x006B868C:  add      eax, 0xc                          
0x006B868F:  mov      dword ptr [ebp - 0x20], eax       
0x006B8692:  mov      ecx, dword ptr [0xb752c8]         
0x006B8698:  mov      edx, dword ptr [ebp - 0x20]       
0x006B869B:  mov      eax, dword ptr [edx]              
0x006B869D:  mov      dword ptr [ecx + 0x34], eax       
0x006B86A0:  mov      ecx, dword ptr [ebp - 0x20]       
0x006B86A3:  add      ecx, 4                            
0x006B86A6:  mov      dword ptr [ebp - 0x20], ecx       
0x006B86A9:  mov      edx, dword ptr [0xb752c8]         
0x006B86AF:  mov      eax, dword ptr [edx + 0x34]       
0x006B86B2:  mov      ecx, dword ptr [ebp - 0x20]       
0x006B86B5:  add      eax, dword ptr [ecx]              
0x006B86B7:  mov      edx, dword ptr [0xb752c8]         
0x006B86BD:  mov      dword ptr [edx + 0x34], eax       
0x006B86C0:  mov      eax, dword ptr [ebp - 0x20]       
0x006B86C3:  add      eax, 4                            
0x006B86C6:  mov      dword ptr [ebp - 0x20], eax       
0x006B86C9:  mov      ecx, dword ptr [0xb752c8]         
0x006B86CF:  mov      edx, dword ptr [ebp - 0x20]       
0x006B86D2:  mov      eax, dword ptr [edx]              
0x006B86D4:  mov      dword ptr [ecx + 0x30], eax       
0x006B86D7:  mov      ecx, dword ptr [ebp - 0x20]       
0x006B86DA:  add      ecx, 4                            
0x006B86DD:  mov      dword ptr [ebp - 0x20], ecx       
0x006B86E0:  mov      edx, dword ptr [0xb752c8]         
0x006B86E6:  mov      eax, dword ptr [edx + 0x30]       
0x006B86E9:  mov      ecx, dword ptr [ebp - 0x20]       
0x006B86EC:  add      eax, dword ptr [ecx]              
0x006B86EE:  mov      edx, dword ptr [0xb752c8]         
0x006B86F4:  mov      dword ptr [edx + 0x30], eax       
0x006B86F7:  mov      eax, dword ptr [ebp - 0x20]       
0x006B86FA:  add      eax, 4                            
0x006B86FD:  mov      dword ptr [ebp - 0x20], eax       
0x006B8700:  mov      ecx, dword ptr [ebp - 0x20]       
0x006B8703:  mov      edx, dword ptr [ecx]              
0x006B8705:  mov      dword ptr [ebp - 0x1c], edx       
0x006B8708:  mov      eax, dword ptr [ebp - 0x20]       
0x006B870B:  add      eax, 4                            
0x006B870E:  mov      dword ptr [ebp - 0x20], eax       
0x006B8711:  mov      ecx, dword ptr [0xb752b8]         
0x006B8717:  mov      edx, dword ptr [ebp - 0x1c]       
0x006B871A:  mov      dword ptr [ecx + 0x24], edx       
0x006B871D:  mov      eax, dword ptr [ebp - 0x20]       
0x006B8720:  mov      ecx, dword ptr [eax]              
0x006B8722:  mov      dword ptr [ebp - 0x1c], ecx       
0x006B8725:  mov      edx, dword ptr [ebp - 0x20]       
0x006B8728:  add      edx, 4                            
0x006B872B:  mov      dword ptr [ebp - 0x20], edx       
0x006B872E:  mov      eax, dword ptr [0xb752c8]         
0x006B8733:  mov      ecx, dword ptr [ebp - 0x1c]       
0x006B8736:  mov      dword ptr [eax + 0x48], ecx       
0x006B8739:  push     0x4c                              
0x006B873B:  mov      edx, dword ptr [ebp - 0x20]       
0x006B873E:  push     edx                               
0x006B873F:  mov      eax, dword ptr [0xb752b8]         
0x006B8744:  add      eax, 0x54                         
0x006B8747:  push     eax                               
0x006B8748:  call     0x497f80                          
0x006B874D:  add      esp, 0xc                          
0x006B8750:  mov      ecx, dword ptr [0xb752c8]         
0x006B8756:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B875C:  and      edx, 0xfffff7ff                   
0x006B8762:  mov      eax, dword ptr [0xb752c8]         
0x006B8767:  mov      dword ptr [eax + 0xd0], edx       
0x006B876D:  mov      ecx, dword ptr [0xb752e0]         
0x006B8773:  call     0x6be310                          
0x006B8778:  jmp      0x6b8b27                          
0x006B877D:  mov      ecx, dword ptr [0xb752c8]         
0x006B8783:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B8789:  or       edx, 0x8000                       
0x006B878F:  mov      eax, dword ptr [0xb752c8]         
0x006B8794:  mov      dword ptr [eax + 0xd0], edx       
0x006B879A:  push     0                                 
0x006B879C:  push     7                                 
0x006B879E:  push     0xaf                              
0x006B87A3:  call     0x6b4270                          
0x006B87A8:  add      esp, 0xc                          
0x006B87AB:  jmp      0x6b8b27                          
0x006B87B0:  call     0x6bc570                          
0x006B87B5:  mov      ecx, dword ptr [0xb752c8]         
0x006B87BB:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B87C1:  or       edx, 0x80                         
0x006B87C7:  mov      eax, dword ptr [0xb752c8]         
0x006B87CC:  mov      dword ptr [eax + 0xd0], edx       
0x006B87D2:  mov      ecx, dword ptr [ebp + 8]          
0x006B87D5:  add      ecx, 0xc                          
0x006B87D8:  mov      dword ptr [ebp - 0x24], ecx       
0x006B87DB:  mov      edx, dword ptr [ebp - 0x24]       
0x006B87DE:  cmp      dword ptr [edx], 0                
0x006B87E1:  je       0x6b8800                          
0x006B87E3:  mov      eax, dword ptr [0xb752c8]         
0x006B87E8:  mov      ecx, dword ptr [eax + 0xd0]       
0x006B87EE:  or       ecx, 0x8000                       
0x006B87F4:  mov      edx, dword ptr [0xb752c8]         
0x006B87FA:  mov      dword ptr [edx + 0xd0], ecx       
0x006B8800:  jmp      0x6b8b27                          
0x006B8805:  jmp      0x6b8b27                          
0x006B880A:  mov      eax, dword ptr [ebp + 8]          
0x006B880D:  mov      ecx, dword ptr [eax + 0xc]        
0x006B8810:  mov      dword ptr [ebp - 0x28], ecx       
0x006B8813:  cmp      dword ptr [0xb752c8], 0           
0x006B881A:  je       0x6b882b                          
0x006B881C:  mov      edx, dword ptr [0xb752c8]         
0x006B8822:  cmp      dword ptr [edx + 0xe0], 0         
0x006B8829:  jne      0x6b8830                          
0x006B882B:  jmp      0x6b8b27                          
0x006B8830:  mov      eax, dword ptr [0xb752c8]         
0x006B8835:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B883B:  mov      dword ptr [ebp - 0x2c], ecx       
0x006B883E:  mov      edx, dword ptr [ebp - 0x2c]       
0x006B8841:  mov      eax, dword ptr [ebp - 0x28]       
0x006B8844:  mov      dword ptr [edx + 0xd4], eax       
0x006B884A:  push     0                                 
0x006B884C:  mov      ecx, dword ptr [ebp - 0x2c]       
0x006B884F:  push     ecx                               
0x006B8850:  call     0x58c240                          
0x006B8855:  add      esp, 8                            
0x006B8858:  mov      dword ptr [ebp - 0x30], eax       
0x006B885B:  mov      edx, dword ptr [ebp - 0x30]       
0x006B885E:  mov      eax, dword ptr [edx + 0x20]       
0x006B8861:  cdq                                        
0x006B8862:  sub      eax, edx                          
0x006B8864:  sar      eax, 1                            
0x006B8866:  mov      ecx, dword ptr [ebp - 0x2c]       
0x006B8869:  add      eax, dword ptr [ecx + 0xd4]       
0x006B886F:  mov      edx, dword ptr [ebp - 0x2c]       
0x006B8872:  mov      dword ptr [edx + 0xd4], eax       
0x006B8878:  call     0x6a0cf0                          
0x006B887D:  mov      ecx, dword ptr [ebp - 0x2c]       
0x006B8880:  mov      dword ptr [ecx + 0xc8], eax       
0x006B8886:  mov      dword ptr [ecx + 0xcc], edx       
0x006B888C:  jmp      0x6b8b27                          
0x006B8891:  mov      edx, dword ptr [ebp + 8]          
0x006B8894:  add      edx, 0xc                          
0x006B8897:  mov      dword ptr [ebp - 0x34], edx       
0x006B889A:  cmp      dword ptr [0xb752c8], 0           
0x006B88A1:  je       0x6b88b1                          
0x006B88A3:  mov      eax, dword ptr [0xb752c8]         
0x006B88A8:  cmp      dword ptr [eax + 0xe0], 0         
0x006B88AF:  jne      0x6b88b6                          
0x006B88B1:  jmp      0x6b8b27                          
0x006B88B6:  mov      ecx, dword ptr [0xb752c8]         
0x006B88BC:  mov      edx, dword ptr [ecx + 0xe0]       
0x006B88C2:  push     edx                               
0x006B88C3:  call     0x58d200                          
0x006B88C8:  add      esp, 4                            
0x006B88CB:  movzx    eax, al                           
0x006B88CE:  mov      dword ptr [ebp - 0x38], eax       
0x006B88D1:  mov      ecx, dword ptr [0xb752c8]         
0x006B88D7:  add      ecx, 0x2b8                        
0x006B88DD:  mov      dword ptr [ebp - 0x14], ecx       
0x006B88E0:  mov      dword ptr [ebp - 4], 0            
0x006B88E7:  jmp      0x6b88f2                          
0x006B88E9:  mov      edx, dword ptr [ebp - 4]          
0x006B88EC:  add      edx, 1                            
0x006B88EF:  mov      dword ptr [ebp - 4], edx          
0x006B88F2:  mov      eax, dword ptr [0xb752c8]         
0x006B88F7:  mov      ecx, dword ptr [ebp - 4]          
0x006B88FA:  cmp      ecx, dword ptr [eax + 0xc0]       
0x006B8900:  jge      0x6b8a14                          
0x006B8906:  mov      edx, dword ptr [ebp - 4]          
0x006B8909:  imul     edx, edx, 0x124                   
0x006B890F:  mov      eax, dword ptr [ebp - 0x14]       
0x006B8912:  movzx    ecx, byte ptr [eax + edx]         
0x006B8916:  cmp      ecx, dword ptr [ebp - 0x38]       
0x006B8919:  je       0x6b89d9                          
0x006B891F:  mov      edx, dword ptr [ebp - 0x34]       
0x006B8922:  mov      ax, word ptr [edx]                
0x006B8925:  mov      word ptr [ebp - 0x3c], ax         
0x006B8929:  mov      ecx, dword ptr [ebp - 4]          
0x006B892C:  imul     ecx, ecx, 0x124                   
0x006B8932:  mov      edx, dword ptr [ebp - 0x14]       
0x006B8935:  mov      ax, word ptr [ebp - 0x3c]         
0x006B8939:  mov      word ptr [edx + ecx + 0x10c], ax  
0x006B8941:  movzx    ecx, word ptr [ebp - 0x3c]        
0x006B8945:  and      ecx, 1                            
0x006B8948:  neg      ecx                               
0x006B894A:  sbb      ecx, ecx                          
0x006B894C:  neg      ecx                               
0x006B894E:  mov      edx, dword ptr [ebp - 4]          
0x006B8951:  imul     edx, edx, 0x124                   
0x006B8957:  mov      eax, dword ptr [ebp - 0x14]       
0x006B895A:  mov      dword ptr [eax + edx + 4], ecx    
0x006B895E:  movzx    ecx, word ptr [ebp - 0x3c]        
0x006B8962:  and      ecx, 2                            
0x006B8965:  neg      ecx                               
0x006B8967:  sbb      ecx, ecx                          
0x006B8969:  neg      ecx                               
0x006B896B:  mov      edx, dword ptr [ebp - 4]          
0x006B896E:  imul     edx, edx, 0x124                   
0x006B8974:  mov      eax, dword ptr [ebp - 0x14]       
0x006B8977:  mov      dword ptr [eax + edx + 0xf0], ecx 
0x006B897E:  movzx    ecx, word ptr [ebp - 0x3c]        
0x006B8982:  and      ecx, 8                            
0x006B8985:  neg      ecx                               
0x006B8987:  sbb      ecx, ecx                          
0x006B8989:  neg      ecx                               
0x006B898B:  mov      edx, dword ptr [ebp - 4]          
0x006B898E:  imul     edx, edx, 0x124                   
0x006B8994:  mov      eax, dword ptr [ebp - 0x14]       
0x006B8997:  mov      dword ptr [eax + edx + 0xf8], ecx 
0x006B899E:  movzx    ecx, word ptr [ebp - 0x3c]        
0x006B89A2:  and      ecx, 0x10                         
0x006B89A5:  neg      ecx                               
0x006B89A7:  sbb      ecx, ecx                          
0x006B89A9:  neg      ecx                               
0x006B89AB:  mov      edx, dword ptr [ebp - 4]          
0x006B89AE:  imul     edx, edx, 0x124                   
0x006B89B4:  mov      eax, dword ptr [ebp - 0x14]       
0x006B89B7:  mov      dword ptr [eax + edx + 0xfc], ecx 
0x006B89BE:  mov      ecx, dword ptr [ebp - 4]          
0x006B89C1:  imul     ecx, ecx, 0x124                   
0x006B89C7:  mov      edx, dword ptr [ebp - 0x14]       
0x006B89CA:  mov      eax, dword ptr [ebp - 0x34]       
0x006B89CD:  mov      ax, word ptr [eax + 2]            
0x006B89D1:  mov      word ptr [edx + ecx + 0x104], ax  
0x006B89D9:  mov      ecx, dword ptr [ebp - 4]          
0x006B89DC:  imul     ecx, ecx, 0x124                   
0x006B89E2:  mov      edx, dword ptr [ebp - 0x14]       
0x006B89E5:  movzx    eax, word ptr [edx + ecx + 0x10c] 
0x006B89ED:  and      eax, 0x9b                         
0x006B89F2:  mov      ecx, dword ptr [ebp - 4]          
0x006B89F5:  imul     ecx, ecx, 0x124                   
0x006B89FB:  mov      edx, dword ptr [ebp - 0x14]       
0x006B89FE:  mov      word ptr [edx + ecx + 0x10c], ax  
0x006B8A06:  mov      eax, dword ptr [ebp - 0x34]       
0x006B8A09:  add      eax, 4                            
0x006B8A0C:  mov      dword ptr [ebp - 0x34], eax       
0x006B8A0F:  jmp      0x6b88e9                          
0x006B8A14:  jmp      0x6b8b27                          
0x006B8A19:  mov      ecx, dword ptr [ebp + 8]          
0x006B8A1C:  mov      edx, dword ptr [ecx + 0xc]        
0x006B8A1F:  mov      dword ptr [ebp - 0x44], edx       
0x006B8A22:  mov      eax, dword ptr [ebp + 8]          
0x006B8A25:  add      eax, 0x10                         
0x006B8A28:  mov      dword ptr [ebp - 0x40], eax       
0x006B8A2B:  cmp      dword ptr [0xb752c8], 0           
0x006B8A32:  je       0x6b8a43                          
0x006B8A34:  mov      ecx, dword ptr [0xb752c8]         
0x006B8A3A:  cmp      dword ptr [ecx + 0xe0], 0         
0x006B8A41:  jne      0x6b8a48                          
0x006B8A43:  jmp      0x6b8b27                          
0x006B8A48:  mov      dword ptr [ebp - 4], 0            
0x006B8A4F:  jmp      0x6b8a5a                          
0x006B8A51:  mov      edx, dword ptr [ebp - 4]          
0x006B8A54:  add      edx, 1                            
0x006B8A57:  mov      dword ptr [ebp - 4], edx          
0x006B8A5A:  mov      eax, dword ptr [ebp - 4]          
0x006B8A5D:  cmp      eax, dword ptr [ebp - 0x44]       
0x006B8A60:  jge      0x6b8b08                          
0x006B8A66:  mov      ecx, dword ptr [ebp - 0x40]       
0x006B8A69:  movzx    edx, byte ptr [ecx + 0x40]        
0x006B8A6D:  mov      dword ptr [ebp - 0xc], edx        
0x006B8A70:  mov      eax, dword ptr [ebp - 0xc]        
0x006B8A73:  imul     eax, eax, 0x124                   
0x006B8A79:  mov      ecx, dword ptr [0xb752c8]         
0x006B8A7F:  lea      edx, [ecx + eax + 0x2b8]          
0x006B8A86:  mov      dword ptr [ebp - 0x14], edx       
0x006B8A89:  cmp      dword ptr [ebp - 0xc], 0x10       
0x006B8A8D:  jge      0x6b8afa                          
0x006B8A8F:  mov      eax, dword ptr [ebp - 0x40]       
0x006B8A92:  push     eax                               
0x006B8A93:  push     0x981030                          
0x006B8A98:  push     0x40                              
0x006B8A9A:  mov      ecx, dword ptr [ebp - 0x14]       
0x006B8A9D:  add      ecx, 0x94                         
0x006B8AA3:  push     ecx                               
0x006B8AA4:  call     0x694410                          
0x006B8AA9:  add      esp, 0x10                         
0x006B8AAC:  mov      edx, dword ptr [ebp - 0x40]       
0x006B8AAF:  movzx    eax, byte ptr [edx + 0x42]        
0x006B8AB3:  mov      ecx, dword ptr [ebp - 0x14]       
0x006B8AB6:  mov      dword ptr [ecx + 0xe8], eax       
0x006B8ABC:  mov      edx, dword ptr [ebp - 0x14]       
0x006B8ABF:  mov      eax, dword ptr [edx + 0xc]        
0x006B8AC2:  or       eax, 2                            
0x006B8AC5:  mov      ecx, dword ptr [ebp - 0x14]       
0x006B8AC8:  mov      dword ptr [ecx + 0xc], eax        
0x006B8ACB:  mov      edx, dword ptr [ebp - 0x40]       
0x006B8ACE:  movzx    eax, byte ptr [edx + 0x41]        
0x006B8AD2:  mov      ecx, dword ptr [ebp - 0x14]       
0x006B8AD5:  mov      dword ptr [ecx + 0x100], eax      
0x006B8ADB:  mov      edx, dword ptr [ebp - 0x40]       
0x006B8ADE:  movzx    eax, byte ptr [edx + 0x43]        
0x006B8AE2:  mov      ecx, dword ptr [ebp - 0x14]       
0x006B8AE5:  mov      dword ptr [ecx + 0xec], eax       
0x006B8AEB:  mov      edx, dword ptr [ebp - 0x40]       
0x006B8AEE:  mov      eax, dword ptr [edx + 0x44]       
0x006B8AF1:  mov      ecx, dword ptr [ebp - 0x14]       
0x006B8AF4:  mov      dword ptr [ecx + 0xe4], eax       
0x006B8AFA:  mov      edx, dword ptr [ebp - 0x40]       
0x006B8AFD:  add      edx, 0x48                         
0x006B8B00:  mov      dword ptr [ebp - 0x40], edx       
0x006B8B03:  jmp      0x6b8a51                          
0x006B8B08:  mov      eax, dword ptr [0xb752c8]         
0x006B8B0D:  mov      dword ptr [eax + 0x108], 0        
0x006B8B17:  mov      ecx, dword ptr [0xb752c8]         
0x006B8B1D:  mov      dword ptr [ecx + 0x110], 1        
0x006B8B27:  mov      esp, ebp                          
0x006B8B29:  pop      ebp                               
0x006B8B2A:  ret                                        
0x006B8B2B:  nop                                        
0x006B8B2C:  dec      edx                               
0x006B8B2D:  test     byte ptr [ebx], ch                
0x006B8B30:  and      eax, dword ptr [esi - 0x7976ff95] 
0x006B8B36:  imul     eax, dword ptr [eax], -0x50       
0x006B8B39:  xchg     dword ptr [ebx], ebp              
0x006B8B3C:  or       cl, byte ptr [eax - 0x776eff95]   
0x006B8B42:  imul     eax, dword ptr [eax], 6           
0x006B8B45:  test     dword ptr [ebx], ebp              
0x006B8B48:  jge      0x6b8ad1                          
0x006B8B4A:  imul     eax, dword ptr [eax], 0x19        
0x006B8B4D:  mov      ch, byte ptr [ebx]                
0x006B8B50:  daa                                        
0x006B8B51:  mov      ebp, dword ptr [ebx]              
0x006B8B54:  add      byte ptr [ecx], al                
0x006B8B56:  add      al, byte ptr [ebx]                
0x006B8B58:  or       dword ptr [ecx], ecx              
0x006B8B5A:  or       dword ptr [ecx], ecx              
0x006B8B5C:  or       dword ptr [ecx], ecx              
0x006B8B5E:  or       dword ptr [ecx], ecx              
0x006B8B60:  or       dword ptr [eax + 0x7090906], eax  
0x006B8B67:  or       ah, cl                            
0x006B8B69:  int3                                       
0x006B8B6A:  int3                                       
0x006B8B6B:  int3                                       
0x006B8B6C:  int3                                       
0x006B8B6D:  int3                                       
0x006B8B6E:  int3                                       
0x006B8B6F:  int3                                       
0x006B8B70:  push     ebp                               
0x006B8B71:  mov      ebp, esp                          
0x006B8B73:  sub      esp, 8                            
0x006B8B76:  mov      eax, dword ptr [0xb752e0]         
0x006B8B7B:  mov      dword ptr [eax + 0x1c], 0         
0x006B8B82:  mov      dword ptr [ebp - 4], 0            
0x006B8B89:  jmp      0x6b8b94                          
0x006B8B8B:  mov      ecx, dword ptr [ebp - 4]          
0x006B8B8E:  add      ecx, 1                            
0x006B8B91:  mov      dword ptr [ebp - 4], ecx          
0x006B8B94:  mov      edx, dword ptr [0xb752c8]         
0x006B8B9A:  mov      eax, dword ptr [ebp - 4]          
0x006B8B9D:  cmp      eax, dword ptr [edx + 0xc0]       
0x006B8BA3:  jge      0x6b8d62                          
0x006B8BA9:  mov      ecx, dword ptr [ebp - 4]          
0x006B8BAC:  imul     ecx, ecx, 0x124                   
0x006B8BB2:  mov      edx, dword ptr [0xb752c8]         
0x006B8BB8:  mov      eax, dword ptr [edx + ecx + 0x3a0]
0x006B8BBF:  mov      dword ptr [ebp - 8], eax          
0x006B8BC2:  mov      ecx, dword ptr [ebp - 8]          
0x006B8BC5:  sub      ecx, 1                            
0x006B8BC8:  mov      dword ptr [ebp - 8], ecx          
0x006B8BCB:  cmp      dword ptr [ebp - 8], 5            
0x006B8BCF:  ja       0x6b8d5d                          
0x006B8BD5:  mov      edx, dword ptr [ebp - 8]          
0x006B8BD8:  jmp      dword ptr [edx*4 + 0x6b8dc8]      
0x006B8BDF:  mov      eax, dword ptr [ebp - 4]          
0x006B8BE2:  imul     eax, eax, 0x124                   
0x006B8BE8:  mov      ecx, dword ptr [0xb752c8]         
0x006B8BEE:  mov      dword ptr [ecx + eax + 0x3a0], 2  
0x006B8BF9:  jmp      0x6b8d5d                          
0x006B8BFE:  mov      edx, dword ptr [ebp - 4]          
0x006B8C01:  imul     edx, edx, 0x124                   
0x006B8C07:  mov      eax, dword ptr [0xb752c8]         
0x006B8C0C:  mov      dword ptr [eax + edx + 0x3a0], 4  
0x006B8C17:  mov      ecx, dword ptr [ebp - 4]          
0x006B8C1A:  imul     ecx, ecx, 0x124                   
0x006B8C20:  mov      edx, dword ptr [0xb752c8]         
0x006B8C26:  mov      dword ptr [edx + ecx + 0x3cc], 1  
0x006B8C31:  mov      eax, dword ptr [ebp - 4]          
0x006B8C34:  imul     eax, eax, 0x124                   
0x006B8C3A:  mov      ecx, dword ptr [0xb752c8]         
0x006B8C40:  mov      dword ptr [ecx + eax + 0x2c0], 1  
0x006B8C4B:  mov      edx, dword ptr [ebp - 4]          
0x006B8C4E:  imul     edx, edx, 0x124                   
0x006B8C54:  mov      eax, dword ptr [0xb752c8]         
0x006B8C59:  movzx    ecx, byte ptr [eax + edx + 0x2b8] 
0x006B8C61:  push     ecx                               
0x006B8C62:  call     0x6b4f50                          
0x006B8C67:  add      esp, 4                            
0x006B8C6A:  mov      edx, dword ptr [0xb752e0]         
0x006B8C70:  mov      dword ptr [edx + 0x1c], 1         
0x006B8C77:  jmp      0x6b8d5d                          
0x006B8C7C:  mov      eax, dword ptr [ebp - 4]          
0x006B8C7F:  imul     eax, eax, 0x124                   
0x006B8C85:  mov      ecx, dword ptr [0xb752c8]         
0x006B8C8B:  mov      dword ptr [ecx + eax + 0x3a0], 0  
0x006B8C96:  mov      edx, dword ptr [ebp - 4]          
0x006B8C99:  imul     edx, edx, 0x124                   
0x006B8C9F:  mov      eax, dword ptr [0xb752c8]         
0x006B8CA4:  movzx    ecx, byte ptr [eax + edx + 0x2b8] 
0x006B8CAC:  push     ecx                               
0x006B8CAD:  call     0x6b4f50                          
0x006B8CB2:  add      esp, 4                            
0x006B8CB5:  mov      edx, dword ptr [0xb752e0]         
0x006B8CBB:  mov      dword ptr [edx + 0x1c], 1         
0x006B8CC2:  mov      eax, dword ptr [ebp - 4]          
0x006B8CC5:  imul     eax, eax, 0x124                   
0x006B8CCB:  mov      ecx, dword ptr [0xb752c8]         
0x006B8CD1:  mov      dword ptr [ecx + eax + 0x2c0], 0  
0x006B8CDC:  mov      edx, dword ptr [ebp - 4]          
0x006B8CDF:  imul     edx, edx, 0x124                   
0x006B8CE5:  mov      eax, dword ptr [0xb752c8]         
0x006B8CEA:  mov      byte ptr [eax + edx + 0x2b8], 0xfe
0x006B8CF2:  mov      ecx, dword ptr [ebp - 4]          
0x006B8CF5:  imul     ecx, ecx, 0x124                   
0x006B8CFB:  mov      edx, dword ptr [0xb752c8]         
0x006B8D01:  mov      dword ptr [edx + ecx + 0x390], 0  
0x006B8D0C:  mov      eax, dword ptr [ebp - 4]          
0x006B8D0F:  imul     eax, eax, 0x124                   
0x006B8D15:  mov      ecx, dword ptr [0xb752c8]         
0x006B8D1B:  mov      dword ptr [ecx + eax + 0x3cc], 0  
0x006B8D26:  jmp      0x6b8d5d                          
0x006B8D28:  mov      edx, dword ptr [ebp - 4]          
0x006B8D2B:  imul     edx, edx, 0x124                   
0x006B8D31:  mov      eax, dword ptr [0xb752c8]         
0x006B8D36:  mov      dword ptr [eax + edx + 0x3a0], 4  
0x006B8D41:  jmp      0x6b8d5d                          
0x006B8D43:  mov      ecx, dword ptr [ebp - 4]          
0x006B8D46:  imul     ecx, ecx, 0x124                   
0x006B8D4C:  mov      edx, dword ptr [0xb752c8]         
0x006B8D52:  mov      dword ptr [edx + ecx + 0x2c0], 1  
0x006B8D5D:  jmp      0x6b8b8b                          
0x006B8D62:  mov      eax, dword ptr [0xb752b8]         
0x006B8D67:  cmp      dword ptr [eax + 0x54], 0         
0x006B8D6B:  je       0x6b8d8d                          
0x006B8D6D:  mov      ecx, dword ptr [0xb752e0]         
0x006B8D73:  xor      edx, edx                          
0x006B8D75:  cmp      dword ptr [ecx + 0x24], 0         
0x006B8D79:  sete     dl                                
0x006B8D7C:  test     edx, edx                          
0x006B8D7E:  je       0x6b8d8d                          
0x006B8D80:  push     0                                 
0x006B8D82:  mov      ecx, dword ptr [0xb752e0]         
0x006B8D88:  call     0x6bdca0                          
0x006B8D8D:  mov      eax, dword ptr [0xb752e0]         
0x006B8D92:  cmp      dword ptr [eax + 0x1c], 0         
0x006B8D96:  jne      0x6b8da4                          
0x006B8D98:  mov      ecx, dword ptr [0xb752b8]         
0x006B8D9E:  cmp      dword ptr [ecx + 0x54], 0         
0x006B8DA2:  je       0x6b8dbe                          
0x006B8DA4:  mov      ecx, dword ptr [0xb752e0]         
0x006B8DAA:  call     0x6be310                          
0x006B8DAF:  call     0x6b7e30                          
0x006B8DB4:  push     0                                 
0x006B8DB6:  call     0x6b51d0                          
0x006B8DBB:  add      esp, 4                            
0x006B8DBE:  call     0x6b52b0                          
0x006B8DC3:  mov      esp, ebp                          
0x006B8DC5:  pop      ebp                               
0x006B8DC6:  ret                                        
0x006B8DC7:  nop                                        
0x006B8DC8:  fisttp   word ptr [ebx - 0x7401ff95]       
0x006B8DCE:  imul     eax, dword ptr [eax], 0x5d        
0x006B8DD1:  lea      ebp, [ebx]                        
0x006B8DD4:  inc      ebx                               
0x006B8DD5:  lea      ebp, [ebx]                        
0x006B8DD8:  jl       0x6b8d66                          
0x006B8DDA:  imul     eax, dword ptr [eax], 0x28        
0x006B8DDD:  lea      ebp, [ebx]                        
0x006B8DE0:  push     ebp                               
0x006B8DE1:  mov      ebp, esp                          
0x006B8DE3:  sub      esp, 8                            
0x006B8DE6:  mov      eax, dword ptr [0xb752c8]         
0x006B8DEB:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B8DF1:  push     ecx                               
0x006B8DF2:  call     0x58d200                          
0x006B8DF7:  add      esp, 4                            
0x006B8DFA:  movzx    edx, al                           
0x006B8DFD:  mov      dword ptr [ebp - 8], edx          
0x006B8E00:  cmp      dword ptr [ebp - 8], 0            
0x006B8E04:  jne      0x6b8e0d                          
0x006B8E06:  mov      eax, 1                            
0x006B8E0B:  jmp      0x6b8e67                          
0x006B8E0D:  mov      dword ptr [ebp - 4], 0            
0x006B8E14:  jmp      0x6b8e1f                          
0x006B8E16:  mov      eax, dword ptr [ebp - 4]          
0x006B8E19:  add      eax, 1                            
0x006B8E1C:  mov      dword ptr [ebp - 4], eax          
0x006B8E1F:  cmp      dword ptr [ebp - 4], 0x10         
0x006B8E23:  jge      0x6b8e65                          
0x006B8E25:  mov      ecx, dword ptr [ebp - 4]          
0x006B8E28:  imul     ecx, ecx, 0x124                   
0x006B8E2E:  mov      edx, dword ptr [0xb752c8]         
0x006B8E34:  cmp      dword ptr [edx + ecx + 0x2c0], 0  
0x006B8E3C:  jne      0x6b8e40                          
0x006B8E3E:  jmp      0x6b8e16                          
0x006B8E40:  mov      eax, dword ptr [ebp - 4]          
0x006B8E43:  imul     eax, eax, 0x124                   
0x006B8E49:  mov      ecx, dword ptr [0xb752c8]         
0x006B8E4F:  movzx    edx, byte ptr [ecx + eax + 0x2b8] 
0x006B8E57:  cmp      edx, dword ptr [ebp - 8]          
0x006B8E5A:  jne      0x6b8e63                          
0x006B8E5C:  mov      eax, 1                            
0x006B8E61:  jmp      0x6b8e67                          
0x006B8E63:  jmp      0x6b8e16                          
0x006B8E65:  xor      eax, eax                          
0x006B8E67:  mov      esp, ebp                          
0x006B8E69:  pop      ebp                               
0x006B8E6A:  ret                                        
0x006B8E6B:  int3                                       
0x006B8E6C:  int3                                       
0x006B8E6D:  int3                                       
0x006B8E6E:  int3                                       
0x006B8E6F:  int3                                       
0x006B8E70:  push     ebp                               
0x006B8E71:  mov      ebp, esp                          
0x006B8E73:  push     ecx                               
0x006B8E74:  mov      eax, dword ptr [0xb752b8]         
0x006B8E79:  mov      ecx, dword ptr [eax + 0x4c]       
0x006B8E7C:  and      ecx, 8                            
0x006B8E7F:  je       0x6b8e85                          
0x006B8E81:  xor      eax, eax                          
0x006B8E83:  jmp      0x6b8ee5                          
0x006B8E85:  mov      dword ptr [ebp - 4], 0            
0x006B8E8C:  jmp      0x6b8e97                          
0x006B8E8E:  mov      edx, dword ptr [ebp - 4]          
0x006B8E91:  add      edx, 1                            
0x006B8E94:  mov      dword ptr [ebp - 4], edx          
0x006B8E97:  mov      eax, dword ptr [0xb752c8]         
0x006B8E9C:  mov      ecx, dword ptr [ebp - 4]          
0x006B8E9F:  cmp      ecx, dword ptr [eax + 0xc0]       
0x006B8EA5:  jge      0x6b8ee0                          
0x006B8EA7:  mov      edx, dword ptr [ebp - 4]          
0x006B8EAA:  imul     edx, edx, 0x124                   
0x006B8EB0:  mov      eax, dword ptr [0xb752c8]         
0x006B8EB5:  cmp      dword ptr [eax + edx + 0x3a0], 4  
0x006B8EBD:  jne      0x6b8ede                          
0x006B8EBF:  mov      ecx, dword ptr [ebp - 4]          
0x006B8EC2:  imul     ecx, ecx, 0x124                   
0x006B8EC8:  mov      edx, dword ptr [0xb752c8]         
0x006B8ECE:  movzx    eax, byte ptr [edx + ecx + 0x2b8] 
0x006B8ED6:  test     eax, eax                          
0x006B8ED8:  je       0x6b8ede                          
0x006B8EDA:  xor      eax, eax                          
0x006B8EDC:  jmp      0x6b8ee5                          
0x006B8EDE:  jmp      0x6b8e8e                          
0x006B8EE0:  mov      eax, 1                            
0x006B8EE5:  mov      esp, ebp                          
0x006B8EE7:  pop      ebp                               
0x006B8EE8:  ret                                        
0x006B8EE9:  int3                                       
0x006B8EEA:  int3                                       
0x006B8EEB:  int3                                       
0x006B8EEC:  int3                                       
0x006B8EED:  int3                                       
0x006B8EEE:  int3                                       
0x006B8EEF:  int3                                       
0x006B8EF0:  push     ebp                               
0x006B8EF1:  mov      ebp, esp                          
0x006B8EF3:  sub      esp, 0x2c                         
0x006B8EF6:  mov      dword ptr [ebp - 0x14], 0         
0x006B8EFD:  mov      dword ptr [ebp - 4], 0            
0x006B8F04:  mov      eax, 1                            
0x006B8F09:  cdq                                        
0x006B8F0A:  mov      dword ptr [ebp - 0x20], eax       
0x006B8F0D:  mov      dword ptr [ebp - 0x1c], edx       
0x006B8F10:  mov      eax, dword ptr [0xb752b8]         
0x006B8F15:  mov      eax, dword ptr [eax + 0x34]       
0x006B8F18:  cdq                                        
0x006B8F19:  mov      dword ptr [ebp - 0x28], eax       
0x006B8F1C:  mov      dword ptr [ebp - 0x24], edx       
0x006B8F1F:  mov      ecx, dword ptr [ebp - 0x20]       
0x006B8F22:  sub      ecx, dword ptr [ebp - 0x28]       
0x006B8F25:  mov      edx, dword ptr [ebp - 0x1c]       
0x006B8F28:  sbb      edx, dword ptr [ebp - 0x24]       
0x006B8F2B:  mov      dword ptr [ebp - 0x28], ecx       
0x006B8F2E:  mov      dword ptr [ebp - 0x24], edx       
0x006B8F31:  mov      eax, dword ptr [ebp - 0x28]       
0x006B8F34:  mov      edx, dword ptr [ebp - 0x24]       
0x006B8F37:  mov      cl, 0x3f                          
0x006B8F39:  call     0x8ecb20                          
0x006B8F3E:  and      eax, dword ptr [ebp - 0x28]       
0x006B8F41:  and      edx, dword ptr [ebp - 0x24]       
0x006B8F44:  mov      ecx, dword ptr [ebp - 0x20]       
0x006B8F47:  sub      ecx, eax                          
0x006B8F49:  mov      eax, dword ptr [ebp - 0x1c]       
0x006B8F4C:  sbb      eax, edx                          
0x006B8F4E:  mov      dword ptr [ebp - 0x20], ecx       
0x006B8F51:  mov      dword ptr [ebp - 0x1c], eax       
0x006B8F54:  mov      ecx, dword ptr [ebp - 0x20]       
0x006B8F57:  mov      dword ptr [ebp - 0xc], ecx        
0x006B8F5A:  call     0x6bae80                          
0x006B8F5F:  call     0x6baed0                          
0x006B8F64:  call     0x8adae0                          
0x006B8F69:  call     0x6b7560                          
0x006B8F6E:  mov      edx, dword ptr [0xb752c8]         
0x006B8F74:  cmp      dword ptr [edx + 0x110], 0        
0x006B8F7B:  je       0x6b8fcc                          
0x006B8F7D:  mov      ecx, dword ptr [0xb752e0]         
0x006B8F83:  call     0x6be310                          
0x006B8F88:  mov      eax, dword ptr [0xb752c8]         
0x006B8F8D:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B8F93:  push     ecx                               
0x006B8F94:  call     0x58d200                          
0x006B8F99:  add      esp, 4                            
0x006B8F9C:  movzx    edx, al                           
0x006B8F9F:  push     edx                               
0x006B8FA0:  call     0x6b51d0                          
0x006B8FA5:  add      esp, 4                            
0x006B8FA8:  call     0x6b5020                          
0x006B8FAD:  mov      eax, dword ptr [0xb752c8]         
0x006B8FB2:  mov      dword ptr [eax + 0x110], 0        
0x006B8FBC:  mov      ecx, dword ptr [0xb752c8]         
0x006B8FC2:  mov      dword ptr [ecx + 0x108], 0        
0x006B8FCC:  mov      edx, dword ptr [0xb752c8]         
0x006B8FD2:  mov      eax, dword ptr [edx + 0xd0]       
0x006B8FD8:  and      eax, 0x80                         
0x006B8FDD:  je       0x6b900d                          
0x006B8FDF:  mov      ecx, dword ptr [0xb752c8]         
0x006B8FE5:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B8FEB:  and      edx, 0xffffff7f                   
0x006B8FF1:  mov      eax, dword ptr [0xb752c8]         
0x006B8FF6:  mov      dword ptr [eax + 0xd0], edx       
0x006B8FFC:  push     0                                 
0x006B8FFE:  push     0                                 
0x006B9000:  push     0xbe                              
0x006B9005:  call     0x6b4270                          
0x006B900A:  add      esp, 0xc                          
0x006B900D:  mov      ecx, dword ptr [0xb752c8]         
0x006B9013:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B9019:  and      edx, 0x100                        
0x006B901F:  je       0x6b9073                          
0x006B9021:  mov      eax, dword ptr [0xb752c8]         
0x006B9026:  cmp      dword ptr [eax + 4], 0xb7         
0x006B902D:  jne      0x6b9036                          
0x006B902F:  call     0x8adae0                          
0x006B9034:  jmp      0x6b9073                          
0x006B9036:  mov      ecx, dword ptr [0xb752c8]         
0x006B903C:  cmp      dword ptr [ecx + 4], 0xb6         
0x006B9043:  je       0x6b9073                          
0x006B9045:  mov      edx, dword ptr [0xb752c8]         
0x006B904B:  mov      eax, dword ptr [edx + 0xd0]       
0x006B9051:  and      eax, 0xfffffeff                   
0x006B9056:  mov      ecx, dword ptr [0xb752c8]         
0x006B905C:  mov      dword ptr [ecx + 0xd0], eax       
0x006B9062:  push     0                                 
0x006B9064:  push     0                                 
0x006B9066:  push     0xbc                              
0x006B906B:  call     0x6b4270                          
0x006B9070:  add      esp, 0xc                          
0x006B9073:  mov      edx, dword ptr [0xb752c8]         
0x006B9079:  mov      eax, dword ptr [edx + 4]          
0x006B907C:  mov      dword ptr [ebp - 0x2c], eax       
0x006B907F:  mov      ecx, dword ptr [ebp - 0x2c]       
0x006B9082:  sub      ecx, 0x72                         
0x006B9085:  mov      dword ptr [ebp - 0x2c], ecx       
0x006B9088:  cmp      dword ptr [ebp - 0x2c], 0x4e      
0x006B908C:  ja       0x6ba257                          
0x006B9092:  mov      edx, dword ptr [ebp - 0x2c]       
0x006B9095:  movzx    eax, byte ptr [edx + 0x6ba2d8]    
0x006B909C:  jmp      dword ptr [eax*4 + 0x6ba260]      
0x006B90A3:  jmp      0x6ba257                          
0x006B90A8:  call     0x6ba330                          
0x006B90AD:  call     0x6b6ff0                          
0x006B90B2:  mov      ecx, dword ptr [0xb752c8]         
0x006B90B8:  mov      dword ptr [ecx + 0x108], 0        
0x006B90C2:  call     0x6bcef0                          
0x006B90C7:  mov      edx, dword ptr [0xb752c8]         
0x006B90CD:  cmp      dword ptr [edx + 0xdc], 0         
0x006B90D4:  jne      0x6b90ee                          
0x006B90D6:  push     0                                 
0x006B90D8:  push     0                                 
0x006B90DA:  push     0xa6                              
0x006B90DF:  call     0x6b4270                          
0x006B90E4:  add      esp, 0xc                          
0x006B90E7:  jmp      0x6ba257                          
0x006B90EC:  jmp      0x6b9105                          
0x006B90EE:  mov      eax, dword ptr [0xb752c8]         
0x006B90F3:  mov      ecx, dword ptr [0xb752c8]         
0x006B90F9:  mov      edx, dword ptr [ecx + 0xe0]       
0x006B90FF:  mov      dword ptr [eax + 0xe0], edx       
0x006B9105:  mov      eax, dword ptr [0xb752c8]         
0x006B910A:  mov      ecx, dword ptr [eax + 0x6c]       
0x006B910D:  mov      dword ptr [ebp - 8], ecx          
0x006B9110:  mov      dword ptr [ebp - 0x10], 0         
0x006B9117:  mov      edx, dword ptr [ebp - 8]          
0x006B911A:  mov      eax, dword ptr [0xb752c8]         
0x006B911F:  cmp      dword ptr [eax + edx*4 + 0x2810], 0
0x006B9127:  je       0x6b92ac                          
0x006B912D:  mov      ecx, dword ptr [ebp - 8]          
0x006B9130:  push     ecx                               
0x006B9131:  call     0x6b7120                          
0x006B9136:  add      esp, 4                            
0x006B9139:  mov      dword ptr [ebp - 4], 0            
0x006B9140:  mov      edx, dword ptr [ebp - 8]          
0x006B9143:  mov      eax, dword ptr [0xb752c8]         
0x006B9148:  mov      ecx, dword ptr [eax + edx*4 + 0x2810]
0x006B914F:  mov      byte ptr [ecx + 5], 1             
0x006B9153:  mov      edx, dword ptr [ebp - 8]          
0x006B9156:  mov      eax, dword ptr [0xb752c8]         
0x006B915B:  mov      ecx, dword ptr [eax + edx*4 + 0x2810]
0x006B9162:  mov      edx, dword ptr [ecx]              
0x006B9164:  push     edx                               
0x006B9165:  push     0x981030                          
0x006B916A:  push     0x40                              
0x006B916C:  mov      eax, dword ptr [ebp - 4]          
0x006B916F:  imul     eax, eax, 0x124                   
0x006B9175:  mov      ecx, dword ptr [0xb752c8]         
0x006B917B:  lea      edx, [ecx + eax + 0x34c]          
0x006B9182:  push     edx                               
0x006B9183:  call     0x694410                          
0x006B9188:  add      esp, 0x10                         
0x006B918B:  mov      eax, dword ptr [ebp - 4]          
0x006B918E:  imul     eax, eax, 0x124                   
0x006B9194:  mov      ecx, dword ptr [0xb752c8]         
0x006B919A:  mov      dword ptr [ecx + eax + 0x3a0], 4  
0x006B91A5:  mov      edx, dword ptr [ebp - 4]          
0x006B91A8:  imul     edx, edx, 0x124                   
0x006B91AE:  mov      eax, dword ptr [0xb752c8]         
0x006B91B3:  mov      dword ptr [eax + edx + 0x2c0], 1  
0x006B91BE:  mov      ecx, dword ptr [ebp - 4]          
0x006B91C1:  imul     ecx, ecx, 0x124                   
0x006B91C7:  mov      edx, dword ptr [0xb752c8]         
0x006B91CD:  mov      byte ptr [edx + ecx + 0x2b8], 0   
0x006B91D5:  mov      eax, dword ptr [ebp - 4]          
0x006B91D8:  imul     eax, eax, 0x124                   
0x006B91DE:  mov      ecx, dword ptr [0xb752c8]         
0x006B91E4:  mov      edx, dword ptr [ecx + eax + 0x2c4]
0x006B91EB:  or       edx, 2                            
0x006B91EE:  mov      eax, dword ptr [ebp - 4]          
0x006B91F1:  imul     eax, eax, 0x124                   
0x006B91F7:  mov      ecx, dword ptr [0xb752c8]         
0x006B91FD:  mov      dword ptr [ecx + eax + 0x2c4], edx
0x006B9204:  mov      edx, dword ptr [ebp - 8]          
0x006B9207:  mov      eax, dword ptr [0xb752c8]         
0x006B920C:  mov      ecx, dword ptr [eax + edx*4 + 0x2810]
0x006B9213:  mov      edx, dword ptr [ebp - 4]          
0x006B9216:  imul     edx, edx, 0x124                   
0x006B921C:  mov      eax, dword ptr [0xb752c8]         
0x006B9221:  mov      ecx, dword ptr [ecx + 8]          
0x006B9224:  mov      dword ptr [eax + edx + 0x3b8], ecx
0x006B922B:  mov      edx, dword ptr [ebp - 4]          
0x006B922E:  imul     edx, edx, 0x124                   
0x006B9234:  mov      eax, dword ptr [0xb752c8]         
0x006B9239:  mov      ecx, dword ptr [0xb752c8]         
0x006B923F:  mov      ecx, dword ptr [ecx + 0x28]       
0x006B9242:  mov      dword ptr [eax + edx + 0x3a4], ecx
0x006B9249:  mov      edx, dword ptr [ebp - 4]          
0x006B924C:  imul     edx, edx, 0x124                   
0x006B9252:  mov      eax, dword ptr [0xb752c8]         
0x006B9257:  mov      dword ptr [eax + edx + 0x3ac], 1  
0x006B9262:  mov      ecx, dword ptr [0xb752c8]         
0x006B9268:  mov      edx, dword ptr [ecx + 0x2834]     
0x006B926E:  mov      eax, dword ptr [ebp - 4]          
0x006B9271:  imul     eax, eax, 0x124                   
0x006B9277:  mov      ecx, dword ptr [0xb752c8]         
0x006B927D:  mov      dword ptr [ecx + eax + 0x39c], edx
0x006B9284:  mov      edx, dword ptr [0xb752c8]         
0x006B928A:  mov      eax, dword ptr [edx + 0xdc]       
0x006B9290:  mov      ecx, dword ptr [ebp - 4]          
0x006B9293:  imul     ecx, ecx, 0x14                    
0x006B9296:  mov      edx, dword ptr [eax + 0x94]       
0x006B929C:  mov      eax, dword ptr [ebp - 4]          
0x006B929F:  mov      dword ptr [edx + ecx + 0xc], eax  
0x006B92A3:  mov      ecx, dword ptr [ebp - 0x10]       
0x006B92A6:  add      ecx, 1                            
0x006B92A9:  mov      dword ptr [ebp - 0x10], ecx       
0x006B92AC:  mov      dword ptr [ebp - 8], 0            
0x006B92B3:  jmp      0x6b92be                          
0x006B92B5:  mov      edx, dword ptr [ebp - 8]          
0x006B92B8:  add      edx, 1                            
0x006B92BB:  mov      dword ptr [ebp - 8], edx          
0x006B92BE:  cmp      dword ptr [ebp - 8], 1            
0x006B92C2:  jge      0x6b9427                          
0x006B92C8:  mov      eax, dword ptr [ebp - 0x10]       
0x006B92CB:  cmp      eax, dword ptr [ebp - 0xc]        
0x006B92CE:  jl       0x6b92d5                          
0x006B92D0:  jmp      0x6b9427                          
0x006B92D5:  mov      ecx, dword ptr [0xb752c8]         
0x006B92DB:  mov      edx, dword ptr [ebp - 8]          
0x006B92DE:  cmp      edx, dword ptr [ecx + 0x6c]       
0x006B92E1:  jne      0x6b92e5                          
0x006B92E3:  jmp      0x6b92b5                          
0x006B92E5:  mov      eax, dword ptr [ebp - 8]          
0x006B92E8:  mov      ecx, dword ptr [0xb752c8]         
0x006B92EE:  cmp      dword ptr [ecx + eax*4 + 0x2810], 0
0x006B92F6:  je       0x6b9422                          
0x006B92FC:  mov      edx, dword ptr [0xb752c8]         
0x006B9302:  mov      eax, dword ptr [edx + 0xdc]       
0x006B9308:  push     eax                               
0x006B9309:  call     0x5936e0                          
0x006B930E:  add      esp, 4                            
0x006B9311:  mov      dword ptr [ebp - 4], eax          
0x006B9314:  mov      ecx, dword ptr [ebp - 8]          
0x006B9317:  mov      edx, dword ptr [0xb752c8]         
0x006B931D:  mov      eax, dword ptr [edx + ecx*4 + 0x2810]
0x006B9324:  mov      ecx, dword ptr [eax]              
0x006B9326:  push     ecx                               
0x006B9327:  push     0x981030                          
0x006B932C:  push     0x40                              
0x006B932E:  mov      edx, dword ptr [ebp - 4]          
0x006B9331:  imul     edx, edx, 0x124                   
0x006B9337:  mov      eax, dword ptr [0xb752c8]         
0x006B933C:  lea      ecx, [eax + edx + 0x34c]          
0x006B9343:  push     ecx                               
0x006B9344:  call     0x694410                          
0x006B9349:  add      esp, 0x10                         
0x006B934C:  mov      edx, dword ptr [ebp - 4]          
0x006B934F:  imul     edx, edx, 0x124                   
0x006B9355:  mov      eax, dword ptr [0xb752c8]         
0x006B935A:  mov      dword ptr [eax + edx + 0x3a0], 4  
0x006B9365:  mov      ecx, dword ptr [ebp - 4]          
0x006B9368:  imul     ecx, ecx, 0x124                   
0x006B936E:  mov      edx, dword ptr [0xb752c8]         
0x006B9374:  mov      dword ptr [edx + ecx + 0x2c0], 1  
0x006B937F:  mov      eax, dword ptr [ebp - 4]          
0x006B9382:  imul     eax, eax, 0x124                   
0x006B9388:  mov      ecx, dword ptr [0xb752c8]         
0x006B938E:  mov      byte ptr [ecx + eax + 0x2b8], 0   
0x006B9396:  mov      edx, dword ptr [ebp - 4]          
0x006B9399:  imul     edx, edx, 0x124                   
0x006B939F:  mov      eax, dword ptr [0xb752c8]         
0x006B93A4:  mov      ecx, dword ptr [eax + edx + 0x2c4]
0x006B93AB:  or       ecx, 2                            
0x006B93AE:  mov      edx, dword ptr [ebp - 4]          
0x006B93B1:  imul     edx, edx, 0x124                   
0x006B93B7:  mov      eax, dword ptr [0xb752c8]         
0x006B93BC:  mov      dword ptr [eax + edx + 0x2c4], ecx
0x006B93C3:  mov      ecx, dword ptr [ebp - 4]          
0x006B93C6:  imul     ecx, ecx, 0x124                   
0x006B93CC:  mov      edx, dword ptr [0xb752c8]         
0x006B93D2:  mov      eax, dword ptr [0xb752c8]         
0x006B93D7:  mov      eax, dword ptr [eax + 0x28]       
0x006B93DA:  mov      dword ptr [edx + ecx + 0x3a4], eax
0x006B93E1:  mov      ecx, dword ptr [0xb752c8]         
0x006B93E7:  mov      edx, dword ptr [ecx + 0x2834]     
0x006B93ED:  mov      eax, dword ptr [ebp - 4]          
0x006B93F0:  imul     eax, eax, 0x124                   
0x006B93F6:  mov      ecx, dword ptr [0xb752c8]         
0x006B93FC:  mov      dword ptr [ecx + eax + 0x39c], edx
0x006B9403:  mov      edx, dword ptr [0xb752c8]         
0x006B9409:  mov      eax, dword ptr [edx + 0xdc]       
0x006B940F:  mov      ecx, dword ptr [ebp - 4]          
0x006B9412:  imul     ecx, ecx, 0x14                    
0x006B9415:  mov      edx, dword ptr [eax + 0x94]       
0x006B941B:  mov      eax, dword ptr [ebp - 4]          
0x006B941E:  mov      dword ptr [edx + ecx + 0xc], eax  
0x006B9422:  jmp      0x6b92b5                          
0x006B9427:  call     0x8adae0                          
0x006B942C:  push     0                                 
0x006B942E:  push     0                                 
0x006B9430:  push     0xa3                              
0x006B9435:  call     0x6b4270                          
0x006B943A:  add      esp, 0xc                          
0x006B943D:  jmp      0x6ba257                          
0x006B9442:  mov      ecx, dword ptr [0xb752b8]         
0x006B9448:  cmp      dword ptr [ecx + 0x568], 0        
0x006B944F:  je       0x6b9484                          
0x006B9451:  call     0x6b8b70                          
0x006B9456:  push     0                                 
0x006B9458:  push     0                                 
0x006B945A:  push     0xb7                              
0x006B945F:  call     0x6b4270                          
0x006B9464:  add      esp, 0xc                          
0x006B9467:  push     0                                 
0x006B9469:  push     2                                 
0x006B946B:  push     8                                 
0x006B946D:  call     0x6b3ad0                          
0x006B9472:  add      esp, 0xc                          
0x006B9475:  push     0xb01cb0                          
0x006B947A:  call     0x6b40b0                          
0x006B947F:  add      esp, 4                            
0x006B9482:  jmp      0x6b9495                          
0x006B9484:  push     0                                 
0x006B9486:  push     0                                 
0x006B9488:  push     0xaa                              
0x006B948D:  call     0x6b4270                          
0x006B9492:  add      esp, 0xc                          
0x006B9495:  jmp      0x6ba257                          
0x006B949A:  mov      edx, dword ptr [0xb752e0]         
0x006B94A0:  xor      eax, eax                          
0x006B94A2:  cmp      dword ptr [edx + 0x24], 0         
0x006B94A6:  sete     al                                
0x006B94A9:  test     eax, eax                          
0x006B94AB:  je       0x6b94b2                          
0x006B94AD:  call     0x6b8b70                          
0x006B94B2:  jmp      0x6ba257                          
0x006B94B7:  call     0x6ba330                          
0x006B94BC:  push     3                                 
0x006B94BE:  push     1                                 
0x006B94C0:  push     0                                 
0x006B94C2:  push     0xa4                              
0x006B94C7:  call     0x6b4270                          
0x006B94CC:  add      esp, 0x10                         
0x006B94CF:  mov      ecx, dword ptr [0xb752c8]         
0x006B94D5:  mov      dword ptr [ecx + 0xbc], 0         
0x006B94DF:  mov      edx, dword ptr [0xb752c8]         
0x006B94E5:  mov      eax, dword ptr [edx + 0xd0]       
0x006B94EB:  and      eax, 0xfff7fffb                   
0x006B94F0:  mov      ecx, dword ptr [0xb752c8]         
0x006B94F6:  mov      dword ptr [ecx + 0xd0], eax       
0x006B94FC:  mov      edx, dword ptr [0xb752b8]         
0x006B9502:  mov      dword ptr [edx + 0x1214], 1       
0x006B950C:  jmp      0x6ba257                          
0x006B9511:  mov      eax, dword ptr [0xb752e0]         
0x006B9516:  cmp      dword ptr [eax + 0x20], 0         
0x006B951A:  je       0x6b9528                          
0x006B951C:  call     0x6b3de0                          
0x006B9521:  jmp      0x6ba257                          
0x006B9526:  jmp      0x6b9577                          
0x006B9528:  call     0x6ba330                          
0x006B952D:  push     0                                 
0x006B952F:  call     0x6b51d0                          
0x006B9534:  add      esp, 4                            
0x006B9537:  push     3                                 
0x006B9539:  push     1                                 
0x006B953B:  push     0                                 
0x006B953D:  push     0xa4                              
0x006B9542:  call     0x6b4270                          
0x006B9547:  add      esp, 0x10                         
0x006B954A:  mov      ecx, dword ptr [0xb752c8]         
0x006B9550:  mov      dword ptr [ecx + 0xbc], 0         
0x006B955A:  mov      edx, dword ptr [0xb752c8]         
0x006B9560:  mov      eax, dword ptr [edx + 0xd0]       
0x006B9566:  and      eax, 0xfff7fffb                   
0x006B956B:  mov      ecx, dword ptr [0xb752c8]         
0x006B9571:  mov      dword ptr [ecx + 0xd0], eax       
0x006B9577:  call     0x6b8b70                          
0x006B957C:  call     0x6b6c90                          
0x006B9581:  jmp      0x6ba257                          
0x006B9586:  mov      edx, dword ptr [0xb752c8]         
0x006B958C:  mov      eax, dword ptr [edx + 0xd0]       
0x006B9592:  and      eax, 4                            
0x006B9595:  je       0x6b95d2                          
0x006B9597:  call     0x58a480                          
0x006B959C:  mov      ecx, dword ptr [0xb752c8]         
0x006B95A2:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B95A8:  and      edx, 0xfff7fffb                   
0x006B95AE:  mov      eax, dword ptr [0xb752c8]         
0x006B95B3:  mov      dword ptr [eax + 0xd0], edx       
0x006B95B9:  mov      ecx, dword ptr [0xb752b8]         
0x006B95BF:  mov      edx, dword ptr [ecx + 0xc]        
0x006B95C2:  push     edx                               
0x006B95C3:  mov      eax, dword ptr [0xb752b8]         
0x006B95C8:  mov      ecx, dword ptr [eax + 4]          
0x006B95CB:  call     ecx                               
0x006B95CD:  add      esp, 4                            
0x006B95D0:  jmp      0x6b95e0                          
0x006B95D2:  call     0x6b4df0                          
0x006B95D7:  test     eax, eax                          
0x006B95D9:  je       0x6b95e0                          
0x006B95DB:  jmp      0x6ba257                          
0x006B95E0:  call     0x6b6e30                          
0x006B95E5:  mov      edx, dword ptr [0xb752c8]         
0x006B95EB:  mov      eax, dword ptr [edx + 0xd0]       
0x006B95F1:  and      eax, 0xfff7fffb                   
0x006B95F6:  mov      ecx, dword ptr [0xb752c8]         
0x006B95FC:  mov      dword ptr [ecx + 0xd0], eax       
0x006B9602:  push     6                                 
0x006B9604:  call     0x6b3c10                          
0x006B9609:  add      esp, 4                            
0x006B960C:  mov      edx, dword ptr [0xb752b8]         
0x006B9612:  mov      dword ptr [edx + 0x1214], 1       
0x006B961C:  mov      eax, dword ptr [0xb752b8]         
0x006B9621:  mov      dword ptr [eax + 0x27c], 0        
0x006B962B:  mov      ecx, dword ptr [0xb752b8]         
0x006B9631:  mov      dword ptr [ecx + 0x280], 0        
0x006B963B:  mov      edx, dword ptr [0xb752c8]         
0x006B9641:  mov      eax, dword ptr [edx + 0xd0]       
0x006B9647:  and      eax, 0x800000                     
0x006B964C:  je       0x6b9687                          
0x006B964E:  mov      ecx, dword ptr [0xb752c8]         
0x006B9654:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B965A:  and      edx, 0xff6fffff                   
0x006B9660:  mov      eax, dword ptr [0xb752c8]         
0x006B9665:  mov      dword ptr [eax + 0xd0], edx       
0x006B966B:  push     0x43                              
0x006B966D:  push     5                                 
0x006B966F:  push     0xe35a2a84                        
0x006B9674:  push     0                                 
0x006B9676:  push     0                                 
0x006B9678:  push     0                                 
0x006B967A:  call     0x6b45c0                          
0x006B967F:  add      esp, 0x18                         
0x006B9682:  jmp      0x6ba257                          
0x006B9687:  mov      ecx, dword ptr [0xb752c8]         
0x006B968D:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B9693:  and      edx, 0x8000                       
0x006B9699:  je       0x6b96be                          
0x006B969B:  push     1                                 
0x006B969D:  push     0x43                              
0x006B969F:  push     5                                 
0x006B96A1:  push     0xe35a2a84                        
0x006B96A6:  push     0                                 
0x006B96A8:  push     0                                 
0x006B96AA:  push     0                                 
0x006B96AC:  push     0x23f5fefa                        
0x006B96B1:  call     0x6b4690                          
0x006B96B6:  add      esp, 0x20                         
0x006B96B9:  jmp      0x6ba257                          
0x006B96BE:  mov      eax, dword ptr [0xb752c8]         
0x006B96C3:  mov      ecx, dword ptr [eax + 0xd0]       
0x006B96C9:  and      ecx, 0x500000                     
0x006B96CF:  je       0x6b9707                          
0x006B96D1:  mov      edx, dword ptr [0xb752c8]         
0x006B96D7:  mov      eax, dword ptr [edx + 0xd0]       
0x006B96DD:  and      eax, 0xffafffff                   
0x006B96E2:  mov      ecx, dword ptr [0xb752c8]         
0x006B96E8:  mov      dword ptr [ecx + 0xd0], eax       
0x006B96EE:  push     0x43                              
0x006B96F0:  push     5                                 
0x006B96F2:  push     0xe35a2a84                        
0x006B96F7:  push     0                                 
0x006B96F9:  push     0                                 
0x006B96FB:  push     0                                 
0x006B96FD:  call     0x6b45c0                          
0x006B9702:  add      esp, 0x18                         
0x006B9705:  jmp      0x6b971f                          
0x006B9707:  push     0                                 
0x006B9709:  push     5                                 
0x006B970B:  push     0x43                              
0x006B970D:  call     0x6b4270                          
0x006B9712:  add      esp, 0xc                          
0x006B9715:  mov      dword ptr [0xb752c4], 0           
0x006B971F:  jmp      0x6ba257                          
0x006B9724:  call     0x6b71c0                          
0x006B9729:  call     0x6bc3a0                          
0x006B972E:  test     eax, eax                          
0x006B9730:  jne      0x6b9737                          
0x006B9732:  jmp      0x6ba257                          
0x006B9737:  push     0                                 
0x006B9739:  push     0                                 
0x006B973B:  push     0xa8                              
0x006B9740:  call     0x6b4270                          
0x006B9745:  add      esp, 0xc                          
0x006B9748:  call     0x6b7ab0                          
0x006B974D:  mov      edx, dword ptr [0xb752c8]         
0x006B9753:  mov      eax, dword ptr [edx + 0xd0]       
0x006B9759:  or       eax, 4                            
0x006B975C:  mov      ecx, dword ptr [0xb752c8]         
0x006B9762:  mov      dword ptr [ecx + 0xd0], eax       
0x006B9768:  push     1                                 
0x006B976A:  mov      ecx, dword ptr [0xb752e0]         
0x006B9770:  call     0x6bdc30                          
0x006B9775:  mov      edx, dword ptr [0xb752b8]         
0x006B977B:  mov      dword ptr [edx + 0x1214], 0       
0x006B9785:  jmp      0x6ba257                          
0x006B978A:  mov      eax, dword ptr [0xb4a048]         
0x006B978F:  cmp      dword ptr [eax + 0x24c], 0        
0x006B9796:  jne      0x6b979d                          
0x006B9798:  jmp      0x6ba257                          
0x006B979D:  push     0                                 
0x006B979F:  push     0                                 
0x006B97A1:  push     0xa9                              
0x006B97A6:  call     0x6b4270                          
0x006B97AB:  add      esp, 0xc                          
0x006B97AE:  jmp      0x6ba257                          
0x006B97B3:  push     6                                 
0x006B97B5:  push     1                                 
0x006B97B7:  push     8                                 
0x006B97B9:  push     0xb9                              
0x006B97BE:  call     0x6b4270                          
0x006B97C3:  add      esp, 0x10                         
0x006B97C6:  push     0                                 
0x006B97C8:  push     2                                 
0x006B97CA:  push     7                                 
0x006B97CC:  call     0x6b3ad0                          
0x006B97D1:  add      esp, 0xc                          
0x006B97D4:  call     0x6b3de0                          
0x006B97D9:  jmp      0x6ba257                          
0x006B97DE:  call     0x6b3de0                          
0x006B97E3:  push     0                                 
0x006B97E5:  push     0                                 
0x006B97E7:  push     0xa3                              
0x006B97EC:  call     0x6b4270                          
0x006B97F1:  add      esp, 0xc                          
0x006B97F4:  mov      ecx, dword ptr [0xb752c8]         
0x006B97FA:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B9800:  or       edx, 0x800                        
0x006B9806:  mov      eax, dword ptr [0xb752c8]         
0x006B980B:  mov      dword ptr [eax + 0xd0], edx       
0x006B9811:  jmp      0x6ba257                          
0x006B9816:  call     0x6bd9e0                          
0x006B981B:  push     0xb01c70                          
0x006B9820:  call     0x6b40b0                          
0x006B9825:  add      esp, 4                            
0x006B9828:  mov      ecx, dword ptr [0xb752c8]         
0x006B982E:  mov      dword ptr [ecx + 0x108], 0        
0x006B9838:  call     0x6b6ff0                          
0x006B983D:  call     0x6bd070                          
0x006B9842:  mov      edx, dword ptr [0xb752c8]         
0x006B9848:  mov      eax, dword ptr [edx + 0xdc]       
0x006B984E:  mov      ecx, dword ptr [0xb752c8]         
0x006B9854:  mov      edx, dword ptr [eax]              
0x006B9856:  mov      dword ptr [ecx + 0xe0], edx       
0x006B985C:  push     0                                 
0x006B985E:  push     0                                 
0x006B9860:  push     0xac                              
0x006B9865:  call     0x6b4270                          
0x006B986A:  add      esp, 0xc                          
0x006B986D:  call     0x6a0cf0                          
0x006B9872:  mov      ecx, dword ptr [0xb752e0]         
0x006B9878:  mov      dword ptr [ecx + 0x10], eax       
0x006B987B:  mov      dword ptr [ecx + 0x14], edx       
0x006B987E:  mov      edx, dword ptr [0xb752e0]         
0x006B9884:  mov      dword ptr [edx + 0x30], 0         
0x006B988B:  jmp      0x6ba257                          
0x006B9890:  call     0x6a0cf0                          
0x006B9895:  push     edx                               
0x006B9896:  push     eax                               
0x006B9897:  mov      eax, dword ptr [0xb752e0]         
0x006B989C:  mov      ecx, dword ptr [eax + 0x14]       
0x006B989F:  push     ecx                               
0x006B98A0:  mov      edx, dword ptr [eax + 0x10]       
0x006B98A3:  push     edx                               
0x006B98A4:  call     0x6a0dd0                          
0x006B98A9:  add      esp, 0x10                         
0x006B98AC:  push     edx                               
0x006B98AD:  push     eax                               
0x006B98AE:  call     0x69a850                          
0x006B98B3:  add      esp, 8                            
0x006B98B6:  fstp     dword ptr [ebp - 0x18]            
0x006B98B9:  fld      dword ptr [ebp - 0x18]            
0x006B98BC:  fcomp    qword ptr [0x99b750]              
0x006B98C2:  fnstsw   ax                                
0x006B98C4:  test     ah, 0x41                          
0x006B98C7:  jne      0x6b9920                          
0x006B98C9:  mov      eax, dword ptr [0xb752e0]         
0x006B98CE:  cmp      dword ptr [eax + 0x30], 0         
0x006B98D2:  jge      0x6b9910                          
0x006B98D4:  mov      ecx, dword ptr [0xb752c8]         
0x006B98DA:  mov      edx, dword ptr [ecx + 0xe0]       
0x006B98E0:  push     edx                               
0x006B98E1:  call     0x5834c0                          
0x006B98E6:  add      esp, 4                            
0x006B98E9:  mov      eax, dword ptr [0xb752e0]         
0x006B98EE:  mov      ecx, dword ptr [eax + 0x30]       
0x006B98F1:  add      ecx, 1                            
0x006B98F4:  mov      edx, dword ptr [0xb752e0]         
0x006B98FA:  mov      dword ptr [edx + 0x30], ecx       
0x006B98FD:  call     0x6a0cf0                          
0x006B9902:  mov      ecx, dword ptr [0xb752e0]         
0x006B9908:  mov      dword ptr [ecx + 0x10], eax       
0x006B990B:  mov      dword ptr [ecx + 0x14], edx       
0x006B990E:  jmp      0x6b9920                          
0x006B9910:  mov      edx, dword ptr [0xb752c8]         
0x006B9916:  mov      dword ptr [edx + 0xd0], 0x200     
0x006B9920:  mov      eax, dword ptr [0xb752c8]         
0x006B9925:  mov      ecx, dword ptr [eax + 0xd0]       
0x006B992B:  and      ecx, 0x20                         
0x006B992E:  je       0x6b99be                          
0x006B9934:  push     0                                 
0x006B9936:  push     0                                 
0x006B9938:  push     0xb3                              
0x006B993D:  call     0x6b4270                          
0x006B9942:  add      esp, 0xc                          
0x006B9945:  call     0x6a0cf0                          
0x006B994A:  mov      ecx, dword ptr [0xb752e0]         
0x006B9950:  mov      dword ptr [ecx + 0x10], eax       
0x006B9953:  mov      dword ptr [ecx + 0x14], edx       
0x006B9956:  push     0xb01c70                          
0x006B995B:  call     0x6b40b0                          
0x006B9960:  add      esp, 4                            
0x006B9963:  mov      edx, dword ptr [0xb752c8]         
0x006B9969:  mov      dword ptr [edx + 0x108], 0        
0x006B9973:  mov      eax, dword ptr [0xb752c8]         
0x006B9978:  mov      dword ptr [eax + 0xbc], 0         
0x006B9982:  mov      ecx, dword ptr [0xb752c8]         
0x006B9988:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B998E:  and      edx, 0xffffffdf                   
0x006B9991:  mov      eax, dword ptr [0xb752c8]         
0x006B9996:  mov      dword ptr [eax + 0xd0], edx       
0x006B999C:  mov      ecx, dword ptr [0xb752c8]         
0x006B99A2:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B99A8:  or       edx, 0x800                        
0x006B99AE:  mov      eax, dword ptr [0xb752c8]         
0x006B99B3:  mov      dword ptr [eax + 0xd0], edx       
0x006B99B9:  jmp      0x6ba257                          
0x006B99BE:  mov      ecx, dword ptr [0xb752c8]         
0x006B99C4:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B99CA:  and      edx, 0x200                        
0x006B99D0:  je       0x6b9ab0                          
0x006B99D6:  push     0                                 
0x006B99D8:  push     0                                 
0x006B99DA:  call     0x6b40e0                          
0x006B99DF:  add      esp, 8                            
0x006B99E2:  push     0                                 
0x006B99E4:  push     0                                 
0x006B99E6:  push     1                                 
0x006B99E8:  call     0x6b4270                          
0x006B99ED:  add      esp, 0xc                          
0x006B99F0:  mov      eax, dword ptr [0xb752c8]         
0x006B99F5:  mov      ecx, dword ptr [eax + 0xd0]       
0x006B99FB:  and      ecx, 0x400                        
0x006B9A01:  je       0x6b9a26                          
0x006B9A03:  push     1                                 
0x006B9A05:  push     0x72                              
0x006B9A07:  push     7                                 
0x006B9A09:  push     0xe35a2a84                        
0x006B9A0E:  push     0                                 
0x006B9A10:  push     0                                 
0x006B9A12:  push     0                                 
0x006B9A14:  push     0x16f9659e                        
0x006B9A19:  call     0x6b4690                          
0x006B9A1E:  add      esp, 0x20                         
0x006B9A21:  jmp      0x6b9aab                          
0x006B9A26:  mov      edx, dword ptr [0xb752c8]         
0x006B9A2C:  mov      eax, dword ptr [edx + 0xd0]       
0x006B9A32:  and      eax, 0x20000                      
0x006B9A37:  je       0x6b9a59                          
0x006B9A39:  push     1                                 
0x006B9A3B:  push     0x72                              
0x006B9A3D:  push     7                                 
0x006B9A3F:  push     0xe35a2a84                        
0x006B9A44:  push     0                                 
0x006B9A46:  push     0                                 
0x006B9A48:  push     0                                 
0x006B9A4A:  push     0xf1882600                        
0x006B9A4F:  call     0x6b4690                          
0x006B9A54:  add      esp, 0x20                         
0x006B9A57:  jmp      0x6b9aab                          
0x006B9A59:  mov      ecx, dword ptr [0xb752c8]         
0x006B9A5F:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B9A65:  and      edx, 0x40000                      
0x006B9A6B:  je       0x6b9a8d                          
0x006B9A6D:  push     1                                 
0x006B9A6F:  push     0x72                              
0x006B9A71:  push     7                                 
0x006B9A73:  push     0xe35a2a84                        
0x006B9A78:  push     0                                 
0x006B9A7A:  push     0                                 
0x006B9A7C:  push     0                                 
0x006B9A7E:  push     0x2a77c594                        
0x006B9A83:  call     0x6b4690                          
0x006B9A88:  add      esp, 0x20                         
0x006B9A8B:  jmp      0x6b9aab                          
0x006B9A8D:  push     1                                 
0x006B9A8F:  push     0x72                              
0x006B9A91:  push     7                                 
0x006B9A93:  push     0xe35a2a84                        
0x006B9A98:  push     0                                 
0x006B9A9A:  push     0                                 
0x006B9A9C:  push     0                                 
0x006B9A9E:  push     0x12387829                        
0x006B9AA3:  call     0x6b4690                          
0x006B9AA8:  add      esp, 0x20                         
0x006B9AAB:  call     0x6bd9e0                          
0x006B9AB0:  mov      dword ptr [ebp - 0x14], 1         
0x006B9AB7:  jmp      0x6ba257                          
0x006B9ABC:  mov      eax, dword ptr [0xb752c8]         
0x006B9AC1:  mov      ecx, dword ptr [eax + 0xd0]       
0x006B9AC7:  and      ecx, 0x200                        
0x006B9ACD:  je       0x6b9ae5                          
0x006B9ACF:  push     0                                 
0x006B9AD1:  push     0                                 
0x006B9AD3:  push     0xac                              
0x006B9AD8:  call     0x6b4270                          
0x006B9ADD:  add      esp, 0xc                          
0x006B9AE0:  jmp      0x6ba257                          
0x006B9AE5:  mov      edx, dword ptr [0xb752c8]         
0x006B9AEB:  mov      dword ptr [edx + 0x4c], 0         
0x006B9AF2:  call     0x6b8de0                          
0x006B9AF7:  test     eax, eax                          
0x006B9AF9:  jne      0x6b9b68                          
0x006B9AFB:  call     0x6a0cf0                          
0x006B9B00:  push     edx                               
0x006B9B01:  push     eax                               
0x006B9B02:  mov      eax, dword ptr [0xb752e0]         
0x006B9B07:  mov      ecx, dword ptr [eax + 0x14]       
0x006B9B0A:  push     ecx                               
0x006B9B0B:  mov      edx, dword ptr [eax + 0x10]       
0x006B9B0E:  push     edx                               
0x006B9B0F:  call     0x6a0dd0                          
0x006B9B14:  add      esp, 0x10                         
0x006B9B17:  push     edx                               
0x006B9B18:  push     eax                               
0x006B9B19:  call     0x69a850                          
0x006B9B1E:  add      esp, 8                            
0x006B9B21:  fstp     dword ptr [ebp - 0x18]            
0x006B9B24:  fld      dword ptr [ebp - 0x18]            
0x006B9B27:  fcomp    qword ptr [0x99b748]              
0x006B9B2D:  fnstsw   ax                                
0x006B9B2F:  test     ah, 0x41                          
0x006B9B32:  jne      0x6b9b66                          
0x006B9B34:  mov      eax, dword ptr [0xb752c8]         
0x006B9B39:  mov      dword ptr [eax + 0xd0], 0x200     
0x006B9B43:  push     0                                 
0x006B9B45:  push     0                                 
0x006B9B47:  push     0xac                              
0x006B9B4C:  call     0x6b4270                          
0x006B9B51:  add      esp, 0xc                          
0x006B9B54:  mov      ecx, dword ptr [0xb752e0]         
0x006B9B5A:  mov      dword ptr [ecx + 0x30], 0         
0x006B9B61:  jmp      0x6ba257                          
0x006B9B66:  jmp      0x6b9bd8                          
0x006B9B68:  push     0                                 
0x006B9B6A:  push     0                                 
0x006B9B6C:  push     0xad                              
0x006B9B71:  call     0x6b4270                          
0x006B9B76:  add      esp, 0xc                          
0x006B9B79:  push     0                                 
0x006B9B7B:  push     0                                 
0x006B9B7D:  call     0x6b40e0                          
0x006B9B82:  add      esp, 8                            
0x006B9B85:  mov      edx, dword ptr [0xb752c8]         
0x006B9B8B:  mov      dword ptr [edx + 0x108], 0        
0x006B9B95:  call     0x8adae0                          
0x006B9B9A:  call     0x6a0cf0                          
0x006B9B9F:  push     edx                               
0x006B9BA0:  push     eax                               
0x006B9BA1:  mov      eax, dword ptr [0xb7526c]         
0x006B9BA6:  push     eax                               
0x006B9BA7:  mov      ecx, dword ptr [0xb75268]         
0x006B9BAD:  push     ecx                               
0x006B9BAE:  call     0x6a0dd0                          
0x006B9BB3:  add      esp, 0x10                         
0x006B9BB6:  push     edx                               
0x006B9BB7:  push     eax                               
0x006B9BB8:  call     0x69a850                          
0x006B9BBD:  add      esp, 8                            
0x006B9BC0:  fstp     dword ptr [ebp - 0x18]            
0x006B9BC3:  mov      edx, dword ptr [0xb752c8]         
0x006B9BC9:  mov      eax, dword ptr [edx + 0xe0]       
0x006B9BCF:  push     eax                               
0x006B9BD0:  call     0x58aa80                          
0x006B9BD5:  add      esp, 4                            
0x006B9BD8:  jmp      0x6ba257                          
0x006B9BDD:  cmp      dword ptr [0xb752c4], 0           
0x006B9BE4:  jne      0x6b9c03                          
0x006B9BE6:  push     0xb01c70                          
0x006B9BEB:  call     0x6b40b0                          
0x006B9BF0:  add      esp, 4                            
0x006B9BF3:  mov      ecx, dword ptr [0xb752c8]         
0x006B9BF9:  mov      dword ptr [ecx + 0x108], 0        
0x006B9C03:  call     0x6b6c90                          
0x006B9C08:  jmp      0x6ba257                          
0x006B9C0D:  mov      edx, dword ptr [0xb752c8]         
0x006B9C13:  mov      eax, dword ptr [edx + 0xd0]       
0x006B9C19:  or       eax, 4                            
0x006B9C1C:  mov      ecx, dword ptr [0xb752c8]         
0x006B9C22:  mov      dword ptr [ecx + 0xd0], eax       
0x006B9C28:  mov      edx, dword ptr [0xb752b8]         
0x006B9C2E:  mov      dword ptr [edx + 0x1214], 0       
0x006B9C38:  push     0x18                              
0x006B9C3A:  push     1                                 
0x006B9C3C:  push     0                                 
0x006B9C3E:  push     0xb1                              
0x006B9C43:  call     0x6b4270                          
0x006B9C48:  add      esp, 0x10                         
0x006B9C4B:  jmp      0x6ba257                          
0x006B9C50:  push     0                                 
0x006B9C52:  push     8                                 
0x006B9C54:  push     0xba                              
0x006B9C59:  call     0x6b4270                          
0x006B9C5E:  add      esp, 0xc                          
0x006B9C61:  call     0x6b3de0                          
0x006B9C66:  jmp      0x6ba257                          
0x006B9C6B:  call     0x6b8b70                          
0x006B9C70:  mov      eax, dword ptr [0xb752b8]         
0x006B9C75:  mov      ecx, dword ptr [eax + 0x4c]       
0x006B9C78:  and      ecx, 8                            
0x006B9C7B:  jne      0x6b9c97                          
0x006B9C7D:  call     0x6b8e70                          
0x006B9C82:  test     eax, eax                          
0x006B9C84:  je       0x6b9c97                          
0x006B9C86:  push     0                                 
0x006B9C88:  push     0                                 
0x006B9C8A:  push     0xbf                              
0x006B9C8F:  call     0x6b4270                          
0x006B9C94:  add      esp, 0xc                          
0x006B9C97:  mov      dword ptr [ebp - 0x14], 8         
0x006B9C9E:  jmp      0x6ba257                          
0x006B9CA3:  call     0x6bc4d0                          
0x006B9CA8:  call     0x6ba330                          
0x006B9CAD:  mov      edx, dword ptr [0xb752c8]         
0x006B9CB3:  mov      dword ptr [edx + 0x108], 0        
0x006B9CBD:  xor      eax, eax                          
0x006B9CBF:  jne      0x6b9cbd                          
0x006B9CC1:  mov      ecx, dword ptr [0xb752c8]         
0x006B9CC7:  mov      edx, dword ptr [ecx + 0xe0]       
0x006B9CCD:  mov      eax, dword ptr [edx + 0x14]       
0x006B9CD0:  and      eax, 0xfffffbff                   
0x006B9CD5:  mov      ecx, dword ptr [0xb752c8]         
0x006B9CDB:  mov      edx, dword ptr [ecx + 0xe0]       
0x006B9CE1:  mov      dword ptr [edx + 0x14], eax       
0x006B9CE4:  jmp      0x6ba257                          
0x006B9CE9:  call     0x58a480                          
0x006B9CEE:  call     0x6b4c90                          
0x006B9CF3:  call     0x6bc4d0                          
0x006B9CF8:  mov      eax, dword ptr [0xb752c8]         
0x006B9CFD:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B9D03:  mov      edx, dword ptr [ecx + 0x14]       
0x006B9D06:  and      edx, 0xfffffbff                   
0x006B9D0C:  mov      eax, dword ptr [0xb752c8]         
0x006B9D11:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B9D17:  mov      dword ptr [ecx + 0x14], edx       
0x006B9D1A:  call     0x6ba330                          
0x006B9D1F:  mov      edx, dword ptr [0xb752c8]         
0x006B9D25:  mov      dword ptr [edx + 0x108], 0        
0x006B9D2F:  push     7                                 
0x006B9D31:  push     1                                 
0x006B9D33:  push     7                                 
0x006B9D35:  push     0xb5                              
0x006B9D3A:  call     0x6b4270                          
0x006B9D3F:  add      esp, 0x10                         
0x006B9D42:  jmp      0x6ba257                          
0x006B9D47:  call     0x58a480                          
0x006B9D4C:  call     0x6b4c90                          
0x006B9D51:  call     0x6bc4d0                          
0x006B9D56:  push     7                                 
0x006B9D58:  call     0x6b3c10                          
0x006B9D5D:  add      esp, 4                            
0x006B9D60:  mov      eax, dword ptr [0xb752c8]         
0x006B9D65:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B9D6B:  mov      edx, dword ptr [ecx + 0x14]       
0x006B9D6E:  and      edx, 0xfffffbff                   
0x006B9D74:  mov      eax, dword ptr [0xb752c8]         
0x006B9D79:  mov      ecx, dword ptr [eax + 0xe0]       
0x006B9D7F:  mov      dword ptr [ecx + 0x14], edx       
0x006B9D82:  call     0x6ba330                          
0x006B9D87:  mov      edx, dword ptr [0xb752c8]         
0x006B9D8D:  mov      dword ptr [edx + 0x108], 0        
0x006B9D97:  mov      eax, dword ptr [0xb752e0]         
0x006B9D9C:  mov      dword ptr [eax + 0x20], 0         
0x006B9DA3:  cmp      dword ptr [0xb75360], 0           
0x006B9DAA:  je       0x6b9db7                          
0x006B9DAC:  mov      ecx, dword ptr [0xb75360]         
0x006B9DB2:  call     0x6c1940                          
0x006B9DB7:  mov      ecx, dword ptr [0xb752e0]         
0x006B9DBD:  call     0x6be6e0                          
0x006B9DC2:  mov      ecx, dword ptr [0xb752b8]         
0x006B9DC8:  mov      dword ptr [ecx + 0x1214], 1       
0x006B9DD2:  cmp      dword ptr [0xb75360], 0           
0x006B9DD9:  je       0x6b9de6                          
0x006B9DDB:  mov      ecx, dword ptr [0xb75360]         
0x006B9DE1:  call     0x6c1080                          
0x006B9DE6:  mov      edx, dword ptr [0xb752c8]         
0x006B9DEC:  mov      eax, dword ptr [edx + 0xd0]       
0x006B9DF2:  and      eax, 0x800000                     
0x006B9DF7:  je       0x6b9e0c                          
0x006B9DF9:  push     0                                 
0x006B9DFB:  push     7                                 
0x006B9DFD:  push     0xa6                              
0x006B9E02:  call     0x6b4270                          
0x006B9E07:  add      esp, 0xc                          
0x006B9E0A:  jmp      0x6b9e2d                          
0x006B9E0C:  push     1                                 
0x006B9E0E:  push     0xaa                              
0x006B9E13:  push     7                                 
0x006B9E15:  push     0xe35a2a84                        
0x006B9E1A:  push     0                                 
0x006B9E1C:  push     0                                 
0x006B9E1E:  push     0                                 
0x006B9E20:  push     0x9d2429d6                        
0x006B9E25:  call     0x6b4690                          
0x006B9E2A:  add      esp, 0x20                         
0x006B9E2D:  jmp      0x6ba257                          
0x006B9E32:  call     0x6b4c90                          
0x006B9E37:  call     0x6bc4d0                          
0x006B9E3C:  push     7                                 
0x006B9E3E:  call     0x6b3c10                          
0x006B9E43:  add      esp, 4                            
0x006B9E46:  mov      ecx, dword ptr [0xb752c8]         
0x006B9E4C:  mov      edx, dword ptr [ecx + 0xe0]       
0x006B9E52:  mov      eax, dword ptr [edx + 0x14]       
0x006B9E55:  and      eax, 0xfffffbff                   
0x006B9E5A:  mov      ecx, dword ptr [0xb752c8]         
0x006B9E60:  mov      edx, dword ptr [ecx + 0xe0]       
0x006B9E66:  mov      dword ptr [edx + 0x14], eax       
0x006B9E69:  call     0x6ba330                          
0x006B9E6E:  mov      eax, dword ptr [0xb752c8]         
0x006B9E73:  mov      dword ptr [eax + 0x108], 0        
0x006B9E7D:  mov      ecx, dword ptr [0xb752e0]         
0x006B9E83:  mov      dword ptr [ecx + 0x20], 0         
0x006B9E8A:  cmp      dword ptr [0xb75360], 0           
0x006B9E91:  je       0x6b9e9e                          
0x006B9E93:  mov      ecx, dword ptr [0xb75360]         
0x006B9E99:  call     0x6c1940                          
0x006B9E9E:  mov      ecx, dword ptr [0xb752e0]         
0x006B9EA4:  call     0x6be6e0                          
0x006B9EA9:  mov      edx, dword ptr [0xb752b8]         
0x006B9EAF:  mov      dword ptr [edx + 0x1214], 1       
0x006B9EB9:  cmp      dword ptr [0xb75360], 0           
0x006B9EC0:  je       0x6b9ecd                          
0x006B9EC2:  mov      ecx, dword ptr [0xb75360]         
0x006B9EC8:  call     0x6c1080                          
0x006B9ECD:  call     0x6ba330                          
0x006B9ED2:  push     3                                 
0x006B9ED4:  push     1                                 
0x006B9ED6:  push     0                                 
0x006B9ED8:  push     0xa4                              
0x006B9EDD:  call     0x6b4270                          
0x006B9EE2:  add      esp, 0x10                         
0x006B9EE5:  mov      eax, dword ptr [0xb752c8]         
0x006B9EEA:  mov      dword ptr [eax + 0xbc], 0         
0x006B9EF4:  mov      ecx, dword ptr [0xb752c8]         
0x006B9EFA:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B9F00:  and      edx, 0xfff7fffb                   
0x006B9F06:  mov      eax, dword ptr [0xb752c8]         
0x006B9F0B:  mov      dword ptr [eax + 0xd0], edx       
0x006B9F11:  jmp      0x6ba257                          
0x006B9F16:  mov      dword ptr [ebp - 0x14], 9         
0x006B9F1D:  jmp      0x6ba257                          
0x006B9F22:  mov      ecx, dword ptr [0xb752b8]         
0x006B9F28:  mov      dword ptr [ecx + 0x1214], 1       
0x006B9F32:  call     0x6b3de0                          
0x006B9F37:  mov      edx, dword ptr [0xb752c8]         
0x006B9F3D:  mov      eax, dword ptr [edx + 0xd0]       
0x006B9F43:  and      eax, 0x400000                     
0x006B9F48:  je       0x6b9fa7                          
0x006B9F4A:  mov      ecx, dword ptr [0xb752c8]         
0x006B9F50:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B9F56:  and      edx, 0xffbfffff                   
0x006B9F5C:  mov      eax, dword ptr [0xb752c8]         
0x006B9F61:  mov      dword ptr [eax + 0xd0], edx       
0x006B9F67:  push     0                                 
0x006B9F69:  push     0xa6                              
0x006B9F6E:  push     7                                 
0x006B9F70:  push     0xe35a2a84                        
0x006B9F75:  push     0                                 
0x006B9F77:  push     0                                 
0x006B9F79:  push     0                                 
0x006B9F7B:  push     0xa02020e                         
0x006B9F80:  call     0x6b4690                          
0x006B9F85:  add      esp, 0x20                         
0x006B9F88:  mov      ecx, dword ptr [0xb752c8]         
0x006B9F8E:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B9F94:  or       edx, 0x100000                     
0x006B9F9A:  mov      eax, dword ptr [0xb752c8]         
0x006B9F9F:  mov      dword ptr [eax + 0xd0], edx       
0x006B9FA5:  jmp      0x6b9fe5                          
0x006B9FA7:  push     0                                 
0x006B9FA9:  push     0xa6                              
0x006B9FAE:  push     7                                 
0x006B9FB0:  push     0xe35a2a84                        
0x006B9FB5:  push     0                                 
0x006B9FB7:  push     0                                 
0x006B9FB9:  push     0                                 
0x006B9FBB:  push     0x2734e34d                        
0x006B9FC0:  call     0x6b4690                          
0x006B9FC5:  add      esp, 0x20                         
0x006B9FC8:  mov      ecx, dword ptr [0xb752c8]         
0x006B9FCE:  mov      edx, dword ptr [ecx + 0xd0]       
0x006B9FD4:  or       edx, 0x100000                     
0x006B9FDA:  mov      eax, dword ptr [0xb752c8]         
0x006B9FDF:  mov      dword ptr [eax + 0xd0], edx       
0x006B9FE5:  push     0                                 
0x006B9FE7:  push     0                                 
0x006B9FE9:  push     0xa6                              
0x006B9FEE:  call     0x6b4270                          
0x006B9FF3:  add      esp, 0xc                          
0x006B9FF6:  mov      ecx, dword ptr [0xb752c8]         
0x006B9FFC:  mov      dword ptr [ecx + 0x108], 0        
0x006BA006:  jmp      0x6ba257                          
0x006BA00B:  mov      edx, dword ptr [0xb752b8]         
0x006BA011:  mov      dword ptr [edx + 0x1214], 1       
0x006BA01B:  mov      eax, dword ptr [0xb752c8]         
0x006BA020:  mov      dword ptr [eax + 0x108], 0        
0x006BA02A:  call     0x6b4c90                          
0x006BA02F:  push     7                                 
0x006BA031:  push     1                                 
0x006BA033:  push     7                                 
0x006BA035:  push     0xb6                              
0x006BA03A:  call     0x6b4270                          
0x006BA03F:  add      esp, 0x10                         
0x006BA042:  mov      ecx, dword ptr [0xb752c8]         
0x006BA048:  mov      edx, dword ptr [ecx + 0xd0]       
0x006BA04E:  and      edx, 0x8000                       
0x006BA054:  je       0x6ba094                          
0x006BA056:  mov      eax, dword ptr [0xb752c8]         
0x006BA05B:  mov      ecx, dword ptr [eax + 0xd0]       
0x006BA061:  and      ecx, 0xffff7fff                   
0x006BA067:  mov      edx, dword ptr [0xb752c8]         
0x006BA06D:  mov      dword ptr [edx + 0xd0], ecx       
0x006BA073:  push     1                                 
0x006BA075:  push     0xb6                              
0x006BA07A:  push     7                                 
0x006BA07C:  push     0xaf4aca09                        
0x006BA081:  push     0                                 
0x006BA083:  push     0                                 
0x006BA085:  push     0                                 
0x006BA087:  push     0x9d2429d6                        
0x006BA08C:  call     0x6b4690                          
0x006BA091:  add      esp, 0x20                         
0x006BA094:  jmp      0x6ba257                          
0x006BA099:  mov      eax, dword ptr [0xb752e0]         
0x006BA09E:  cmp      dword ptr [eax + 0x20], 0         
0x006BA0A2:  je       0x6ba0ae                          
0x006BA0A4:  call     0x6b3de0                          
0x006BA0A9:  jmp      0x6ba257                          
0x006BA0AE:  mov      ecx, dword ptr [0xb752b8]         
0x006BA0B4:  cmp      dword ptr [ecx + 0x568], 0        
0x006BA0BB:  je       0x6ba0f0                          
0x006BA0BD:  push     0                                 
0x006BA0BF:  push     0                                 
0x006BA0C1:  push     0xb7                              
0x006BA0C6:  call     0x6b4270                          
0x006BA0CB:  add      esp, 0xc                          
0x006BA0CE:  push     0                                 
0x006BA0D0:  push     2                                 
0x006BA0D2:  push     8                                 
0x006BA0D4:  call     0x6b3ad0                          
0x006BA0D9:  add      esp, 0xc                          
0x006BA0DC:  push     0xb01cf0                          
0x006BA0E1:  call     0x6b40b0                          
0x006BA0E6:  add      esp, 4                            
0x006BA0E9:  jmp      0x6ba257                          
0x006BA0EE:  jmp      0x6ba101                          
0x006BA0F0:  push     0                                 
0x006BA0F2:  push     0                                 
0x006BA0F4:  push     0xb2                              
0x006BA0F9:  call     0x6b4270                          
0x006BA0FE:  add      esp, 0xc                          
0x006BA101:  push     0xb01c70                          
0x006BA106:  call     0x6b40b0                          
0x006BA10B:  add      esp, 4                            
0x006BA10E:  push     0                                 
0x006BA110:  push     0                                 
0x006BA112:  push     0xad                              
0x006BA117:  call     0x6b4270                          
0x006BA11C:  add      esp, 0xc                          
0x006BA11F:  mov      edx, dword ptr [0xb752c8]         
0x006BA125:  mov      eax, dword ptr [edx + 0xd0]       
0x006BA12B:  and      eax, 0xfff7fffb                   
0x006BA130:  mov      ecx, dword ptr [0xb752c8]         
0x006BA136:  mov      dword ptr [ecx + 0xd0], eax       
0x006BA13C:  mov      edx, dword ptr [0xb752c8]         
0x006BA142:  mov      dword ptr [edx + 0xbc], 0         
0x006BA14C:  mov      eax, dword ptr [0xb752b8]         
0x006BA151:  mov      dword ptr [eax + 0x1214], 1       
0x006BA15B:  jmp      0x6ba257                          
0x006BA160:  mov      ecx, dword ptr [0xb752b8]         
0x006BA166:  mov      dword ptr [ecx + 0x1214], 1       
0x006BA170:  mov      edx, dword ptr [0xb752c8]         
0x006BA176:  mov      eax, dword ptr [edx + 0xe0]       
0x006BA17C:  mov      dword ptr [eax + 0x14], 0         
0x006BA183:  call     0x6b4380                          
0x006BA188:  mov      ecx, dword ptr [0xb752c8]         
0x006BA18E:  mov      dword ptr [ecx + 0xc4], 0         
0x006BA198:  push     0                                 
0x006BA19A:  push     0                                 
0x006BA19C:  push     0xa6                              
0x006BA1A1:  call     0x6b4270                          
0x006BA1A6:  add      esp, 0xc                          
0x006BA1A9:  mov      edx, dword ptr [0xb752c8]         
0x006BA1AF:  mov      eax, dword ptr [edx + 0xd0]       
0x006BA1B5:  and      eax, 0xfff7fffb                   
0x006BA1BA:  mov      ecx, dword ptr [0xb752c8]         
0x006BA1C0:  mov      dword ptr [ecx + 0xd0], eax       
0x006BA1C6:  mov      edx, dword ptr [0xb752c8]         
0x006BA1CC:  mov      dword ptr [edx + 0x108], 0        
0x006BA1D6:  jmp      0x6ba257                          
0x006BA1D8:  mov      eax, dword ptr [0xb752b8]         
0x006BA1DD:  mov      dword ptr [eax + 0x1214], 1       
0x006BA1E7:  call     0x6b4380                          
0x006BA1EC:  mov      ecx, dword ptr [0xb752c8]         
0x006BA1F2:  mov      dword ptr [ecx + 0xc4], 0         
0x006BA1FC:  push     0                                 
0x006BA1FE:  push     0                                 
0x006BA200:  push     0xa6                              
0x006BA205:  call     0x6b4270                          
0x006BA20A:  add      esp, 0xc                          
0x006BA20D:  mov      edx, dword ptr [0xb752c8]         
0x006BA213:  mov      eax, dword ptr [edx + 0xd0]       
0x006BA219:  and      eax, 0xfff7fffb                   
0x006BA21E:  mov      ecx, dword ptr [0xb752c8]         
0x006BA224:  mov      dword ptr [ecx + 0xd0], eax       
0x006BA22A:  mov      edx, dword ptr [0xb752c8]         
0x006BA230:  mov      eax, dword ptr [edx + 0xd0]       
0x006BA236:  or       eax, 0x80000                      
0x006BA23B:  mov      ecx, dword ptr [0xb752c8]         
0x006BA241:  mov      dword ptr [ecx + 0xd0], eax       
0x006BA247:  mov      edx, dword ptr [0xb752c8]         
0x006BA24D:  mov      dword ptr [edx + 0x108], 0        
0x006BA257:  mov      eax, dword ptr [ebp - 0x14]       
0x006BA25A:  mov      esp, ebp                          
0x006BA25C:  pop      ebp                               
0x006BA25D:  ret                                        
0x006BA25E:  mov      edi, edi                          
0x006BA260:  pushal                                     
0x006BA261:  mov      eax, dword ptr [0xa1d8006b]       
0x006BA266:  imul     eax, dword ptr [eax], -0x22       
0x006BA269:  xchg     edi, eax                          
0x006BA26A:  imul     eax, dword ptr [eax], -0x58       
0x006BA26D:  nop                                        
0x006BA26E:  imul     eax, dword ptr [eax], 0x11        
0x006BA271:  xchg     ebp, eax                          
0x006BA272:  imul     eax, dword ptr [eax], 0x77        
0x006BA275:  xchg     ebp, eax                          
0x006BA276:  imul     eax, dword ptr [eax], -0x7a       
0x006BA279:  xchg     ebp, eax                          
0x006BA27A:  imul     eax, dword ptr [eax], 0x24        
0x006BA27D:  xchg     edi, eax                          
0x006BA27E:  imul     eax, dword ptr [eax], -0x76       
0x006BA281:  xchg     edi, eax                          
0x006BA282:  imul     eax, dword ptr [eax], -0x4d       
0x006BA285:  xchg     edi, eax                          
0x006BA286:  imul     eax, dword ptr [eax], -0x49       
0x006BA289:  xchg     esp, eax                          
0x006BA28A:  imul     eax, dword ptr [eax], 0x16        
0x006BA28D:  cwde                                       
0x006BA28E:  imul     eax, dword ptr [eax], -0x70       
0x006BA291:  cwde                                       
0x006BA292:  imul     eax, dword ptr [eax], -0x23       
0x006BA295:  wait                                       
0x006BA296:  imul     eax, dword ptr [eax], 0xd         
0x006BA299:  pushfd                                     
0x006BA29A:  imul     eax, dword ptr [eax], 0x50        
0x006BA29D:  pushfd                                     
0x006BA29E:  imul     eax, dword ptr [eax], 1           
0x006BA2A1:  mov      eax, dword ptr [0x9abc006b]       
0x006BA2A6:  imul     eax, dword ptr [eax], 0x42        
0x006BA2A9:  xchg     esp, eax                          
0x006BA2AA:  imul     eax, dword ptr [eax], -0x67       
0x006BA2AD:  mov      al, byte ptr [0x949a006b]         
0x006BA2B2:  imul     eax, dword ptr [eax], 0x6b        
0x006BA2B5:  pushfd                                     
0x006BA2B6:  imul     eax, dword ptr [eax], 0x16        
0x006BA2B9:  lahf                                       
0x006BA2BA:  imul     eax, dword ptr [eax], -0x5d       
0x006BA2BD:  pushfd                                     
0x006BA2BE:  imul     eax, dword ptr [eax], 0x22        
0x006BA2C1:  lahf                                       
0x006BA2C2:  imul     eax, dword ptr [eax], -0x17       
0x006BA2C5:  pushfd                                     
0x006BA2C6:  imul     eax, dword ptr [eax], 0xb         
0x006BA2C9:  mov      al, byte ptr [0x9d47006b]         
0x006BA2CE:  imul     eax, dword ptr [eax], 0x32        
0x006BA2D1:  sahf                                       
0x006BA2D2:  imul     eax, dword ptr [eax], 0x57        
0x006BA2D5:  mov      byte ptr [0x1d00006b], al         
0x006BA2DA:  add      dword ptr [0x1d1d1d1d], ebx       
0x006BA2E0:  sbb      eax, 0x1d1d1d1d                   
0x006BA2E5:  sbb      eax, 0x1d1d1d1d                   
0x006BA2EA:  sbb      eax, 0x1d1d1d1d                   
0x006BA2EF:  sbb      eax, 0x1d1d1d1d                   
0x006BA2F4:  sbb      eax, 0x1d1d1d1d                   
0x006BA2F9:  sbb      eax, 0x1d1d1d1d                   
0x006BA2FE:  sbb      eax, 0x1d1d021d                   
0x006BA303:  sbb      eax, 0x1d1d1d1d                   
0x006BA308:  add      eax, dword ptr [eax + 0x807061d]  
0x006BA30F:  or       dword ptr [edx], ecx              
0x006BA311:  or       ecx, dword ptr [ecx + 0xf0e061d]  
0x006BA318:  adc      byte ptr [ecx], dl                
0x006BA31A:  sbb      eax, 0x1d141312                   
0x006BA31F:  adc      eax, 0x19181716                   
0x006BA324:  sbb      bl, byte ptr [ebx]                
0x006BA326:  sbb      al, 0xcc                          
0x006BA328:  int3                                       
0x006BA329:  int3                                       
0x006BA32A:  int3                                       
0x006BA32B:  int3                                       
0x006BA32C:  int3                                       
0x006BA32D:  int3                                       
0x006BA32E:  int3                                       
0x006BA32F:  int3                                       
0x006BA330:  push     ebp                               
0x006BA331:  mov      ebp, esp                          
0x006BA333:  push     0xb01c30                          
0x006BA338:  call     0x6b40b0                          
0x006BA33D:  add      esp, 4                            
0x006BA340:  pop      ebp                               
0x006BA341:  ret                                        
0x006BA342:  int3                                       
0x006BA343:  int3                                       
0x006BA344:  int3                                       
0x006BA345:  int3                                       
0x006BA346:  int3                                       
0x006BA347:  int3                                       
0x006BA348:  int3                                       
0x006BA349:  int3                                       
0x006BA34A:  int3                                       
0x006BA34B:  int3                                       
0x006BA34C:  int3                                       
0x006BA34D:  int3                                       
0x006BA34E:  int3                                       
0x006BA34F:  int3                                       
0x006BA350:  push     ebp                               
0x006BA351:  mov      ebp, esp                          
0x006BA353:  sub      esp, 0x5c                         
0x006BA356:  mov      eax, dword ptr [0xb089c8]         
0x006BA35B:  xor      eax, ebp                          
0x006BA35D:  mov      dword ptr [ebp - 4], eax          
0x006BA360:  mov      eax, 0x48                         
0x006BA365:  mov      word ptr [ebp - 0x54], ax         
0x006BA369:  cmp      dword ptr [0xb752b0], 0           
0x006BA370:  jne      0x6ba379                          
0x006BA372:  xor      eax, eax                          
0x006BA374:  jmp      0x6ba4a4                          
0x006BA379:  mov      ecx, dword ptr [ebp + 8]          
0x006BA37C:  imul     ecx, ecx, 0x124                   
0x006BA382:  mov      edx, dword ptr [0xb752c8]         
0x006BA388:  lea      eax, [edx + ecx + 0x2b8]          
0x006BA38F:  mov      dword ptr [ebp - 0x58], eax       
0x006BA392:  movzx    ecx, word ptr [ebp - 0x54]        
0x006BA396:  mov      dword ptr [ebp - 0x5c], ecx       
0x006BA399:  cmp      dword ptr [ebp - 0x5c], 0xc00     
0x006BA3A0:  jg       0x6ba3bc                          
0x006BA3A2:  lea      edx, [ebp - 0x50]                 
0x006BA3A5:  and      edx, 0x7f                         
0x006BA3A8:  je       0x6ba3bc                          
0x006BA3AA:  mov      eax, dword ptr [ebp - 0x5c]       
0x006BA3AD:  push     eax                               
0x006BA3AE:  lea      ecx, [ebp - 0x50]                 
0x006BA3B1:  push     ecx                               
0x006BA3B2:  call     0x6a9700                          
0x006BA3B7:  add      esp, 8                            
0x006BA3BA:  jmp      0x6ba3ce                          
0x006BA3BC:  mov      edx, dword ptr [ebp - 0x5c]       
0x006BA3BF:  push     edx                               
0x006BA3C0:  push     0                                 
0x006BA3C2:  lea      eax, [ebp - 0x50]                 
0x006BA3C5:  push     eax                               
0x006BA3C6:  call     0x8eb080                          
0x006BA3CB:  add      esp, 0xc                          
0x006BA3CE:  mov      ecx, dword ptr [ebp - 0x58]       
0x006BA3D1:  mov      edx, dword ptr [ebp + 8]          
0x006BA3D4:  mov      dword ptr [ecx + 0xd4], edx       
0x006BA3DA:  mov      al, byte ptr [ebp + 8]            
0x006BA3DD:  mov      byte ptr [ebp - 0x10], al         
0x006BA3E0:  mov      ecx, dword ptr [ebp - 0x58]       
0x006BA3E3:  mov      dword ptr [ecx + 8], 1            
0x006BA3EA:  push     0x40                              
0x006BA3EC:  mov      edx, dword ptr [ebp - 0x58]       
0x006BA3EF:  add      edx, 0x94                         
0x006BA3F5:  push     edx                               
0x006BA3F6:  lea      eax, [ebp - 0x50]                 
0x006BA3F9:  push     eax                               
0x006BA3FA:  call     0x497f80                          
0x006BA3FF:  add      esp, 0xc                          
0x006BA402:  mov      ecx, dword ptr [ebp - 0x58]       
0x006BA405:  mov      dl, byte ptr [ecx + 0x100]        
0x006BA40B:  mov      byte ptr [ebp - 0xf], dl          
0x006BA40E:  mov      eax, dword ptr [ebp - 0x58]       
0x006BA411:  mov      cl, byte ptr [eax + 0xec]         
0x006BA417:  mov      byte ptr [ebp - 0xd], cl          
0x006BA41A:  mov      edx, dword ptr [ebp - 0x58]       
0x006BA41D:  mov      al, byte ptr [edx + 0xe8]         
0x006BA423:  mov      byte ptr [ebp - 0xe], al          
0x006BA426:  mov      ecx, dword ptr [ebp - 0x58]       
0x006BA429:  mov      edx, dword ptr [ecx + 0xe4]       
0x006BA42F:  mov      dword ptr [ebp - 0xc], edx        
0x006BA432:  movzx    eax, word ptr [ebp - 0x54]        
0x006BA436:  push     eax                               
0x006BA437:  lea      ecx, [ebp - 0x50]                 
0x006BA43A:  push     ecx                               
0x006BA43B:  mov      edx, dword ptr [0xb752b0]         
0x006BA441:  mov      eax, dword ptr [edx + 0x7e0]      
0x006BA447:  push     eax                               
0x006BA448:  call     0x497f80                          
0x006BA44D:  add      esp, 0xc                          
0x006BA450:  movzx    ecx, word ptr [ebp - 0x54]        
0x006BA454:  mov      edx, dword ptr [0xb752b0]         
0x006BA45A:  add      ecx, dword ptr [edx + 0x7e0]      
0x006BA460:  mov      eax, dword ptr [0xb752b0]         
0x006BA465:  mov      dword ptr [eax + 0x7e0], ecx      
0x006BA46B:  movzx    ecx, word ptr [ebp - 0x54]        
0x006BA46F:  mov      edx, dword ptr [0xb752b0]         
0x006BA475:  movzx    eax, word ptr [edx + 2]           
0x006BA479:  add      eax, ecx                          
0x006BA47B:  mov      ecx, dword ptr [0xb752b0]         
0x006BA481:  mov      word ptr [ecx + 2], ax            
0x006BA485:  mov      edx, dword ptr [0xb752b0]         
0x006BA48B:  mov      eax, dword ptr [edx + 0x7dc]      
0x006BA491:  add      eax, 1                            
0x006BA494:  mov      ecx, dword ptr [0xb752b0]         
0x006BA49A:  mov      dword ptr [ecx + 0x7dc], eax      
0x006BA4A0:  movzx    eax, word ptr [ebp - 0x54]        
0x006BA4A4:  mov      ecx, dword ptr [ebp - 4]          
0x006BA4A7:  xor      ecx, ebp                          
0x006BA4A9:  call     0x8eac64                          
0x006BA4AE:  mov      esp, ebp                          
0x006BA4B0:  pop      ebp                               
0x006BA4B1:  ret                                        
0x006BA4B2:  int3                                       
0x006BA4B3:  int3                                       
0x006BA4B4:  int3                                       
0x006BA4B5:  int3                                       
0x006BA4B6:  int3                                       
0x006BA4B7:  int3                                       
0x006BA4B8:  int3                                       
0x006BA4B9:  int3                                       
0x006BA4BA:  int3                                       
0x006BA4BB:  int3                                       
0x006BA4BC:  int3                                       
0x006BA4BD:  int3                                       
0x006BA4BE:  int3                                       
0x006BA4BF:  int3                                       
0x006BA4C0:  push     ebp                               
0x006BA4C1:  mov      ebp, esp                          
0x006BA4C3:  mov      eax, dword ptr [0xb752c8]         
0x006BA4C8:  mov      dword ptr [eax + 0x44], 0         
0x006BA4CF:  mov      ecx, dword ptr [0xb752c8]         
0x006BA4D5:  mov      dword ptr [ecx + 0x74], 0         
0x006BA4DC:  push     1                                 
0x006BA4DE:  push     1                                 
0x006BA4E0:  mov      edx, dword ptr [0xb752c0]         
0x006BA4E6:  mov      eax, dword ptr [edx + 4]          
0x006BA4E9:  mov      ecx, dword ptr [0xb75240]         
0x006BA4EF:  mov      edx, dword ptr [ecx + eax*4]      
0x006BA4F2:  push     edx                               
0x006BA4F3:  mov      eax, dword ptr [0xb752c0]         
0x006BA4F8:  mov      ecx, dword ptr [eax + 4]          
0x006BA4FB:  mov      edx, dword ptr [0xb75250]         
0x006BA501:  mov      eax, dword ptr [edx + ecx*4]      
0x006BA504:  push     eax                               
0x006BA505:  call     0x6b4270                          
0x006BA50A:  add      esp, 0x10                         
0x006BA50D:  call     0x6b3de0                          
0x006BA512:  pop      ebp                               
0x006BA513:  ret                                        
0x006BA514:  int3                                       
0x006BA515:  int3                                       
0x006BA516:  int3                                       
0x006BA517:  int3                                       
0x006BA518:  int3                                       
0x006BA519:  int3                                       
0x006BA51A:  int3                                       
0x006BA51B:  int3                                       
0x006BA51C:  int3                                       
0x006BA51D:  int3                                       
0x006BA51E:  int3                                       
0x006BA51F:  int3                                       
0x006BA520:  push     ebp                               
0x006BA521:  mov      ebp, esp                          
0x006BA523:  call     0x6b3ce0                          
0x006BA528:  call     0x6c30e0                          
0x006BA52D:  mov      dword ptr [0xb752c4], 0           
0x006BA537:  pop      ebp                               
0x006BA538:  ret                                        
0x006BA539:  int3                                       
0x006BA53A:  int3                                       
0x006BA53B:  int3                                       
0x006BA53C:  int3                                       
0x006BA53D:  int3                                       
0x006BA53E:  int3                                       
0x006BA53F:  int3                                       
0x006BA540:  push     ebp                               
0x006BA541:  mov      ebp, esp                          
0x006BA543:  push     ecx                               
0x006BA544:  mov      eax, dword ptr [0xb752bc]         
0x006BA549:  cmp      dword ptr [eax + 0x1224], 0       
0x006BA550:  je       0x6ba5a0                          
0x006BA552:  mov      dword ptr [0xb75250], 0xb01d40    
0x006BA55C:  mov      dword ptr [0xb75240], 0xb01d50    
0x006BA566:  mov      dword ptr [ebp - 4], 0            
0x006BA56D:  jmp      0x6ba578                          
0x006BA56F:  mov      ecx, dword ptr [ebp - 4]          
0x006BA572:  add      ecx, 1                            
0x006BA575:  mov      dword ptr [ebp - 4], ecx          
0x006BA578:  cmp      dword ptr [ebp - 4], 4            
0x006BA57C:  jae      0x6ba594                          
0x006BA57E:  mov      edx, dword ptr [ebp - 4]          
0x006BA581:  mov      eax, dword ptr [ebp - 4]          
0x006BA584:  mov      ecx, dword ptr [eax*4 + 0xb01d30] 
0x006BA58B:  mov      dword ptr [edx*4 + 0xb75270], ecx 
0x006BA592:  jmp      0x6ba56f                          
0x006BA594:  mov      dword ptr [0xb01d88], 4           
0x006BA59E:  jmp      0x6ba5ec                          
0x006BA5A0:  mov      dword ptr [0xb75250], 0xb01d6c    
0x006BA5AA:  mov      dword ptr [0xb75240], 0xb01d78    
0x006BA5B4:  mov      dword ptr [ebp - 4], 0            
0x006BA5BB:  jmp      0x6ba5c6                          
0x006BA5BD:  mov      edx, dword ptr [ebp - 4]          
0x006BA5C0:  add      edx, 1                            
0x006BA5C3:  mov      dword ptr [ebp - 4], edx          
0x006BA5C6:  cmp      dword ptr [ebp - 4], 3            
0x006BA5CA:  jae      0x6ba5e2                          
0x006BA5CC:  mov      eax, dword ptr [ebp - 4]          
0x006BA5CF:  mov      ecx, dword ptr [ebp - 4]          
0x006BA5D2:  mov      edx, dword ptr [ecx*4 + 0xb01d60] 
0x006BA5D9:  mov      dword ptr [eax*4 + 0xb75270], edx 
0x006BA5E0:  jmp      0x6ba5bd                          
0x006BA5E2:  mov      dword ptr [0xb01d88], 3           
0x006BA5EC:  mov      esp, ebp                          
0x006BA5EE:  pop      ebp                               
0x006BA5EF:  ret                                        
0x006BA5F0:  push     ebp                               
0x006BA5F1:  mov      ebp, esp                          
0x006BA5F3:  push     0                                 
0x006BA5F5:  mov      eax, dword ptr [0xb752c0]         
0x006BA5FA:  mov      ecx, dword ptr [eax + 4]          
0x006BA5FD:  push     ecx                               
0x006BA5FE:  push     0xb75270                          
0x006BA603:  mov      edx, dword ptr [0xb01d88]         
0x006BA609:  push     edx                               
0x006BA60A:  push     0                                 
0x006BA60C:  push     1                                 
0x006BA60E:  call     0x6b3850                          
0x006BA613:  add      esp, 0x18                         
0x006BA616:  pop      ebp                               
0x006BA617:  ret                                        
0x006BA618:  int3                                       
0x006BA619:  int3                                       
0x006BA61A:  int3                                       
0x006BA61B:  int3                                       
0x006BA61C:  int3                                       
0x006BA61D:  int3                                       
0x006BA61E:  int3                                       
0x006BA61F:  int3                                       
0x006BA620:  push     ebp                               
0x006BA621:  mov      ebp, esp                          
0x006BA623:  mov      eax, dword ptr [0xb752c0]         
0x006BA628:  mov      dword ptr [eax + 0x20], 0         
0x006BA62F:  mov      ecx, dword ptr [0xb752c8]         
0x006BA635:  mov      dword ptr [ecx + 0x44], 0         
0x006BA63C:  mov      edx, dword ptr [0xb752c8]         
0x006BA642:  cmp      dword ptr [edx], 3                
0x006BA645:  je       0x6ba64b                          
0x006BA647:  xor      eax, eax                          
0x006BA649:  jmp      0x6ba6bb                          
0x006BA64B:  mov      eax, dword ptr [0xb752c8]         
0x006BA650:  mov      dword ptr [eax + 0x70], 0         
0x006BA657:  cmp      dword ptr [ebp + 0xc], 0          
0x006BA65B:  jge      0x6ba664                          
0x006BA65D:  mov      dword ptr [ebp + 0xc], 0          
0x006BA664:  cmp      dword ptr [ebp + 0xc], 0x10       
0x006BA668:  jle      0x6ba671                          
0x006BA66A:  mov      dword ptr [ebp + 0xc], 0x10       
0x006BA671:  cmp      dword ptr [ebp + 0xc], 0          
0x006BA675:  je       0x6ba685                          
0x006BA677:  mov      ecx, dword ptr [0xb752c8]         
0x006BA67D:  mov      edx, dword ptr [ebp + 0xc]        
0x006BA680:  mov      dword ptr [ecx + 0x74], edx       
0x006BA683:  jmp      0x6ba691                          
0x006BA685:  mov      eax, dword ptr [0xb752c8]         
0x006BA68A:  mov      dword ptr [eax + 0x74], 0         
0x006BA691:  mov      ecx, dword ptr [0xb752c8]         
0x006BA697:  cmp      dword ptr [ecx + 0x54], 0         
0x006BA69B:  jne      0x6ba6a1                          
0x006BA69D:  xor      eax, eax                          
0x006BA69F:  jmp      0x6ba6bb                          
0x006BA6A1:  push     1                                 
0x006BA6A3:  push     1                                 
0x006BA6A5:  push     9                                 
0x006BA6A7:  push     0x39                              
0x006BA6A9:  call     0x6b4270                          
0x006BA6AE:  add      esp, 0x10                         
0x006BA6B1:  call     0x6b3de0                          
0x006BA6B6:  mov      eax, 1                            
0x006BA6BB:  pop      ebp                               
0x006BA6BC:  ret                                        
0x006BA6BD:  int3                                       
0x006BA6BE:  int3                                       
0x006BA6BF:  int3                                       
0x006BA6C0:  push     ebp                               
0x006BA6C1:  mov      ebp, esp                          
0x006BA6C3:  mov      eax, dword ptr [0xb752c0]         
0x006BA6C8:  mov      dword ptr [eax + 0x20], 0         
0x006BA6CF:  mov      ecx, dword ptr [0xb752c8]         
0x006BA6D5:  mov      dword ptr [ecx + 0x44], 0         
0x006BA6DC:  mov      edx, dword ptr [0xb752c8]         
0x006BA6E2:  cmp      dword ptr [edx], 3                
0x006BA6E5:  je       0x6ba6eb                          
0x006BA6E7:  xor      eax, eax                          
0x006BA6E9:  jmp      0x6ba72e                          
0x006BA6EB:  mov      eax, dword ptr [0xb752c8]         
0x006BA6F0:  mov      dword ptr [eax + 0x74], 0         
0x006BA6F7:  mov      ecx, dword ptr [0xb752c8]         
0x006BA6FD:  mov      dword ptr [ecx + 0x70], 0         
0x006BA704:  mov      edx, dword ptr [0xb752c8]         
0x006BA70A:  cmp      dword ptr [edx + 0x54], 0         
0x006BA70E:  jne      0x6ba714                          
0x006BA710:  xor      eax, eax                          
0x006BA712:  jmp      0x6ba72e                          
0x006BA714:  push     1                                 
0x006BA716:  push     1                                 
0x006BA718:  push     0xa                               
0x006BA71A:  push     0x2a                              
0x006BA71C:  call     0x6b4270                          
0x006BA721:  add      esp, 0x10                         
0x006BA724:  call     0x6b3de0                          
0x006BA729:  mov      eax, 1                            
0x006BA72E:  pop      ebp                               
0x006BA72F:  ret                                        
0x006BA730:  push     ebp                               
0x006BA731:  mov      ebp, esp                          
0x006BA733:  mov      eax, dword ptr [0xb752c0]         
0x006BA738:  mov      dword ptr [eax + 0x20], 0         
0x006BA73F:  mov      ecx, dword ptr [0xb752c8]         
0x006BA745:  mov      dword ptr [ecx + 0x44], 0         
0x006BA74C:  mov      edx, dword ptr [0xb752c8]         
0x006BA752:  cmp      dword ptr [edx], 3                
0x006BA755:  je       0x6ba75b                          
0x006BA757:  xor      eax, eax                          
0x006BA759:  jmp      0x6ba784                          
0x006BA75B:  mov      eax, dword ptr [0xb752c8]         
0x006BA760:  cmp      dword ptr [eax + 0x54], 0         
0x006BA764:  jne      0x6ba76a                          
0x006BA766:  xor      eax, eax                          
0x006BA768:  jmp      0x6ba784                          
0x006BA76A:  push     1                                 
0x006BA76C:  push     1                                 
0x006BA76E:  push     1                                 
0x006BA770:  push     0x3f                              
0x006BA772:  call     0x6b4270                          
0x006BA777:  add      esp, 0x10                         
0x006BA77A:  call     0x6b3de0                          
0x006BA77F:  mov      eax, 1                            
0x006BA784:  pop      ebp                               
0x006BA785:  ret                                        
0x006BA786:  int3                                       
0x006BA787:  int3                                       
0x006BA788:  int3                                       
0x006BA789:  int3                                       
0x006BA78A:  int3                                       
0x006BA78B:  int3                                       
0x006BA78C:  int3                                       
0x006BA78D:  int3                                       
0x006BA78E:  int3                                       
0x006BA78F:  int3                                       
0x006BA790:  push     ebp                               
0x006BA791:  mov      ebp, esp                          
0x006BA793:  sub      esp, 0xc                          
0x006BA796:  mov      dword ptr [ebp - 8], 0            
0x006BA79D:  mov      eax, dword ptr [0xb752c8]         
0x006BA7A2:  mov      ecx, dword ptr [eax + 4]          
0x006BA7A5:  mov      dword ptr [ebp - 0xc], ecx        
0x006BA7A8:  mov      edx, dword ptr [ebp - 0xc]        
0x006BA7AB:  sub      edx, 0xb                          
0x006BA7AE:  mov      dword ptr [ebp - 0xc], edx        
0x006BA7B1:  cmp      dword ptr [ebp - 0xc], 0x15       
0x006BA7B5:  ja       0x6ba9ab                          
0x006BA7BB:  mov      eax, dword ptr [ebp - 0xc]        
0x006BA7BE:  movzx    ecx, byte ptr [eax + 0x6ba9d8]    
0x006BA7C5:  jmp      dword ptr [ecx*4 + 0x6ba9b4]      
0x006BA7CC:  jmp      0x6ba9ab                          
0x006BA7D1:  cmp      dword ptr [0xb752c0], 0           
0x006BA7D8:  je       0x6ba7e7                          
0x006BA7DA:  mov      edx, dword ptr [0xb752c0]         
0x006BA7E0:  mov      dword ptr [edx + 0x38], 1         
0x006BA7E7:  mov      eax, dword ptr [0xb752b8]         
0x006BA7EC:  mov      dword ptr [eax + 0x1218], 0       
0x006BA7F6:  mov      ecx, dword ptr [0xb752b8]         
0x006BA7FC:  mov      dword ptr [ecx + 0x1214], 1       
0x006BA806:  cmp      dword ptr [0xb7525c], 0           
0x006BA80D:  je       0x6ba814                          
0x006BA80F:  jmp      0x6ba9ab                          
0x006BA814:  call     0x6c3060                          
0x006BA819:  mov      dword ptr [ebp - 4], eax          
0x006BA81C:  cmp      dword ptr [ebp - 4], 0            
0x006BA820:  jne      0x6ba845                          
0x006BA822:  push     0                                 
0x006BA824:  push     0                                 
0x006BA826:  push     0x15                              
0x006BA828:  call     0x6b4270                          
0x006BA82D:  add      esp, 0xc                          
0x006BA830:  mov      edx, dword ptr [0xb752b8]         
0x006BA836:  mov      dword ptr [edx + 0x1218], 0       
0x006BA840:  jmp      0x6ba9ab                          
0x006BA845:  push     0                                 
0x006BA847:  call     0x6c3d80                          
0x006BA84C:  add      esp, 4                            
0x006BA84F:  cmp      eax, 2                            
0x006BA852:  je       0x6ba876                          
0x006BA854:  push     0                                 
0x006BA856:  push     0                                 
0x006BA858:  push     0x15                              
0x006BA85A:  call     0x6b4270                          
0x006BA85F:  add      esp, 0xc                          
0x006BA862:  mov      eax, dword ptr [0xb752b8]         
0x006BA867:  mov      dword ptr [eax + 0x1218], 0       
0x006BA871:  jmp      0x6ba9ab                          
0x006BA876:  mov      dword ptr [0xb75364], 1           
0x006BA880:  call     0x6ba540                          
0x006BA885:  push     0xb01d88                          
0x006BA88A:  call     0x6b3e70                          
0x006BA88F:  add      esp, 4                            
0x006BA892:  push     0                                 
0x006BA894:  push     0                                 
0x006BA896:  push     0x1e                              
0x006BA898:  call     0x6b4270                          
0x006BA89D:  add      esp, 0xc                          
0x006BA8A0:  jmp      0x6ba9ab                          
0x006BA8A5:  jmp      0x6ba9ab                          
0x006BA8AA:  push     1                                 
0x006BA8AC:  push     0x20                              
0x006BA8AE:  push     3                                 
0x006BA8B0:  push     0xe35a2a84                        
0x006BA8B5:  push     0                                 
0x006BA8B7:  push     0                                 
0x006BA8B9:  push     0                                 
0x006BA8BB:  push     0xd780cbb8                        
0x006BA8C0:  call     0x6b4690                          
0x006BA8C5:  add      esp, 0x20                         
0x006BA8C8:  mov      ecx, dword ptr [0xb752c8]         
0x006BA8CE:  mov      dword ptr [ecx + 0x2ac], 0        
0x006BA8D8:  mov      edx, dword ptr [0xb752b8]         
0x006BA8DE:  mov      dword ptr [edx + 0x1218], 0       
0x006BA8E8:  jmp      0x6ba9ab                          
0x006BA8ED:  jmp      0x6ba9ab                          
0x006BA8F2:  push     0                                 
0x006BA8F4:  push     0                                 
0x006BA8F6:  push     0x1d                              
0x006BA8F8:  call     0x6b4270                          
0x006BA8FD:  add      esp, 0xc                          
0x006BA900:  jmp      0x6ba9ab                          
0x006BA905:  push     0                                 
0x006BA907:  push     0                                 
0x006BA909:  push     0x20                              
0x006BA90B:  call     0x6b4270                          
0x006BA910:  add      esp, 0xc                          
0x006BA913:  jmp      0x6ba9ab                          
0x006BA918:  mov      eax, dword ptr [0xb752b8]         
0x006BA91D:  mov      dword ptr [eax + 0x1218], 1       
0x006BA927:  call     0x6ba5f0                          
0x006BA92C:  jmp      0x6ba9ab                          
0x006BA92E:  mov      ecx, dword ptr [0xb752b8]         
0x006BA934:  mov      dword ptr [ecx + 0x1218], 0       
0x006BA93E:  call     0x6ba540                          
0x006BA943:  push     0                                 
0x006BA945:  push     0                                 
0x006BA947:  call     0x6b40e0                          
0x006BA94C:  add      esp, 8                            
0x006BA94F:  call     0x6b3cb0                          
0x006BA954:  call     0x6baf20                          
0x006BA959:  call     0x6b6e30                          
0x006BA95E:  push     0xb01d88                          
0x006BA963:  call     0x6b3e70                          
0x006BA968:  add      esp, 4                            
0x006BA96B:  push     0                                 
0x006BA96D:  push     0                                 
0x006BA96F:  push     0x1e                              
0x006BA971:  call     0x6b4270                          
0x006BA976:  add      esp, 0xc                          
0x006BA979:  jmp      0x6ba9ab                          
0x006BA97B:  push     0                                 
0x006BA97D:  push     0                                 
0x006BA97F:  push     0x1d                              
0x006BA981:  call     0x6b4270                          
0x006BA986:  add      esp, 0xc                          
0x006BA989:  call     0x6b6e30                          
0x006BA98E:  call     0x6baf20                          
0x006BA993:  jmp      0x6ba9ab                          
0x006BA995:  call     0x6b6e30                          
0x006BA99A:  call     0x6baf20                          
0x006BA99F:  call     0x6ba520                          
0x006BA9A4:  mov      dword ptr [ebp - 8], 5            
0x006BA9AB:  mov      eax, dword ptr [ebp - 8]          
0x006BA9AE:  mov      esp, ebp                          
0x006BA9B0:  pop      ebp                               
0x006BA9B1:  ret                                        
0x006BA9B2:  mov      edi, edi                          
0x006BA9B4:  test     al, 0x6b                          
0x006BA9B7:  add      byte ptr [ebx - 0x57], bh         
0x006BA9BA:  imul     eax, dword ptr [eax], -0x56       
0x006BA9BD:  test     al, 0x6b                          
0x006BA9BF:  add      byte ptr [0xd1006ba9], al         
0x006BA9C5:  cmpsd    dword ptr [esi], dword ptr es:[edi]
0x006BA9C6:  imul     eax, dword ptr [eax], 0x18        
0x006BA9C9:  test     eax, 0xa92e006b                   
0x006BA9CE:  imul     eax, dword ptr [eax], -0x6b       
0x006BA9D1:  test     eax, 0xa9ab006b                   
0x006BA9D6:  imul     eax, dword ptr [eax], 0           
0x006BA9D9:  or       byte ptr [ecx], al                
0x006BA9DB:  or       byte ptr [eax], cl                
0x006BA9DD:  or       byte ptr [eax], cl                
0x006BA9DF:  or       byte ptr [eax], cl                
0x006BA9E1:  or       byte ptr [edx], al                
0x006BA9E3:  add      ecx, dword ptr [eax]              
0x006BA9E5:  or       byte ptr [eax], cl                
0x006BA9E7:  or       byte ptr [eax], cl                
0x006BA9E9:  or       byte ptr [eax - 0x3333f8fa], al   
0x006BA9F0:  push     ebp                               
0x006BA9F1:  mov      ebp, esp                          
0x006BA9F3:  call     0x6a0cf0                          
0x006BA9F8:  mov      dword ptr [0xb75268], eax         
0x006BA9FD:  mov      dword ptr [0xb7526c], edx         
0x006BAA03:  mov      eax, dword ptr [0xb752c0]         
0x006BAA08:  mov      ecx, dword ptr [eax + 4]          
0x006BAA0B:  push     ecx                               
0x006BAA0C:  call     0x6bb000                          
0x006BAA11:  add      esp, 4                            
0x006BAA14:  pop      ebp                               
0x006BAA15:  ret                                        
0x006BAA16:  int3                                       
0x006BAA17:  int3                                       
0x006BAA18:  int3                                       
0x006BAA19:  int3                                       
0x006BAA1A:  int3                                       
0x006BAA1B:  int3                                       
0x006BAA1C:  int3                                       
0x006BAA1D:  int3                                       
0x006BAA1E:  int3                                       
0x006BAA1F:  int3                                       
0x006BAA20:  push     ebp                               
0x006BAA21:  mov      ebp, esp                          
0x006BAA23:  push     5                                 
0x006BAA25:  push     4                                 
0x006BAA27:  push     2                                 
0x006BAA29:  push     0                                 
0x006BAA2B:  push     0x32                              
0x006BAA2D:  call     0x6b4270                          
0x006BAA32:  add      esp, 0x14                         
0x006BAA35:  push     0                                 
0x006BAA37:  push     0                                 
0x006BAA39:  call     0x6b40e0                          
0x006BAA3E:  add      esp, 8                            
0x006BAA41:  mov      dword ptr [0xb752c4], 0           
0x006BAA4B:  pop      ebp                               
0x006BAA4C:  ret                                        
0x006BAA4D:  int3                                       
0x006BAA4E:  int3                                       
0x006BAA4F:  int3                                       
0x006BAA50:  push     ebp                               
0x006BAA51:  mov      ebp, esp                          
0x006BAA53:  mov      eax, dword ptr [0xb752c8]         
0x006BAA58:  cmp      dword ptr [eax + 0x74], 0         
0x006BAA5C:  je       0x6baa70                          
0x006BAA5E:  mov      ecx, dword ptr [0xb752c8]         
0x006BAA64:  mov      edx, dword ptr [0xb752c8]         
0x006BAA6A:  mov      eax, dword ptr [edx + 0x74]       
0x006BAA6D:  mov      dword ptr [ecx + 0x70], eax       
0x006BAA70:  push     5                                 
0x006BAA72:  push     4                                 
0x006BAA74:  push     2                                 
0x006BAA76:  push     0                                 
0x006BAA78:  push     0x38                              
0x006BAA7A:  call     0x6b4270                          
0x006BAA7F:  add      esp, 0x14                         
0x006BAA82:  push     0                                 
0x006BAA84:  push     0                                 
0x006BAA86:  call     0x6b40e0                          
0x006BAA8B:  add      esp, 8                            
0x006BAA8E:  pop      ebp                               
0x006BAA8F:  ret                                        
0x006BAA90:  push     ebp                               
0x006BAA91:  mov      ebp, esp                          
0x006BAA93:  push     0                                 
0x006BAA95:  push     5                                 
0x006BAA97:  push     0x3f                              
0x006BAA99:  call     0x6b4270                          
0x006BAA9E:  add      esp, 0xc                          
0x006BAAA1:  push     0                                 
0x006BAAA3:  push     0                                 
0x006BAAA5:  call     0x6b40e0                          
0x006BAAAA:  add      esp, 8                            
0x006BAAAD:  mov      dword ptr [0xb752c4], 0           
0x006BAAB7:  pop      ebp                               
0x006BAAB8:  ret                                        
0x006BAAB9:  int3                                       
0x006BAABA:  int3                                       
0x006BAABB:  int3                                       
0x006BAABC:  int3                                       
0x006BAABD:  int3                                       
0x006BAABE:  int3                                       
0x006BAABF:  int3                                       
0x006BAAC0:  push     ebp                               
0x006BAAC1:  mov      ebp, esp                          
0x006BAAC3:  cmp      dword ptr [0xb75350], 0           
0x006BAACA:  je       0x6baaea                          
0x006BAACC:  mov      eax, dword ptr [0xb75350]         
0x006BAAD1:  cmp      dword ptr [eax + 0x2c9c], 3       
0x006BAAD8:  jne      0x6baaea                          
0x006BAADA:  mov      ecx, dword ptr [0xb75350]         
0x006BAAE0:  mov      dword ptr [ecx + 0x2c9c], 0       
0x006BAAEA:  push     5                                 
0x006BAAEC:  push     4                                 
0x006BAAEE:  push     2                                 
0x006BAAF0:  push     0                                 
0x006BAAF2:  push     0x32                              
0x006BAAF4:  call     0x6b4270                          
0x006BAAF9:  add      esp, 0x14                         
0x006BAAFC:  push     0                                 
0x006BAAFE:  push     0                                 
0x006BAB00:  call     0x6b40e0                          
0x006BAB05:  add      esp, 8                            
0x006BAB08:  mov      dword ptr [0xb752c4], 0           
0x006BAB12:  pop      ebp                               
0x006BAB13:  ret                                        
0x006BAB14:  int3                                       
0x006BAB15:  int3                                       
0x006BAB16:  int3                                       
0x006BAB17:  int3                                       
0x006BAB18:  int3                                       
0x006BAB19:  int3                                       
0x006BAB1A:  int3                                       
0x006BAB1B:  int3                                       
0x006BAB1C:  int3                                       
0x006BAB1D:  int3                                       
0x006BAB1E:  int3                                       
0x006BAB1F:  int3                                       
0x006BAB20:  push     ebp                               
0x006BAB21:  mov      ebp, esp                          
0x006BAB23:  push     0                                 
0x006BAB25:  push     5                                 
0x006BAB27:  push     0x43                              
0x006BAB29:  call     0x6b4270                          
0x006BAB2E:  add      esp, 0xc                          
0x006BAB31:  mov      dword ptr [0xb752c4], 0           
0x006BAB3B:  pop      ebp                               
0x006BAB3C:  ret                                        
0x006BAB3D:  int3                                       
0x006BAB3E:  int3                                       
0x006BAB3F:  int3                                       
0x006BAB40:  push     ebp                               
0x006BAB41:  mov      ebp, esp                          
0x006BAB43:  sub      esp, 0x114                        
0x006BAB49:  mov      eax, dword ptr [0xb089c8]         
0x006BAB4E:  xor      eax, ebp                          
0x006BAB50:  mov      dword ptr [ebp - 0x10], eax       
0x006BAB53:  mov      eax, dword ptr [ebp + 8]          
0x006BAB56:  imul     eax, eax, 0xdc                    
0x006BAB5C:  add      eax, dword ptr [0xb75350]         
0x006BAB62:  mov      dword ptr [ebp - 0x114], eax      
0x006BAB68:  mov      dword ptr [ebp - 4], 0            
0x006BAB6F:  mov      dword ptr [ebp - 8], 0            
0x006BAB76:  mov      ecx, dword ptr [ebp + 8]          
0x006BAB79:  mov      edx, dword ptr [0xb752b8]         
0x006BAB7F:  mov      eax, dword ptr [edx + ecx*4 + 0x2a4]
0x006BAB86:  mov      dword ptr [ebp - 0xc], eax        
0x006BAB89:  mov      ecx, dword ptr [0xb752b8]         
0x006BAB8F:  mov      dword ptr [ecx + 0x1210], 0       
0x006BAB99:  mov      edx, dword ptr [0xb752b8]         
0x006BAB9F:  mov      dword ptr [edx + 0x100c], 0       
0x006BABA9:  mov      eax, dword ptr [ebp - 0xc]        
0x006BABAC:  mov      ecx, dword ptr [eax + 8]          
0x006BABAF:  push     ecx                               
0x006BABB0:  mov      edx, dword ptr [ebp - 0xc]        
0x006BABB3:  mov      eax, dword ptr [edx + 4]          
0x006BABB6:  push     eax                               
0x006BABB7:  push     0x3061cc88                        
0x006BABBC:  call     0x6b3390                          
0x006BABC1:  add      esp, 4                            
0x006BABC4:  push     eax                               
0x006BABC5:  push     0x99b760                           ; "%S %2d / %2d"
0x006BABCA:  lea      ecx, [ebp - 0x110]                
0x006BABD0:  push     ecx                               
0x006BABD1:  call     0x691980                          
0x006BABD6:  add      esp, 0x14                         
0x006BABD9:  lea      edx, [ebp - 0x110]                
0x006BABDF:  push     edx                               
0x006BABE0:  call     0x6b3560                          
0x006BABE5:  add      esp, 4                            
0x006BABE8:  mov      eax, dword ptr [ebp - 8]          
0x006BABEB:  add      eax, 1                            
0x006BABEE:  mov      dword ptr [ebp - 8], eax          
0x006BABF1:  mov      ecx, dword ptr [ebp - 0xc]        
0x006BABF4:  cmp      dword ptr [ecx], 3                
0x006BABF7:  jne      0x6bac8e                          
0x006BABFD:  mov      edx, dword ptr [ebp - 0x114]      
0x006BAC03:  add      edx, 0x90                         
0x006BAC09:  mov      dword ptr [ebp - 4], edx          
0x006BAC0C:  mov      eax, dword ptr [ebp - 4]          
0x006BAC0F:  mov      ecx, dword ptr [eax + 8]          
0x006BAC12:  push     ecx                               
0x006BAC13:  push     0x3d22ea51                        
0x006BAC18:  call     0x6b3390                          
0x006BAC1D:  add      esp, 4                            
0x006BAC20:  push     eax                               
0x006BAC21:  push     0x99b758                           ; "%S %d"
0x006BAC26:  lea      edx, [ebp - 0x110]                
0x006BAC2C:  push     edx                               
0x006BAC2D:  call     0x691980                          
0x006BAC32:  add      esp, 0x10                         
0x006BAC35:  lea      eax, [ebp - 0x110]                
0x006BAC3B:  push     eax                               
0x006BAC3C:  call     0x6b3560                          
0x006BAC41:  add      esp, 4                            
0x006BAC44:  mov      ecx, dword ptr [ebp - 8]          
0x006BAC47:  add      ecx, 1                            
0x006BAC4A:  mov      dword ptr [ebp - 8], ecx          
0x006BAC4D:  mov      edx, dword ptr [ebp - 4]          
0x006BAC50:  mov      eax, dword ptr [edx + 0x18]       
0x006BAC53:  push     eax                               
0x006BAC54:  push     0x39e3f7e6                        
0x006BAC59:  call     0x6b3390                          
0x006BAC5E:  add      esp, 4                            
0x006BAC61:  push     eax                               
0x006BAC62:  push     0x99b758                           ; "%S %d"
0x006BAC67:  lea      ecx, [ebp - 0x110]                
0x006BAC6D:  push     ecx                               
0x006BAC6E:  call     0x691980                          
0x006BAC73:  add      esp, 0x10                         
0x006BAC76:  lea      edx, [ebp - 0x110]                
0x006BAC7C:  push     edx                               
0x006BAC7D:  call     0x6b3560                          
0x006BAC82:  add      esp, 4                            
0x006BAC85:  mov      eax, dword ptr [ebp - 8]          
0x006BAC88:  add      eax, 1                            
0x006BAC8B:  mov      dword ptr [ebp - 8], eax          
0x006BAC8E:  push     0                                 
0x006BAC90:  push     -1                                
0x006BAC92:  mov      ecx, dword ptr [0xb752b8]         
0x006BAC98:  add      ecx, 0x1010                       
0x006BAC9E:  push     ecx                               
0x006BAC9F:  mov      edx, dword ptr [ebp - 8]          
0x006BACA2:  push     edx                               
0x006BACA3:  push     0                                 
0x006BACA5:  push     5                                 
0x006BACA7:  call     0x6b3990                          
0x006BACAC:  add      esp, 0x18                         
0x006BACAF:  mov      ecx, dword ptr [ebp - 0x10]       
0x006BACB2:  xor      ecx, ebp                          
0x006BACB4:  call     0x8eac64                          
0x006BACB9:  mov      esp, ebp                          
0x006BACBB:  pop      ebp                               
0x006BACBC:  ret                                        
0x006BACBD:  int3                                       
0x006BACBE:  int3                                       
0x006BACBF:  int3                                       
0x006BACC0:  push     ebp                               
0x006BACC1:  mov      ebp, esp                          
0x006BACC3:  sub      esp, 0x18                         
0x006BACC6:  mov      dword ptr [ebp - 4], 0            
0x006BACCD:  mov      eax, dword ptr [0xb752c4]         
0x006BACD2:  mov      dword ptr [ebp - 0xc], eax        
0x006BACD5:  mov      ecx, dword ptr [0xb752c8]         
0x006BACDB:  cmp      dword ptr [ecx + 0x60], 0         
0x006BACDF:  jne      0x6bae06                          
0x006BACE5:  mov      edx, dword ptr [0xb75350]         
0x006BACEB:  mov      eax, dword ptr [edx + 0x1130]     
0x006BACF1:  mov      dword ptr [ebp - 0x18], eax       
0x006BACF4:  mov      ecx, dword ptr [ebp - 0xc]        
0x006BACF7:  mov      edx, dword ptr [ebp - 0x18]       
0x006BACFA:  mov      dword ptr [ecx], edx              
0x006BACFC:  mov      eax, dword ptr [0xb752b8]         
0x006BAD01:  mov      ecx, dword ptr [ebp - 0xc]        
0x006BAD04:  mov      edx, dword ptr [ecx]              
0x006BAD06:  mov      dword ptr [eax + 0x2f4], edx      
0x006BAD0C:  mov      dword ptr [ebp - 8], 0            
0x006BAD13:  jmp      0x6bad1e                          
0x006BAD15:  mov      eax, dword ptr [ebp - 8]          
0x006BAD18:  add      eax, 1                            
0x006BAD1B:  mov      dword ptr [ebp - 8], eax          
0x006BAD1E:  mov      ecx, dword ptr [0xb752b8]         
0x006BAD24:  mov      edx, dword ptr [ebp - 8]          
0x006BAD27:  cmp      edx, dword ptr [ecx + 0x2f4]      
0x006BAD2D:  jge      0x6badf2                          
0x006BAD33:  mov      eax, dword ptr [ebp - 8]          
0x006BAD36:  imul     eax, eax, 0xdc                    
0x006BAD3C:  add      eax, dword ptr [0xb75350]         
0x006BAD42:  mov      dword ptr [ebp - 0x14], eax       
0x006BAD45:  mov      ecx, dword ptr [ebp - 8]          
0x006BAD48:  imul     ecx, ecx, 0x54                    
0x006BAD4B:  mov      edx, dword ptr [0xb75350]         
0x006BAD51:  lea      eax, [edx + ecx + 0x25d8]         
0x006BAD58:  mov      dword ptr [ebp - 0x10], eax       
0x006BAD5B:  mov      ecx, dword ptr [ebp - 8]          
0x006BAD5E:  mov      edx, dword ptr [0xb752b8]         
0x006BAD64:  mov      eax, dword ptr [ebp - 0x10]       
0x006BAD67:  mov      dword ptr [edx + ecx*4 + 0x2a4], eax
0x006BAD6E:  mov      ecx, dword ptr [ebp - 0x10]       
0x006BAD71:  mov      edx, dword ptr [ebp - 0x14]       
0x006BAD74:  mov      eax, dword ptr [edx + 0x8c]       
0x006BAD7A:  mov      dword ptr [ecx + 4], eax          
0x006BAD7D:  mov      ecx, dword ptr [ebp - 0x10]       
0x006BAD80:  mov      edx, dword ptr [ebp - 0x14]       
0x006BAD83:  mov      eax, dword ptr [edx + 0x88]       
0x006BAD89:  mov      dword ptr [ecx + 8], eax          
0x006BAD8C:  mov      ecx, dword ptr [ebp - 0x10]       
0x006BAD8F:  mov      dword ptr [ecx], 3                
0x006BAD95:  push     0x80                              
0x006BAD9A:  mov      edx, dword ptr [ebp - 0x14]       
0x006BAD9D:  push     edx                               
0x006BAD9E:  mov      eax, dword ptr [ebp - 0x10]       
0x006BADA1:  add      eax, 0xc                          
0x006BADA4:  push     eax                               
0x006BADA5:  call     0x694a10                          
0x006BADAA:  add      esp, 0xc                          
0x006BADAD:  mov      ecx, dword ptr [ebp - 0x14]       
0x006BADB0:  push     ecx                               
0x006BADB1:  mov      edx, dword ptr [ebp - 8]          
0x006BADB4:  shl      edx, 8                            
0x006BADB7:  mov      eax, dword ptr [0xb75350]         
0x006BADBC:  lea      ecx, [eax + edx + 0x1134]         
0x006BADC3:  push     ecx                               
0x006BADC4:  call     0x691980                          
0x006BADC9:  add      esp, 8                            
0x006BADCC:  mov      edx, dword ptr [ebp - 8]          
0x006BADCF:  shl      edx, 8                            
0x006BADD2:  mov      eax, dword ptr [0xb75350]         
0x006BADD7:  lea      ecx, [eax + edx + 0x1134]         
0x006BADDE:  mov      edx, dword ptr [ebp - 8]          
0x006BADE1:  mov      eax, dword ptr [0xb75350]         
0x006BADE6:  mov      dword ptr [eax + edx*4 + 0x2534], ecx
0x006BADED:  jmp      0x6bad15                          
0x006BADF2:  mov      dword ptr [ebp - 4], 2            
0x006BADF9:  mov      ecx, dword ptr [0xb752c8]         
0x006BADFF:  mov      dword ptr [ecx + 0x60], 1         
0x006BAE06:  mov      edx, dword ptr [ebp - 0xc]        
0x006BAE09:  cmp      dword ptr [edx], 0                
0x006BAE0C:  jne      0x6bae24                          
0x006BAE0E:  push     0x8f3e463f                        
0x006BAE13:  push     0                                 
0x006BAE15:  call     0x6b40e0                          
0x006BAE1A:  add      esp, 8                            
0x006BAE1D:  call     0x6b4150                          
0x006BAE22:  jmp      0x6bae79                          
0x006BAE24:  cmp      dword ptr [ebp - 4], 0            
0x006BAE28:  je       0x6bae3b                          
0x006BAE2A:  push     0                                 
0x006BAE2C:  push     0                                 
0x006BAE2E:  call     0x6b40e0                          
0x006BAE33:  add      esp, 8                            
0x006BAE36:  call     0x6b4150                          
0x006BAE3B:  mov      eax, dword ptr [0xb752c0]         
0x006BAE40:  mov      ecx, dword ptr [eax + 4]          
0x006BAE43:  push     ecx                               
0x006BAE44:  call     0x6bab40                          
0x006BAE49:  add      esp, 4                            
0x006BAE4C:  push     0                                 
0x006BAE4E:  mov      edx, dword ptr [0xb752c0]         
0x006BAE54:  mov      eax, dword ptr [edx + 4]          
0x006BAE57:  push     eax                               
0x006BAE58:  mov      ecx, dword ptr [0xb75350]         
0x006BAE5E:  add      ecx, 0x2534                       
0x006BAE64:  push     ecx                               
0x006BAE65:  mov      edx, dword ptr [ebp - 0xc]        
0x006BAE68:  mov      eax, dword ptr [edx]              
0x006BAE6A:  push     eax                               
0x006BAE6B:  mov      ecx, dword ptr [ebp - 4]          
0x006BAE6E:  push     ecx                               
0x006BAE6F:  push     4                                 
0x006BAE71:  call     0x6b3990                          
0x006BAE76:  add      esp, 0x18                         
0x006BAE79:  mov      esp, ebp                          
0x006BAE7B:  pop      ebp                               
0x006BAE7C:  ret                                        
0x006BAE7D:  int3                                       
0x006BAE7E:  int3                                       
0x006BAE7F:  int3                                       
0x006BAE80:  push     ebp                               
0x006BAE81:  mov      ebp, esp                          
0x006BAE83:  push     ecx                               
0x006BAE84:  cmp      dword ptr [0xb752e0], 0           
0x006BAE8B:  je       0x6baec1                          
0x006BAE8D:  mov      ecx, dword ptr [0xb752e0]         
0x006BAE93:  call     0x6be840                          
0x006BAE98:  mov      ecx, dword ptr [0xb752e0]         
0x006BAE9E:  mov      dword ptr [ecx + 0x2c], eax       
0x006BAEA1:  mov      edx, dword ptr [0xb752e0]         
0x006BAEA7:  mov      eax, dword ptr [edx + 0x2c]       
0x006BAEAA:  mov      dword ptr [ebp - 4], eax          
0x006BAEAD:  cmp      dword ptr [0xb75360], 0           
0x006BAEB4:  je       0x6baec1                          
0x006BAEB6:  mov      ecx, dword ptr [0xb75360]         
0x006BAEBC:  call     0x6c1d10                          
0x006BAEC1:  mov      esp, ebp                          
0x006BAEC3:  pop      ebp                               
0x006BAEC4:  ret                                        
0x006BAEC5:  int3                                       
0x006BAEC6:  int3                                       
0x006BAEC7:  int3                                       
0x006BAEC8:  int3                                       
0x006BAEC9:  int3                                       
0x006BAECA:  int3                                       
0x006BAECB:  int3                                       
0x006BAECC:  int3                                       
0x006BAECD:  int3                                       
0x006BAECE:  int3                                       
0x006BAECF:  int3                                       
0x006BAED0:  push     ebp                               
0x006BAED1:  mov      ebp, esp                          
0x006BAED3:  cmp      dword ptr [0xb752e0], 0           
0x006BAEDA:  jne      0x6baede                          
0x006BAEDC:  jmp      0x6baf13                          
0x006BAEDE:  mov      eax, dword ptr [0xb752e0]         
0x006BAEE3:  cmp      dword ptr [eax + 0x18], 0         
0x006BAEE7:  je       0x6baf13                          
0x006BAEE9:  mov      ecx, dword ptr [0xb752e0]         
0x006BAEEF:  xor      edx, edx                          
0x006BAEF1:  cmp      dword ptr [ecx + 0x24], 1         
0x006BAEF5:  sete     dl                                
0x006BAEF8:  test     edx, edx                          
0x006BAEFA:  jne      0x6baf13                          
0x006BAEFC:  mov      ecx, dword ptr [0xb752e0]         
0x006BAF02:  call     0x6be5f0                          
0x006BAF07:  mov      eax, dword ptr [0xb752e0]         
0x006BAF0C:  mov      dword ptr [eax + 0x18], 0         
0x006BAF13:  pop      ebp                               
0x006BAF14:  ret                                        
0x006BAF15:  int3                                       
0x006BAF16:  int3                                       
0x006BAF17:  int3                                       
0x006BAF18:  int3                                       
0x006BAF19:  int3                                       
0x006BAF1A:  int3                                       
0x006BAF1B:  int3                                       
0x006BAF1C:  int3                                       
0x006BAF1D:  int3                                       
0x006BAF1E:  int3                                       
0x006BAF1F:  int3                                       
0x006BAF20:  push     ebp                               
0x006BAF21:  mov      ebp, esp                          
0x006BAF23:  sub      esp, 0x18                         
0x006BAF26:  mov      eax, dword ptr [0xb752c8]         
0x006BAF2B:  mov      dword ptr [eax + 0x4c], 0         
0x006BAF32:  mov      ecx, dword ptr [0xb752c8]         
0x006BAF38:  mov      dword ptr [ecx + 0x282c], 0       
0x006BAF42:  mov      edx, dword ptr [0xb75350]         
0x006BAF48:  mov      dword ptr [ebp - 8], edx          
0x006BAF4B:  mov      eax, dword ptr [ebp - 8]          
0x006BAF4E:  mov      dword ptr [ebp - 4], eax          
0x006BAF51:  cmp      dword ptr [ebp - 4], 0            
0x006BAF55:  je       0x6baf7d                          
0x006BAF57:  mov      ecx, dword ptr [ebp - 4]          
0x006BAF5A:  call     0x6bebe0                          
0x006BAF5F:  mov      ecx, 1                            
0x006BAF64:  and      ecx, 1                            
0x006BAF67:  je       0x6baf75                          
0x006BAF69:  mov      edx, dword ptr [ebp - 4]          
0x006BAF6C:  push     edx                               
0x006BAF6D:  call     0x688fb0                          
0x006BAF72:  add      esp, 4                            
0x006BAF75:  mov      eax, dword ptr [ebp - 4]          
0x006BAF78:  mov      dword ptr [ebp - 0x14], eax       
0x006BAF7B:  jmp      0x6baf84                          
0x006BAF7D:  mov      dword ptr [ebp - 0x14], 0         
0x006BAF84:  mov      dword ptr [0xb75350], 0           
0x006BAF8E:  xor      ecx, ecx                          
0x006BAF90:  jne      0x6baf42                          
0x006BAF92:  mov      edx, dword ptr [0xb752e0]         
0x006BAF98:  mov      dword ptr [ebp - 0x10], edx       
0x006BAF9B:  mov      eax, dword ptr [ebp - 0x10]       
0x006BAF9E:  mov      dword ptr [ebp - 0xc], eax        
0x006BAFA1:  cmp      dword ptr [ebp - 0xc], 0          
0x006BAFA5:  je       0x6bafcd                          
0x006BAFA7:  mov      ecx, dword ptr [ebp - 0xc]        
0x006BAFAA:  call     0x6bdb10                          
0x006BAFAF:  mov      ecx, 1                            
0x006BAFB4:  and      ecx, 1                            
0x006BAFB7:  je       0x6bafc5                          
0x006BAFB9:  mov      edx, dword ptr [ebp - 0xc]        
0x006BAFBC:  push     edx                               
0x006BAFBD:  call     0x688fb0                          
0x006BAFC2:  add      esp, 4                            
0x006BAFC5:  mov      eax, dword ptr [ebp - 0xc]        
0x006BAFC8:  mov      dword ptr [ebp - 0x18], eax       
0x006BAFCB:  jmp      0x6bafd4                          
0x006BAFCD:  mov      dword ptr [ebp - 0x18], 0         
0x006BAFD4:  mov      dword ptr [0xb752e0], 0           
0x006BAFDE:  xor      ecx, ecx                          
0x006BAFE0:  jne      0x6baf92                          
0x006BAFE2:  mov      edx, dword ptr [0xb752c8]         
0x006BAFE8:  mov      dword ptr [edx + 0x68], 1         
0x006BAFEF:  mov      esp, ebp                          
0x006BAFF1:  pop      ebp                               
0x006BAFF2:  ret                                        
0x006BAFF3:  int3                                       
0x006BAFF4:  int3                                       
0x006BAFF5:  int3                                       
0x006BAFF6:  int3                                       
0x006BAFF7:  int3                                       
0x006BAFF8:  int3                                       
0x006BAFF9:  int3                                       
0x006BAFFA:  int3                                       
0x006BAFFB:  int3                                       
0x006BAFFC:  int3                                       
0x006BAFFD:  int3                                       
0x006BAFFE:  int3                                       
0x006BAFFF:  int3                                       
0x006BB000:  push     ebp                               
0x006BB001:  mov      ebp, esp                          
0x006BB003:  push     ecx                               
0x006BB004:  push     0xb01f88                          
0x006BB009:  call     0x6b3e70                          
0x006BB00E:  add      esp, 4                            
0x006BB011:  push     5                                 
0x006BB013:  push     4                                 
0x006BB015:  push     2                                 
0x006BB017:  push     0                                 
0x006BB019:  push     0x2b                              
0x006BB01B:  call     0x6b4270                          
0x006BB020:  add      esp, 0x14                         
0x006BB023:  push     0x3f0e996a                        
0x006BB028:  push     0                                 
0x006BB02A:  call     0x6b40e0                          
0x006BB02F:  add      esp, 8                            
0x006BB032:  cmp      dword ptr [0xb752b8], 0           
0x006BB039:  je       0x6bb04b                          
0x006BB03B:  mov      eax, dword ptr [0xb752b8]         
0x006BB040:  mov      ecx, dword ptr [ebp + 8]          
0x006BB043:  cmp      ecx, dword ptr [eax + 0x2f4]      
0x006BB049:  jl       0x6bb04d                          
0x006BB04B:  jmp      0x6bb0ac                          
0x006BB04D:  mov      edx, dword ptr [ebp + 8]          
0x006BB050:  imul     edx, edx, 0xdc                    
0x006BB056:  mov      eax, dword ptr [0xb75350]         
0x006BB05B:  lea      ecx, [eax + edx + 0x90]           
0x006BB062:  mov      dword ptr [ebp - 4], ecx          
0x006BB065:  push     0x4c                              
0x006BB067:  mov      edx, dword ptr [ebp - 4]          
0x006BB06A:  push     edx                               
0x006BB06B:  mov      eax, dword ptr [0xb752b8]         
0x006BB070:  add      eax, 0x54                         
0x006BB073:  push     eax                               
0x006BB074:  call     0x497f80                          
0x006BB079:  add      esp, 0xc                          
0x006BB07C:  mov      ecx, dword ptr [0xb752c0]         
0x006BB082:  mov      edx, dword ptr [ebp + 8]          
0x006BB085:  mov      dword ptr [ecx + 4], edx          
0x006BB088:  push     5                                 
0x006BB08A:  push     4                                 
0x006BB08C:  push     2                                 
0x006BB08E:  push     0                                 
0x006BB090:  push     0x2b                              
0x006BB092:  call     0x6b4270                          
0x006BB097:  add      esp, 0x14                         
0x006BB09A:  push     0x3f0e996a                        
0x006BB09F:  push     0x1f4                             
0x006BB0A4:  call     0x6b40e0                          
0x006BB0A9:  add      esp, 8                            
0x006BB0AC:  mov      esp, ebp                          
0x006BB0AE:  pop      ebp                               
0x006BB0AF:  ret                                        
0x006BB0B0:  push     ebp                               
0x006BB0B1:  mov      ebp, esp                          
0x006BB0B3:  xor      eax, eax                          
0x006BB0B5:  jne      0x6bb0b3                          
0x006BB0B7:  pop      ebp                               
0x006BB0B8:  ret                                        
0x006BB0B9:  int3                                       
0x006BB0BA:  int3                                       
0x006BB0BB:  int3                                       
0x006BB0BC:  int3                                       
0x006BB0BD:  int3                                       
0x006BB0BE:  int3                                       
0x006BB0BF:  int3                                       
0x006BB0C0:  push     ebp                               
0x006BB0C1:  mov      ebp, esp                          
0x006BB0C3:  cmp      dword ptr [0xb752b8], 0           
0x006BB0CA:  je       0x6bb0dc                          
0x006BB0CC:  mov      eax, dword ptr [0xb752b8]         
0x006BB0D1:  mov      ecx, dword ptr [ebp + 8]          
0x006BB0D4:  cmp      ecx, dword ptr [eax + 0x2f4]      
0x006BB0DA:  jl       0x6bb0e0                          
0x006BB0DC:  xor      eax, eax                          
0x006BB0DE:  jmp      0x6bb0f1                          
0x006BB0E0:  mov      edx, dword ptr [ebp + 8]          
0x006BB0E3:  mov      eax, dword ptr [0xb752b8]         
0x006BB0E8:  mov      ecx, dword ptr [eax + edx*4 + 0x2a4]
0x006BB0EF:  mov      eax, dword ptr [ecx]              
0x006BB0F1:  pop      ebp                               
0x006BB0F2:  ret                                        
0x006BB0F3:  int3                                       
0x006BB0F4:  int3                                       
0x006BB0F5:  int3                                       
0x006BB0F6:  int3                                       
0x006BB0F7:  int3                                       
0x006BB0F8:  int3                                       
0x006BB0F9:  int3                                       
0x006BB0FA:  int3                                       
0x006BB0FB:  int3                                       
0x006BB0FC:  int3                                       
0x006BB0FD:  int3                                       
0x006BB0FE:  int3                                       
0x006BB0FF:  int3                                       
0x006BB100:  push     ebp                               
0x006BB101:  mov      ebp, esp                          
0x006BB103:  mov      eax, dword ptr [ebp + 8]          
0x006BB106:  mov      eax, dword ptr [eax]              
0x006BB108:  pop      ebp                               
0x006BB109:  ret                                        
0x006BB10A:  int3                                       
0x006BB10B:  int3                                       
0x006BB10C:  int3                                       
0x006BB10D:  int3                                       
0x006BB10E:  int3                                       
0x006BB10F:  int3                                       
0x006BB110:  push     ebp                               
0x006BB111:  mov      ebp, esp                          
0x006BB113:  cmp      dword ptr [ebp + 8], 0            
0x006BB117:  je       0x6bb133                          
0x006BB119:  mov      eax, dword ptr [ebp + 8]          
0x006BB11C:  cmp      dword ptr [eax], 3                
0x006BB11F:  jne      0x6bb133                          
0x006BB121:  mov      ecx, dword ptr [ebp + 8]          
0x006BB124:  cmp      dword ptr [ecx + 0x50], 0         
0x006BB128:  je       0x6bb133                          
0x006BB12A:  mov      eax, 1                            
0x006BB12F:  jmp      0x6bb135                          
0x006BB131:  jmp      0x6bb135                          
0x006BB133:  xor      eax, eax                          
0x006BB135:  pop      ebp                               
0x006BB136:  ret                                        
0x006BB137:  int3                                       
0x006BB138:  int3                                       
0x006BB139:  int3                                       
0x006BB13A:  int3                                       
0x006BB13B:  int3                                       
0x006BB13C:  int3                                       
0x006BB13D:  int3                                       
0x006BB13E:  int3                                       
0x006BB13F:  int3                                       
0x006BB140:  push     ebp                               
0x006BB141:  mov      ebp, esp                          
0x006BB143:  cmp      dword ptr [ebp + 8], 0            
0x006BB147:  je       0x6bb15b                          
0x006BB149:  mov      eax, dword ptr [ebp + 8]          
0x006BB14C:  cmp      dword ptr [eax], 3                
0x006BB14F:  jne      0x6bb15b                          
0x006BB151:  mov      eax, dword ptr [ebp + 8]          
0x006BB154:  add      eax, 0xc                          
0x006BB157:  jmp      0x6bb15d                          
0x006BB159:  jmp      0x6bb15d                          
0x006BB15B:  xor      eax, eax                          
0x006BB15D:  pop      ebp                               
0x006BB15E:  ret                                        
0x006BB15F:  int3                                       
0x006BB160:  push     ebp                               
0x006BB161:  mov      ebp, esp                          
0x006BB163:  sub      esp, 0x5c                         
0x006BB166:  mov      dword ptr [ebp - 0xc], 0          
0x006BB16D:  call     0x6bae80                          
0x006BB172:  mov      eax, dword ptr [0xb752c8]         
0x006BB177:  mov      ecx, dword ptr [eax + 4]          
0x006BB17A:  mov      dword ptr [ebp - 0x40], ecx       
0x006BB17D:  mov      edx, dword ptr [ebp - 0x40]       
0x006BB180:  sub      edx, 0x2a                         
0x006BB183:  mov      dword ptr [ebp - 0x40], edx       
0x006BB186:  cmp      dword ptr [ebp - 0x40], 0xb1      
0x006BB18D:  ja       0x6bbe46                          
0x006BB193:  mov      eax, dword ptr [ebp - 0x40]       
0x006BB196:  movzx    ecx, byte ptr [eax + 0x6bbeb4]    
0x006BB19D:  jmp      dword ptr [ecx*4 + 0x6bbe50]      
0x006BB1A4:  jmp      0x6bbe46                          
0x006BB1A9:  call     0x6c30b0                          
0x006BB1AE:  mov      edx, dword ptr [0xb752c8]         
0x006BB1B4:  mov      eax, dword ptr [0xb752b8]         
0x006BB1B9:  mov      ecx, dword ptr [eax + 0x34c]      
0x006BB1BF:  mov      dword ptr [edx + 0xc0], ecx       
0x006BB1C5:  call     0x6b3de0                          
0x006BB1CA:  call     0x6c3400                          
0x006BB1CF:  mov      edx, dword ptr [0xb752c8]         
0x006BB1D5:  mov      dword ptr [edx + 0x6c], 0         
0x006BB1DC:  mov      eax, dword ptr [0xb752c8]         
0x006BB1E1:  mov      dword ptr [eax + 0x68], 1         
0x006BB1E8:  mov      ecx, dword ptr [0xb752c8]         
0x006BB1EE:  mov      dword ptr [ecx + 0x70], 0         
0x006BB1F5:  mov      edx, dword ptr [0xb752c8]         
0x006BB1FB:  mov      dword ptr [edx + 0x60], 0         
0x006BB202:  mov      dword ptr [0xb01e0c], 0           
0x006BB20C:  mov      dword ptr [0xb01e4c], 0           
0x006BB216:  cmp      dword ptr [0xb75350], 0           
0x006BB21D:  jne      0x6bb2c2                          
0x006BB223:  mov      eax, dword ptr [0xb752c8]         
0x006BB228:  cmp      dword ptr [eax + 0x54], 0         
0x006BB22C:  jne      0x6bb268                          
0x006BB22E:  mov      ecx, dword ptr [0xb752c8]         
0x006BB234:  mov      dword ptr [ecx + 0x60], 0         
0x006BB23B:  call     0x6b3de0                          
0x006BB240:  call     0x6baf20                          
0x006BB245:  push     1                                 
0x006BB247:  push     0x1f                              
0x006BB249:  push     3                                 
0x006BB24B:  push     0xe35a2a84                        
0x006BB250:  push     0                                 
0x006BB252:  push     0                                 
0x006BB254:  push     0                                 
0x006BB256:  push     0xd780cbb8                        
0x006BB25B:  call     0x6b4690                          
0x006BB260:  add      esp, 0x20                         
0x006BB263:  jmp      0x6bbe46                          
0x006BB268:  push     0                                 
0x006BB26A:  push     1                                 
0x006BB26C:  push     0                                 
0x006BB26E:  push     1                                 
0x006BB270:  push     0                                 
0x006BB272:  mov      edx, dword ptr [0xb01b28]         
0x006BB278:  push     edx                               
0x006BB279:  push     0x2ca8                            
0x006BB27E:  call     0x688fe0                          
0x006BB283:  add      esp, 0x1c                         
0x006BB286:  mov      dword ptr [ebp - 0x10], eax       
0x006BB289:  cmp      dword ptr [ebp - 0x10], 0         
0x006BB28D:  je       0x6bb29c                          
0x006BB28F:  mov      ecx, dword ptr [ebp - 0x10]       
0x006BB292:  call     0x6bea90                          
0x006BB297:  mov      dword ptr [ebp - 0x44], eax       
0x006BB29A:  jmp      0x6bb2a3                          
0x006BB29C:  mov      dword ptr [ebp - 0x44], 0         
0x006BB2A3:  mov      eax, dword ptr [ebp - 0x44]       
0x006BB2A6:  mov      dword ptr [0xb75350], eax         
0x006BB2AB:  cmp      dword ptr [0xb75350], 0           
0x006BB2B2:  je       0x6bb2c2                          
0x006BB2B4:  push     0                                 
0x006BB2B6:  push     0                                 
0x006BB2B8:  push     0x36                              
0x006BB2BA:  call     0x6b4270                          
0x006BB2BF:  add      esp, 0xc                          
0x006BB2C2:  jmp      0x6bbe46                          
0x006BB2C7:  push     0                                 
0x006BB2C9:  push     0                                 
0x006BB2CB:  push     0x3b                              
0x006BB2CD:  call     0x6b4270                          
0x006BB2D2:  add      esp, 0xc                          
0x006BB2D5:  mov      ecx, dword ptr [0xb75350]         
0x006BB2DB:  call     0x6bedd0                          
0x006BB2E0:  mov      dword ptr [ebp - 8], eax          
0x006BB2E3:  cmp      dword ptr [ebp - 8], 1            
0x006BB2E7:  jne      0x6bb2f9                          
0x006BB2E9:  push     0                                 
0x006BB2EB:  push     0                                 
0x006BB2ED:  push     0x33                              
0x006BB2EF:  call     0x6b4270                          
0x006BB2F4:  add      esp, 0xc                          
0x006BB2F7:  jmp      0x6bb309                          
0x006BB2F9:  push     0x1f                              
0x006BB2FB:  push     3                                 
0x006BB2FD:  mov      ecx, dword ptr [ebp - 8]          
0x006BB300:  push     ecx                               
0x006BB301:  call     0x6b69d0                          
0x006BB306:  add      esp, 0xc                          
0x006BB309:  jmp      0x6bbe46                          
0x006BB30E:  mov      edx, dword ptr [0xb752c8]         
0x006BB314:  add      edx, 0x28c0                       
0x006BB31A:  mov      dword ptr [ebp - 0x34], edx       
0x006BB31D:  mov      eax, dword ptr [ebp - 0x34]       
0x006BB320:  mov      dword ptr [eax], 0                
0x006BB326:  mov      dword ptr [eax + 4], 0            
0x006BB32D:  mov      ecx, dword ptr [0xb75350]         
0x006BB333:  call     0x6beed0                          
0x006BB338:  mov      dword ptr [ebp - 8], eax          
0x006BB33B:  call     0x6b3de0                          
0x006BB340:  cmp      dword ptr [ebp - 8], 1            
0x006BB344:  jne      0x6bb365                          
0x006BB346:  push     0                                 
0x006BB348:  push     0                                 
0x006BB34A:  push     0x34                              
0x006BB34C:  call     0x6b4270                          
0x006BB351:  add      esp, 0xc                          
0x006BB354:  push     0x98fb2d54                        
0x006BB359:  push     0x14                              
0x006BB35B:  call     0x6b40e0                          
0x006BB360:  add      esp, 8                            
0x006BB363:  jmp      0x6bb375                          
0x006BB365:  push     0x1f                              
0x006BB367:  push     3                                 
0x006BB369:  mov      ecx, dword ptr [ebp - 8]          
0x006BB36C:  push     ecx                               
0x006BB36D:  call     0x6b69d0                          
0x006BB372:  add      esp, 0xc                          
0x006BB375:  jmp      0x6bbe46                          
0x006BB37A:  mov      dword ptr [ebp - 0xc], 1          
0x006BB381:  push     0xb01e88                          
0x006BB386:  call     0x6b3e70                          
0x006BB38B:  add      esp, 4                            
0x006BB38E:  mov      ecx, dword ptr [0xb75350]         
0x006BB394:  call     0x6beed0                          
0x006BB399:  mov      dword ptr [ebp - 8], eax          
0x006BB39C:  cmp      dword ptr [ebp - 8], 1            
0x006BB3A0:  jne      0x6bb3a7                          
0x006BB3A2:  jmp      0x6bbe46                          
0x006BB3A7:  cmp      dword ptr [ebp - 8], 4            
0x006BB3AB:  jne      0x6bb3c0                          
0x006BB3AD:  push     0                                 
0x006BB3AF:  push     0                                 
0x006BB3B1:  push     0x35                              
0x006BB3B3:  call     0x6b4270                          
0x006BB3B8:  add      esp, 0xc                          
0x006BB3BB:  jmp      0x6bbe46                          
0x006BB3C0:  cmp      dword ptr [ebp - 8], 5            
0x006BB3C4:  jne      0x6bb426                          
0x006BB3C6:  mov      edx, dword ptr [0xb752c8]         
0x006BB3CC:  mov      dword ptr [edx + 0x60], 1         
0x006BB3D3:  call     0x6b3de0                          
0x006BB3D8:  mov      eax, dword ptr [0xb75350]         
0x006BB3DD:  mov      ecx, dword ptr [eax + 0x1130]     
0x006BB3E3:  mov      dword ptr [ebp - 0x38], ecx       
0x006BB3E6:  mov      edx, dword ptr [0xb752b8]         
0x006BB3EC:  mov      eax, dword ptr [ebp - 0x38]       
0x006BB3EF:  mov      dword ptr [edx + 0x2f4], eax      
0x006BB3F5:  mov      ecx, dword ptr [0xb752b8]         
0x006BB3FB:  cmp      dword ptr [ecx + 0x2f4], 0        
0x006BB402:  jne      0x6bb417                          
0x006BB404:  push     0                                 
0x006BB406:  push     0                                 
0x006BB408:  push     0x35                              
0x006BB40A:  call     0x6b4270                          
0x006BB40F:  add      esp, 0xc                          
0x006BB412:  jmp      0x6bbe46                          
0x006BB417:  push     0                                 
0x006BB419:  call     0x6bb000                          
0x006BB41E:  add      esp, 4                            
0x006BB421:  jmp      0x6bbe46                          
0x006BB426:  push     0x1f                              
0x006BB428:  push     3                                 
0x006BB42A:  mov      edx, dword ptr [ebp - 8]          
0x006BB42D:  push     edx                               
0x006BB42E:  call     0x6b69d0                          
0x006BB433:  add      esp, 0xc                          
0x006BB436:  jmp      0x6bbe46                          
0x006BB43B:  mov      dword ptr [ebp - 0xc], 1          
0x006BB442:  push     0                                 
0x006BB444:  push     0                                 
0x006BB446:  push     0x37                              
0x006BB448:  call     0x6b4270                          
0x006BB44D:  add      esp, 0xc                          
0x006BB450:  mov      eax, dword ptr [0xb752c8]         
0x006BB455:  cmp      dword ptr [eax + 0x68], 0         
0x006BB459:  jne      0x6bb485                          
0x006BB45B:  mov      ecx, dword ptr [0xb752c8]         
0x006BB461:  cmp      dword ptr [ecx + 0x74], 0         
0x006BB465:  je       0x6bb476                          
0x006BB467:  push     0xb01f08                          
0x006BB46C:  call     0x6b3e70                          
0x006BB471:  add      esp, 4                            
0x006BB474:  jmp      0x6bb483                          
0x006BB476:  push     0xb01ec8                          
0x006BB47B:  call     0x6b3e70                          
0x006BB480:  add      esp, 4                            
0x006BB483:  jmp      0x6bb4b6                          
0x006BB485:  mov      edx, dword ptr [0xb75350]         
0x006BB48B:  mov      eax, dword ptr [edx + 0x1130]     
0x006BB491:  mov      dword ptr [ebp - 0x3c], eax       
0x006BB494:  cmp      dword ptr [ebp - 0x3c], 0         
0x006BB498:  jne      0x6bb4a9                          
0x006BB49A:  push     0xb01e08                          
0x006BB49F:  call     0x6b3e70                          
0x006BB4A4:  add      esp, 4                            
0x006BB4A7:  jmp      0x6bb4b6                          
0x006BB4A9:  push     0xb01e48                          
0x006BB4AE:  call     0x6b3e70                          
0x006BB4B3:  add      esp, 4                            
0x006BB4B6:  call     0x6bacc0                          
0x006BB4BB:  jmp      0x6bbe46                          
0x006BB4C0:  call     0x6bacc0                          
0x006BB4C5:  jmp      0x6bbe46                          
0x006BB4CA:  call     0x6b3de0                          
0x006BB4CF:  mov      ecx, dword ptr [0xb752c8]         
0x006BB4D5:  mov      dword ptr [ecx + 0x60], 0         
0x006BB4DC:  mov      dword ptr [0xb01e0c], 0           
0x006BB4E6:  mov      dword ptr [0xb01e4c], 0           
0x006BB4F0:  mov      ecx, dword ptr [0xb75350]         
0x006BB4F6:  call     0x6bedd0                          
0x006BB4FB:  mov      dword ptr [ebp - 8], eax          
0x006BB4FE:  cmp      dword ptr [ebp - 8], 1            
0x006BB502:  jne      0x6bb514                          
0x006BB504:  push     0                                 
0x006BB506:  push     0                                 
0x006BB508:  push     0x33                              
0x006BB50A:  call     0x6b4270                          
0x006BB50F:  add      esp, 0xc                          
0x006BB512:  jmp      0x6bb531                          
0x006BB514:  cmp      dword ptr [ebp - 8], 0            
0x006BB518:  jne      0x6bb521                          
0x006BB51A:  call     0x6baa20                          
0x006BB51F:  jmp      0x6bb531                          
0x006BB521:  push     0x1f                              
0x006BB523:  push     3                                 
0x006BB525:  mov      edx, dword ptr [ebp - 8]          
0x006BB528:  push     edx                               
0x006BB529:  call     0x6b69d0                          
0x006BB52E:  add      esp, 0xc                          
0x006BB531:  jmp      0x6bbe46                          
0x006BB536:  call     0x6c30b0                          
0x006BB53B:  call     0x6b3de0                          
0x006BB540:  call     0x6c3400                          
0x006BB545:  mov      eax, dword ptr [0xb752c8]         
0x006BB54A:  mov      ecx, dword ptr [0xb752b8]         
0x006BB550:  mov      edx, dword ptr [ecx + 0x34c]      
0x006BB556:  mov      dword ptr [eax + 0xc0], edx       
0x006BB55C:  mov      eax, dword ptr [0xb752c8]         
0x006BB561:  mov      dword ptr [eax + 0x6c], 0         
0x006BB568:  mov      ecx, dword ptr [0xb752c8]         
0x006BB56E:  mov      dword ptr [ecx + 0x68], 0         
0x006BB575:  mov      edx, dword ptr [0xb752c8]         
0x006BB57B:  mov      dword ptr [edx + 0x60], 0         
0x006BB582:  mov      eax, dword ptr [0xb752c8]         
0x006BB587:  mov      ecx, dword ptr [0xb752c8]         
0x006BB58D:  mov      edx, dword ptr [ecx + 0x74]       
0x006BB590:  mov      dword ptr [eax + 0x70], edx       
0x006BB593:  mov      dword ptr [0xb01e0c], 0           
0x006BB59D:  mov      dword ptr [0xb01e4c], 0           
0x006BB5A7:  cmp      dword ptr [0xb75350], 0           
0x006BB5AE:  jne      0x6bb64a                          
0x006BB5B4:  mov      eax, dword ptr [0xb752c8]         
0x006BB5B9:  cmp      dword ptr [eax + 0x54], 0         
0x006BB5BD:  jne      0x6bb5f9                          
0x006BB5BF:  mov      ecx, dword ptr [0xb752c8]         
0x006BB5C5:  mov      dword ptr [ecx + 0x60], 0         
0x006BB5CC:  call     0x6b3de0                          
0x006BB5D1:  call     0x6baf20                          
0x006BB5D6:  push     1                                 
0x006BB5D8:  push     0x1f                              
0x006BB5DA:  push     3                                 
0x006BB5DC:  push     0xaf4aca09                        
0x006BB5E1:  push     0                                 
0x006BB5E3:  push     0                                 
0x006BB5E5:  push     0                                 
0x006BB5E7:  push     0x9b902b35                        
0x006BB5EC:  call     0x6b4690                          
0x006BB5F1:  add      esp, 0x20                         
0x006BB5F4:  jmp      0x6bbe46                          
0x006BB5F9:  push     0                                 
0x006BB5FB:  push     1                                 
0x006BB5FD:  push     0                                 
0x006BB5FF:  push     1                                 
0x006BB601:  push     0                                 
0x006BB603:  mov      edx, dword ptr [0xb01b28]         
0x006BB609:  push     edx                               
0x006BB60A:  push     0x2ca8                            
0x006BB60F:  call     0x688fe0                          
0x006BB614:  add      esp, 0x1c                         
0x006BB617:  mov      dword ptr [ebp - 0x14], eax       
0x006BB61A:  cmp      dword ptr [ebp - 0x14], 0         
0x006BB61E:  je       0x6bb62d                          
0x006BB620:  mov      ecx, dword ptr [ebp - 0x14]       
0x006BB623:  call     0x6bea90                          
0x006BB628:  mov      dword ptr [ebp - 0x48], eax       
0x006BB62B:  jmp      0x6bb634                          
0x006BB62D:  mov      dword ptr [ebp - 0x48], 0         
0x006BB634:  mov      eax, dword ptr [ebp - 0x48]       
0x006BB637:  mov      dword ptr [0xb75350], eax         
0x006BB63C:  push     0                                 
0x006BB63E:  push     0                                 
0x006BB640:  push     0x3a                              
0x006BB642:  call     0x6b4270                          
0x006BB647:  add      esp, 0xc                          
0x006BB64A:  jmp      0x6bbe46                          
0x006BB64F:  push     0                                 
0x006BB651:  push     1                                 
0x006BB653:  push     0                                 
0x006BB655:  push     1                                 
0x006BB657:  push     0                                 
0x006BB659:  mov      ecx, dword ptr [0xb01b28]         
0x006BB65F:  push     ecx                               
0x006BB660:  push     0x890                             
0x006BB665:  call     0x688fe0                          
0x006BB66A:  add      esp, 0x1c                         
0x006BB66D:  mov      dword ptr [ebp - 0x18], eax       
0x006BB670:  cmp      dword ptr [ebp - 0x18], 0         
0x006BB674:  je       0x6bb690                          
0x006BB676:  mov      edx, dword ptr [0xb752c8]         
0x006BB67C:  mov      eax, dword ptr [edx + 0xc0]       
0x006BB682:  push     eax                               
0x006BB683:  mov      ecx, dword ptr [ebp - 0x18]       
0x006BB686:  call     0x6bda10                          
0x006BB68B:  mov      dword ptr [ebp - 0x4c], eax       
0x006BB68E:  jmp      0x6bb697                          
0x006BB690:  mov      dword ptr [ebp - 0x4c], 0         
0x006BB697:  mov      ecx, dword ptr [ebp - 0x4c]       
0x006BB69A:  mov      dword ptr [0xb752e0], ecx         
0x006BB6A0:  call     0x6b3de0                          
0x006BB6A5:  cmp      dword ptr [0xb752e0], 0           
0x006BB6AC:  jne      0x6bb6c4                          
0x006BB6AE:  push     0                                 
0x006BB6B0:  push     0                                 
0x006BB6B2:  push     0x32                              
0x006BB6B4:  call     0x6b4270                          
0x006BB6B9:  add      esp, 0xc                          
0x006BB6BC:  mov      eax, dword ptr [ebp - 0xc]        
0x006BB6BF:  jmp      0x6bbe49                          
0x006BB6C4:  push     0                                 
0x006BB6C6:  push     0                                 
0x006BB6C8:  push     0x2d                              
0x006BB6CA:  call     0x6b4270                          
0x006BB6CF:  add      esp, 0xc                          
0x006BB6D2:  jmp      0x6bbe46                          
0x006BB6D7:  mov      edx, dword ptr [0xb752c0]         
0x006BB6DD:  mov      eax, dword ptr [edx + 4]          
0x006BB6E0:  imul     eax, eax, 0xdc                    
0x006BB6E6:  mov      ecx, dword ptr [0xb75350]         
0x006BB6EC:  lea      edx, [ecx + eax + 0x80]           
0x006BB6F3:  push     edx                               
0x006BB6F4:  mov      ecx, dword ptr [0xb752e0]         
0x006BB6FA:  call     0x6be190                          
0x006BB6FF:  mov      dword ptr [ebp - 8], eax          
0x006BB702:  cmp      dword ptr [ebp - 8], 0            
0x006BB706:  jne      0x6bb718                          
0x006BB708:  push     0                                 
0x006BB70A:  push     0                                 
0x006BB70C:  push     0x2e                              
0x006BB70E:  call     0x6b4270                          
0x006BB713:  add      esp, 0xc                          
0x006BB716:  jmp      0x6bb72e                          
0x006BB718:  push     0                                 
0x006BB71A:  push     0                                 
0x006BB71C:  push     0x32                              
0x006BB71E:  call     0x6b4270                          
0x006BB723:  add      esp, 0xc                          
0x006BB726:  mov      eax, dword ptr [ebp - 0xc]        
0x006BB729:  jmp      0x6bbe49                          
0x006BB72E:  jmp      0x6bbe46                          
0x006BB733:  mov      dword ptr [ebp - 0xc], 1          
0x006BB73A:  mov      eax, dword ptr [0xb752e0]         
0x006BB73F:  mov      ecx, dword ptr [eax + 0x2c]       
0x006BB742:  mov      dword ptr [ebp - 8], ecx          
0x006BB745:  cmp      dword ptr [ebp - 8], 0            
0x006BB749:  jne      0x6bb750                          
0x006BB74B:  jmp      0x6bbe46                          
0x006BB750:  cmp      dword ptr [ebp - 8], 2            
0x006BB754:  jne      0x6bb766                          
0x006BB756:  push     0                                 
0x006BB758:  push     0                                 
0x006BB75A:  push     0x31                              
0x006BB75C:  call     0x6b4270                          
0x006BB761:  add      esp, 0xc                          
0x006BB764:  jmp      0x6bb784                          
0x006BB766:  push     1                                 
0x006BB768:  push     0                                 
0x006BB76A:  push     0                                 
0x006BB76C:  push     0                                 
0x006BB76E:  push     0x43                              
0x006BB770:  push     0                                 
0x006BB772:  push     0xe79b3733                        
0x006BB777:  push     0x86bc7d51                        
0x006BB77C:  call     0x6b4690                          
0x006BB781:  add      esp, 0x20                         
0x006BB784:  jmp      0x6bbe46                          
0x006BB789:  mov      dword ptr [ebp - 0xc], 1          
0x006BB790:  mov      edx, dword ptr [0xb752e0]         
0x006BB796:  mov      eax, dword ptr [edx + 0x2c]       
0x006BB799:  mov      dword ptr [ebp - 8], eax          
0x006BB79C:  cmp      dword ptr [ebp - 8], 0            
0x006BB7A0:  jne      0x6bb7a7                          
0x006BB7A2:  jmp      0x6bbe46                          
0x006BB7A7:  cmp      dword ptr [ebp - 8], 6            
0x006BB7AB:  jne      0x6bb80d                          
0x006BB7AD:  push     0                                 
0x006BB7AF:  push     0                                 
0x006BB7B1:  push     0x38                              
0x006BB7B3:  call     0x6b4270                          
0x006BB7B8:  add      esp, 0xc                          
0x006BB7BB:  mov      ecx, dword ptr [0xb752e0]         
0x006BB7C1:  mov      dword ptr [ebp - 0x20], ecx       
0x006BB7C4:  mov      edx, dword ptr [ebp - 0x20]       
0x006BB7C7:  mov      dword ptr [ebp - 0x1c], edx       
0x006BB7CA:  cmp      dword ptr [ebp - 0x1c], 0         
0x006BB7CE:  je       0x6bb7f6                          
0x006BB7D0:  mov      ecx, dword ptr [ebp - 0x1c]       
0x006BB7D3:  call     0x6bdb10                          
0x006BB7D8:  mov      eax, 1                            
0x006BB7DD:  and      eax, 1                            
0x006BB7E0:  je       0x6bb7ee                          
0x006BB7E2:  mov      ecx, dword ptr [ebp - 0x1c]       
0x006BB7E5:  push     ecx                               
0x006BB7E6:  call     0x688fb0                          
0x006BB7EB:  add      esp, 4                            
0x006BB7EE:  mov      edx, dword ptr [ebp - 0x1c]       
0x006BB7F1:  mov      dword ptr [ebp - 0x50], edx       
0x006BB7F4:  jmp      0x6bb7fd                          
0x006BB7F6:  mov      dword ptr [ebp - 0x50], 0         
0x006BB7FD:  mov      dword ptr [0xb752e0], 0           
0x006BB807:  xor      eax, eax                          
0x006BB809:  jne      0x6bb7bb                          
0x006BB80B:  jmp      0x6bb86d                          
0x006BB80D:  mov      ecx, dword ptr [0xb752e0]         
0x006BB813:  mov      dword ptr [ebp - 0x28], ecx       
0x006BB816:  mov      edx, dword ptr [ebp - 0x28]       
0x006BB819:  mov      dword ptr [ebp - 0x24], edx       
0x006BB81C:  cmp      dword ptr [ebp - 0x24], 0         
0x006BB820:  je       0x6bb848                          
0x006BB822:  mov      ecx, dword ptr [ebp - 0x24]       
0x006BB825:  call     0x6bdb10                          
0x006BB82A:  mov      eax, 1                            
0x006BB82F:  and      eax, 1                            
0x006BB832:  je       0x6bb840                          
0x006BB834:  mov      ecx, dword ptr [ebp - 0x24]       
0x006BB837:  push     ecx                               
0x006BB838:  call     0x688fb0                          
0x006BB83D:  add      esp, 4                            
0x006BB840:  mov      edx, dword ptr [ebp - 0x24]       
0x006BB843:  mov      dword ptr [ebp - 0x54], edx       
0x006BB846:  jmp      0x6bb84f                          
0x006BB848:  mov      dword ptr [ebp - 0x54], 0         
0x006BB84F:  mov      dword ptr [0xb752e0], 0           
0x006BB859:  xor      eax, eax                          
0x006BB85B:  jne      0x6bb80d                          
0x006BB85D:  push     0x43                              
0x006BB85F:  push     0                                 
0x006BB861:  mov      ecx, dword ptr [ebp - 8]          
0x006BB864:  push     ecx                               
0x006BB865:  call     0x6b6970                          
0x006BB86A:  add      esp, 0xc                          
0x006BB86D:  jmp      0x6bbe46                          
0x006BB872:  jmp      0x6bbe46                          
0x006BB877:  mov      edx, dword ptr [0xb752c8]         
0x006BB87D:  mov      eax, dword ptr [edx + 0xd0]       
0x006BB883:  and      eax, 0xfffffe7f                   
0x006BB888:  mov      ecx, dword ptr [0xb752c8]         
0x006BB88E:  mov      dword ptr [ecx + 0xd0], eax       
0x006BB894:  push     0                                 
0x006BB896:  push     7                                 
0x006BB898:  push     0xab                              
0x006BB89D:  call     0x6b4270                          
0x006BB8A2:  add      esp, 0xc                          
0x006BB8A5:  jmp      0x6bbe46                          
0x006BB8AA:  mov      edx, dword ptr [0xb752c8]         
0x006BB8B0:  mov      dword ptr [edx + 0x60], 0         
0x006BB8B7:  call     0x6b3de0                          
0x006BB8BC:  push     0x3bcf84dd                        
0x006BB8C1:  push     0                                 
0x006BB8C3:  call     0x6b40e0                          
0x006BB8C8:  add      esp, 8                            
0x006BB8CB:  call     0x6baf20                          
0x006BB8D0:  push     0x18                              
0x006BB8D2:  push     1                                 
0x006BB8D4:  push     3                                 
0x006BB8D6:  push     0x1f                              
0x006BB8D8:  call     0x6b4270                          
0x006BB8DD:  add      esp, 0x10                         
0x006BB8E0:  jmp      0x6bbe46                          
0x006BB8E5:  call     0x6b3de0                          
0x006BB8EA:  call     0x6bd9e0                          
0x006BB8EF:  call     0x6c30b0                          
0x006BB8F4:  call     0x6c3400                          
0x006BB8F9:  cmp      dword ptr [0xb752e0], 0           
0x006BB900:  jne      0x6bb970                          
0x006BB902:  push     0                                 
0x006BB904:  push     1                                 
0x006BB906:  push     0                                 
0x006BB908:  push     1                                 
0x006BB90A:  push     0                                 
0x006BB90C:  mov      eax, dword ptr [0xb01b28]         
0x006BB911:  push     eax                               
0x006BB912:  push     0x890                             
0x006BB917:  call     0x688fe0                          
0x006BB91C:  add      esp, 0x1c                         
0x006BB91F:  mov      dword ptr [ebp - 0x2c], eax       
0x006BB922:  cmp      dword ptr [ebp - 0x2c], 0         
0x006BB926:  je       0x6bb942                          
0x006BB928:  mov      ecx, dword ptr [0xb752c8]         
0x006BB92E:  mov      edx, dword ptr [ecx + 0xc0]       
0x006BB934:  push     edx                               
0x006BB935:  mov      ecx, dword ptr [ebp - 0x2c]       
0x006BB938:  call     0x6bda10                          
0x006BB93D:  mov      dword ptr [ebp - 0x58], eax       
0x006BB940:  jmp      0x6bb949                          
0x006BB942:  mov      dword ptr [ebp - 0x58], 0         
0x006BB949:  mov      eax, dword ptr [ebp - 0x58]       
0x006BB94C:  mov      dword ptr [0xb752e0], eax         
0x006BB951:  cmp      dword ptr [0xb752e0], 0           
0x006BB958:  jne      0x6bb970                          
0x006BB95A:  push     0                                 
0x006BB95C:  push     0                                 
0x006BB95E:  push     0x32                              
0x006BB960:  call     0x6b4270                          
0x006BB965:  add      esp, 0xc                          
0x006BB968:  mov      eax, dword ptr [ebp - 0xc]        
0x006BB96B:  jmp      0x6bbe49                          
0x006BB970:  mov      ecx, dword ptr [0xb752c8]         
0x006BB976:  mov      edx, dword ptr [ecx + 0x6c]       
0x006BB979:  mov      dword ptr [ebp - 4], edx          
0x006BB97C:  push     0x99b770                           ; "BlitzTech Test"
0x006BB981:  push     0x981030                          
0x006BB986:  push     0x20                              
0x006BB988:  mov      eax, dword ptr [0xb752c8]         
0x006BB98D:  add      eax, 8                            
0x006BB990:  push     eax                               
0x006BB991:  call     0x694410                          
0x006BB996:  add      esp, 0x10                         
0x006BB999:  push     0                                 
0x006BB99B:  push     0                                 
0x006BB99D:  push     0x40                              
0x006BB99F:  call     0x6b4270                          
0x006BB9A4:  add      esp, 0xc                          
0x006BB9A7:  jmp      0x6bbe46                          
0x006BB9AC:  mov      ecx, dword ptr [0xb752c8]         
0x006BB9B2:  mov      edx, dword ptr [0xb752b8]         
0x006BB9B8:  mov      eax, dword ptr [edx + 0x68]       
0x006BB9BB:  mov      dword ptr [ecx + 0x30], eax       
0x006BB9BE:  mov      ecx, dword ptr [0xb752c8]         
0x006BB9C4:  mov      edx, dword ptr [0xb752b8]         
0x006BB9CA:  mov      eax, dword ptr [edx + 0x64]       
0x006BB9CD:  mov      dword ptr [ecx + 0xc0], eax       
0x006BB9D3:  mov      ecx, dword ptr [0xb752c8]         
0x006BB9D9:  cmp      dword ptr [ecx + 0xc0], 0         
0x006BB9E0:  jne      0x6bb9f9                          
0x006BB9E2:  mov      edx, dword ptr [0xb752c8]         
0x006BB9E8:  mov      eax, dword ptr [0xb752b8]         
0x006BB9ED:  mov      ecx, dword ptr [eax + 0x34c]      
0x006BB9F3:  mov      dword ptr [edx + 0xc0], ecx       
0x006BB9F9:  mov      edx, dword ptr [0xb752c8]         
0x006BB9FF:  cmp      dword ptr [edx + 0xc0], 0         
0x006BBA06:  jne      0x6bba17                          
0x006BBA08:  mov      eax, dword ptr [0xb752c8]         
0x006BBA0D:  mov      dword ptr [eax + 0xc0], 1         
0x006BBA17:  mov      ecx, dword ptr [0xb752c8]         
0x006BBA1D:  mov      edx, dword ptr [0xb752c8]         
0x006BBA23:  mov      eax, dword ptr [ecx + 0x30]       
0x006BBA26:  cmp      eax, dword ptr [edx + 0xc0]       
0x006BBA2C:  jle      0x6bba43                          
0x006BBA2E:  mov      ecx, dword ptr [0xb752c8]         
0x006BBA34:  mov      edx, dword ptr [0xb752c8]         
0x006BBA3A:  mov      eax, dword ptr [edx + 0xc0]       
0x006BBA40:  mov      dword ptr [ecx + 0x30], eax       
0x006BBA43:  mov      ecx, dword ptr [0xb752c8]         
0x006BBA49:  mov      edx, dword ptr [0xb752c8]         
0x006BBA4F:  mov      eax, dword ptr [ecx + 0xc0]       
0x006BBA55:  sub      eax, dword ptr [edx + 0x30]       
0x006BBA58:  mov      ecx, dword ptr [0xb752c8]         
0x006BBA5E:  mov      dword ptr [ecx + 0x34], eax       
0x006BBA61:  mov      edx, dword ptr [0xb752e0]         
0x006BBA67:  mov      dword ptr [edx + 8], 0            
0x006BBA6E:  mov      eax, dword ptr [0xb752e0]         
0x006BBA73:  mov      dword ptr [eax], 0                
0x006BBA79:  mov      ecx, dword ptr [0xb752e0]         
0x006BBA7F:  mov      edx, dword ptr [0xb752c8]         
0x006BBA85:  mov      eax, dword ptr [edx + 0x30]       
0x006BBA88:  mov      dword ptr [ecx + 0xc], eax        
0x006BBA8B:  mov      ecx, dword ptr [0xb752e0]         
0x006BBA91:  mov      edx, dword ptr [0xb752c8]         
0x006BBA97:  mov      eax, dword ptr [edx + 0x34]       
0x006BBA9A:  mov      dword ptr [ecx + 4], eax          
0x006BBA9D:  mov      ecx, dword ptr [0xb752c8]         
0x006BBAA3:  mov      edx, dword ptr [0xb752b8]         
0x006BBAA9:  mov      eax, dword ptr [edx + 0x2c]       
0x006BBAAC:  mov      dword ptr [ecx + 0x48], eax       
0x006BBAAF:  mov      ecx, dword ptr [0xb752e0]         
0x006BBAB5:  call     0x6bdfc0                          
0x006BBABA:  mov      dword ptr [ebp - 8], eax          
0x006BBABD:  cmp      dword ptr [ebp - 8], 0            
0x006BBAC1:  jne      0x6bbaf2                          
0x006BBAC3:  push     0                                 
0x006BBAC5:  push     0                                 
0x006BBAC7:  push     0x41                              
0x006BBAC9:  call     0x6b4270                          
0x006BBACE:  add      esp, 0xc                          
0x006BBAD1:  push     0xb01fc8                          
0x006BBAD6:  call     0x6b3e70                          
0x006BBADB:  add      esp, 4                            
0x006BBADE:  push     0x3f0e996a                        
0x006BBAE3:  push     0xfa                              
0x006BBAE8:  call     0x6b40e0                          
0x006BBAED:  add      esp, 8                            
0x006BBAF0:  jmp      0x6bbb02                          
0x006BBAF2:  push     0x43                              
0x006BBAF4:  push     0                                 
0x006BBAF6:  mov      ecx, dword ptr [ebp - 8]          
0x006BBAF9:  push     ecx                               
0x006BBAFA:  call     0x6b6970                          
0x006BBAFF:  add      esp, 0xc                          
0x006BBB02:  jmp      0x6bbe46                          
0x006BBB07:  mov      dword ptr [ebp - 0xc], 1          
0x006BBB0E:  mov      edx, dword ptr [0xb752e0]         
0x006BBB14:  mov      eax, dword ptr [edx + 0x2c]       
0x006BBB17:  mov      dword ptr [ebp - 8], eax          
0x006BBB1A:  cmp      dword ptr [ebp - 8], 0            
0x006BBB1E:  jne      0x6bbb25                          
0x006BBB20:  jmp      0x6bbe46                          
0x006BBB25:  cmp      dword ptr [ebp - 8], 2            
0x006BBB29:  jne      0x6bbb3b                          
0x006BBB2B:  push     0                                 
0x006BBB2D:  push     0                                 
0x006BBB2F:  push     0x42                              
0x006BBB31:  call     0x6b4270                          
0x006BBB36:  add      esp, 0xc                          
0x006BBB39:  jmp      0x6bbb4b                          
0x006BBB3B:  push     0x43                              
0x006BBB3D:  push     0                                 
0x006BBB3F:  mov      ecx, dword ptr [ebp - 8]          
0x006BBB42:  push     ecx                               
0x006BBB43:  call     0x6b6970                          
0x006BBB48:  add      esp, 0xc                          
0x006BBB4B:  jmp      0x6bbe46                          
0x006BBB50:  push     0                                 
0x006BBB52:  push     7                                 
0x006BBB54:  push     0xa2                              
0x006BBB59:  call     0x6b4270                          
0x006BBB5E:  add      esp, 0xc                          
0x006BBB61:  jmp      0x6bbe46                          
0x006BBB66:  cmp      dword ptr [0xb752e0], 0           
0x006BBB6D:  je       0x6bbbaa                          
0x006BBB6F:  mov      ecx, dword ptr [0xb752e0]         
0x006BBB75:  call     0x6be660                          
0x006BBB7A:  push     0x3bcf84dd                        
0x006BBB7F:  push     0                                 
0x006BBB81:  call     0x6b40e0                          
0x006BBB86:  add      esp, 8                            
0x006BBB89:  call     0x6a0cf0                          
0x006BBB8E:  mov      ecx, dword ptr [0xb752e0]         
0x006BBB94:  mov      dword ptr [ecx + 0x10], eax       
0x006BBB97:  mov      dword ptr [ecx + 0x14], edx       
0x006BBB9A:  push     0                                 
0x006BBB9C:  push     0                                 
0x006BBB9E:  push     0x44                              
0x006BBBA0:  call     0x6b4270                          
0x006BBBA5:  add      esp, 0xc                          
0x006BBBA8:  jmp      0x6bbbb8                          
0x006BBBAA:  push     0                                 
0x006BBBAC:  push     0                                 
0x006BBBAE:  push     0x32                              
0x006BBBB0:  call     0x6b4270                          
0x006BBBB5:  add      esp, 0xc                          
0x006BBBB8:  jmp      0x6bbe46                          
0x006BBBBD:  mov      dword ptr [ebp - 0xc], 1          
0x006BBBC4:  mov      edx, dword ptr [0xb752e0]         
0x006BBBCA:  mov      eax, dword ptr [edx + 0x2c]       
0x006BBBCD:  mov      dword ptr [ebp - 8], eax          
0x006BBBD0:  cmp      dword ptr [ebp - 8], 0            
0x006BBBD4:  jne      0x6bbbdb                          
0x006BBBD6:  jmp      0x6bbe46                          
0x006BBBDB:  call     0x6baf20                          
0x006BBBE0:  push     0                                 
0x006BBBE2:  push     0                                 
0x006BBBE4:  push     0x32                              
0x006BBBE6:  call     0x6b4270                          
0x006BBBEB:  add      esp, 0xc                          
0x006BBBEE:  jmp      0x6bbe46                          
0x006BBBF3:  cmp      dword ptr [0xb7525c], 0           
0x006BBBFA:  je       0x6bbc01                          
0x006BBBFC:  jmp      0x6bbe46                          
0x006BBC01:  call     0x6c3060                          
0x006BBC06:  mov      dword ptr [ebp - 8], eax          
0x006BBC09:  cmp      dword ptr [ebp - 8], 0            
0x006BBC0D:  jne      0x6bbc55                          
0x006BBC0F:  push     1                                 
0x006BBC11:  push     0x20                              
0x006BBC13:  push     3                                 
0x006BBC15:  push     0xaf4aca09                        
0x006BBC1A:  push     0xb                               
0x006BBC1C:  push     3                                 
0x006BBC1E:  push     0xa6c8f167                        
0x006BBC23:  push     0xa8cb10f7                        
0x006BBC28:  call     0x6b4690                          
0x006BBC2D:  add      esp, 0x20                         
0x006BBC30:  mov      ecx, dword ptr [0xb752c8]         
0x006BBC36:  mov      dword ptr [ecx + 0x2ac], 0        
0x006BBC40:  mov      edx, dword ptr [0xb752b8]         
0x006BBC46:  mov      dword ptr [edx + 0x1218], 0       
0x006BBC50:  jmp      0x6bbe46                          
0x006BBC55:  mov      eax, dword ptr [0xb752c8]         
0x006BBC5A:  mov      ecx, dword ptr [eax + 0xd0]       
0x006BBC60:  and      ecx, 4                            
0x006BBC63:  je       0x6bbc9d                          
0x006BBC65:  call     0x58a480                          
0x006BBC6A:  mov      edx, dword ptr [0xb752c8]         
0x006BBC70:  mov      eax, dword ptr [edx + 0xd0]       
0x006BBC76:  and      eax, 0xfffffffb                   
0x006BBC79:  mov      ecx, dword ptr [0xb752c8]         
0x006BBC7F:  mov      dword ptr [ecx + 0xd0], eax       
0x006BBC85:  mov      edx, dword ptr [0xb752b8]         
0x006BBC8B:  mov      eax, dword ptr [edx + 0xc]        
0x006BBC8E:  push     eax                               
0x006BBC8F:  mov      ecx, dword ptr [0xb752b8]         
0x006BBC95:  mov      edx, dword ptr [ecx + 4]          
0x006BBC98:  call     edx                               
0x006BBC9A:  add      esp, 4                            
0x006BBC9D:  call     0x6bc4d0                          
0x006BBCA2:  call     0x6b6e30                          
0x006BBCA7:  mov      eax, dword ptr [0xb752c8]         
0x006BBCAC:  mov      dword ptr [eax + 0x6c], 0         
0x006BBCB3:  mov      ecx, dword ptr [0xb752c8]         
0x006BBCB9:  mov      dword ptr [ecx + 0x68], 1         
0x006BBCC0:  cmp      dword ptr [0xb752e0], 0           
0x006BBCC7:  je       0x6bbce7                          
0x006BBCC9:  mov      ecx, dword ptr [0xb752e0]         
0x006BBCCF:  call     0x6be660                          
0x006BBCD4:  push     0                                 
0x006BBCD6:  push     0                                 
0x006BBCD8:  push     0xda                              
0x006BBCDD:  call     0x6b4270                          
0x006BBCE2:  add      esp, 0xc                          
0x006BBCE5:  jmp      0x6bbcf8                          
0x006BBCE7:  push     0                                 
0x006BBCE9:  push     0                                 
0x006BBCEB:  push     0xdb                              
0x006BBCF0:  call     0x6b4270                          
0x006BBCF5:  add      esp, 0xc                          
0x006BBCF8:  jmp      0x6bbe46                          
0x006BBCFD:  mov      dword ptr [ebp - 0xc], 1          
0x006BBD04:  mov      edx, dword ptr [0xb752e0]         
0x006BBD0A:  mov      eax, dword ptr [edx + 0x2c]       
0x006BBD0D:  mov      dword ptr [ebp - 8], eax          
0x006BBD10:  cmp      dword ptr [ebp - 8], 0            
0x006BBD14:  jne      0x6bbd1b                          
0x006BBD16:  jmp      0x6bbe46                          
0x006BBD1B:  push     0                                 
0x006BBD1D:  push     0                                 
0x006BBD1F:  push     0xdb                              
0x006BBD24:  call     0x6b4270                          
0x006BBD29:  add      esp, 0xc                          
0x006BBD2C:  mov      ecx, dword ptr [0xb752c8]         
0x006BBD32:  mov      dword ptr [ecx + 0x60], 0         
0x006BBD39:  call     0x6b3de0                          
0x006BBD3E:  call     0x6baf20                          
0x006BBD43:  jmp      0x6bbe46                          
0x006BBD48:  call     0x6b6ff0                          
0x006BBD4D:  mov      edx, dword ptr [0xb752c8]         
0x006BBD53:  mov      dword ptr [edx + 0x4c], 1         
0x006BBD5A:  push     0                                 
0x006BBD5C:  push     1                                 
0x006BBD5E:  push     0                                 
0x006BBD60:  push     1                                 
0x006BBD62:  push     0                                 
0x006BBD64:  mov      eax, dword ptr [0xb01b28]         
0x006BBD69:  push     eax                               
0x006BBD6A:  push     0x2ca8                            
0x006BBD6F:  call     0x688fe0                          
0x006BBD74:  add      esp, 0x1c                         
0x006BBD77:  mov      dword ptr [ebp - 0x30], eax       
0x006BBD7A:  cmp      dword ptr [ebp - 0x30], 0         
0x006BBD7E:  je       0x6bbd8d                          
0x006BBD80:  mov      ecx, dword ptr [ebp - 0x30]       
0x006BBD83:  call     0x6bea90                          
0x006BBD88:  mov      dword ptr [ebp - 0x5c], eax       
0x006BBD8B:  jmp      0x6bbd94                          
0x006BBD8D:  mov      dword ptr [ebp - 0x5c], 0         
0x006BBD94:  mov      ecx, dword ptr [ebp - 0x5c]       
0x006BBD97:  mov      dword ptr [0xb75350], ecx         
0x006BBD9D:  mov      edx, dword ptr [0xb752c0]         
0x006BBDA3:  mov      dword ptr [edx + 4], 0            
0x006BBDAA:  mov      eax, dword ptr [0xb752c8]         
0x006BBDAF:  mov      dword ptr [eax + 0x60], 1         
0x006BBDB6:  call     0x6b3de0                          
0x006BBDBB:  mov      ecx, dword ptr [0xb75350]         
0x006BBDC1:  mov      dword ptr [ecx + 0x1130], 1       
0x006BBDCB:  mov      edx, dword ptr [0xb752c8]         
0x006BBDD1:  mov      eax, dword ptr [edx + 0x28c8]     
0x006BBDD7:  mov      ecx, dword ptr [edx + 0x28cc]     
0x006BBDDD:  mov      edx, dword ptr [0xb75350]         
0x006BBDE3:  mov      dword ptr [edx + 0x80], eax       
0x006BBDE9:  mov      dword ptr [edx + 0x84], ecx       
0x006BBDEF:  mov      eax, dword ptr [0xb752b8]         
0x006BBDF4:  mov      dword ptr [eax + 0x2f4], 1        
0x006BBDFE:  mov      ecx, dword ptr [0xb752c8]         
0x006BBE04:  mov      edx, dword ptr [ecx + 0x2810]     
0x006BBE0A:  mov      dword ptr [edx + 8], 1            
0x006BBE11:  mov      eax, dword ptr [0xb752c8]         
0x006BBE16:  mov      dword ptr [eax + 0x68], 1         
0x006BBE1D:  push     0                                 
0x006BBE1F:  call     0x6bb000                          
0x006BBE24:  add      esp, 4                            
0x006BBE27:  mov      ecx, dword ptr [0xb752c8]         
0x006BBE2D:  mov      dword ptr [ecx + 0x40], 1         
0x006BBE34:  push     0x2588d4d8                        
0x006BBE39:  push     0xfa                              
0x006BBE3E:  call     0x6b40e0                          
0x006BBE43:  add      esp, 8                            
0x006BBE46:  mov      eax, dword ptr [ebp - 0xc]        
0x006BBE49:  mov      esp, ebp                          
0x006BBE4B:  pop      ebp                               
0x006BBE4C:  ret                                        
0x006BBE4D:  lea      ecx, [ecx]                        
0x006BBE50:  test     eax, 0x4f006bb1                   
0x006BBE55:  mov      dh, 0x6b                          
0x006BBE57:  add      bh, dl                            
0x006BBE59:  mov      dh, 0x6b                          
0x006BBE5B:  add      byte ptr [ebx], dh                
0x006BBE5D:  mov      bh, 0x6b                          
0x006BBE5F:  add      byte ptr [ecx + 0x77006bb7], cl   
0x006BBE65:  mov      eax, 0xb8aa006b                   
0x006BBE6A:  imul     eax, dword ptr [eax], 0xe         
0x006BBE6D:  mov      bl, 0x6b                          
0x006BBE6F:  add      byte ptr [edx - 0x4d], bh         
0x006BBE72:  imul     eax, dword ptr [eax], 0x3b        
0x006BBE75:  mov      ah, 0x6b                          
0x006BBE77:  add      bh, al                            
0x006BBE79:  mov      dl, 0x6b                          
0x006BBE7B:  add      al, al                            
0x006BBE7D:  mov      ah, 0x6b                          
0x006BBE7F:  add      dl, cl                            
0x006BBE81:  mov      ah, 0x6b                          
0x006BBE83:  add      byte ptr [esi], dh                
0x006BBE85:  mov      ch, 0x6b                          
0x006BBE87:  add      ch, dl                            
0x006BBE89:  mov      dl, 0x6b                          
0x006BBE8B:  add      ch, ah                            
0x006BBE8D:  mov      eax, 0xb9ac006b                   
0x006BBE92:  imul     eax, dword ptr [eax], 7           
0x006BBE95:  mov      ebx, 0xbb50006b                   
0x006BBE9A:  imul     eax, dword ptr [eax], 0x66        
0x006BBE9D:  mov      ebx, 0xbbbd006b                   
0x006BBEA2:  imul     eax, dword ptr [eax], -0xd        
0x006BBEA5:  mov      ebx, 0xbcfd006b                   
0x006BBEAA:  imul     eax, dword ptr [eax], 0x48        
0x006BBEAD:  mov      ebp, 0xbe46006b                   
0x006BBEB2:  imul     eax, dword ptr [eax], 0           
0x006BBEB5:  add      dword ptr [eax], ebx              
0x006BBEB7:  add      al, byte ptr [ebx]                
0x006BBEB9:  add      al, 0x18                          
0x006BBEBB:  add      eax, 0x9080706                    
0x006BBEC0:  or       cl, byte ptr [ebx]                
0x006BBEC2:  or       al, 0xd                           
0x006BBEC4:  or       cl, byte ptr [esi]                
0x006BBEC6:  sbb      byte ptr [eax], bl                
0x006BBEC8:  sbb      byte ptr [edi], cl                
0x006BBECA:  adc      byte ptr [ecx], dl                
0x006BBECC:  adc      dl, byte ptr [ebx]                
0x006BBECE:  adc      al, 0x18                          
0x006BBED0:  sbb      byte ptr [eax], bl                
0x006BBED2:  sbb      byte ptr [eax], bl                
0x006BBED4:  sbb      byte ptr [eax], bl                
0x006BBED6:  sbb      byte ptr [eax], bl                
0x006BBED8:  sbb      byte ptr [eax], bl                
0x006BBEDA:  sbb      byte ptr [eax], bl                
0x006BBEDC:  sbb      byte ptr [eax], bl                
0x006BBEDE:  sbb      byte ptr [eax], bl                
0x006BBEE0:  sbb      byte ptr [eax], bl                
0x006BBEE2:  sbb      byte ptr [eax], bl                
0x006BBEE4:  sbb      byte ptr [eax], bl                
0x006BBEE6:  sbb      byte ptr [eax], bl                
0x006BBEE8:  sbb      byte ptr [eax], bl                
0x006BBEEA:  sbb      byte ptr [eax], bl                
0x006BBEEC:  sbb      byte ptr [eax], bl                
0x006BBEEE:  sbb      byte ptr [eax], bl                
0x006BBEF0:  sbb      byte ptr [eax], bl                
0x006BBEF2:  sbb      byte ptr [eax], bl                
0x006BBEF4:  sbb      byte ptr [eax], bl                
0x006BBEF6:  sbb      byte ptr [eax], bl                
0x006BBEF8:  sbb      byte ptr [eax], bl                
0x006BBEFA:  sbb      byte ptr [eax], bl                
0x006BBEFC:  sbb      byte ptr [eax], bl                
0x006BBEFE:  sbb      byte ptr [eax], bl                
0x006BBF00:  sbb      byte ptr [eax], bl                
0x006BBF02:  sbb      byte ptr [eax], bl                
0x006BBF04:  sbb      byte ptr [eax], bl                
0x006BBF06:  sbb      byte ptr [eax], bl                
0x006BBF08:  sbb      byte ptr [eax], bl                
0x006BBF0A:  sbb      byte ptr [eax], bl                
0x006BBF0C:  sbb      byte ptr [eax], bl                
0x006BBF0E:  sbb      byte ptr [eax], bl                
0x006BBF10:  sbb      byte ptr [eax], bl                
0x006BBF12:  sbb      byte ptr [eax], bl                
0x006BBF14:  sbb      byte ptr [eax], bl                
0x006BBF16:  sbb      byte ptr [eax], bl                
0x006BBF18:  sbb      byte ptr [eax], bl                
0x006BBF1A:  sbb      byte ptr [eax], bl                
0x006BBF1C:  sbb      byte ptr [eax], bl                
0x006BBF1E:  sbb      byte ptr [eax], bl                
0x006BBF20:  sbb      byte ptr [eax], bl                
0x006BBF22:  sbb      byte ptr [eax], bl                
0x006BBF24:  sbb      byte ptr [eax], bl                
0x006BBF26:  sbb      byte ptr [eax], bl                
0x006BBF28:  sbb      byte ptr [eax], bl                
0x006BBF2A:  sbb      byte ptr [eax], bl                
0x006BBF2C:  sbb      byte ptr [eax], bl                
0x006BBF2E:  sbb      byte ptr [eax], bl                
0x006BBF30:  sbb      byte ptr [eax], bl                
0x006BBF32:  sbb      byte ptr [eax], bl                
0x006BBF34:  sbb      byte ptr [eax], bl                
0x006BBF36:  sbb      byte ptr [eax], bl                
0x006BBF38:  sbb      byte ptr [eax], bl                
0x006BBF3A:  sbb      byte ptr [eax], bl                
0x006BBF3C:  sbb      byte ptr [eax], bl                
0x006BBF3E:  sbb      byte ptr [eax], bl                
0x006BBF40:  sbb      byte ptr [eax], bl                
0x006BBF42:  sbb      byte ptr [eax], bl                
0x006BBF44:  sbb      byte ptr [eax], bl                
0x006BBF46:  sbb      byte ptr [eax], bl                
0x006BBF48:  sbb      byte ptr [eax], bl                
0x006BBF4A:  sbb      byte ptr [eax], bl                
0x006BBF4C:  sbb      byte ptr [eax], bl                
0x006BBF4E:  sbb      byte ptr [eax], bl                
0x006BBF50:  sbb      byte ptr [eax], bl                
0x006BBF52:  sbb      byte ptr [eax], bl                
0x006BBF54:  sbb      byte ptr [eax], bl                
0x006BBF56:  sbb      byte ptr [eax], bl                
0x006BBF58:  sbb      byte ptr [eax], bl                
0x006BBF5A:  sbb      byte ptr [eax], bl                
0x006BBF5C:  sbb      byte ptr [eax], bl                
0x006BBF5E:  sbb      byte ptr [eax], bl                
0x006BBF60:  sbb      byte ptr [eax], bl                
0x006BBF62:  sbb      byte ptr [0xcccc1716], dl         
0x006BBF68:  int3                                       
0x006BBF69:  int3                                       
0x006BBF6A:  int3                                       
0x006BBF6B:  int3                                       
0x006BBF6C:  int3                                       
0x006BBF6D:  int3                                       
0x006BBF6E:  int3                                       
0x006BBF6F:  int3                                       
0x006BBF70:  push     ebp                               
0x006BBF71:  mov      ebp, esp                          
0x006BBF73:  sub      esp, 0x1c                         
0x006BBF76:  mov      dword ptr [ebp - 0xc], 0          
0x006BBF7D:  mov      eax, 1                            
0x006BBF82:  cdq                                        
0x006BBF83:  mov      dword ptr [ebp - 0x14], eax       
0x006BBF86:  mov      dword ptr [ebp - 0x10], edx       
0x006BBF89:  mov      eax, dword ptr [0xb752b8]         
0x006BBF8E:  mov      eax, dword ptr [eax + 0x34]       
0x006BBF91:  cdq                                        
0x006BBF92:  mov      dword ptr [ebp - 0x1c], eax       
0x006BBF95:  mov      dword ptr [ebp - 0x18], edx       
0x006BBF98:  mov      ecx, dword ptr [ebp - 0x14]       
0x006BBF9B:  sub      ecx, dword ptr [ebp - 0x1c]       
0x006BBF9E:  mov      edx, dword ptr [ebp - 0x10]       
0x006BBFA1:  sbb      edx, dword ptr [ebp - 0x18]       
0x006BBFA4:  mov      dword ptr [ebp - 0x1c], ecx       
0x006BBFA7:  mov      dword ptr [ebp - 0x18], edx       
0x006BBFAA:  mov      eax, dword ptr [ebp - 0x1c]       
0x006BBFAD:  mov      edx, dword ptr [ebp - 0x18]       
0x006BBFB0:  mov      cl, 0x3f                          
0x006BBFB2:  call     0x8ecb20                          
0x006BBFB7:  and      eax, dword ptr [ebp - 0x1c]       
0x006BBFBA:  and      edx, dword ptr [ebp - 0x18]       
0x006BBFBD:  mov      ecx, dword ptr [ebp - 0x14]       
0x006BBFC0:  sub      ecx, eax                          
0x006BBFC2:  mov      eax, dword ptr [ebp - 0x10]       
0x006BBFC5:  sbb      eax, edx                          
0x006BBFC7:  mov      dword ptr [ebp - 0x14], ecx       
0x006BBFCA:  mov      dword ptr [ebp - 0x10], eax       
0x006BBFCD:  mov      ecx, dword ptr [ebp - 0x14]       
0x006BBFD0:  mov      dword ptr [ebp - 8], ecx          
0x006BBFD3:  mov      edx, dword ptr [0xb752c8]         
0x006BBFD9:  mov      eax, dword ptr [edx + 0x6c]       
0x006BBFDC:  mov      dword ptr [ebp - 4], eax          
0x006BBFDF:  mov      ecx, dword ptr [ebp - 4]          
0x006BBFE2:  mov      edx, dword ptr [0xb752c8]         
0x006BBFE8:  cmp      dword ptr [edx + ecx*4 + 0x2810], 0
0x006BBFF0:  je       0x6bc0d3                          
0x006BBFF6:  mov      eax, dword ptr [ebp - 4]          
0x006BBFF9:  mov      ecx, dword ptr [0xb752c8]         
0x006BBFFF:  mov      edx, dword ptr [ecx + eax*4 + 0x2810]
0x006BC006:  movsx    eax, byte ptr [edx + 4]           
0x006BC00A:  test     eax, eax                          
0x006BC00C:  jne      0x6bc0cc                          
0x006BC012:  mov      ecx, dword ptr [ebp - 4]          
0x006BC015:  mov      edx, dword ptr [0xb752c8]         
0x006BC01B:  mov      eax, dword ptr [edx + ecx*4 + 0x2810]
0x006BC022:  cmp      dword ptr [eax + 8], 0            
0x006BC026:  je       0x6bc04b                          
0x006BC028:  mov      ecx, dword ptr [0xb752c8]         
0x006BC02E:  mov      edx, dword ptr [ecx + 0xdc]       
0x006BC034:  mov      eax, dword ptr [edx + 4]          
0x006BC037:  or       eax, 0x20                         
0x006BC03A:  mov      ecx, dword ptr [0xb752c8]         
0x006BC040:  mov      edx, dword ptr [ecx + 0xdc]       
0x006BC046:  mov      dword ptr [edx + 4], eax          
0x006BC049:  jmp      0x6bc06a                          
0x006BC04B:  mov      eax, dword ptr [0xb752c8]         
0x006BC050:  mov      ecx, dword ptr [eax + 0xdc]       
0x006BC056:  mov      edx, dword ptr [ecx + 4]          
0x006BC059:  and      edx, 0xffffffdf                   
0x006BC05C:  mov      eax, dword ptr [0xb752c8]         
0x006BC061:  mov      ecx, dword ptr [eax + 0xdc]       
0x006BC067:  mov      dword ptr [ecx + 4], edx          
0x006BC06A:  mov      edx, dword ptr [0xb752c8]         
0x006BC070:  mov      eax, dword ptr [edx + 0xdc]       
0x006BC076:  push     eax                               
0x006BC077:  call     0x5939b0                          
0x006BC07C:  add      esp, 4                            
0x006BC07F:  mov      ecx, dword ptr [0xb752c8]         
0x006BC085:  mov      edx, dword ptr [ecx + 0xdc]       
0x006BC08B:  mov      eax, dword ptr [ebp - 4]          
0x006BC08E:  mov      ecx, dword ptr [0xb752c8]         
0x006BC094:  mov      eax, dword ptr [ecx + eax*4 + 0x2810]
0x006BC09B:  mov      cl, byte ptr [edx + 0xa0]         
0x006BC0A1:  mov      byte ptr [eax + 6], cl            
0x006BC0A4:  mov      edx, dword ptr [ebp - 4]          
0x006BC0A7:  mov      eax, dword ptr [0xb752c8]         
0x006BC0AC:  mov      ecx, dword ptr [eax + edx*4 + 0x2810]
0x006BC0B3:  mov      byte ptr [ecx + 4], 1             
0x006BC0B7:  mov      edx, dword ptr [ebp - 4]          
0x006BC0BA:  mov      dword ptr [0xb75348], edx         
0x006BC0C0:  mov      eax, 1                            
0x006BC0C5:  jmp      0x6bc1c5                          
0x006BC0CA:  jmp      0x6bc0d3                          
0x006BC0CC:  mov      dword ptr [ebp - 0xc], 1          
0x006BC0D3:  mov      eax, dword ptr [0xb752c8]         
0x006BC0D8:  mov      ecx, dword ptr [eax + 0xdc]       
0x006BC0DE:  mov      edx, dword ptr [ecx + 4]          
0x006BC0E1:  and      edx, 0xffffffdf                   
0x006BC0E4:  mov      eax, dword ptr [0xb752c8]         
0x006BC0E9:  mov      ecx, dword ptr [eax + 0xdc]       
0x006BC0EF:  mov      dword ptr [ecx + 4], edx          
0x006BC0F2:  mov      dword ptr [ebp - 4], 0            
0x006BC0F9:  jmp      0x6bc104                          
0x006BC0FB:  mov      edx, dword ptr [ebp - 4]          
0x006BC0FE:  add      edx, 1                            
0x006BC101:  mov      dword ptr [ebp - 4], edx          
0x006BC104:  cmp      dword ptr [ebp - 4], 1            
0x006BC108:  jge      0x6bc1c3                          
0x006BC10E:  mov      eax, dword ptr [ebp - 0xc]        
0x006BC111:  cmp      eax, dword ptr [ebp - 8]          
0x006BC114:  jl       0x6bc11d                          
0x006BC116:  xor      eax, eax                          
0x006BC118:  jmp      0x6bc1c5                          
0x006BC11D:  mov      ecx, dword ptr [0xb752c8]         
0x006BC123:  mov      edx, dword ptr [ebp - 4]          
0x006BC126:  cmp      edx, dword ptr [ecx + 0x6c]       
0x006BC129:  jne      0x6bc12d                          
0x006BC12B:  jmp      0x6bc0fb                          
0x006BC12D:  mov      eax, dword ptr [ebp - 4]          
0x006BC130:  mov      ecx, dword ptr [0xb752c8]         
0x006BC136:  cmp      dword ptr [ecx + eax*4 + 0x2810], 0
0x006BC13E:  je       0x6bc1be                          
0x006BC140:  mov      edx, dword ptr [ebp - 4]          
0x006BC143:  mov      eax, dword ptr [0xb752c8]         
0x006BC148:  mov      ecx, dword ptr [eax + edx*4 + 0x2810]
0x006BC14F:  movsx    edx, byte ptr [ecx + 4]           
0x006BC153:  test     edx, edx                          
0x006BC155:  jne      0x6bc1b5                          
0x006BC157:  mov      eax, dword ptr [0xb752c8]         
0x006BC15C:  mov      ecx, dword ptr [eax + 0xdc]       
0x006BC162:  push     ecx                               
0x006BC163:  call     0x5939b0                          
0x006BC168:  add      esp, 4                            
0x006BC16B:  mov      edx, dword ptr [0xb752c8]         
0x006BC171:  mov      eax, dword ptr [edx + 0xdc]       
0x006BC177:  mov      ecx, dword ptr [ebp - 4]          
0x006BC17A:  mov      edx, dword ptr [0xb752c8]         
0x006BC180:  mov      ecx, dword ptr [edx + ecx*4 + 0x2810]
0x006BC187:  mov      dl, byte ptr [eax + 0xa0]         
0x006BC18D:  mov      byte ptr [ecx + 6], dl            
0x006BC190:  mov      eax, dword ptr [ebp - 4]          
0x006BC193:  mov      ecx, dword ptr [0xb752c8]         
0x006BC199:  mov      edx, dword ptr [ecx + eax*4 + 0x2810]
0x006BC1A0:  mov      byte ptr [edx + 4], 1             
0x006BC1A4:  mov      eax, dword ptr [ebp - 4]          
0x006BC1A7:  mov      dword ptr [0xb75348], eax         
0x006BC1AC:  mov      eax, 1                            
0x006BC1B1:  jmp      0x6bc1c5                          
0x006BC1B3:  jmp      0x6bc1be                          
0x006BC1B5:  mov      ecx, dword ptr [ebp - 0xc]        
0x006BC1B8:  add      ecx, 1                            
0x006BC1BB:  mov      dword ptr [ebp - 0xc], ecx        
0x006BC1BE:  jmp      0x6bc0fb                          
0x006BC1C3:  xor      eax, eax                          
0x006BC1C5:  mov      esp, ebp                          
0x006BC1C7:  pop      ebp                               
0x006BC1C8:  ret                                        
0x006BC1C9:  int3                                       
0x006BC1CA:  int3                                       
0x006BC1CB:  int3                                       
0x006BC1CC:  int3                                       
0x006BC1CD:  int3                                       
0x006BC1CE:  int3                                       
0x006BC1CF:  int3                                       
0x006BC1D0:  push     ebp                               
0x006BC1D1:  mov      ebp, esp                          
0x006BC1D3:  mov      eax, dword ptr [ebp + 0xc]        
0x006BC1D6:  push     eax                               
0x006BC1D7:  push     0                                 
0x006BC1D9:  push     0                                 
0x006BC1DB:  push     0x6bc9d0                          
0x006BC1E0:  push     0x6bc6b0                          
0x006BC1E5:  call     0x589760                          
0x006BC1EA:  add      esp, 0x14                         
0x006BC1ED:  pop      ebp                               
0x006BC1EE:  ret                                        
0x006BC1EF:  int3                                       
0x006BC1F0:  push     ebp                               
0x006BC1F1:  mov      ebp, esp                          
0x006BC1F3:  push     ecx                               
0x006BC1F4:  cmp      dword ptr [0xb4a048], 0           
0x006BC1FB:  je       0x6bc202                          
0x006BC1FD:  call     0x5899c0                          
0x006BC202:  mov      ecx, dword ptr [0xb752c8]         
0x006BC208:  cmp      dword ptr [ecx + 0xe0], 0         
0x006BC20F:  je       0x6bc395                          
0x006BC215:  mov      edx, dword ptr [0xb752c8]         
0x006BC21B:  mov      eax, dword ptr [edx + 0xe0]       
0x006BC221:  mov      ecx, dword ptr [eax + 0x14]       
0x006BC224:  and      ecx, 0x80000                      
0x006BC22A:  je       0x6bc2ec                          
0x006BC230:  mov      dword ptr [ebp - 4], 0            
0x006BC237:  jmp      0x6bc242                          
0x006BC239:  mov      edx, dword ptr [ebp - 4]          
0x006BC23C:  add      edx, 1                            
0x006BC23F:  mov      dword ptr [ebp - 4], edx          
0x006BC242:  mov      eax, dword ptr [0xb752c8]         
0x006BC247:  mov      ecx, dword ptr [ebp - 4]          
0x006BC24A:  cmp      ecx, dword ptr [eax + 0xc4]       
0x006BC250:  jge      0x6bc2ec                          
0x006BC256:  mov      edx, dword ptr [ebp - 4]          
0x006BC259:  imul     edx, edx, 0x124                   
0x006BC25F:  mov      eax, dword ptr [0xb752c8]         
0x006BC264:  cmp      dword ptr [eax + edx + 0x2c0], 0  
0x006BC26C:  je       0x6bc2e7                          
0x006BC26E:  mov      ecx, dword ptr [ebp - 4]          
0x006BC271:  imul     ecx, ecx, 0x124                   
0x006BC277:  mov      edx, dword ptr [0xb752c8]         
0x006BC27D:  movzx    eax, byte ptr [edx + ecx + 0x2b8] 
0x006BC285:  test     eax, eax                          
0x006BC287:  jne      0x6bc2a5                          
0x006BC289:  mov      ecx, dword ptr [ebp - 4]          
0x006BC28C:  imul     ecx, ecx, 0x124                   
0x006BC292:  mov      edx, dword ptr [0xb752c8]         
0x006BC298:  mov      dword ptr [edx + ecx + 0x2c8], 0  
0x006BC2A3:  jmp      0x6bc2e7                          
0x006BC2A5:  mov      eax, dword ptr [ebp - 4]          
0x006BC2A8:  imul     eax, eax, 0x124                   
0x006BC2AE:  mov      ecx, dword ptr [0xb752c8]         
0x006BC2B4:  movzx    edx, byte ptr [ecx + eax + 0x2b8] 
0x006BC2BC:  push     edx                               
0x006BC2BD:  mov      eax, dword ptr [0xb752c8]         
0x006BC2C2:  mov      ecx, dword ptr [eax + 0xe0]       
0x006BC2C8:  push     ecx                               
0x006BC2C9:  call     0x58d110                          
0x006BC2CE:  add      esp, 8                            
0x006BC2D1:  mov      edx, dword ptr [ebp - 4]          
0x006BC2D4:  imul     edx, edx, 0x124                   
0x006BC2DA:  mov      ecx, dword ptr [0xb752c8]         
0x006BC2E0:  mov      dword ptr [ecx + edx + 0x2c8], eax
0x006BC2E7:  jmp      0x6bc239                          
0x006BC2EC:  mov      edx, dword ptr [0xb752b8]         
0x006BC2F2:  cmp      dword ptr [edx + 0x28], 0         
0x006BC2F6:  je       0x6bc31c                          
0x006BC2F8:  mov      eax, dword ptr [0xb752c8]         
0x006BC2FD:  mov      ecx, dword ptr [eax + 0xe0]       
0x006BC303:  mov      edx, dword ptr [ecx + 0x14]       
0x006BC306:  or       edx, 0x80000                      
0x006BC30C:  mov      eax, dword ptr [0xb752c8]         
0x006BC311:  mov      ecx, dword ptr [eax + 0xe0]       
0x006BC317:  mov      dword ptr [ecx + 0x14], edx       
0x006BC31A:  jmp      0x6bc340                          
0x006BC31C:  mov      edx, dword ptr [0xb752c8]         
0x006BC322:  mov      eax, dword ptr [edx + 0xe0]       
0x006BC328:  mov      ecx, dword ptr [eax + 0x14]       
0x006BC32B:  and      ecx, 0xfff7ffff                   
0x006BC331:  mov      edx, dword ptr [0xb752c8]         
0x006BC337:  mov      eax, dword ptr [edx + 0xe0]       
0x006BC33D:  mov      dword ptr [eax + 0x14], ecx       
0x006BC340:  mov      ecx, dword ptr [0xb752b8]         
0x006BC346:  cmp      dword ptr [ecx + 0x24], 0         
0x006BC34A:  jne      0x6bc372                          
0x006BC34C:  mov      edx, dword ptr [0xb752c8]         
0x006BC352:  mov      eax, dword ptr [edx + 0xe0]       
0x006BC358:  mov      ecx, dword ptr [eax + 0x14]       
0x006BC35B:  and      ecx, 0xfffbffff                   
0x006BC361:  mov      edx, dword ptr [0xb752c8]         
0x006BC367:  mov      eax, dword ptr [edx + 0xe0]       
0x006BC36D:  mov      dword ptr [eax + 0x14], ecx       
0x006BC370:  jmp      0x6bc395                          
0x006BC372:  mov      ecx, dword ptr [0xb752c8]         
0x006BC378:  mov      edx, dword ptr [ecx + 0xe0]       
0x006BC37E:  mov      eax, dword ptr [edx + 0x14]       
0x006BC381:  or       eax, 0x40000                      
0x006BC386:  mov      ecx, dword ptr [0xb752c8]         
0x006BC38C:  mov      edx, dword ptr [ecx + 0xe0]       
0x006BC392:  mov      dword ptr [edx + 0x14], eax       
0x006BC395:  mov      esp, ebp                          
0x006BC397:  pop      ebp                               
0x006BC398:  ret                                        
0x006BC399:  int3                                       
0x006BC39A:  int3                                       
0x006BC39B:  int3                                       
0x006BC39C:  int3                                       
0x006BC39D:  int3                                       
0x006BC39E:  int3                                       
0x006BC39F:  int3                                       
0x006BC3A0:  push     ebp                               
0x006BC3A1:  mov      ebp, esp                          
0x006BC3A3:  sub      esp, 8                            
0x006BC3A6:  xor      eax, eax                          
0x006BC3A8:  jne      0x6bc3a6                          
0x006BC3AA:  mov      ecx, dword ptr [0xb68464]         
0x006BC3B0:  mov      edx, dword ptr [ecx + 0x98]       
0x006BC3B6:  mov      dword ptr [ebp - 4], edx          
0x006BC3B9:  xor      eax, eax                          
0x006BC3BB:  jne      0x6bc3b9                          
0x006BC3BD:  mov      ecx, dword ptr [0xb68464]         
0x006BC3C3:  mov      edx, dword ptr [ecx + 0x204]      
0x006BC3C9:  mov      dword ptr [ebp - 8], edx          
0x006BC3CC:  mov      eax, dword ptr [0xb752b8]         
0x006BC3D1:  mov      ecx, dword ptr [eax + 0x1c]       
0x006BC3D4:  push     ecx                               
0x006BC3D5:  push     0x99b780                           ; "PC Steam Server"
0x006BC3DA:  mov      edx, dword ptr [0xb752c8]         
0x006BC3E0:  mov      eax, dword ptr [edx + 0xc0]       
0x006BC3E6:  push     eax                               
0x006BC3E7:  mov      ecx, dword ptr [ebp - 4]          
0x006BC3EA:  push     ecx                               
0x006BC3EB:  mov      edx, dword ptr [ebp - 8]          
0x006BC3EE:  push     edx                               
0x006BC3EF:  mov      eax, dword ptr [0xb752c8]         
0x006BC3F4:  mov      ecx, dword ptr [eax + 0xdc]       
0x006BC3FA:  push     ecx                               
0x006BC3FB:  call     0x58a280                          
0x006BC400:  add      esp, 0x18                         
0x006BC403:  test     eax, eax                          
0x006BC405:  je       0x6bc44f                          
0x006BC407:  call     0x6bd370                          
0x006BC40C:  test     eax, eax                          
0x006BC40E:  jne      0x6bc432                          
0x006BC410:  mov      edx, dword ptr [0xb752e0]         
0x006BC416:  mov      dword ptr [edx + 0x20], 0         
0x006BC41D:  push     0                                 
0x006BC41F:  push     7                                 
0x006BC421:  push     0xc0                              
0x006BC426:  call     0x6b4270                          
0x006BC42B:  add      esp, 0xc                          
0x006BC42E:  xor      eax, eax                          
0x006BC430:  jmp      0x6bc451                          
0x006BC432:  mov      eax, dword ptr [0xb752b8]         
0x006BC437:  mov      ecx, dword ptr [eax + 0xc]        
0x006BC43A:  push     ecx                               
0x006BC43B:  mov      edx, dword ptr [0xb752b8]         
0x006BC441:  mov      eax, dword ptr [edx]              
0x006BC443:  call     eax                               
0x006BC445:  add      esp, 4                            
0x006BC448:  mov      eax, 1                            
0x006BC44D:  jmp      0x6bc451                          
0x006BC44F:  xor      eax, eax                          
0x006BC451:  mov      esp, ebp                          
0x006BC453:  pop      ebp                               
0x006BC454:  ret                                        
0x006BC455:  int3                                       
0x006BC456:  int3                                       
0x006BC457:  int3                                       
0x006BC458:  int3                                       
0x006BC459:  int3                                       
0x006BC45A:  int3                                       
0x006BC45B:  int3                                       
0x006BC45C:  int3                                       
0x006BC45D:  int3                                       
0x006BC45E:  int3                                       
0x006BC45F:  int3                                       
0x006BC460:  push     ebp                               
0x006BC461:  mov      ebp, esp                          
0x006BC463:  push     ecx                               
0x006BC464:  mov      eax, dword ptr [0xb752c8]         
0x006BC469:  mov      ecx, dword ptr [eax + 0xdc]       
0x006BC46F:  push     ecx                               
0x006BC470:  call     0x58a3b0                          
0x006BC475:  add      esp, 4                            
0x006BC478:  test     eax, eax                          
0x006BC47A:  je       0x6bc4c9                          
0x006BC47C:  call     0x6bd370                          
0x006BC481:  mov      dword ptr [ebp - 4], eax          
0x006BC484:  cmp      dword ptr [ebp - 4], 1            
0x006BC488:  je       0x6bc49b                          
0x006BC48A:  mov      edx, dword ptr [0xb752e0]         
0x006BC490:  mov      dword ptr [edx + 0x20], 0         
0x006BC497:  xor      eax, eax                          
0x006BC499:  jne      0x6bc497                          
0x006BC49B:  mov      ecx, dword ptr [0xb752b8]         
0x006BC4A1:  mov      edx, dword ptr [ecx + 0xc]        
0x006BC4A4:  push     edx                               
0x006BC4A5:  mov      eax, dword ptr [0xb752b8]         
0x006BC4AA:  mov      ecx, dword ptr [eax]              
0x006BC4AC:  call     ecx                               
0x006BC4AE:  add      esp, 4                            
0x006BC4B1:  push     0                                 
0x006BC4B3:  push     0                                 
0x006BC4B5:  push     0xb1                              
0x006BC4BA:  call     0x6b4270                          
0x006BC4BF:  add      esp, 0xc                          
0x006BC4C2:  mov      eax, 1                            
0x006BC4C7:  jmp      0x6bc4cb                          
0x006BC4C9:  xor      eax, eax                          
0x006BC4CB:  mov      esp, ebp                          
0x006BC4CD:  pop      ebp                               
0x006BC4CE:  ret                                        
0x006BC4CF:  int3                                       
0x006BC4D0:  push     ebp                               
0x006BC4D1:  mov      ebp, esp                          
0x006BC4D3:  push     ecx                               
0x006BC4D4:  cmp      dword ptr [0xb752e0], 0           
0x006BC4DB:  je       0x6bc4ea                          
0x006BC4DD:  push     0                                 
0x006BC4DF:  mov      ecx, dword ptr [0xb752e0]         
0x006BC4E5:  call     0x6bdc30                          
0x006BC4EA:  call     0x589bb0                          
0x006BC4EF:  mov      eax, dword ptr [0xb752c8]         
0x006BC4F4:  mov      ecx, dword ptr [eax + 0xd0]       
0x006BC4FA:  and      ecx, 4                            
0x006BC4FD:  je       0x6bc531                          
0x006BC4FF:  mov      edx, dword ptr [0xb752b8]         
0x006BC505:  mov      eax, dword ptr [edx + 0xc]        
0x006BC508:  push     eax                               
0x006BC509:  mov      ecx, dword ptr [0xb752b8]         
0x006BC50F:  mov      edx, dword ptr [ecx + 4]          
0x006BC512:  call     edx                               
0x006BC514:  add      esp, 4                            
0x006BC517:  mov      eax, dword ptr [0xb752c8]         
0x006BC51C:  mov      ecx, dword ptr [eax + 0xd0]       
0x006BC522:  and      ecx, 0xfffffffb                   
0x006BC525:  mov      edx, dword ptr [0xb752c8]         
0x006BC52B:  mov      dword ptr [edx + 0xd0], ecx       
0x006BC531:  mov      eax, dword ptr [0xb752b8]         
0x006BC536:  mov      dword ptr [eax + 0x1214], 1       
0x006BC540:  cmp      dword ptr [0xb75360], 0           
0x006BC547:  je       0x6bc55f                          
0x006BC549:  cmp      dword ptr [0xb752e0], 0           
0x006BC550:  je       0x6bc55f                          
0x006BC552:  mov      ecx, dword ptr [0xb75360]         
0x006BC558:  call     0x6c1c80                          
0x006BC55D:  jmp      0x6bc567                          
0x006BC55F:  call     0x6bd3b0                          
0x006BC564:  mov      dword ptr [ebp - 4], eax          
0x006BC567:  mov      eax, 1                            
0x006BC56C:  mov      esp, ebp                          
0x006BC56E:  pop      ebp                               
0x006BC56F:  ret                                        
0x006BC570:  push     ebp                               
0x006BC571:  mov      ebp, esp                          
0x006BC573:  call     0x589bb0                          
0x006BC578:  mov      eax, dword ptr [0xb752c8]         
0x006BC57D:  mov      ecx, dword ptr [eax + 0xd0]       
0x006BC583:  and      ecx, 4                            
0x006BC586:  je       0x6bc5bb                          
0x006BC588:  mov      edx, dword ptr [0xb752c8]         
0x006BC58E:  mov      eax, dword ptr [edx + 0xd0]       
0x006BC594:  and      eax, 0xfffffffb                   
0x006BC597:  mov      ecx, dword ptr [0xb752c8]         
0x006BC59D:  mov      dword ptr [ecx + 0xd0], eax       
0x006BC5A3:  mov      edx, dword ptr [0xb752b8]         
0x006BC5A9:  mov      eax, dword ptr [edx + 0xc]        
0x006BC5AC:  push     eax                               
0x006BC5AD:  mov      ecx, dword ptr [0xb752b8]         
0x006BC5B3:  mov      edx, dword ptr [ecx + 4]          
0x006BC5B6:  call     edx                               
0x006BC5B8:  add      esp, 4                            
0x006BC5BB:  mov      eax, dword ptr [0xb752b8]         
0x006BC5C0:  mov      dword ptr [eax + 0x1214], 1       
0x006BC5CA:  cmp      dword ptr [0xb752e0], 0           
0x006BC5D1:  jne      0x6bc5d7                          
0x006BC5D3:  xor      eax, eax                          
0x006BC5D5:  jmp      0x6bc635                          
0x006BC5D7:  mov      ecx, dword ptr [0xb752c8]         
0x006BC5DD:  mov      edx, dword ptr [ecx + 0xd0]       
0x006BC5E3:  and      edx, 0x400000                     
0x006BC5E9:  je       0x6bc5f7                          
0x006BC5EB:  call     0x6bd3b0                          
0x006BC5F0:  mov      eax, 1                            
0x006BC5F5:  jmp      0x6bc635                          
0x006BC5F7:  mov      eax, dword ptr [0xb752e0]         
0x006BC5FC:  cmp      dword ptr [eax + 0x20], 0         
0x006BC600:  jne      0x6bc609                          
0x006BC602:  mov      eax, 1                            
0x006BC607:  jmp      0x6bc635                          
0x006BC609:  cmp      dword ptr [0xb75360], 0           
0x006BC610:  je       0x6bc62b                          
0x006BC612:  mov      ecx, dword ptr [0xb752e0]         
0x006BC618:  cmp      dword ptr [ecx + 0x3c], 0         
0x006BC61C:  jne      0x6bc62b                          
0x006BC61E:  mov      ecx, dword ptr [0xb75360]         
0x006BC624:  call     0x6c1c80                          
0x006BC629:  jmp      0x6bc630                          
0x006BC62B:  call     0x6bd3b0                          
0x006BC630:  mov      eax, 1                            
0x006BC635:  pop      ebp                               
0x006BC636:  ret                                        
0x006BC637:  int3                                       
0x006BC638:  int3                                       
0x006BC639:  int3                                       
0x006BC63A:  int3                                       
0x006BC63B:  int3                                       
0x006BC63C:  int3                                       
0x006BC63D:  int3                                       
0x006BC63E:  int3                                       
0x006BC63F:  int3                                       
0x006BC640:  push     ebp                               
0x006BC641:  mov      ebp, esp                          
0x006BC643:  sub      esp, 0x10                         
0x006BC646:  lea      ecx, [ebp - 0x10]                 
0x006BC649:  call     0x6b7dd0                          
0x006BC64E:  cmp      dword ptr [0xb7534c], 0           
0x006BC655:  jne      0x6bc659                          
0x006BC657:  jmp      0x6bc6a6                          
0x006BC659:  movzx    eax, byte ptr [ebp + 0xc]         
0x006BC65D:  push     eax                               
0x006BC65E:  call     0x6bd590                          
0x006BC663:  add      esp, 4                            
0x006BC666:  mov      dword ptr [ebp - 8], eax          
0x006BC669:  mov      dword ptr [ebp - 4], edx          
0x006BC66C:  mov      ecx, dword ptr [ebp - 8]          
0x006BC66F:  or       ecx, dword ptr [ebp - 4]          
0x006BC672:  jne      0x6bc676                          
0x006BC674:  jmp      0x6bc6a6                          
0x006BC676:  mov      edx, dword ptr [ebp - 8]          
0x006BC679:  mov      dword ptr [ebp - 0x10], edx       
0x006BC67C:  mov      eax, dword ptr [ebp - 4]          
0x006BC67F:  mov      dword ptr [ebp - 0xc], eax        
0x006BC682:  mov      ecx, dword ptr [ebp - 0xc]        
0x006BC685:  push     ecx                               
0x006BC686:  mov      edx, dword ptr [ebp - 0x10]       
0x006BC689:  push     edx                               
0x006BC68A:  mov      ecx, dword ptr [0xb7534c]         
0x006BC690:  call     0x6bd710                          
0x006BC695:  push     0                                 
0x006BC697:  push     0                                 
0x006BC699:  movzx    eax, byte ptr [ebp + 0xc]         
0x006BC69D:  push     eax                               
0x006BC69E:  call     0x6bd560                          
0x006BC6A3:  add      esp, 0xc                          
0x006BC6A6:  mov      esp, ebp                          
0x006BC6A8:  pop      ebp                               
0x006BC6A9:  ret                                        
0x006BC6AA:  int3                                       
0x006BC6AB:  int3                                       
0x006BC6AC:  int3                                       
0x006BC6AD:  int3                                       
0x006BC6AE:  int3                                       
0x006BC6AF:  int3                                       
0x006BC6B0:  push     ebp                               
0x006BC6B1:  mov      ebp, esp                          
0x006BC6B3:  sub      esp, 0x2c                         
0x006BC6B6:  mov      eax, dword ptr [ebp + 0xc]        
0x006BC6B9:  mov      dword ptr [ebp - 0x2c], eax       
0x006BC6BC:  cmp      dword ptr [ebp - 0x2c], 0x2b      
0x006BC6C0:  ja       0x6bc93a                          
0x006BC6C6:  mov      ecx, dword ptr [ebp - 0x2c]       
0x006BC6C9:  movzx    edx, byte ptr [ecx + 0x6bc998]    
0x006BC6D0:  jmp      dword ptr [edx*4 + 0x6bc974]      
0x006BC6D7:  jmp      0x6bc940                          
0x006BC6DC:  mov      eax, dword ptr [0xb752e0]         
0x006BC6E1:  mov      dword ptr [eax + 0x18], 1         
0x006BC6E8:  mov      ecx, dword ptr [0xb752e0]         
0x006BC6EE:  mov      dword ptr [ecx + 0x1c], 1         
0x006BC6F5:  mov      ecx, dword ptr [0xb752e0]         
0x006BC6FB:  call     0x6be310                          
0x006BC700:  mov      edx, dword ptr [0xb752c8]         
0x006BC706:  mov      eax, dword ptr [edx + 0xe0]       
0x006BC70C:  push     eax                               
0x006BC70D:  call     0x58d270                          
0x006BC712:  add      esp, 4                            
0x006BC715:  mov      ecx, dword ptr [0xb752c8]         
0x006BC71B:  mov      dword ptr [ecx + 0xc4], eax       
0x006BC721:  jmp      0x6bc96e                          
0x006BC726:  mov      edx, dword ptr [ebp + 0x10]       
0x006BC729:  push     edx                               
0x006BC72A:  call     0x6b8030                          
0x006BC72F:  add      esp, 4                            
0x006BC732:  jmp      0x6bc96e                          
0x006BC737:  mov      eax, dword ptr [ebp + 0x10]       
0x006BC73A:  mov      dword ptr [ebp - 0x18], eax       
0x006BC73D:  mov      ecx, dword ptr [ebp - 0x18]       
0x006BC740:  mov      dl, byte ptr [ecx + 8]            
0x006BC743:  mov      byte ptr [ebp - 1], dl            
0x006BC746:  mov      eax, dword ptr [ebp - 0x18]       
0x006BC749:  mov      ecx, dword ptr [eax + 0xc]        
0x006BC74C:  mov      dword ptr [ebp - 0xc], ecx        
0x006BC74F:  mov      edx, dword ptr [ebp - 0xc]        
0x006BC752:  push     edx                               
0x006BC753:  mov      eax, dword ptr [ebp + 8]          
0x006BC756:  mov      ecx, dword ptr [eax + 0x44]       
0x006BC759:  push     ecx                               
0x006BC75A:  call     0x593750                          
0x006BC75F:  add      esp, 8                            
0x006BC762:  mov      dword ptr [ebp - 0x10], eax       
0x006BC765:  mov      edx, dword ptr [ebp - 0x10]       
0x006BC768:  mov      eax, dword ptr [edx + 0xc]        
0x006BC76B:  mov      dword ptr [ebp - 8], eax          
0x006BC76E:  cmp      dword ptr [ebp - 8], 0            
0x006BC772:  jge      0x6bc77c                          
0x006BC774:  call     0x6bf300                          
0x006BC779:  mov      dword ptr [ebp - 8], eax          
0x006BC77C:  cmp      dword ptr [ebp - 8], 0            
0x006BC780:  jl       0x6bc806                          
0x006BC786:  mov      ecx, dword ptr [ebp - 0x10]       
0x006BC789:  mov      edx, dword ptr [ebp - 8]          
0x006BC78C:  mov      dword ptr [ecx + 0xc], edx        
0x006BC78F:  mov      eax, dword ptr [ebp - 8]          
0x006BC792:  imul     eax, eax, 0x124                   
0x006BC798:  mov      ecx, dword ptr [0xb752c8]         
0x006BC79E:  lea      edx, [ecx + eax + 0x2b8]          
0x006BC7A5:  mov      dword ptr [ebp - 0x14], edx       
0x006BC7A8:  mov      eax, dword ptr [ebp - 0x14]       
0x006BC7AB:  mov      ecx, dword ptr [ebp - 8]          
0x006BC7AE:  mov      dword ptr [eax + 0xd4], ecx       
0x006BC7B4:  mov      edx, dword ptr [ebp - 0x14]       
0x006BC7B7:  mov      al, byte ptr [ebp - 1]            
0x006BC7BA:  mov      byte ptr [edx], al                
0x006BC7BC:  mov      ecx, dword ptr [ebp - 0x14]       
0x006BC7BF:  mov      edx, dword ptr [ecx + 0xc]        
0x006BC7C2:  or       edx, 1                            
0x006BC7C5:  mov      eax, dword ptr [ebp - 0x14]       
0x006BC7C8:  mov      dword ptr [eax + 0xc], edx        
0x006BC7CB:  mov      ecx, dword ptr [ebp - 0x14]       
0x006BC7CE:  mov      dword ptr [ecx + 4], 0            
0x006BC7D5:  xor      edx, edx                          
0x006BC7D7:  mov      eax, dword ptr [ebp - 0x14]       
0x006BC7DA:  mov      word ptr [eax + 0x10c], dx        
0x006BC7E1:  xor      ecx, ecx                          
0x006BC7E3:  mov      edx, dword ptr [ebp - 0x14]       
0x006BC7E6:  mov      word ptr [edx + 0x10e], cx        
0x006BC7ED:  xor      eax, eax                          
0x006BC7EF:  mov      ecx, dword ptr [ebp - 0x14]       
0x006BC7F2:  mov      word ptr [ecx + 0x104], ax        
0x006BC7F9:  mov      edx, dword ptr [ebp - 0x14]       
0x006BC7FC:  mov      dword ptr [edx + 0x108], 0        
0x006BC806:  mov      eax, dword ptr [0xb752c8]         
0x006BC80B:  mov      ecx, dword ptr [eax + 0xe0]       
0x006BC811:  push     ecx                               
0x006BC812:  call     0x58d270                          
0x006BC817:  add      esp, 4                            
0x006BC81A:  mov      edx, dword ptr [0xb752c8]         
0x006BC820:  mov      dword ptr [edx + 0xc4], eax       
0x006BC826:  mov      eax, dword ptr [0xb752e0]         
0x006BC82B:  mov      dword ptr [eax + 0x1c], 1         
0x006BC832:  call     0x6b3dc0                          
0x006BC837:  jmp      0x6bc96e                          
0x006BC83C:  mov      ecx, dword ptr [ebp + 0x10]       
0x006BC83F:  mov      dword ptr [ebp - 0x24], ecx       
0x006BC842:  mov      edx, dword ptr [ebp - 0x24]       
0x006BC845:  mov      eax, dword ptr [edx + 0x14]       
0x006BC848:  mov      dword ptr [ebp - 0x1c], eax       
0x006BC84B:  mov      ecx, dword ptr [ebp - 0x1c]       
0x006BC84E:  imul     ecx, ecx, 0x124                   
0x006BC854:  mov      edx, dword ptr [0xb752c8]         
0x006BC85A:  lea      eax, [edx + ecx + 0x2b8]          
0x006BC861:  mov      dword ptr [ebp - 0x20], eax       
0x006BC864:  mov      ecx, dword ptr [ebp - 0x20]       
0x006BC867:  mov      edx, dword ptr [ecx + 0xc]        
0x006BC86A:  or       edx, 0x10                         
0x006BC86D:  mov      eax, dword ptr [ebp - 0x20]       
0x006BC870:  mov      dword ptr [eax + 0xc], edx        
0x006BC873:  mov      ecx, dword ptr [ebp - 0x20]       
0x006BC876:  mov      dword ptr [ecx + 0xe8], 5         
0x006BC880:  mov      edx, dword ptr [0xb752e0]         
0x006BC886:  mov      dword ptr [edx + 0x1c], 1         
0x006BC88D:  mov      dword ptr [0xb75364], 1           
0x006BC897:  mov      eax, dword ptr [ebp - 0x20]       
0x006BC89A:  movzx    ecx, byte ptr [eax]               
0x006BC89D:  push     ecx                               
0x006BC89E:  mov      edx, dword ptr [ebp + 8]          
0x006BC8A1:  push     edx                               
0x006BC8A2:  call     0x6bc640                          
0x006BC8A7:  add      esp, 8                            
0x006BC8AA:  jmp      0x6bc940                          
0x006BC8AF:  mov      eax, dword ptr [ebp + 0x10]       
0x006BC8B2:  mov      dword ptr [ebp - 0x28], eax       
0x006BC8B5:  mov      ecx, dword ptr [0xb752c8]         
0x006BC8BB:  mov      dword ptr [ecx + 0x108], 0        
0x006BC8C5:  mov      edx, dword ptr [0xb752c8]         
0x006BC8CB:  mov      eax, dword ptr [edx + 0xe0]       
0x006BC8D1:  push     eax                               
0x006BC8D2:  call     0x58d270                          
0x006BC8D7:  add      esp, 4                            
0x006BC8DA:  mov      ecx, dword ptr [0xb752c8]         
0x006BC8E0:  mov      dword ptr [ecx + 0xc4], eax       
0x006BC8E6:  mov      edx, dword ptr [0xb752e0]         
0x006BC8EC:  mov      dword ptr [edx + 0x18], 1         
0x006BC8F3:  mov      eax, dword ptr [0xb752e0]         
0x006BC8F8:  mov      dword ptr [eax + 0x1c], 1         
0x006BC8FF:  mov      ecx, dword ptr [0xb752c8]         
0x006BC905:  mov      edx, dword ptr [ecx + 0xe0]       
0x006BC90B:  push     edx                               
0x006BC90C:  call     0x58d270                          
0x006BC911:  add      esp, 4                            
0x006BC914:  mov      ecx, dword ptr [0xb752c8]         
0x006BC91A:  mov      dword ptr [ecx + 0xc4], eax       
0x006BC920:  mov      edx, dword ptr [ebp - 0x28]       
0x006BC923:  movzx    eax, byte ptr [edx + 8]           
0x006BC927:  push     eax                               
0x006BC928:  mov      ecx, dword ptr [ebp + 8]          
0x006BC92B:  push     ecx                               
0x006BC92C:  call     0x6bc640                          
0x006BC931:  add      esp, 8                            
0x006BC934:  jmp      0x6bc96e                          
0x006BC936:  jmp      0x6bc96e                          
0x006BC938:  jmp      0x6bc96e                          
0x006BC93A:  xor      edx, edx                          
0x006BC93C:  jne      0x6bc93a                          
0x006BC93E:  jmp      0x6bc96e                          
0x006BC940:  mov      eax, dword ptr [0xb752b8]         
0x006BC945:  cmp      dword ptr [eax + 0x10], 0         
0x006BC949:  je       0x6bc96e                          
0x006BC94B:  mov      ecx, dword ptr [0xb752b8]         
0x006BC951:  mov      edx, dword ptr [ecx + 0xc]        
0x006BC954:  push     edx                               
0x006BC955:  mov      eax, dword ptr [ebp + 0x10]       
0x006BC958:  push     eax                               
0x006BC959:  mov      ecx, dword ptr [ebp + 0xc]        
0x006BC95C:  push     ecx                               
0x006BC95D:  mov      edx, dword ptr [ebp + 8]          
0x006BC960:  push     edx                               
0x006BC961:  mov      eax, dword ptr [0xb752b8]         
0x006BC966:  mov      ecx, dword ptr [eax + 0x10]       
0x006BC969:  call     ecx                               
0x006BC96B:  add      esp, 0x10                         
0x006BC96E:  mov      esp, ebp                          
0x006BC970:  pop      ebp                               
0x006BC971:  ret                                        
0x006BC972:  mov      edi, edi                          
0x006BC974:  xlatb                                      
