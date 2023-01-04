
stack-example:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	f3 0f 1e fb          	endbr32 
    1004:	53                   	push   ebx
    1005:	83 ec 08             	sub    esp,0x8
    1008:	e8 a3 00 00 00       	call   10b0 <__x86.get_pc_thunk.bx>
    100d:	81 c3 cb 2f 00 00    	add    ebx,0x2fcb
    1013:	8b 83 1c 00 00 00    	mov    eax,DWORD PTR [ebx+0x1c]
    1019:	85 c0                	test   eax,eax
    101b:	74 02                	je     101f <_init+0x1f>
    101d:	ff d0                	call   eax
    101f:	83 c4 08             	add    esp,0x8
    1022:	5b                   	pop    ebx
    1023:	c3                   	ret    

Disassembly of section .plt:

00001030 <.plt>:
    1030:	ff b3 04 00 00 00    	push   DWORD PTR [ebx+0x4]
    1036:	ff a3 08 00 00 00    	jmp    DWORD PTR [ebx+0x8]
    103c:	00 00                	add    BYTE PTR [eax],al
	...

00001040 <printf@plt>:
    1040:	ff a3 0c 00 00 00    	jmp    DWORD PTR [ebx+0xc]
    1046:	68 00 00 00 00       	push   0x0
    104b:	e9 e0 ff ff ff       	jmp    1030 <.plt>

00001050 <__libc_start_main@plt>:
    1050:	ff a3 10 00 00 00    	jmp    DWORD PTR [ebx+0x10]
    1056:	68 08 00 00 00       	push   0x8
    105b:	e9 d0 ff ff ff       	jmp    1030 <.plt>

Disassembly of section .plt.got:

00001060 <__cxa_finalize@plt>:
    1060:	ff a3 18 00 00 00    	jmp    DWORD PTR [ebx+0x18]
    1066:	66 90                	xchg   ax,ax

Disassembly of section .text:

00001070 <_start>:
    1070:	f3 0f 1e fb          	endbr32 
    1074:	31 ed                	xor    ebp,ebp
    1076:	5e                   	pop    esi
    1077:	89 e1                	mov    ecx,esp
    1079:	83 e4 f0             	and    esp,0xfffffff0
    107c:	50                   	push   eax
    107d:	54                   	push   esp
    107e:	52                   	push   edx
    107f:	e8 22 00 00 00       	call   10a6 <_start+0x36>
    1084:	81 c3 54 2f 00 00    	add    ebx,0x2f54
    108a:	8d 83 c8 d2 ff ff    	lea    eax,[ebx-0x2d38]
    1090:	50                   	push   eax
    1091:	8d 83 58 d2 ff ff    	lea    eax,[ebx-0x2da8]
    1097:	50                   	push   eax
    1098:	51                   	push   ecx
    1099:	56                   	push   esi
    109a:	ff b3 20 00 00 00    	push   DWORD PTR [ebx+0x20]
    10a0:	e8 ab ff ff ff       	call   1050 <__libc_start_main@plt>
    10a5:	f4                   	hlt    
    10a6:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    10a9:	c3                   	ret    
    10aa:	66 90                	xchg   ax,ax
    10ac:	66 90                	xchg   ax,ax
    10ae:	66 90                	xchg   ax,ax

000010b0 <__x86.get_pc_thunk.bx>:
    10b0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    10b3:	c3                   	ret    
    10b4:	66 90                	xchg   ax,ax
    10b6:	66 90                	xchg   ax,ax
    10b8:	66 90                	xchg   ax,ax
    10ba:	66 90                	xchg   ax,ax
    10bc:	66 90                	xchg   ax,ax
    10be:	66 90                	xchg   ax,ax

000010c0 <deregister_tm_clones>:
    10c0:	e8 e4 00 00 00       	call   11a9 <__x86.get_pc_thunk.dx>
    10c5:	81 c2 13 2f 00 00    	add    edx,0x2f13
    10cb:	8d 8a 30 00 00 00    	lea    ecx,[edx+0x30]
    10d1:	8d 82 30 00 00 00    	lea    eax,[edx+0x30]
    10d7:	39 c8                	cmp    eax,ecx
    10d9:	74 1d                	je     10f8 <deregister_tm_clones+0x38>
    10db:	8b 82 14 00 00 00    	mov    eax,DWORD PTR [edx+0x14]
    10e1:	85 c0                	test   eax,eax
    10e3:	74 13                	je     10f8 <deregister_tm_clones+0x38>
    10e5:	55                   	push   ebp
    10e6:	89 e5                	mov    ebp,esp
    10e8:	83 ec 14             	sub    esp,0x14
    10eb:	51                   	push   ecx
    10ec:	ff d0                	call   eax
    10ee:	83 c4 10             	add    esp,0x10
    10f1:	c9                   	leave  
    10f2:	c3                   	ret    
    10f3:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
    10f7:	90                   	nop
    10f8:	c3                   	ret    
    10f9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00001100 <register_tm_clones>:
    1100:	e8 a4 00 00 00       	call   11a9 <__x86.get_pc_thunk.dx>
    1105:	81 c2 d3 2e 00 00    	add    edx,0x2ed3
    110b:	55                   	push   ebp
    110c:	89 e5                	mov    ebp,esp
    110e:	53                   	push   ebx
    110f:	8d 8a 30 00 00 00    	lea    ecx,[edx+0x30]
    1115:	8d 82 30 00 00 00    	lea    eax,[edx+0x30]
    111b:	83 ec 04             	sub    esp,0x4
    111e:	29 c8                	sub    eax,ecx
    1120:	89 c3                	mov    ebx,eax
    1122:	c1 e8 1f             	shr    eax,0x1f
    1125:	c1 fb 02             	sar    ebx,0x2
    1128:	01 d8                	add    eax,ebx
    112a:	d1 f8                	sar    eax,1
    112c:	74 14                	je     1142 <register_tm_clones+0x42>
    112e:	8b 92 24 00 00 00    	mov    edx,DWORD PTR [edx+0x24]
    1134:	85 d2                	test   edx,edx
    1136:	74 0a                	je     1142 <register_tm_clones+0x42>
    1138:	83 ec 08             	sub    esp,0x8
    113b:	50                   	push   eax
    113c:	51                   	push   ecx
    113d:	ff d2                	call   edx
    113f:	83 c4 10             	add    esp,0x10
    1142:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
    1145:	c9                   	leave  
    1146:	c3                   	ret    
    1147:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
    114e:	66 90                	xchg   ax,ax

00001150 <__do_global_dtors_aux>:
    1150:	f3 0f 1e fb          	endbr32 
    1154:	55                   	push   ebp
    1155:	89 e5                	mov    ebp,esp
    1157:	53                   	push   ebx
    1158:	e8 53 ff ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    115d:	81 c3 7b 2e 00 00    	add    ebx,0x2e7b
    1163:	83 ec 04             	sub    esp,0x4
    1166:	80 bb 30 00 00 00 00 	cmp    BYTE PTR [ebx+0x30],0x0
    116d:	75 27                	jne    1196 <__do_global_dtors_aux+0x46>
    116f:	8b 83 18 00 00 00    	mov    eax,DWORD PTR [ebx+0x18]
    1175:	85 c0                	test   eax,eax
    1177:	74 11                	je     118a <__do_global_dtors_aux+0x3a>
    1179:	83 ec 0c             	sub    esp,0xc
    117c:	ff b3 2c 00 00 00    	push   DWORD PTR [ebx+0x2c]
    1182:	e8 d9 fe ff ff       	call   1060 <__cxa_finalize@plt>
    1187:	83 c4 10             	add    esp,0x10
    118a:	e8 31 ff ff ff       	call   10c0 <deregister_tm_clones>
    118f:	c6 83 30 00 00 00 01 	mov    BYTE PTR [ebx+0x30],0x1
    1196:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
    1199:	c9                   	leave  
    119a:	c3                   	ret    
    119b:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
    119f:	90                   	nop

000011a0 <frame_dummy>:
    11a0:	f3 0f 1e fb          	endbr32 
    11a4:	e9 57 ff ff ff       	jmp    1100 <register_tm_clones>

000011a9 <__x86.get_pc_thunk.dx>:
    11a9:	8b 14 24             	mov    edx,DWORD PTR [esp]
    11ac:	c3                   	ret    

000011ad <function>:
#include <stdio.h>

int function(int a, const char *s)
{
    11ad:	55                   	push   ebp
    11ae:	89 e5                	mov    ebp,esp
    11b0:	83 ec 10             	sub    esp,0x10
    int c = 0;
    11b3:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
    while (s[c] != 0) c++;
    11ba:	eb 04                	jmp    11c0 <function+0x13>
    11bc:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    11c0:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    11c3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    11c6:	01 d0                	add    eax,edx
    11c8:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    11cb:	84 c0                	test   al,al
    11cd:	75 ed                	jne    11bc <function+0xf>
    
    return c - a;
    11cf:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    11d2:	2b 45 08             	sub    eax,DWORD PTR [ebp+0x8]
}
    11d5:	c9                   	leave  
    11d6:	c3                   	ret    

000011d7 <main>:

const char string[] = "Hello world!";

int main()
{
    11d7:	8d 4c 24 04          	lea    ecx,[esp+0x4]
    11db:	83 e4 f0             	and    esp,0xfffffff0
    11de:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
    11e1:	55                   	push   ebp
    11e2:	89 e5                	mov    ebp,esp
    11e4:	51                   	push   ecx
    11e5:	83 ec 14             	sub    esp,0x14
    int x, y;
    y = 10;
    11e8:	c7 45 f4 0a 00 00 00 	mov    DWORD PTR [ebp-0xc],0xa
    x = function(y, string);
    11ef:	68 08 20 00 00       	push   0x2008
    11f4:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    11f7:	e8 b1 ff ff ff       	call   11ad <function>
    11fc:	83 c4 08             	add    esp,0x8
    11ff:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax

    printf("x = %d\n", x);
    1202:	83 ec 08             	sub    esp,0x8
    1205:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    1208:	68 15 20 00 00       	push   0x2015
    120d:	e8 fc ff ff ff       	call   120e <main+0x37>
    1212:	83 c4 10             	add    esp,0x10
    return 0;
    1215:	b8 00 00 00 00       	mov    eax,0x0
}
    121a:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
    121d:	c9                   	leave  
    121e:	8d 61 fc             	lea    esp,[ecx-0x4]
    1221:	c3                   	ret    
    1222:	66 90                	xchg   ax,ax
    1224:	66 90                	xchg   ax,ax
    1226:	66 90                	xchg   ax,ax
    1228:	66 90                	xchg   ax,ax
    122a:	66 90                	xchg   ax,ax
    122c:	66 90                	xchg   ax,ax
    122e:	66 90                	xchg   ax,ax

00001230 <__libc_csu_init>:
    1230:	f3 0f 1e fb          	endbr32 
    1234:	55                   	push   ebp
    1235:	e8 6b 00 00 00       	call   12a5 <__x86.get_pc_thunk.bp>
    123a:	81 c5 9e 2d 00 00    	add    ebp,0x2d9e
    1240:	57                   	push   edi
    1241:	56                   	push   esi
    1242:	53                   	push   ebx
    1243:	83 ec 0c             	sub    esp,0xc
    1246:	89 eb                	mov    ebx,ebp
    1248:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
    124c:	e8 af fd ff ff       	call   1000 <_init>
    1251:	8d 9d fc fe ff ff    	lea    ebx,[ebp-0x104]
    1257:	8d 85 f8 fe ff ff    	lea    eax,[ebp-0x108]
    125d:	29 c3                	sub    ebx,eax
    125f:	c1 fb 02             	sar    ebx,0x2
    1262:	74 29                	je     128d <__libc_csu_init+0x5d>
    1264:	31 f6                	xor    esi,esi
    1266:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
    126d:	8d 76 00             	lea    esi,[esi+0x0]
    1270:	83 ec 04             	sub    esp,0x4
    1273:	57                   	push   edi
    1274:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
    1278:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
    127c:	ff 94 b5 f8 fe ff ff 	call   DWORD PTR [ebp+esi*4-0x108]
    1283:	83 c6 01             	add    esi,0x1
    1286:	83 c4 10             	add    esp,0x10
    1289:	39 f3                	cmp    ebx,esi
    128b:	75 e3                	jne    1270 <__libc_csu_init+0x40>
    128d:	83 c4 0c             	add    esp,0xc
    1290:	5b                   	pop    ebx
    1291:	5e                   	pop    esi
    1292:	5f                   	pop    edi
    1293:	5d                   	pop    ebp
    1294:	c3                   	ret    
    1295:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
    129c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

000012a0 <__libc_csu_fini>:
    12a0:	f3 0f 1e fb          	endbr32 
    12a4:	c3                   	ret    

000012a5 <__x86.get_pc_thunk.bp>:
    12a5:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
    12a8:	c3                   	ret    

Disassembly of section .fini:

000012ac <_fini>:
    12ac:	f3 0f 1e fb          	endbr32 
    12b0:	53                   	push   ebx
    12b1:	83 ec 08             	sub    esp,0x8
    12b4:	e8 f7 fd ff ff       	call   10b0 <__x86.get_pc_thunk.bx>
    12b9:	81 c3 1f 2d 00 00    	add    ebx,0x2d1f
    12bf:	83 c4 08             	add    esp,0x8
    12c2:	5b                   	pop    ebx
    12c3:	c3                   	ret    
