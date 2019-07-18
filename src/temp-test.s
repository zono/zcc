.intel_syntax noprefix
.data
var1:
  .ascii "\000\000\000\000"
var2:
  .ascii "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
.L.str0:
  .ascii "%s => %d\n\000"
.L.str1:
  .ascii "0\000"
.L.str2:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str3:
  .ascii "0\000"
.L.str4:
  .ascii "%s => %d\n\000"
.L.str5:
  .ascii "1\000"
.L.str6:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str7:
  .ascii "1\000"
.L.str8:
  .ascii "%s => %d\n\000"
.L.str9:
  .ascii "1 + 1\000"
.L.str10:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str11:
  .ascii "1 + 1\000"
.L.str12:
  .ascii "%s => %d\n\000"
.L.str13:
  .ascii "2 * 3 + 4\000"
.L.str14:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str15:
  .ascii "2 * 3 + 4\000"
.L.str16:
  .ascii "%s => %d\n\000"
.L.str17:
  .ascii "2 * 3 + 4 * 5\000"
.L.str18:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str19:
  .ascii "2 * 3 + 4 * 5\000"
.L.str20:
  .ascii "%s => %d\n\000"
.L.str21:
  .ascii "50 / 10\000"
.L.str22:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str23:
  .ascii "50 / 10\000"
.L.str24:
  .ascii "%s => %d\n\000"
.L.str25:
  .ascii "6 * 3 / 2\000"
.L.str26:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str27:
  .ascii "6 * 3 / 2\000"
.L.str28:
  .ascii "%s => %d\n\000"
.L.str29:
  .ascii "(2 + 3) * (4 + 5)\000"
.L.str30:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str31:
  .ascii "(2 + 3) * (4 + 5)\000"
.L.str32:
  .ascii "%s => %d\n\000"
.L.str33:
  .ascii "1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 11 + 12 + 13 + 14 + 15 + 16 + 17\000"
.L.str34:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str35:
  .ascii "1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 11 + 12 + 13 + 14 + 15 + 16 + 17\000"
.L.str36:
  .ascii "%s => %d\n\000"
.L.str37:
  .ascii "({ int a=2; return a; })\000"
.L.str38:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str39:
  .ascii "({ int a=2; return a; })\000"
.L.str40:
  .ascii "%s => %d\n\000"
.L.str41:
  .ascii "({ int a=2; int b; b=3+2; return a*b; })\000"
.L.str42:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str43:
  .ascii "({ int a=2; int b; b=3+2; return a*b; })\000"
.L.str44:
  .ascii "%s => %d\n\000"
.L.str45:
  .ascii "({ if (1) return 2; return 3; })\000"
.L.str46:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str47:
  .ascii "({ if (1) return 2; return 3; })\000"
.L.str48:
  .ascii "%s => %d\n\000"
.L.str49:
  .ascii "({ if (0) return 2; return 3; })\000"
.L.str50:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str51:
  .ascii "({ if (0) return 2; return 3; })\000"
.L.str52:
  .ascii "%s => %d\n\000"
.L.str53:
  .ascii "({ if (1) return 2; else return 3; })\000"
.L.str54:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str55:
  .ascii "({ if (1) return 2; else return 3; })\000"
.L.str56:
  .ascii "%s => %d\n\000"
.L.str57:
  .ascii "({ if (0) return 2; else return 3; })\000"
.L.str58:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str59:
  .ascii "({ if (0) return 2; else return 3; })\000"
.L.str60:
  .ascii "%s => %d\n\000"
.L.str61:
  .ascii "plus(2, 3)\000"
.L.str62:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str63:
  .ascii "plus(2, 3)\000"
.L.str64:
  .ascii "%s => %d\n\000"
.L.str65:
  .ascii "one()\000"
.L.str66:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str67:
  .ascii "one()\000"
.L.str68:
  .ascii "%s => %d\n\000"
.L.str69:
  .ascii "one() + two()\000"
.L.str70:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str71:
  .ascii "one() + two()\000"
.L.str72:
  .ascii "%s => %d\n\000"
.L.str73:
  .ascii "mul(2, 3)\000"
.L.str74:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str75:
  .ascii "mul(2, 3)\000"
.L.str76:
  .ascii "%s => %d\n\000"
.L.str77:
  .ascii "add(1, 2, 3, 4, 5, 6)\000"
.L.str78:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str79:
  .ascii "add(1, 2, 3, 4, 5, 6)\000"
.L.str80:
  .ascii "%s => %d\n\000"
.L.str81:
  .ascii "0 || 0\000"
.L.str82:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str83:
  .ascii "0 || 0\000"
.L.str84:
  .ascii "%s => %d\n\000"
.L.str85:
  .ascii "1 || 0\000"
.L.str86:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str87:
  .ascii "1 || 0\000"
.L.str88:
  .ascii "%s => %d\n\000"
.L.str89:
  .ascii "0 || 1\000"
.L.str90:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str91:
  .ascii "0 || 1\000"
.L.str92:
  .ascii "%s => %d\n\000"
.L.str93:
  .ascii "1 || 1\000"
.L.str94:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str95:
  .ascii "1 || 1\000"
.L.str96:
  .ascii "%s => %d\n\000"
.L.str97:
  .ascii "0 && 0\000"
.L.str98:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str99:
  .ascii "0 && 0\000"
.L.str100:
  .ascii "%s => %d\n\000"
.L.str101:
  .ascii "1 && 0\000"
.L.str102:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str103:
  .ascii "1 && 0\000"
.L.str104:
  .ascii "%s => %d\n\000"
.L.str105:
  .ascii "0 && 1\000"
.L.str106:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str107:
  .ascii "0 && 1\000"
.L.str108:
  .ascii "%s => %d\n\000"
.L.str109:
  .ascii "1 && 1\000"
.L.str110:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str111:
  .ascii "1 && 1\000"
.L.str112:
  .ascii "%s => %d\n\000"
.L.str113:
  .ascii "0 < 0\000"
.L.str114:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str115:
  .ascii "0 < 0\000"
.L.str116:
  .ascii "%s => %d\n\000"
.L.str117:
  .ascii "1 < 0\000"
.L.str118:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str119:
  .ascii "1 < 0\000"
.L.str120:
  .ascii "%s => %d\n\000"
.L.str121:
  .ascii "0 < 1\000"
.L.str122:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str123:
  .ascii "0 < 1\000"
.L.str124:
  .ascii "%s => %d\n\000"
.L.str125:
  .ascii "0 > 0\000"
.L.str126:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str127:
  .ascii "0 > 0\000"
.L.str128:
  .ascii "%s => %d\n\000"
.L.str129:
  .ascii "0 > 1\000"
.L.str130:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str131:
  .ascii "0 > 1\000"
.L.str132:
  .ascii "%s => %d\n\000"
.L.str133:
  .ascii "1 > 0\000"
.L.str134:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str135:
  .ascii "1 > 0\000"
.L.str136:
  .ascii "%s => %d\n\000"
.L.str137:
  .ascii "4 == 5\000"
.L.str138:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str139:
  .ascii "4 == 5\000"
.L.str140:
  .ascii "%s => %d\n\000"
.L.str141:
  .ascii "5 == 5\000"
.L.str142:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str143:
  .ascii "5 == 5\000"
.L.str144:
  .ascii "%s => %d\n\000"
.L.str145:
  .ascii "4 != 5\000"
.L.str146:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str147:
  .ascii "4 != 5\000"
.L.str148:
  .ascii "%s => %d\n\000"
.L.str149:
  .ascii "5 != 5\000"
.L.str150:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str151:
  .ascii "5 != 5\000"
.L.str152:
  .ascii "%s => %d\n\000"
.L.str153:
  .ascii "({ int x=0; int y=0; do { y=y+x; x=x+1; } while (x < 10); return y; })\000"
.L.str154:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str155:
  .ascii "({ int x=0; int y=0; do { y=y+x; x=x+1; } while (x < 10); return y; })\000"
.L.str156:
  .ascii "%s => %d\n\000"
.L.str157:
  .ascii "({ int sum=0; int i; for (i=10; i<15; i=i+1) sum = sum + i; return sum; })\000"
.L.str158:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str159:
  .ascii "({ int sum=0; int i; for (i=10; i<15; i=i+1) sum = sum + i; return sum; })\000"
.L.str160:
  .ascii "%s => %d\n\000"
.L.str161:
  .ascii "({ int i=1; int j=1; for (int k=0; k<10; k=k+1) { int m=i+j; i=j; j=m; } return i; })\000"
.L.str162:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str163:
  .ascii "({ int i=1; int j=1; for (int k=0; k<10; k=k+1) { int m=i+j; i=j; j=m; } return i; })\000"
.L.str164:
  .ascii "%s => %d\n\000"
.L.str165:
  .ascii "({ int i=0; int j=0; while (i<10) { j=j+i; i=i+1; } return j; })\000"
.L.str166:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str167:
  .ascii "({ int i=0; int j=0; while (i<10) { j=j+i; i=i+1; } return j; })\000"
.L.str168:
  .ascii "%s => %d\n\000"
.L.str169:
  .ascii "({ int ary[2]; *ary=1; *(ary+1)=2; return *ary + *(ary+1); })\000"
.L.str170:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str171:
  .ascii "({ int ary[2]; *ary=1; *(ary+1)=2; return *ary + *(ary+1); })\000"
.L.str172:
  .ascii "%s => %d\n\000"
.L.str173:
  .ascii "({ int x; int *p = &x; x = 5; return *p; })\000"
.L.str174:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str175:
  .ascii "({ int x; int *p = &x; x = 5; return *p; })\000"
.L.str176:
  .ascii "%s => %d\n\000"
.L.str177:
  .ascii "({ int ary[2]; ary[0]=1; ary[1]=2; return ary[0] + ary[0+1]; })\000"
.L.str178:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str179:
  .ascii "({ int ary[2]; ary[0]=1; ary[1]=2; return ary[0] + ary[0+1]; })\000"
.L.str180:
  .ascii "%s => %d\n\000"
.L.str181:
  .ascii "({ int x; int *p = &x; x = 5; return p[0]; })\000"
.L.str182:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str183:
  .ascii "({ int x; int *p = &x; x = 5; return p[0]; })\000"
.L.str184:
  .ascii "%s => %d\n\000"
.L.str185:
  .ascii "({ char x; return sizeof x; })\000"
.L.str186:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str187:
  .ascii "({ char x; return sizeof x; })\000"
.L.str188:
  .ascii "%s => %d\n\000"
.L.str189:
  .ascii "({ int x; return sizeof(x); })\000"
.L.str190:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str191:
  .ascii "({ int x; return sizeof(x); })\000"
.L.str192:
  .ascii "%s => %d\n\000"
.L.str193:
  .ascii "({ int *x; return sizeof x; })\000"
.L.str194:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str195:
  .ascii "({ int *x; return sizeof x; })\000"
.L.str196:
  .ascii "%s => %d\n\000"
.L.str197:
  .ascii "({ int x[4]; return sizeof x; })\000"
.L.str198:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str199:
  .ascii "({ int x[4]; return sizeof x; })\000"
.L.str200:
  .ascii "%s => %d\n\000"
.L.str201:
  .ascii "({ char x; return _Alignof x; })\000"
.L.str202:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str203:
  .ascii "({ char x; return _Alignof x; })\000"
.L.str204:
  .ascii "%s => %d\n\000"
.L.str205:
  .ascii "({ int x; return _Alignof(x); })\000"
.L.str206:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str207:
  .ascii "({ int x; return _Alignof(x); })\000"
.L.str208:
  .ascii "%s => %d\n\000"
.L.str209:
  .ascii "({ int *x; return _Alignof x; })\000"
.L.str210:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str211:
  .ascii "({ int *x; return _Alignof x; })\000"
.L.str212:
  .ascii "%s => %d\n\000"
.L.str213:
  .ascii "({ int x[4]; return _Alignof x; })\000"
.L.str214:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str215:
  .ascii "({ int x[4]; return _Alignof x; })\000"
.L.str216:
  .ascii "%s => %d\n\000"
.L.str217:
  .ascii "({ int *x[4]; return _Alignof x; })\000"
.L.str218:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str219:
  .ascii "({ int *x[4]; return _Alignof x; })\000"
.L.str220:
  .ascii "%s => %d\n\000"
.L.str221:
  .ascii "({ char x = 5; return x; })\000"
.L.str222:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str223:
  .ascii "({ char x = 5; return x; })\000"
.L.str224:
  .ascii "%s => %d\n\000"
.L.str225:
  .ascii "({ int x = 0; char *p = &x; p[0] = 42; return x; })\000"
.L.str226:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str227:
  .ascii "({ int x = 0; char *p = &x; p[0] = 42; return x; })\000"
.L.str228:
  .ascii "abc\000"
.L.str229:
  .ascii "%s => %d\n\000"
.L.str230:
  .ascii "({ char *p = \"abc\"; return p[0]; })\000"
.L.str231:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str232:
  .ascii "({ char *p = \"abc\"; return p[0]; })\000"
.L.str233:
  .ascii "abc\000"
.L.str234:
  .ascii "%s => %d\n\000"
.L.str235:
  .ascii "({ char *p = \"abc\"; return p[1]; })\000"
.L.str236:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str237:
  .ascii "({ char *p = \"abc\"; return p[1]; })\000"
.L.str238:
  .ascii "abc\000"
.L.str239:
  .ascii "%s => %d\n\000"
.L.str240:
  .ascii "({ char *p = \"abc\"; return p[2]; })\000"
.L.str241:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str242:
  .ascii "({ char *p = \"abc\"; return p[2]; })\000"
.L.str243:
  .ascii "abc\000"
.L.str244:
  .ascii "%s => %d\n\000"
.L.str245:
  .ascii "({ char *p = \"abc\"; return p[3]; })\000"
.L.str246:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str247:
  .ascii "({ char *p = \"abc\"; return p[3]; })\000"
.L.str248:
  .ascii "%s => %d\n\000"
.L.str249:
  .ascii "({ int x = 1; { int x = 2; } return x; })\000"
.L.str250:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str251:
  .ascii "({ int x = 1; { int x = 2; } return x; })\000"
.L.str252:
  .ascii "%s => %d\n\000"
.L.str253:
  .ascii "var1\000"
.L.str254:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str255:
  .ascii "var1\000"
.L.str256:
  .ascii "%s => %d\n\000"
.L.str257:
  .ascii "({ var1 = 5; return var1; })\000"
.L.str258:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str259:
  .ascii "({ var1 = 5; return var1; })\000"
.L.str260:
  .ascii "%s => %d\n\000"
.L.str261:
  .ascii "sizeof(var2)\000"
.L.str262:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str263:
  .ascii "sizeof(var2)\000"
.L.str264:
  .ascii "%s => %d\n\000"
.L.str265:
  .ascii "({ var2[0] = 5; var2[4] = 10; return var2[0] + var2[4]; })\000"
.L.str266:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str267:
  .ascii "({ var2[0] = 5; var2[4] = 10; return var2[0] + var2[4]; })\000"
.L.str268:
  .ascii "%s => %d\n\000"
.L.str269:
  .ascii "global_arr[0]\000"
.L.str270:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str271:
  .ascii "global_arr[0]\000"
.L.str272:
  .ascii "%s => %d\n\000"
.L.str273:
  .ascii "({ return 3 + ({ return 5; }); })\000"
.L.str274:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str275:
  .ascii "({ return 3 + ({ return 5; }); })\000"
.L.str276:
  .ascii "%s => %d\n\000"
.L.str277:
  .ascii "({; return 1; })\000"
.L.str278:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str279:
  .ascii "({; return 1; })\000"
.L.str280:
  .ascii "%s => %d\n\000"
.L.str281:
  .ascii "({ struct { int a; } x; return sizeof(x); })\000"
.L.str282:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str283:
  .ascii "({ struct { int a; } x; return sizeof(x); })\000"
.L.str284:
  .ascii "%s => %d\n\000"
.L.str285:
  .ascii "({ struct { char a; int b; } x; return sizeof(x); })\000"
.L.str286:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str287:
  .ascii "({ struct { char a; int b; } x; return sizeof(x); })\000"
.L.str288:
  .ascii "%s => %d\n\000"
.L.str289:
  .ascii "({ struct { char a; char b; int c; char d; } x; return sizeof(x); })\000"
.L.str290:
  .ascii "line %d: %s: %d expected, but got %d\n\000"
.L.str291:
  .ascii "({ struct { char a; char b; int c; char d; } x; return sizeof(x); })\000"
.L.str292:
  .ascii "OK\n\000"
.text
.global one
one:
  push rbp
  mov rbp, rsp
  sub rsp, 0
  push r12
  push r13
  push r14
  push r15
  mov r10, 1
  mov rax, r10
  jmp .Lend0
.Lend0:
  pop r15
  pop r14
  pop r13
  pop r12
  mov rsp, rbp
  pop rbp
  ret
.global two
two:
  push rbp
  mov rbp, rsp
  sub rsp, 0
  push r12
  push r13
  push r14
  push r15
  mov r10, 2
  mov rax, r10
  jmp .Lend1
.Lend1:
  pop r15
  pop r14
  pop r13
  pop r12
  mov rsp, rbp
  pop rbp
  ret
.global plus
plus:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  push r12
  push r13
  push r14
  push r15
  mov [rbp-4], edi
  mov [rbp-8], esi
  lea r10, [rbp-4]
  mov r10d, [r10]
  lea r11, [rbp-8]
  mov r11d, [r11]
  add r10, r11
  mov rax, r10
  jmp .Lend2
.Lend2:
  pop r15
  pop r14
  pop r13
  pop r12
  mov rsp, rbp
  pop rbp
  ret
.global mul
mul:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  push r12
  push r13
  push r14
  push r15
  mov [rbp-4], edi
  mov [rbp-8], esi
  lea r10, [rbp-4]
  mov r10d, [r10]
  lea r11, [rbp-8]
  mov r11d, [r11]
  mov rax, r11
  mul r10
  mov r10, rax
  mov rax, r10
  jmp .Lend3
.Lend3:
  pop r15
  pop r14
  pop r13
  pop r12
  mov rsp, rbp
  pop rbp
  ret
.global add
add:
  push rbp
  mov rbp, rsp
  sub rsp, 32
  push r12
  push r13
  push r14
  push r15
  mov [rbp-4], edi
  mov [rbp-8], esi
  mov [rbp-12], edx
  mov [rbp-16], ecx
  mov [rbp-20], r8d
  mov [rbp-24], r9d
  lea r10, [rbp-4]
  mov r10d, [r10]
  lea r11, [rbp-8]
  mov r11d, [r11]
  add r10, r11
  lea r11, [rbp-12]
  mov r11d, [r11]
  add r10, r11
  lea r11, [rbp-16]
  mov r11d, [r11]
  add r10, r11
  lea r11, [rbp-20]
  mov r11d, [r11]
  add r10, r11
  lea r11, [rbp-24]
  mov r11d, [r11]
  add r10, r11
  mov rax, r10
  jmp .Lend4
.Lend4:
  pop r15
  pop r14
  pop r13
  pop r12
  mov rsp, rbp
  pop rbp
  ret
.global main
main:
  push rbp
  mov rbp, rsp
  sub rsp, 848
  push r12
  push r13
  push r14
  push r15
.L1:
  mov r10, 0
  lea r11, [rbp-4]
  mov [r11], r10d
  mov r10, 0
  lea r11, [rbp-8]
  mov [r11], r10d
  lea r10, [rbp-4]
  mov r10d, [r10]
  lea r11, [rbp-8]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L2
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str0
  lea rbx, .L.str1
  lea r12, [rbp-8]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L3
.L2:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str2
  mov rbx, 41
  lea r12, .L.str3
  lea r13, [rbp-4]
  mov r13d, [r13]
  lea r14, [rbp-8]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L3:
  mov r10, 0
  cmp r10, 0
  jne .L1
.L4:
  mov r10, 1
  lea r11, [rbp-12]
  mov [r11], r10d
  mov r10, 1
  lea r11, [rbp-16]
  mov [r11], r10d
  lea r10, [rbp-12]
  mov r10d, [r10]
  lea r11, [rbp-16]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L5
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str4
  lea rbx, .L.str5
  lea r12, [rbp-16]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L6
.L5:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str6
  mov rbx, 42
  lea r12, .L.str7
  lea r13, [rbp-12]
  mov r13d, [r13]
  lea r14, [rbp-16]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L6:
  mov r10, 0
  cmp r10, 0
  jne .L4
.L7:
  mov r10, 2
  lea r11, [rbp-20]
  mov [r11], r10d
  mov r10, 1
  mov r11, 1
  add r10, r11
  lea r11, [rbp-24]
  mov [r11], r10d
  lea r10, [rbp-20]
  mov r10d, [r10]
  lea r11, [rbp-24]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L8
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str8
  lea rbx, .L.str9
  lea r12, [rbp-24]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L9
.L8:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str10
  mov rbx, 43
  lea r12, .L.str11
  lea r13, [rbp-20]
  mov r13d, [r13]
  lea r14, [rbp-24]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L9:
  mov r10, 0
  cmp r10, 0
  jne .L7
.L10:
  mov r10, 10
  lea r11, [rbp-28]
  mov [r11], r10d
  mov r10, 2
  mov r11, 3
  mov rax, r11
  mul r10
  mov r10, rax
  mov r11, 4
  add r10, r11
  lea r11, [rbp-32]
  mov [r11], r10d
  lea r10, [rbp-28]
  mov r10d, [r10]
  lea r11, [rbp-32]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L11
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str12
  lea rbx, .L.str13
  lea r12, [rbp-32]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L12
.L11:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str14
  mov rbx, 44
  lea r12, .L.str15
  lea r13, [rbp-28]
  mov r13d, [r13]
  lea r14, [rbp-32]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L12:
  mov r10, 0
  cmp r10, 0
  jne .L10
.L13:
  mov r10, 26
  lea r11, [rbp-36]
  mov [r11], r10d
  mov r10, 2
  mov r11, 3
  mov rax, r11
  mul r10
  mov r10, rax
  mov r11, 4
  mov rbx, 5
  mov rax, rbx
  mul r11
  mov r11, rax
  add r10, r11
  lea r11, [rbp-40]
  mov [r11], r10d
  lea r10, [rbp-36]
  mov r10d, [r10]
  lea r11, [rbp-40]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L14
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str16
  lea rbx, .L.str17
  lea r12, [rbp-40]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L15
.L14:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str18
  mov rbx, 45
  lea r12, .L.str19
  lea r13, [rbp-36]
  mov r13d, [r13]
  lea r14, [rbp-40]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L15:
  mov r10, 0
  cmp r10, 0
  jne .L13
.L16:
  mov r10, 5
  lea r11, [rbp-44]
  mov [r11], r10d
  mov r10, 50
  mov r11, 10
  mov rax, r10
  cqo
  div r11
  mov r10, rax
  lea r11, [rbp-48]
  mov [r11], r10d
  lea r10, [rbp-44]
  mov r10d, [r10]
  lea r11, [rbp-48]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L17
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str20
  lea rbx, .L.str21
  lea r12, [rbp-48]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L18
.L17:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str22
  mov rbx, 46
  lea r12, .L.str23
  lea r13, [rbp-44]
  mov r13d, [r13]
  lea r14, [rbp-48]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L18:
  mov r10, 0
  cmp r10, 0
  jne .L16
.L19:
  mov r10, 9
  lea r11, [rbp-52]
  mov [r11], r10d
  mov r10, 6
  mov r11, 3
  mov rax, r11
  mul r10
  mov r10, rax
  mov r11, 2
  mov rax, r10
  cqo
  div r11
  mov r10, rax
  lea r11, [rbp-56]
  mov [r11], r10d
  lea r10, [rbp-52]
  mov r10d, [r10]
  lea r11, [rbp-56]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L20
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str24
  lea rbx, .L.str25
  lea r12, [rbp-56]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L21
.L20:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str26
  mov rbx, 47
  lea r12, .L.str27
  lea r13, [rbp-52]
  mov r13d, [r13]
  lea r14, [rbp-56]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L21:
  mov r10, 0
  cmp r10, 0
  jne .L19
.L22:
  mov r10, 45
  lea r11, [rbp-60]
  mov [r11], r10d
  mov r10, 2
  mov r11, 3
  add r10, r11
  mov r11, 4
  mov rbx, 5
  add r11, rbx
  mov rax, r11
  mul r10
  mov r10, rax
  lea r11, [rbp-64]
  mov [r11], r10d
  lea r10, [rbp-60]
  mov r10d, [r10]
  lea r11, [rbp-64]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L23
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str28
  lea rbx, .L.str29
  lea r12, [rbp-64]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L24
.L23:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str30
  mov rbx, 48
  lea r12, .L.str31
  lea r13, [rbp-60]
  mov r13d, [r13]
  lea r14, [rbp-64]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L24:
  mov r10, 0
  cmp r10, 0
  jne .L22
.L25:
  mov r10, 153
  lea r11, [rbp-68]
  mov [r11], r10d
  mov r10, 1
  mov r11, 2
  add r10, r11
  mov r11, 3
  add r10, r11
  mov r11, 4
  add r10, r11
  mov r11, 5
  add r10, r11
  mov r11, 6
  add r10, r11
  mov r11, 7
  add r10, r11
  mov r11, 8
  add r10, r11
  mov r11, 9
  add r10, r11
  mov r11, 10
  add r10, r11
  mov r11, 11
  add r10, r11
  mov r11, 12
  add r10, r11
  mov r11, 13
  add r10, r11
  mov r11, 14
  add r10, r11
  mov r11, 15
  add r10, r11
  mov r11, 16
  add r10, r11
  mov r11, 17
  add r10, r11
  lea r11, [rbp-72]
  mov [r11], r10d
  lea r10, [rbp-68]
  mov r10d, [r10]
  lea r11, [rbp-72]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L26
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str32
  lea rbx, .L.str33
  lea r12, [rbp-72]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L27
.L26:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str34
  mov rbx, 49
  lea r12, .L.str35
  lea r13, [rbp-68]
  mov r13d, [r13]
  lea r14, [rbp-72]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L27:
  mov r10, 0
  cmp r10, 0
  jne .L25
.L28:
  mov r10, 2
  lea r11, [rbp-76]
  mov [r11], r10d
  mov r10, 2
  lea r11, [rbp-84]
  mov [r11], r10d
  lea r10, [rbp-84]
  mov r10d, [r10]
  mov r11, r10
  jmp .L29
.L29:
  lea r10, [rbp-80]
  mov [r10], r11d
  lea r10, [rbp-76]
  mov r10d, [r10]
  lea r11, [rbp-80]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L30
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str36
  lea rbx, .L.str37
  lea r12, [rbp-80]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L31
.L30:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str38
  mov rbx, 51
  lea r12, .L.str39
  lea r13, [rbp-76]
  mov r13d, [r13]
  lea r14, [rbp-80]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L31:
  mov r10, 0
  cmp r10, 0
  jne .L28
.L32:
  mov r10, 10
  lea r11, [rbp-88]
  mov [r11], r10d
  mov r10, 2
  lea r11, [rbp-96]
  mov [r11], r10d
  mov r10, 3
  mov r11, 2
  add r10, r11
  lea r11, [rbp-100]
  mov [r11], r10d
  lea r10, [rbp-96]
  mov r10d, [r10]
  lea r11, [rbp-100]
  mov r11d, [r11]
  mov rax, r11
  mul r10
  mov r10, rax
  mov r11, r10
  jmp .L33
.L33:
  lea r10, [rbp-92]
  mov [r10], r11d
  lea r10, [rbp-88]
  mov r10d, [r10]
  lea r11, [rbp-92]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L34
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str40
  lea rbx, .L.str41
  lea r12, [rbp-92]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L35
.L34:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str42
  mov rbx, 52
  lea r12, .L.str43
  lea r13, [rbp-88]
  mov r13d, [r13]
  lea r14, [rbp-92]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L35:
  mov r10, 0
  cmp r10, 0
  jne .L32
.L36:
  mov r10, 2
  lea r11, [rbp-104]
  mov [r11], r10d
  mov r10, 1
  cmp r10, 0
  je .L38
  mov r10, 2
  mov r11, r10
  jmp .L37
.L38:
  mov r10, 3
  mov r11, r10
  jmp .L37
.L37:
  lea r10, [rbp-108]
  mov [r10], r11d
  lea r10, [rbp-104]
  mov r10d, [r10]
  lea r11, [rbp-108]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L39
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str44
  lea rbx, .L.str45
  lea r12, [rbp-108]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L40
.L39:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str46
  mov rbx, 53
  lea r12, .L.str47
  lea r13, [rbp-104]
  mov r13d, [r13]
  lea r14, [rbp-108]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L40:
  mov r10, 0
  cmp r10, 0
  jne .L36
.L41:
  mov r10, 3
  lea r11, [rbp-112]
  mov [r11], r10d
  mov r10, 0
  cmp r10, 0
  je .L43
  mov r10, 2
  mov r11, r10
  jmp .L42
.L43:
  mov r10, 3
  mov r11, r10
  jmp .L42
.L42:
  lea r10, [rbp-116]
  mov [r10], r11d
  lea r10, [rbp-112]
  mov r10d, [r10]
  lea r11, [rbp-116]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L44
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str48
  lea rbx, .L.str49
  lea r12, [rbp-116]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L45
.L44:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str50
  mov rbx, 54
  lea r12, .L.str51
  lea r13, [rbp-112]
  mov r13d, [r13]
  lea r14, [rbp-116]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L45:
  mov r10, 0
  cmp r10, 0
  jne .L41
.L46:
  mov r10, 2
  lea r11, [rbp-120]
  mov [r11], r10d
  mov r10, 1
  cmp r10, 0
  je .L48
  mov r10, 2
  mov r11, r10
  jmp .L47
  jmp .L49
.L48:
  mov r10, 3
  mov r11, r10
  jmp .L47
.L49:
.L47:
  lea r10, [rbp-124]
  mov [r10], r11d
  lea r10, [rbp-120]
  mov r10d, [r10]
  lea r11, [rbp-124]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L50
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str52
  lea rbx, .L.str53
  lea r12, [rbp-124]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L51
.L50:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str54
  mov rbx, 55
  lea r12, .L.str55
  lea r13, [rbp-120]
  mov r13d, [r13]
  lea r14, [rbp-124]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L51:
  mov r10, 0
  cmp r10, 0
  jne .L46
.L52:
  mov r10, 3
  lea r11, [rbp-128]
  mov [r11], r10d
  mov r10, 0
  cmp r10, 0
  je .L54
  mov r10, 2
  mov r11, r10
  jmp .L53
  jmp .L55
.L54:
  mov r10, 3
  mov r11, r10
  jmp .L53
.L55:
.L53:
  lea r10, [rbp-132]
  mov [r10], r11d
  lea r10, [rbp-128]
  mov r10d, [r10]
  lea r11, [rbp-132]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L56
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str56
  lea rbx, .L.str57
  lea r12, [rbp-132]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L57
.L56:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str58
  mov rbx, 56
  lea r12, .L.str59
  lea r13, [rbp-128]
  mov r13d, [r13]
  lea r14, [rbp-132]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L57:
  mov r10, 0
  cmp r10, 0
  jne .L52
.L58:
  mov r10, 5
  lea r11, [rbp-136]
  mov [r11], r10d
  mov r10, 2
  mov r11, 3
  mov rdi, r10
  mov rsi, r11
  push r10
  push r11
  mov rax, 0
  call plus
  pop r11
  pop r10
  mov rbx, rax
  lea r10, [rbp-140]
  mov [r10], ebx
  lea r10, [rbp-136]
  mov r10d, [r10]
  lea r11, [rbp-140]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L59
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str60
  lea rbx, .L.str61
  lea r12, [rbp-140]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L60
.L59:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str62
  mov rbx, 58
  lea r12, .L.str63
  lea r13, [rbp-136]
  mov r13d, [r13]
  lea r14, [rbp-140]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L60:
  mov r10, 0
  cmp r10, 0
  jne .L58
.L61:
  mov r10, 1
  lea r11, [rbp-144]
  mov [r11], r10d
  push r10
  push r11
  mov rax, 0
  call one
  pop r11
  pop r10
  mov r10, rax
  lea r11, [rbp-148]
  mov [r11], r10d
  lea r10, [rbp-144]
  mov r10d, [r10]
  lea r11, [rbp-148]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L62
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str64
  lea rbx, .L.str65
  lea r12, [rbp-148]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L63
.L62:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str66
  mov rbx, 59
  lea r12, .L.str67
  lea r13, [rbp-144]
  mov r13d, [r13]
  lea r14, [rbp-148]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L63:
  mov r10, 0
  cmp r10, 0
  jne .L61
.L64:
  mov r10, 3
  lea r11, [rbp-152]
  mov [r11], r10d
  push r10
  push r11
  mov rax, 0
  call one
  pop r11
  pop r10
  mov r10, rax
  push r10
  push r11
  mov rax, 0
  call two
  pop r11
  pop r10
  mov r11, rax
  add r10, r11
  lea r11, [rbp-156]
  mov [r11], r10d
  lea r10, [rbp-152]
  mov r10d, [r10]
  lea r11, [rbp-156]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L65
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str68
  lea rbx, .L.str69
  lea r12, [rbp-156]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L66
.L65:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str70
  mov rbx, 60
  lea r12, .L.str71
  lea r13, [rbp-152]
  mov r13d, [r13]
  lea r14, [rbp-156]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L66:
  mov r10, 0
  cmp r10, 0
  jne .L64
.L67:
  mov r10, 6
  lea r11, [rbp-160]
  mov [r11], r10d
  mov r10, 2
  mov r11, 3
  mov rdi, r10
  mov rsi, r11
  push r10
  push r11
  mov rax, 0
  call mul
  pop r11
  pop r10
  mov rbx, rax
  lea r10, [rbp-164]
  mov [r10], ebx
  lea r10, [rbp-160]
  mov r10d, [r10]
  lea r11, [rbp-164]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L68
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str72
  lea rbx, .L.str73
  lea r12, [rbp-164]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L69
.L68:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str74
  mov rbx, 61
  lea r12, .L.str75
  lea r13, [rbp-160]
  mov r13d, [r13]
  lea r14, [rbp-164]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L69:
  mov r10, 0
  cmp r10, 0
  jne .L67
.L70:
  mov r10, 21
  lea r11, [rbp-168]
  mov [r11], r10d
  mov r10, 1
  mov r11, 2
  mov rbx, 3
  mov r12, 4
  mov r13, 5
  mov r14, 6
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call add
  pop r11
  pop r10
  mov r15, rax
  lea r10, [rbp-172]
  mov [r10], r15d
  lea r10, [rbp-168]
  mov r10d, [r10]
  lea r11, [rbp-172]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L71
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str76
  lea rbx, .L.str77
  lea r12, [rbp-172]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L72
.L71:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str78
  mov rbx, 62
  lea r12, .L.str79
  lea r13, [rbp-168]
  mov r13d, [r13]
  lea r14, [rbp-172]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L72:
  mov r10, 0
  cmp r10, 0
  jne .L70
.L73:
  mov r10, 0
  lea r11, [rbp-176]
  mov [r11], r10d
  mov r10, 0
  cmp r10, 0
  je .L74
  mov r10, 1
  jmp .L75
.L74:
  mov r11, 0
  mov r10, r11
  cmp r10, 0
  je .L75
  mov r10, 1
.L75:
  lea r11, [rbp-180]
  mov [r11], r10d
  lea r10, [rbp-176]
  mov r10d, [r10]
  lea r11, [rbp-180]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L76
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str80
  lea rbx, .L.str81
  lea r12, [rbp-180]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L77
.L76:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str82
  mov rbx, 64
  lea r12, .L.str83
  lea r13, [rbp-176]
  mov r13d, [r13]
  lea r14, [rbp-180]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L77:
  mov r10, 0
  cmp r10, 0
  jne .L73
.L78:
  mov r10, 1
  lea r11, [rbp-184]
  mov [r11], r10d
  mov r10, 1
  cmp r10, 0
  je .L79
  mov r10, 1
  jmp .L80
.L79:
  mov r11, 0
  mov r10, r11
  cmp r10, 0
  je .L80
  mov r10, 1
.L80:
  lea r11, [rbp-188]
  mov [r11], r10d
  lea r10, [rbp-184]
  mov r10d, [r10]
  lea r11, [rbp-188]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L81
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str84
  lea rbx, .L.str85
  lea r12, [rbp-188]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L82
.L81:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str86
  mov rbx, 65
  lea r12, .L.str87
  lea r13, [rbp-184]
  mov r13d, [r13]
  lea r14, [rbp-188]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L82:
  mov r10, 0
  cmp r10, 0
  jne .L78
.L83:
  mov r10, 1
  lea r11, [rbp-192]
  mov [r11], r10d
  mov r10, 0
  cmp r10, 0
  je .L84
  mov r10, 1
  jmp .L85
.L84:
  mov r11, 1
  mov r10, r11
  cmp r10, 0
  je .L85
  mov r10, 1
.L85:
  lea r11, [rbp-196]
  mov [r11], r10d
  lea r10, [rbp-192]
  mov r10d, [r10]
  lea r11, [rbp-196]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L86
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str88
  lea rbx, .L.str89
  lea r12, [rbp-196]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L87
.L86:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str90
  mov rbx, 66
  lea r12, .L.str91
  lea r13, [rbp-192]
  mov r13d, [r13]
  lea r14, [rbp-196]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L87:
  mov r10, 0
  cmp r10, 0
  jne .L83
.L88:
  mov r10, 1
  lea r11, [rbp-200]
  mov [r11], r10d
  mov r10, 1
  cmp r10, 0
  je .L89
  mov r10, 1
  jmp .L90
.L89:
  mov r11, 1
  mov r10, r11
  cmp r10, 0
  je .L90
  mov r10, 1
.L90:
  lea r11, [rbp-204]
  mov [r11], r10d
  lea r10, [rbp-200]
  mov r10d, [r10]
  lea r11, [rbp-204]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L91
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str92
  lea rbx, .L.str93
  lea r12, [rbp-204]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L92
.L91:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str94
  mov rbx, 67
  lea r12, .L.str95
  lea r13, [rbp-200]
  mov r13d, [r13]
  lea r14, [rbp-204]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L92:
  mov r10, 0
  cmp r10, 0
  jne .L88
.L93:
  mov r10, 0
  lea r11, [rbp-208]
  mov [r11], r10d
  mov r10, 0
  cmp r10, 0
  je .L94
  mov r11, 0
  mov r10, r11
  cmp r10, 0
  je .L94
  mov r10, 1
.L94:
  lea r11, [rbp-212]
  mov [r11], r10d
  lea r10, [rbp-208]
  mov r10d, [r10]
  lea r11, [rbp-212]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L95
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str96
  lea rbx, .L.str97
  lea r12, [rbp-212]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L96
.L95:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str98
  mov rbx, 69
  lea r12, .L.str99
  lea r13, [rbp-208]
  mov r13d, [r13]
  lea r14, [rbp-212]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L96:
  mov r10, 0
  cmp r10, 0
  jne .L93
.L97:
  mov r10, 0
  lea r11, [rbp-216]
  mov [r11], r10d
  mov r10, 1
  cmp r10, 0
  je .L98
  mov r11, 0
  mov r10, r11
  cmp r10, 0
  je .L98
  mov r10, 1
.L98:
  lea r11, [rbp-220]
  mov [r11], r10d
  lea r10, [rbp-216]
  mov r10d, [r10]
  lea r11, [rbp-220]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L99
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str100
  lea rbx, .L.str101
  lea r12, [rbp-220]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L100
.L99:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str102
  mov rbx, 70
  lea r12, .L.str103
  lea r13, [rbp-216]
  mov r13d, [r13]
  lea r14, [rbp-220]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L100:
  mov r10, 0
  cmp r10, 0
  jne .L97
.L101:
  mov r10, 0
  lea r11, [rbp-224]
  mov [r11], r10d
  mov r10, 0
  cmp r10, 0
  je .L102
  mov r11, 1
  mov r10, r11
  cmp r10, 0
  je .L102
  mov r10, 1
.L102:
  lea r11, [rbp-228]
  mov [r11], r10d
  lea r10, [rbp-224]
  mov r10d, [r10]
  lea r11, [rbp-228]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L103
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str104
  lea rbx, .L.str105
  lea r12, [rbp-228]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L104
.L103:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str106
  mov rbx, 71
  lea r12, .L.str107
  lea r13, [rbp-224]
  mov r13d, [r13]
  lea r14, [rbp-228]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L104:
  mov r10, 0
  cmp r10, 0
  jne .L101
.L105:
  mov r10, 1
  lea r11, [rbp-232]
  mov [r11], r10d
  mov r10, 1
  cmp r10, 0
  je .L106
  mov r11, 1
  mov r10, r11
  cmp r10, 0
  je .L106
  mov r10, 1
.L106:
  lea r11, [rbp-236]
  mov [r11], r10d
  lea r10, [rbp-232]
  mov r10d, [r10]
  lea r11, [rbp-236]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L107
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str108
  lea rbx, .L.str109
  lea r12, [rbp-236]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L108
.L107:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str110
  mov rbx, 72
  lea r12, .L.str111
  lea r13, [rbp-232]
  mov r13d, [r13]
  lea r14, [rbp-236]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L108:
  mov r10, 0
  cmp r10, 0
  jne .L105
.L109:
  mov r10, 0
  lea r11, [rbp-240]
  mov [r11], r10d
  mov r10, 0
  mov r11, 0
  cmp r10, r11
  setl r10b
  movzb r10, r10b
  lea r11, [rbp-244]
  mov [r11], r10d
  lea r10, [rbp-240]
  mov r10d, [r10]
  lea r11, [rbp-244]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L110
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str112
  lea rbx, .L.str113
  lea r12, [rbp-244]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L111
.L110:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str114
  mov rbx, 74
  lea r12, .L.str115
  lea r13, [rbp-240]
  mov r13d, [r13]
  lea r14, [rbp-244]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L111:
  mov r10, 0
  cmp r10, 0
  jne .L109
.L112:
  mov r10, 0
  lea r11, [rbp-248]
  mov [r11], r10d
  mov r10, 1
  mov r11, 0
  cmp r10, r11
  setl r10b
  movzb r10, r10b
  lea r11, [rbp-252]
  mov [r11], r10d
  lea r10, [rbp-248]
  mov r10d, [r10]
  lea r11, [rbp-252]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L113
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str116
  lea rbx, .L.str117
  lea r12, [rbp-252]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L114
.L113:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str118
  mov rbx, 75
  lea r12, .L.str119
  lea r13, [rbp-248]
  mov r13d, [r13]
  lea r14, [rbp-252]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L114:
  mov r10, 0
  cmp r10, 0
  jne .L112
.L115:
  mov r10, 1
  lea r11, [rbp-256]
  mov [r11], r10d
  mov r10, 0
  mov r11, 1
  cmp r10, r11
  setl r10b
  movzb r10, r10b
  lea r11, [rbp-260]
  mov [r11], r10d
  lea r10, [rbp-256]
  mov r10d, [r10]
  lea r11, [rbp-260]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L116
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str120
  lea rbx, .L.str121
  lea r12, [rbp-260]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L117
.L116:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str122
  mov rbx, 76
  lea r12, .L.str123
  lea r13, [rbp-256]
  mov r13d, [r13]
  lea r14, [rbp-260]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L117:
  mov r10, 0
  cmp r10, 0
  jne .L115
.L118:
  mov r10, 0
  lea r11, [rbp-264]
  mov [r11], r10d
  mov r10, 0
  mov r11, 0
  cmp r10, r11
  setl r10b
  movzb r10, r10b
  lea r11, [rbp-268]
  mov [r11], r10d
  lea r10, [rbp-264]
  mov r10d, [r10]
  lea r11, [rbp-268]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L119
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str124
  lea rbx, .L.str125
  lea r12, [rbp-268]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L120
.L119:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str126
  mov rbx, 77
  lea r12, .L.str127
  lea r13, [rbp-264]
  mov r13d, [r13]
  lea r14, [rbp-268]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L120:
  mov r10, 0
  cmp r10, 0
  jne .L118
.L121:
  mov r10, 0
  lea r11, [rbp-272]
  mov [r11], r10d
  mov r10, 1
  mov r11, 0
  cmp r10, r11
  setl r10b
  movzb r10, r10b
  lea r11, [rbp-276]
  mov [r11], r10d
  lea r10, [rbp-272]
  mov r10d, [r10]
  lea r11, [rbp-276]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L122
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str128
  lea rbx, .L.str129
  lea r12, [rbp-276]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L123
.L122:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str130
  mov rbx, 78
  lea r12, .L.str131
  lea r13, [rbp-272]
  mov r13d, [r13]
  lea r14, [rbp-276]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L123:
  mov r10, 0
  cmp r10, 0
  jne .L121
.L124:
  mov r10, 1
  lea r11, [rbp-280]
  mov [r11], r10d
  mov r10, 0
  mov r11, 1
  cmp r10, r11
  setl r10b
  movzb r10, r10b
  lea r11, [rbp-284]
  mov [r11], r10d
  lea r10, [rbp-280]
  mov r10d, [r10]
  lea r11, [rbp-284]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L125
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str132
  lea rbx, .L.str133
  lea r12, [rbp-284]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L126
.L125:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str134
  mov rbx, 79
  lea r12, .L.str135
  lea r13, [rbp-280]
  mov r13d, [r13]
  lea r14, [rbp-284]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L126:
  mov r10, 0
  cmp r10, 0
  jne .L124
.L127:
  mov r10, 0
  lea r11, [rbp-288]
  mov [r11], r10d
  mov r10, 4
  mov r11, 5
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  lea r11, [rbp-292]
  mov [r11], r10d
  lea r10, [rbp-288]
  mov r10d, [r10]
  lea r11, [rbp-292]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L128
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str136
  lea rbx, .L.str137
  lea r12, [rbp-292]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L129
.L128:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str138
  mov rbx, 81
  lea r12, .L.str139
  lea r13, [rbp-288]
  mov r13d, [r13]
  lea r14, [rbp-292]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L129:
  mov r10, 0
  cmp r10, 0
  jne .L127
.L130:
  mov r10, 1
  lea r11, [rbp-296]
  mov [r11], r10d
  mov r10, 5
  mov r11, 5
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  lea r11, [rbp-300]
  mov [r11], r10d
  lea r10, [rbp-296]
  mov r10d, [r10]
  lea r11, [rbp-300]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L131
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str140
  lea rbx, .L.str141
  lea r12, [rbp-300]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L132
.L131:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str142
  mov rbx, 82
  lea r12, .L.str143
  lea r13, [rbp-296]
  mov r13d, [r13]
  lea r14, [rbp-300]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L132:
  mov r10, 0
  cmp r10, 0
  jne .L130
.L133:
  mov r10, 1
  lea r11, [rbp-304]
  mov [r11], r10d
  mov r10, 4
  mov r11, 5
  cmp r10, r11
  setne r10b
  movzb r10, r10b
  lea r11, [rbp-308]
  mov [r11], r10d
  lea r10, [rbp-304]
  mov r10d, [r10]
  lea r11, [rbp-308]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L134
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str144
  lea rbx, .L.str145
  lea r12, [rbp-308]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L135
.L134:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str146
  mov rbx, 83
  lea r12, .L.str147
  lea r13, [rbp-304]
  mov r13d, [r13]
  lea r14, [rbp-308]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L135:
  mov r10, 0
  cmp r10, 0
  jne .L133
.L136:
  mov r10, 0
  lea r11, [rbp-312]
  mov [r11], r10d
  mov r10, 5
  mov r11, 5
  cmp r10, r11
  setne r10b
  movzb r10, r10b
  lea r11, [rbp-316]
  mov [r11], r10d
  lea r10, [rbp-312]
  mov r10d, [r10]
  lea r11, [rbp-316]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L137
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str148
  lea rbx, .L.str149
  lea r12, [rbp-316]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L138
.L137:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str150
  mov rbx, 84
  lea r12, .L.str151
  lea r13, [rbp-312]
  mov r13d, [r13]
  lea r14, [rbp-316]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L138:
  mov r10, 0
  cmp r10, 0
  jne .L136
.L139:
  mov r10, 45
  lea r11, [rbp-320]
  mov [r11], r10d
  mov r10, 0
  lea r11, [rbp-328]
  mov [r11], r10d
  mov r10, 0
  lea r11, [rbp-332]
  mov [r11], r10d
.L141:
  lea r10, [rbp-332]
  mov r10d, [r10]
  lea r11, [rbp-328]
  mov r11d, [r11]
  add r10, r11
  lea r11, [rbp-332]
  mov [r11], r10d
  lea r10, [rbp-328]
  mov r10d, [r10]
  mov r11, 1
  add r10, r11
  lea r11, [rbp-328]
  mov [r11], r10d
  lea r10, [rbp-328]
  mov r10d, [r10]
  mov r11, 10
  cmp r10, r11
  setl r10b
  movzb r10, r10b
  cmp r10, 0
  jne .L141
  lea r10, [rbp-332]
  mov r10d, [r10]
  mov r11, r10
  jmp .L140
.L140:
  lea r10, [rbp-324]
  mov [r10], r11d
  lea r10, [rbp-320]
  mov r10d, [r10]
  lea r11, [rbp-324]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L142
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str152
  lea rbx, .L.str153
  lea r12, [rbp-324]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L143
.L142:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str154
  mov rbx, 86
  lea r12, .L.str155
  lea r13, [rbp-320]
  mov r13d, [r13]
  lea r14, [rbp-324]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L143:
  mov r10, 0
  cmp r10, 0
  jne .L139
.L144:
  mov r10, 60
  lea r11, [rbp-336]
  mov [r11], r10d
  mov r10, 0
  lea r11, [rbp-344]
  mov [r11], r10d
  mov r10, 10
  lea r11, [rbp-348]
  mov [r11], r10d
.L146:
  lea r10, [rbp-348]
  mov r10d, [r10]
  mov r11, 15
  cmp r10, r11
  setl r10b
  movzb r10, r10b
  cmp r10, 0
  je .L147
  lea r10, [rbp-344]
  mov r10d, [r10]
  lea r11, [rbp-348]
  mov r11d, [r11]
  add r10, r11
  lea r11, [rbp-344]
  mov [r11], r10d
  lea r10, [rbp-348]
  mov r10d, [r10]
  mov r11, 1
  add r10, r11
  lea r11, [rbp-348]
  mov [r11], r10d
  jmp .L146
.L147:
  lea r10, [rbp-344]
  mov r10d, [r10]
  mov r11, r10
  jmp .L145
.L145:
  lea r10, [rbp-340]
  mov [r10], r11d
  lea r10, [rbp-336]
  mov r10d, [r10]
  lea r11, [rbp-340]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L148
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str156
  lea rbx, .L.str157
  lea r12, [rbp-340]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L149
.L148:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str158
  mov rbx, 88
  lea r12, .L.str159
  lea r13, [rbp-336]
  mov r13d, [r13]
  lea r14, [rbp-340]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L149:
  mov r10, 0
  cmp r10, 0
  jne .L144
.L150:
  mov r10, 89
  lea r11, [rbp-352]
  mov [r11], r10d
  mov r10, 1
  lea r11, [rbp-360]
  mov [r11], r10d
  mov r10, 1
  lea r11, [rbp-364]
  mov [r11], r10d
  mov r10, 0
  lea r11, [rbp-368]
  mov [r11], r10d
.L152:
  lea r10, [rbp-368]
  mov r10d, [r10]
  mov r11, 10
  cmp r10, r11
  setl r10b
  movzb r10, r10b
  cmp r10, 0
  je .L153
  lea r10, [rbp-360]
  mov r10d, [r10]
  lea r11, [rbp-364]
  mov r11d, [r11]
  add r10, r11
  lea r11, [rbp-372]
  mov [r11], r10d
  lea r10, [rbp-364]
  mov r10d, [r10]
  lea r11, [rbp-360]
  mov [r11], r10d
  lea r10, [rbp-372]
  mov r10d, [r10]
  lea r11, [rbp-364]
  mov [r11], r10d
  lea r10, [rbp-368]
  mov r10d, [r10]
  mov r11, 1
  add r10, r11
  lea r11, [rbp-368]
  mov [r11], r10d
  jmp .L152
.L153:
  lea r10, [rbp-360]
  mov r10d, [r10]
  mov r11, r10
  jmp .L151
.L151:
  lea r10, [rbp-356]
  mov [r10], r11d
  lea r10, [rbp-352]
  mov r10d, [r10]
  lea r11, [rbp-356]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L154
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str160
  lea rbx, .L.str161
  lea r12, [rbp-356]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L155
.L154:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str162
  mov rbx, 89
  lea r12, .L.str163
  lea r13, [rbp-352]
  mov r13d, [r13]
  lea r14, [rbp-356]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L155:
  mov r10, 0
  cmp r10, 0
  jne .L150
.L156:
  mov r10, 45
  lea r11, [rbp-376]
  mov [r11], r10d
  mov r10, 0
  lea r11, [rbp-384]
  mov [r11], r10d
  mov r10, 0
  lea r11, [rbp-388]
  mov [r11], r10d
.L158:
  lea r10, [rbp-384]
  mov r10d, [r10]
  mov r11, 10
  cmp r10, r11
  setl r10b
  movzb r10, r10b
  cmp r10, 0
  je .L159
  lea r10, [rbp-388]
  mov r10d, [r10]
  lea r11, [rbp-384]
  mov r11d, [r11]
  add r10, r11
  lea r11, [rbp-388]
  mov [r11], r10d
  lea r10, [rbp-384]
  mov r10d, [r10]
  mov r11, 1
  add r10, r11
  lea r11, [rbp-384]
  mov [r11], r10d
  jmp .L158
.L159:
  lea r10, [rbp-388]
  mov r10d, [r10]
  mov r11, r10
  jmp .L157
.L157:
  lea r10, [rbp-380]
  mov [r10], r11d
  lea r10, [rbp-376]
  mov r10d, [r10]
  lea r11, [rbp-380]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L160
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str164
  lea rbx, .L.str165
  lea r12, [rbp-380]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L161
.L160:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str166
  mov rbx, 91
  lea r12, .L.str167
  lea r13, [rbp-376]
  mov r13d, [r13]
  lea r14, [rbp-380]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L161:
  mov r10, 0
  cmp r10, 0
  jne .L156
.L162:
  mov r10, 3
  lea r11, [rbp-392]
  mov [r11], r10d
  mov r10, 1
  lea r11, [rbp-404]
  mov [r11], r10d
  mov r10, 2
  mov r11, 1
  mov rbx, 4
  mov rax, rbx
  mul r11
  mov r11, rax
  lea rbx, [rbp-404]
  add rbx, r11
  mov [rbx], r10d
  lea r10, [rbp-404]
  mov r10d, [r10]
  mov r11, 1
  mov rbx, 4
  mov rax, rbx
  mul r11
  mov r11, rax
  lea rbx, [rbp-404]
  add rbx, r11
  mov ebx, [rbx]
  add r10, rbx
  mov r11, r10
  jmp .L163
.L163:
  lea r10, [rbp-396]
  mov [r10], r11d
  lea r10, [rbp-392]
  mov r10d, [r10]
  lea r11, [rbp-396]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L164
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str168
  lea rbx, .L.str169
  lea r12, [rbp-396]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L165
.L164:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str170
  mov rbx, 93
  lea r12, .L.str171
  lea r13, [rbp-392]
  mov r13d, [r13]
  lea r14, [rbp-396]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L165:
  mov r10, 0
  cmp r10, 0
  jne .L162
.L166:
  mov r10, 5
  lea r11, [rbp-408]
  mov [r11], r10d
  lea r10, [rbp-416]
  lea r11, [rbp-424]
  mov [r11], r10
  mov r10, 5
  lea r11, [rbp-416]
  mov [r11], r10d
  lea r10, [rbp-424]
  mov r10, [r10]
  mov r10d, [r10]
  mov r11, r10
  jmp .L167
.L167:
  lea r10, [rbp-412]
  mov [r10], r11d
  lea r10, [rbp-408]
  mov r10d, [r10]
  lea r11, [rbp-412]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L168
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str172
  lea rbx, .L.str173
  lea r12, [rbp-412]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L169
.L168:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str174
  mov rbx, 94
  lea r12, .L.str175
  lea r13, [rbp-408]
  mov r13d, [r13]
  lea r14, [rbp-412]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L169:
  mov r10, 0
  cmp r10, 0
  jne .L166
.L170:
  mov r10, 3
  lea r11, [rbp-428]
  mov [r11], r10d
  mov r10, 1
  mov r11, 0
  mov rbx, 4
  mov rax, rbx
  mul r11
  mov r11, rax
  lea rbx, [rbp-440]
  add rbx, r11
  mov [rbx], r10d
  mov r10, 2
  mov r11, 1
  mov rbx, 4
  mov rax, rbx
  mul r11
  mov r11, rax
  lea rbx, [rbp-440]
  add rbx, r11
  mov [rbx], r10d
  mov r10, 0
  mov r11, 4
  mov rax, r11
  mul r10
  mov r10, rax
  lea r11, [rbp-440]
  add r11, r10
  mov r11d, [r11]
  mov r10, 0
  mov rbx, 1
  add r10, rbx
  mov rbx, 4
  mov rax, rbx
  mul r10
  mov r10, rax
  lea rbx, [rbp-440]
  add rbx, r10
  mov ebx, [rbx]
  add r11, rbx
  mov r10, r11
  jmp .L171
.L171:
  lea r11, [rbp-432]
  mov [r11], r10d
  lea r10, [rbp-428]
  mov r10d, [r10]
  lea r11, [rbp-432]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L172
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str176
  lea rbx, .L.str177
  lea r12, [rbp-432]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L173
.L172:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str178
  mov rbx, 96
  lea r12, .L.str179
  lea r13, [rbp-428]
  mov r13d, [r13]
  lea r14, [rbp-432]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L173:
  mov r10, 0
  cmp r10, 0
  jne .L170
.L174:
  mov r10, 5
  lea r11, [rbp-444]
  mov [r11], r10d
  lea r10, [rbp-452]
  lea r11, [rbp-464]
  mov [r11], r10
  mov r10, 5
  lea r11, [rbp-452]
  mov [r11], r10d
  mov r10, 0
  mov r11, 4
  mov rax, r11
  mul r10
  mov r10, rax
  lea r11, [rbp-464]
  mov r11, [r11]
  add r11, r10
  mov r11d, [r11]
  mov r10, r11
  jmp .L175
.L175:
  lea r11, [rbp-448]
  mov [r11], r10d
  lea r10, [rbp-444]
  mov r10d, [r10]
  lea r11, [rbp-448]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L176
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str180
  lea rbx, .L.str181
  lea r12, [rbp-448]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L177
.L176:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str182
  mov rbx, 97
  lea r12, .L.str183
  lea r13, [rbp-444]
  mov r13d, [r13]
  lea r14, [rbp-448]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L177:
  mov r10, 0
  cmp r10, 0
  jne .L174
.L178:
  mov r10, 1
  lea r11, [rbp-468]
  mov [r11], r10d
  mov r10, 1
  mov r11, r10
  jmp .L179
.L179:
  lea r10, [rbp-472]
  mov [r10], r11d
  lea r10, [rbp-468]
  mov r10d, [r10]
  lea r11, [rbp-472]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L180
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str184
  lea rbx, .L.str185
  lea r12, [rbp-472]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L181
.L180:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str186
  mov rbx, 99
  lea r12, .L.str187
  lea r13, [rbp-468]
  mov r13d, [r13]
  lea r14, [rbp-472]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L181:
  mov r10, 0
  cmp r10, 0
  jne .L178
.L182:
  mov r10, 4
  lea r11, [rbp-480]
  mov [r11], r10d
  mov r10, 4
  mov r11, r10
  jmp .L183
.L183:
  lea r10, [rbp-484]
  mov [r10], r11d
  lea r10, [rbp-480]
  mov r10d, [r10]
  lea r11, [rbp-484]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L184
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str188
  lea rbx, .L.str189
  lea r12, [rbp-484]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L185
.L184:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str190
  mov rbx, 100
  lea r12, .L.str191
  lea r13, [rbp-480]
  mov r13d, [r13]
  lea r14, [rbp-484]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L185:
  mov r10, 0
  cmp r10, 0
  jne .L182
.L186:
  mov r10, 8
  lea r11, [rbp-492]
  mov [r11], r10d
  mov r10, 8
  mov r11, r10
  jmp .L187
.L187:
  lea r10, [rbp-496]
  mov [r10], r11d
  lea r10, [rbp-492]
  mov r10d, [r10]
  lea r11, [rbp-496]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L188
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str192
  lea rbx, .L.str193
  lea r12, [rbp-496]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L189
.L188:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str194
  mov rbx, 101
  lea r12, .L.str195
  lea r13, [rbp-492]
  mov r13d, [r13]
  lea r14, [rbp-496]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L189:
  mov r10, 0
  cmp r10, 0
  jne .L186
.L190:
  mov r10, 16
  lea r11, [rbp-508]
  mov [r11], r10d
  mov r10, 16
  mov r11, r10
  jmp .L191
.L191:
  lea r10, [rbp-512]
  mov [r10], r11d
  lea r10, [rbp-508]
  mov r10d, [r10]
  lea r11, [rbp-512]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L192
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str196
  lea rbx, .L.str197
  lea r12, [rbp-512]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L193
.L192:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str198
  mov rbx, 102
  lea r12, .L.str199
  lea r13, [rbp-508]
  mov r13d, [r13]
  lea r14, [rbp-512]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L193:
  mov r10, 0
  cmp r10, 0
  jne .L190
.L194:
  mov r10, 1
  lea r11, [rbp-532]
  mov [r11], r10d
  mov r10, 1
  mov r11, r10
  jmp .L195
.L195:
  lea r10, [rbp-536]
  mov [r10], r11d
  lea r10, [rbp-532]
  mov r10d, [r10]
  lea r11, [rbp-536]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L196
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str200
  lea rbx, .L.str201
  lea r12, [rbp-536]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L197
.L196:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str202
  mov rbx, 104
  lea r12, .L.str203
  lea r13, [rbp-532]
  mov r13d, [r13]
  lea r14, [rbp-536]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L197:
  mov r10, 0
  cmp r10, 0
  jne .L194
.L198:
  mov r10, 4
  lea r11, [rbp-544]
  mov [r11], r10d
  mov r10, 4
  mov r11, r10
  jmp .L199
.L199:
  lea r10, [rbp-548]
  mov [r10], r11d
  lea r10, [rbp-544]
  mov r10d, [r10]
  lea r11, [rbp-548]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L200
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str204
  lea rbx, .L.str205
  lea r12, [rbp-548]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L201
.L200:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str206
  mov rbx, 105
  lea r12, .L.str207
  lea r13, [rbp-544]
  mov r13d, [r13]
  lea r14, [rbp-548]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L201:
  mov r10, 0
  cmp r10, 0
  jne .L198
.L202:
  mov r10, 8
  lea r11, [rbp-556]
  mov [r11], r10d
  mov r10, 8
  mov r11, r10
  jmp .L203
.L203:
  lea r10, [rbp-560]
  mov [r10], r11d
  lea r10, [rbp-556]
  mov r10d, [r10]
  lea r11, [rbp-560]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L204
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str208
  lea rbx, .L.str209
  lea r12, [rbp-560]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L205
.L204:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str210
  mov rbx, 106
  lea r12, .L.str211
  lea r13, [rbp-556]
  mov r13d, [r13]
  lea r14, [rbp-560]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L205:
  mov r10, 0
  cmp r10, 0
  jne .L202
.L206:
  mov r10, 4
  lea r11, [rbp-572]
  mov [r11], r10d
  mov r10, 4
  mov r11, r10
  jmp .L207
.L207:
  lea r10, [rbp-576]
  mov [r10], r11d
  lea r10, [rbp-572]
  mov r10d, [r10]
  lea r11, [rbp-576]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L208
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str212
  lea rbx, .L.str213
  lea r12, [rbp-576]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L209
.L208:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str214
  mov rbx, 107
  lea r12, .L.str215
  lea r13, [rbp-572]
  mov r13d, [r13]
  lea r14, [rbp-576]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L209:
  mov r10, 0
  cmp r10, 0
  jne .L206
.L210:
  mov r10, 8
  lea r11, [rbp-596]
  mov [r11], r10d
  mov r10, 8
  mov r11, r10
  jmp .L211
.L211:
  lea r10, [rbp-600]
  mov [r10], r11d
  lea r10, [rbp-596]
  mov r10d, [r10]
  lea r11, [rbp-600]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L212
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str216
  lea rbx, .L.str217
  lea r12, [rbp-600]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L213
.L212:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str218
  mov rbx, 108
  lea r12, .L.str219
  lea r13, [rbp-596]
  mov r13d, [r13]
  lea r14, [rbp-600]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L213:
  mov r10, 0
  cmp r10, 0
  jne .L210
.L214:
  mov r10, 5
  lea r11, [rbp-636]
  mov [r11], r10d
  mov r10, 5
  lea r11, [rbp-641]
  mov [r11], r10b
  mov [r11], r10d
  lea r10, [rbp-641]
  mov r10b, [r10]
  movzb r10, r10b
  mov r11, r10
  jmp .L215
.L215:
  lea r10, [rbp-640]
  mov [r10], r11d
  lea r10, [rbp-636]
  mov r10d, [r10]
  lea r11, [rbp-640]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L216
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str220
  lea rbx, .L.str221
  lea r12, [rbp-640]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L217
.L216:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str222
  mov rbx, 110
  lea r12, .L.str223
  lea r13, [rbp-636]
  mov r13d, [r13]
  lea r14, [rbp-640]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L217:
  mov r10, 0
  cmp r10, 0
  jne .L214
.L218:
  mov r10, 42
  lea r11, [rbp-648]
  mov [r11], r10d
  mov r10, 0
  lea r11, [rbp-656]
  mov [r11], r10d
  lea r10, [rbp-656]
  lea r11, [rbp-664]
  mov [r11], r10
  mov r10, 42
  mov r11, 0
  mov rbx, 1
  mov rax, rbx
  mul r11
  mov r11, rax
  lea rbx, [rbp-664]
  mov rbx, [rbx]
  add rbx, r11
  mov [rbx], r10b
  mov [rbx], r10d
  lea r10, [rbp-656]
  mov r10d, [r10]
  mov r11, r10
  jmp .L219
.L219:
  lea r10, [rbp-652]
  mov [r10], r11d
  lea r10, [rbp-648]
  mov r10d, [r10]
  lea r11, [rbp-652]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L220
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str224
  lea rbx, .L.str225
  lea r12, [rbp-652]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L221
.L220:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str226
  mov rbx, 111
  lea r12, .L.str227
  lea r13, [rbp-648]
  mov r13d, [r13]
  lea r14, [rbp-652]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L221:
  mov r10, 0
  cmp r10, 0
  jne .L218
.L222:
  mov r10, 97
  lea r11, [rbp-668]
  mov [r11], r10d
  lea r10, .L.str228
  lea r11, [rbp-680]
  mov [r11], r10
  mov r10, 0
  mov r11, 1
  mov rax, r11
  mul r10
  mov r10, rax
  lea r11, [rbp-680]
  mov r11, [r11]
  add r11, r10
  mov r11b, [r11]
  movzb r11, r11b
  mov r10, r11
  jmp .L223
.L223:
  lea r11, [rbp-672]
  mov [r11], r10d
  lea r10, [rbp-668]
  mov r10d, [r10]
  lea r11, [rbp-672]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L224
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str229
  lea rbx, .L.str230
  lea r12, [rbp-672]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L225
.L224:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str231
  mov rbx, 113
  lea r12, .L.str232
  lea r13, [rbp-668]
  mov r13d, [r13]
  lea r14, [rbp-672]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L225:
  mov r10, 0
  cmp r10, 0
  jne .L222
.L226:
  mov r10, 98
  lea r11, [rbp-684]
  mov [r11], r10d
  lea r10, .L.str233
  lea r11, [rbp-696]
  mov [r11], r10
  mov r10, 1
  mov r11, 1
  mov rax, r11
  mul r10
  mov r10, rax
  lea r11, [rbp-696]
  mov r11, [r11]
  add r11, r10
  mov r11b, [r11]
  movzb r11, r11b
  mov r10, r11
  jmp .L227
.L227:
  lea r11, [rbp-688]
  mov [r11], r10d
  lea r10, [rbp-684]
  mov r10d, [r10]
  lea r11, [rbp-688]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L228
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str234
  lea rbx, .L.str235
  lea r12, [rbp-688]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L229
.L228:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str236
  mov rbx, 114
  lea r12, .L.str237
  lea r13, [rbp-684]
  mov r13d, [r13]
  lea r14, [rbp-688]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L229:
  mov r10, 0
  cmp r10, 0
  jne .L226
.L230:
  mov r10, 99
  lea r11, [rbp-700]
  mov [r11], r10d
  lea r10, .L.str238
  lea r11, [rbp-712]
  mov [r11], r10
  mov r10, 2
  mov r11, 1
  mov rax, r11
  mul r10
  mov r10, rax
  lea r11, [rbp-712]
  mov r11, [r11]
  add r11, r10
  mov r11b, [r11]
  movzb r11, r11b
  mov r10, r11
  jmp .L231
.L231:
  lea r11, [rbp-704]
  mov [r11], r10d
  lea r10, [rbp-700]
  mov r10d, [r10]
  lea r11, [rbp-704]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L232
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str239
  lea rbx, .L.str240
  lea r12, [rbp-704]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L233
.L232:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str241
  mov rbx, 115
  lea r12, .L.str242
  lea r13, [rbp-700]
  mov r13d, [r13]
  lea r14, [rbp-704]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L233:
  mov r10, 0
  cmp r10, 0
  jne .L230
.L234:
  mov r10, 0
  lea r11, [rbp-716]
  mov [r11], r10d
  lea r10, .L.str243
  lea r11, [rbp-728]
  mov [r11], r10
  mov r10, 3
  mov r11, 1
  mov rax, r11
  mul r10
  mov r10, rax
  lea r11, [rbp-728]
  mov r11, [r11]
  add r11, r10
  mov r11b, [r11]
  movzb r11, r11b
  mov r10, r11
  jmp .L235
.L235:
  lea r11, [rbp-720]
  mov [r11], r10d
  lea r10, [rbp-716]
  mov r10d, [r10]
  lea r11, [rbp-720]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L236
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str244
  lea rbx, .L.str245
  lea r12, [rbp-720]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L237
.L236:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str246
  mov rbx, 116
  lea r12, .L.str247
  lea r13, [rbp-716]
  mov r13d, [r13]
  lea r14, [rbp-720]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L237:
  mov r10, 0
  cmp r10, 0
  jne .L234
.L238:
  mov r10, 1
  lea r11, [rbp-732]
  mov [r11], r10d
  mov r10, 1
  lea r11, [rbp-740]
  mov [r11], r10d
  mov r10, 2
  lea r11, [rbp-744]
  mov [r11], r10d
  lea r10, [rbp-740]
  mov r10d, [r10]
  mov r11, r10
  jmp .L239
.L239:
  lea r10, [rbp-736]
  mov [r10], r11d
  lea r10, [rbp-732]
  mov r10d, [r10]
  lea r11, [rbp-736]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L240
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str248
  lea rbx, .L.str249
  lea r12, [rbp-736]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L241
.L240:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str250
  mov rbx, 118
  lea r12, .L.str251
  lea r13, [rbp-732]
  mov r13d, [r13]
  lea r14, [rbp-736]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L241:
  mov r10, 0
  cmp r10, 0
  jne .L238
.L242:
  mov r10, 0
  lea r11, [rbp-748]
  mov [r11], r10d
  lea r10, var1
  mov r10d, [r10]
  lea r11, [rbp-752]
  mov [r11], r10d
  lea r10, [rbp-748]
  mov r10d, [r10]
  lea r11, [rbp-752]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L243
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str252
  lea rbx, .L.str253
  lea r12, [rbp-752]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L244
.L243:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str254
  mov rbx, 120
  lea r12, .L.str255
  lea r13, [rbp-748]
  mov r13d, [r13]
  lea r14, [rbp-752]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L244:
  mov r10, 0
  cmp r10, 0
  jne .L242
.L245:
  mov r10, 5
  lea r11, [rbp-756]
  mov [r11], r10d
  mov r10, 5
  lea r11, var1
  mov [r11], r10d
  lea r10, var1
  mov r10d, [r10]
  mov r11, r10
  jmp .L246
.L246:
  lea r10, [rbp-760]
  mov [r10], r11d
  lea r10, [rbp-756]
  mov r10d, [r10]
  lea r11, [rbp-760]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L247
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str256
  lea rbx, .L.str257
  lea r12, [rbp-760]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L248
.L247:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str258
  mov rbx, 121
  lea r12, .L.str259
  lea r13, [rbp-756]
  mov r13d, [r13]
  lea r14, [rbp-760]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L248:
  mov r10, 0
  cmp r10, 0
  jne .L245
.L249:
  mov r10, 20
  lea r11, [rbp-764]
  mov [r11], r10d
  mov r10, 20
  lea r11, [rbp-768]
  mov [r11], r10d
  lea r10, [rbp-764]
  mov r10d, [r10]
  lea r11, [rbp-768]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L250
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str260
  lea rbx, .L.str261
  lea r12, [rbp-768]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L251
.L250:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str262
  mov rbx, 122
  lea r12, .L.str263
  lea r13, [rbp-764]
  mov r13d, [r13]
  lea r14, [rbp-768]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L251:
  mov r10, 0
  cmp r10, 0
  jne .L249
.L252:
  mov r10, 15
  lea r11, [rbp-772]
  mov [r11], r10d
  mov r10, 5
  mov r11, 0
  mov rbx, 4
  mov rax, rbx
  mul r11
  mov r11, rax
  lea rbx, var2
  add rbx, r11
  mov [rbx], r10d
  mov r10, 10
  mov r11, 4
  mov rbx, 4
  mov rax, rbx
  mul r11
  mov r11, rax
  lea rbx, var2
  add rbx, r11
  mov [rbx], r10d
  mov r10, 0
  mov r11, 4
  mov rax, r11
  mul r10
  mov r10, rax
  lea r11, var2
  add r11, r10
  mov r11d, [r11]
  mov r10, 4
  mov rbx, 4
  mov rax, rbx
  mul r10
  mov r10, rax
  lea rbx, var2
  add rbx, r10
  mov ebx, [rbx]
  add r11, rbx
  mov r10, r11
  jmp .L253
.L253:
  lea r11, [rbp-776]
  mov [r11], r10d
  lea r10, [rbp-772]
  mov r10d, [r10]
  lea r11, [rbp-776]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L254
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str264
  lea rbx, .L.str265
  lea r12, [rbp-776]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L255
.L254:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str266
  mov rbx, 123
  lea r12, .L.str267
  lea r13, [rbp-772]
  mov r13d, [r13]
  lea r14, [rbp-776]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L255:
  mov r10, 0
  cmp r10, 0
  jne .L252
.L256:
  mov r10, 5
  lea r11, [rbp-780]
  mov [r11], r10d
  mov r10, 0
  mov r11, 4
  mov rax, r11
  mul r10
  mov r10, rax
  lea r11, global_arr
  add r11, r10
  mov r11d, [r11]
  lea r10, [rbp-784]
  mov [r10], r11d
  lea r10, [rbp-780]
  mov r10d, [r10]
  lea r11, [rbp-784]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L257
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str268
  lea rbx, .L.str269
  lea r12, [rbp-784]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L258
.L257:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str270
  mov rbx, 124
  lea r12, .L.str271
  lea r13, [rbp-780]
  mov r13d, [r13]
  lea r14, [rbp-784]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L258:
  mov r10, 0
  cmp r10, 0
  jne .L256
.L259:
  mov r10, 8
  lea r11, [rbp-788]
  mov [r11], r10d
  mov r10, 3
  mov r11, 5
  mov rbx, r11
  jmp .L261
.L261:
  add r10, rbx
  mov r11, r10
  jmp .L260
.L260:
  lea r10, [rbp-792]
  mov [r10], r11d
  lea r10, [rbp-788]
  mov r10d, [r10]
  lea r11, [rbp-792]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L262
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str272
  lea rbx, .L.str273
  lea r12, [rbp-792]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L263
.L262:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str274
  mov rbx, 126
  lea r12, .L.str275
  lea r13, [rbp-788]
  mov r13d, [r13]
  lea r14, [rbp-792]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L263:
  mov r10, 0
  cmp r10, 0
  jne .L259
.L264:
  mov r10, 1
  lea r11, [rbp-796]
  mov [r11], r10d
  mov r10, 1
  mov r11, r10
  jmp .L265
.L265:
  lea r10, [rbp-800]
  mov [r10], r11d
  lea r10, [rbp-796]
  mov r10d, [r10]
  lea r11, [rbp-800]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L266
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str276
  lea rbx, .L.str277
  lea r12, [rbp-800]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L267
.L266:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str278
  mov rbx, 127
  lea r12, .L.str279
  lea r13, [rbp-796]
  mov r13d, [r13]
  lea r14, [rbp-800]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L267:
  mov r10, 0
  cmp r10, 0
  jne .L264
.L268:
  mov r10, 4
  lea r11, [rbp-804]
  mov [r11], r10d
  mov r10, 4
  mov r11, r10
  jmp .L269
.L269:
  lea r10, [rbp-808]
  mov [r10], r11d
  lea r10, [rbp-804]
  mov r10d, [r10]
  lea r11, [rbp-808]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L270
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str280
  lea rbx, .L.str281
  lea r12, [rbp-808]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L271
.L270:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str282
  mov rbx, 129
  lea r12, .L.str283
  lea r13, [rbp-804]
  mov r13d, [r13]
  lea r14, [rbp-808]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L271:
  mov r10, 0
  cmp r10, 0
  jne .L268
.L272:
  mov r10, 8
  lea r11, [rbp-816]
  mov [r11], r10d
  mov r10, 8
  mov r11, r10
  jmp .L273
.L273:
  lea r10, [rbp-820]
  mov [r10], r11d
  lea r10, [rbp-816]
  mov r10d, [r10]
  lea r11, [rbp-820]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L274
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str284
  lea rbx, .L.str285
  lea r12, [rbp-820]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L275
.L274:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str286
  mov rbx, 130
  lea r12, .L.str287
  lea r13, [rbp-816]
  mov r13d, [r13]
  lea r14, [rbp-820]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L275:
  mov r10, 0
  cmp r10, 0
  jne .L272
.L276:
  mov r10, 12
  lea r11, [rbp-832]
  mov [r11], r10d
  mov r10, 12
  mov r11, r10
  jmp .L277
.L277:
  lea r10, [rbp-836]
  mov [r10], r11d
  lea r10, [rbp-832]
  mov r10d, [r10]
  lea r11, [rbp-836]
  mov r11d, [r11]
  cmp r10, r11
  sete r10b
  movzb r10, r10b
  cmp r10, 0
  je .L278
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str288
  lea rbx, .L.str289
  lea r12, [rbp-836]
  mov r12d, [r12]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r13, rax
  jmp .L279
.L278:
  lea r10, stderr
  mov r10, [r10]
  lea r11, .L.str290
  mov rbx, 131
  lea r12, .L.str291
  lea r13, [rbp-832]
  mov r13d, [r13]
  lea r14, [rbp-836]
  mov r14d, [r14]
  mov rdi, r10
  mov rsi, r11
  mov rdx, rbx
  mov rcx, r12
  mov r8, r13
  mov r9, r14
  push r10
  push r11
  mov rax, 0
  call fprintf
  pop r11
  pop r10
  mov r15, rax
  mov r10, 1
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call exit
  pop r11
  pop r10
  mov r11, rax
.L279:
  mov r10, 0
  cmp r10, 0
  jne .L276
  lea r10, .L.str292
  mov rdi, r10
  push r10
  push r11
  mov rax, 0
  call printf
  pop r11
  pop r10
  mov r11, rax
  mov r10, 0
  mov rax, r10
  jmp .Lend5
.Lend5:
  pop r15
  pop r14
  pop r13
  pop r12
  mov rsp, rbp
  pop rbp
  ret
