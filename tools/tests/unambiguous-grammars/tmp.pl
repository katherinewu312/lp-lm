s(s(T1,T2),P) --> aa(T1,P1), bb(T2,P2), {P is P1*P2*0.5}.
s(s(T),P) --> aa(T,P1), {P is P1*0.4}.
s(s(T),P) --> s2(T,P1), {P is P1*0.1}.
aa(aa(T1,T2),P) --> cc(T1,P1), dd(T2,P2), {P is P1*P2*0.5}.
aa(aa(T),P) --> cc(T,P1), {P is P1*0.4}.
aa(aa(T),P) --> s3(T,P1), {P is P1*0.1}.
bb(bb(T1,T2),P) --> ee(T1,P1), xx(T2,P2), {P is P1*P2*0.5}.
bb(bb(T),P) --> ee(T,P1), {P is P1*0.4}.
bb(bb(T),P) --> s4(T,P1), {P is P1*0.1}.
cc(cc(T1,T2),P) --> ff(T1,P1), gg(T2,P2), {P is P1*P2*0.5}.
cc(cc(T),P) --> ff(T,P1), {P is P1*0.4}.
cc(cc(T),P) --> s5(T,P1), {P is P1*0.1}.
dd(dd(T1,T2),P) --> hh(T1,P1), ii(T2,P2), {P is P1*P2*0.5}.
dd(dd(T),P) --> hh(T,P1), {P is P1*0.4}.
dd(dd(T),P) --> s6(T,P1), {P is P1*0.1}.
ee(ee(T1,T2),P) --> jj(T1,P1), kk(T2,P2), {P is P1*P2*0.5}.
ee(ee(T),P) --> jj(T,P1), {P is P1*0.4}.
ee(ee(T),P) --> s7(T,P1), {P is P1*0.1}.
ff(ff(T1,T2),P) --> ll(T1,P1), mm(T2,P2), {P is P1*P2*0.5}.
ff(ff(T),P) --> s8(T,P1), {P is P1*0.5}.
gg(gg(T1,T2),P) --> nn(T1,P1), oo(T2,P2), {P is P1*P2*0.5}.
gg(gg(T),P) --> s9(T,P1), {P is P1*0.5}.
hh(hh(T1,T2),P) --> pp(T1,P1), qq(T2,P2), {P is P1*P2*0.5}.
hh(hh(T),P) --> s10(T,P1), {P is P1*0.5}.
ii(ii(T1,T2),P) --> rr(T1,P1), ss(T2,P2), {P is P1*P2*0.5}.
ii(ii(T),P) --> s11(T,P1), {P is P1*0.5}.
jj(jj(T1,T2),P) --> tt(T1,P1), uu(T2,P2), {P is P1*P2*0.5}.
jj(jj(T),P) --> s12(T,P1), {P is P1*0.5}.
kk(kk(T1,T2),P) --> vv(T1,P1), ww(T2,P2), {P is P1*P2*0.5}.
kk(kk(T),P) --> s13(T,P1), {P is P1*0.5}.
ll(ll(T1,T2),P) --> a(T1,P1), b(T2,P2), {P is P1*P2*0.5}.
ll(ll(T),P) --> s14(T,P1), {P is P1*0.5}.
mm(mm(T1,T2),P) --> c(T1,P1), d(T2,P2), {P is P1*P2*0.5}.
mm(mm(T),P) --> s15(T,P1), {P is P1*0.5}.
nn(nn(T1,T2),P) --> e(T1,P1), f(T2,P2), {P is P1*P2*0.5}.
nn(nn(T),P) --> s16(T,P1), {P is P1*0.5}.
oo(oo(T1,T2),P) --> g(T1,P1), h(T2,P2), {P is P1*P2*0.5}.
oo(oo(T),P) --> s17(T,P1), {P is P1*0.5}.
pp(pp(T1,T2),P) --> i(T1,P1), j(T2,P2), {P is P1*P2*0.5}.
pp(pp(T),P) --> s18(T,P1), {P is P1*0.5}.
qq(qq(T1,T2),P) --> k(T1,P1), l(T2,P2), {P is P1*P2*0.5}.
qq(qq(T),P) --> s19(T,P1), {P is P1*0.5}.
rr(rr(T1,T2),P) --> m(T1,P1), n(T2,P2), {P is P1*P2*0.5}.
rr(rr(T),P) --> s20(T,P1), {P is P1*0.5}.
ss(ss(T1,T2),P) --> o(T1,P1), p(T2,P2), {P is P1*P2*0.5}.
ss(ss(T),P) --> s21(T,P1), {P is P1*0.5}.
tt(tt(T1,T2),P) --> q(T1,P1), r(T2,P2), {P is P1*P2*0.5}.
tt(tt(T),P) --> s22(T,P1), {P is P1*0.5}.
uu(uu(T1,T2),P) --> s1(T1,P1), t(T2,P2), {P is P1*P2*0.5}.
uu(uu(T),P) --> s23(T,P1), {P is P1*0.5}.
vv(vv(T1,T2),P) --> u(T1,P1), v(T2,P2), {P is P1*P2*0.5}.
vv(vv(T),P) --> s24(T,P1), {P is P1*0.5}.
ww(ww(T1,T2),P) --> w(T1,P1), x(T2,P2), {P is P1*P2*0.5}.
ww(ww(T),P) --> s25(T,P1), {P is P1*0.5}.
xx(xx(T1,T2),P) --> y(T1,P1), z(T2,P2), {P is P1*P2*0.5}.
xx(xx(T),P) --> s26(T,P1), {P is P1*0.5}.
a(a('a'),1.0) --> ['a'].
b(b('b'),1.0) --> ['b'].
c(c('c'),1.0) --> ['c'].
d(d('d'),1.0) --> ['d'].
e(e('e'),1.0) --> ['e'].
f(f('f'),1.0) --> ['f'].
g(g('g'),1.0) --> ['g'].
h(h('h'),1.0) --> ['h'].
i(i('i'),1.0) --> ['i'].
j(j('j'),1.0) --> ['j'].
k(k('k'),1.0) --> ['k'].
l(l('l'),1.0) --> ['l'].
m(m('m'),1.0) --> ['m'].
n(n('n'),1.0) --> ['n'].
o(o('o'),1.0) --> ['o'].
p(p('p'),1.0) --> ['p'].
q(q('q'),1.0) --> ['q'].
r(r('r'),1.0) --> ['r'].
s1(s1('s'),1.0) --> ['s'].
t(t('t'),1.0) --> ['t'].
u(u('u'),1.0) --> ['u'].
v(v('v'),1.0) --> ['v'].
w(w('w'),1.0) --> ['w'].
x(x('x'),1.0) --> ['x'].
y(y('y'),1.0) --> ['y'].
z(z('z'),1.0) --> ['z'].
s2(s2('aa'),1.0) --> ['aa'].
s3(s3('bb'),1.0) --> ['bb'].
s4(s4('cc'),1.0) --> ['cc'].
s5(s5('dd'),1.0) --> ['dd'].
s6(s6('ee'),1.0) --> ['ee'].
s7(s7('ff'),1.0) --> ['ff'].
s8(s8('gg'),1.0) --> ['gg'].
s9(s9('hh'),1.0) --> ['hh'].
s10(s10('ii'),1.0) --> ['ii'].
s11(s11('jj'),1.0) --> ['jj'].
s12(s12('kk'),1.0) --> ['kk'].
s13(s13('ll'),1.0) --> ['ll'].
s14(s14('mm'),1.0) --> ['mm'].
s15(s15('nn'),1.0) --> ['nn'].
s16(s16('oo'),1.0) --> ['oo'].
s17(s17('pp'),1.0) --> ['pp'].
s18(s18('qq'),1.0) --> ['qq'].
s19(s19('rr'),1.0) --> ['rr'].
s20(s20('ss'),1.0) --> ['ss'].
s21(s21('tt'),1.0) --> ['tt'].
s22(s22('uu'),1.0) --> ['uu'].
s23(s23('vv'),1.0) --> ['vv'].
s24(s24('ww'),1.0) --> ['ww'].
s25(s25('xx'),1.0) --> ['xx'].
s26(s26('yy'),1.0) --> ['yy'].
