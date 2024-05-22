s(s(T1,T2),P) --> aa(T1,P1), bb(T2,P2), {P is P1*P2*0.5}.
s(s(T),P) --> aa(T,P1), {P is P1*0.5}.
aa(aa(T1,T2),P) --> cc(T1,P1), dd(T2,P2), {P is P1*P2*0.5}.
aa(aa(T),P) --> cc(T,P1), {P is P1*0.5}.
bb(bb(T1,T2),P) --> ee(T1,P1), xx(T2,P2), {P is P1*P2*0.5}.
bb(bb(T),P) --> ee(T,P1), {P is P1*0.5}.
cc(cc(T1,T2),P) --> ff(T1,P1), gg(T2,P2), {P is P1*P2*0.5}.
cc(cc(T),P) --> ff(T,P1), {P is P1*0.5}.
dd(dd(T1,T2),P) --> hh(T1,P1), ii(T2,P2), {P is P1*P2*0.5}.
dd(dd(T),P) --> hh(T,P1), {P is P1*0.5}.
ee(ee(T1,T2),P) --> jj(T1,P1), kk(T2,P2), {P is P1*P2*0.5}.
ee(ee(T),P) --> jj(T,P1), {P is P1*0.5}.
ff(ff(T1,T2),P) --> ll(T1,P1), mm(T2,P2), {P is P1*P2*1.0}.
gg(gg(T1,T2),P) --> nn(T1,P1), oo(T2,P2), {P is P1*P2*1.0}.
hh(hh(T1,T2),P) --> pp(T1,P1), qq(T2,P2), {P is P1*P2*1.0}.
ii(ii(T1,T2),P) --> rr(T1,P1), ss(T2,P2), {P is P1*P2*1.0}.
jj(jj(T1,T2),P) --> tt(T1,P1), uu(T2,P2), {P is P1*P2*1.0}.
kk(kk(T1,T2),P) --> vv(T1,P1), ww(T2,P2), {P is P1*P2*1.0}.
ll(ll(T1,T2),P) --> a(T1,P1), b(T2,P2), {P is P1*P2*1.0}.
mm(mm(T1,T2),P) --> c(T1,P1), d(T2,P2), {P is P1*P2*1.0}.
nn(nn(T1,T2),P) --> e(T1,P1), f(T2,P2), {P is P1*P2*1.0}.
oo(oo(T1,T2),P) --> g(T1,P1), h(T2,P2), {P is P1*P2*1.0}.
pp(pp(T1,T2),P) --> i(T1,P1), j(T2,P2), {P is P1*P2*1.0}.
qq(qq(T1,T2),P) --> k(T1,P1), l(T2,P2), {P is P1*P2*1.0}.
rr(rr(T1,T2),P) --> m(T1,P1), n(T2,P2), {P is P1*P2*1.0}.
ss(ss(T1,T2),P) --> o(T1,P1), p(T2,P2), {P is P1*P2*1.0}.
tt(tt(T1,T2),P) --> q(T1,P1), r(T2,P2), {P is P1*P2*1.0}.
uu(uu(T1,T2),P) --> s1(T1,P1), t(T2,P2), {P is P1*P2*1.0}.
vv(vv(T1,T2),P) --> u(T1,P1), v(T2,P2), {P is P1*P2*1.0}.
ww(ww(T1,T2),P) --> w(T1,P1), x(T2,P2), {P is P1*P2*1.0}.
xx(xx(T1,T2),P) --> y(T1,P1), z(T2,P2), {P is P1*P2*1.0}.
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
