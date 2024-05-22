s(s(T1,T2),P) --> s(T1,P1), b(T2,P2), {P is P1*P2*0.4}.
s(s(T1,'a'),P) --> s(T1,P1), ['a'], {P is P1*0.3}.
s(s('a'),0.3) --> ['a'].
b(b(T1,T2),P) --> b(T1,P1), c(T2,P2), {P is P1*P2*0.4}.
b(b(T1,'b'),P) --> b(T1,P1), ['b'], {P is P1*0.3}.
b(b('b'),0.3) --> ['b'].
c(c(T1,T2),P) --> c(T1,P1), d(T2,P2), {P is P1*P2*0.4}.
c(c(T1,'c'),P) --> c(T1,P1), ['c'], {P is P1*0.3}.
c(c('c'),0.3) --> ['c'].
d(d(T1,T2),P) --> d(T1,P1), e(T2,P2), {P is P1*P2*0.4}.
d(d(T1,'d'),P) --> d(T1,P1), ['d'], {P is P1*0.3}.
d(d('d'),0.3) --> ['d'].
e(e(T1,T2),P) --> e(T1,P1), f(T2,P2), {P is P1*P2*0.4}.
e(e(T1,'e'),P) --> e(T1,P1), ['e'], {P is P1*0.3}.
e(e('e'),0.3) --> ['e'].
f(f(T1,T2),P) --> f(T1,P1), g(T2,P2), {P is P1*P2*0.4}.
f(f(T1,'f'),P) --> f(T1,P1), ['f'], {P is P1*0.3}.
f(f('f'),0.3) --> ['f'].
g(g(T1,T2),P) --> g(T1,P1), h(T2,P2), {P is P1*P2*0.4}.
g(g(T1,'g'),P) --> g(T1,P1), ['g'], {P is P1*0.3}.
g(g('g'),0.3) --> ['g'].
h(h(T1,T2),P) --> h(T1,P1), i(T2,P2), {P is P1*P2*0.4}.
h(h(T1,'h'),P) --> h(T1,P1), ['h'], {P is P1*0.3}.
h(h('h'),0.3) --> ['h'].
i(i(T1,T2),P) --> i(T1,P1), j(T2,P2), {P is P1*P2*0.4}.
i(i(T1,'i'),P) --> i(T1,P1), ['i'], {P is P1*0.3}.
i(i('i'),0.3) --> ['i'].
j(j(T1,T2),P) --> j(T1,P1), k(T2,P2), {P is P1*P2*0.4}.
j(j(T1,'j'),P) --> j(T1,P1), ['j'], {P is P1*0.3}.
j(j('j'),0.3) --> ['j'].
k(k(T1,T2),P) --> k(T1,P1), l(T2,P2), {P is P1*P2*0.4}.
k(k(T1,'k'),P) --> k(T1,P1), ['k'], {P is P1*0.3}.
k(k('k'),0.3) --> ['k'].
l(l(T1,T2),P) --> l(T1,P1), m(T2,P2), {P is P1*P2*0.4}.
l(l(T1,'l'),P) --> l(T1,P1), ['l'], {P is P1*0.3}.
l(l('l'),0.3) --> ['l'].
m(m(T1,T2),P) --> m(T1,P1), n(T2,P2), {P is P1*P2*0.4}.
m(m(T1,'m'),P) --> m(T1,P1), ['m'], {P is P1*0.3}.
m(m('m'),0.3) --> ['m'].
n(n(T1,T2),P) --> n(T1,P1), o(T2,P2), {P is P1*P2*0.4}.
n(n(T1,'n'),P) --> n(T1,P1), ['n'], {P is P1*0.3}.
n(n('n'),0.3) --> ['n'].
o(o(T1,T2),P) --> o(T1,P1), p(T2,P2), {P is P1*P2*0.4}.
o(o(T1,'o'),P) --> o(T1,P1), ['o'], {P is P1*0.3}.
o(o('o'),0.3) --> ['o'].
p(p(T1,T2),P) --> p(T1,P1), q(T2,P2), {P is P1*P2*0.4}.
p(p(T1,'p'),P) --> p(T1,P1), ['p'], {P is P1*0.3}.
p(p('p'),0.3) --> ['p'].
q(q(T1,T2),P) --> q(T1,P1), r(T2,P2), {P is P1*P2*0.4}.
q(q(T1,'q'),P) --> q(T1,P1), ['q'], {P is P1*0.3}.
q(q('q'),0.3) --> ['q'].
r(r(T1,T2),P) --> r(T1,P1), s1(T2,P2), {P is P1*P2*0.4}.
r(r(T1,'r'),P) --> r(T1,P1), ['r'], {P is P1*0.3}.
r(r('r'),0.3) --> ['r'].
s1(s1(T1,T2),P) --> s1(T1,P1), t(T2,P2), {P is P1*P2*0.4}.
s1(s1(T1,'s'),P) --> s1(T1,P1), ['s'], {P is P1*0.3}.
s1(s1('s'),0.3) --> ['s'].
t(t(T1,T2),P) --> t(T1,P1), u(T2,P2), {P is P1*P2*0.4}.
t(t(T1,'t'),P) --> t(T1,P1), ['t'], {P is P1*0.3}.
t(t('t'),0.3) --> ['t'].
u(u(T1,T2),P) --> u(T1,P1), v(T2,P2), {P is P1*P2*0.4}.
u(u(T1,'u'),P) --> u(T1,P1), ['u'], {P is P1*0.3}.
u(u('u'),0.3) --> ['u'].
v(v(T1,T2),P) --> v(T1,P1), w(T2,P2), {P is P1*P2*0.4}.
v(v(T1,'v'),P) --> v(T1,P1), ['v'], {P is P1*0.3}.
v(v('v'),0.3) --> ['v'].
w(w(T1,T2),P) --> w(T1,P1), x(T2,P2), {P is P1*P2*0.4}.
w(w(T1,'w'),P) --> w(T1,P1), ['w'], {P is P1*0.3}.
w(w('w'),0.3) --> ['w'].
x(x(T1,T2),P) --> x(T1,P1), y(T2,P2), {P is P1*P2*0.4}.
x(x(T1,'x'),P) --> x(T1,P1), ['x'], {P is P1*0.3}.
x(x('x'),0.3) --> ['x'].
y(y(T1,T2),P) --> y(T1,P1), z(T2,P2), {P is P1*P2*0.4}.
y(y(T1,'y'),P) --> y(T1,P1), ['y'], {P is P1*0.3}.
y(y('y'),0.3) --> ['y'].
z(z(T1,T2),P) --> z(T1,P1), ss(T2,P2), {P is P1*P2*0.4}.
z(z(T1,'z'),P) --> z(T1,P1), ['z'], {P is P1*0.3}.
z(z('z'),0.3) --> ['z'].
ss(ss(T1,T2),P) --> ss(T1,P1), bb(T2,P2), {P is P1*P2*0.4}.
ss(ss(T1,'aa'),P) --> ss(T1,P1), ['aa'], {P is P1*0.3}.
ss(ss('aa'),0.3) --> ['aa'].
bb(bb(T1,T2),P) --> bb(T1,P1), cc(T2,P2), {P is P1*P2*0.4}.
bb(bb(T1,'bb'),P) --> bb(T1,P1), ['bb'], {P is P1*0.3}.
bb(bb('bb'),0.3) --> ['bb'].
cc(cc(T1,T2),P) --> cc(T1,P1), dd(T2,P2), {P is P1*P2*0.4}.
cc(cc(T1,'cc'),P) --> cc(T1,P1), ['cc'], {P is P1*0.3}.
cc(cc('cc'),0.3) --> ['cc'].
dd(dd(T1,T2),P) --> dd(T1,P1), ee(T2,P2), {P is P1*P2*0.4}.
dd(dd(T1,'dd'),P) --> dd(T1,P1), ['dd'], {P is P1*0.3}.
dd(dd('dd'),0.3) --> ['dd'].
ee(ee(T1,T2),P) --> ee(T1,P1), ff(T2,P2), {P is P1*P2*0.4}.
ee(ee(T1,'ee'),P) --> ee(T1,P1), ['ee'], {P is P1*0.3}.
ee(ee('ee'),0.3) --> ['ee'].
ff(ff(T1,T2),P) --> ff(T1,P1), gg(T2,P2), {P is P1*P2*0.4}.
ff(ff(T1,'ff'),P) --> ff(T1,P1), ['ff'], {P is P1*0.3}.
ff(ff('ff'),0.3) --> ['ff'].
gg(gg(T1,T2),P) --> gg(T1,P1), hh(T2,P2), {P is P1*P2*0.4}.
gg(gg(T1,'gg'),P) --> gg(T1,P1), ['gg'], {P is P1*0.3}.
gg(gg('gg'),0.3) --> ['gg'].
hh(hh(T1,T2),P) --> hh(T1,P1), ii(T2,P2), {P is P1*P2*0.4}.
hh(hh(T1,'hh'),P) --> hh(T1,P1), ['hh'], {P is P1*0.3}.
hh(hh('hh'),0.3) --> ['hh'].
ii(ii(T1,T2),P) --> ii(T1,P1), jj(T2,P2), {P is P1*P2*0.4}.
ii(ii(T1,'ii'),P) --> ii(T1,P1), ['ii'], {P is P1*0.3}.
ii(ii('ii'),0.3) --> ['ii'].
jj(jj('jj'),1.0) --> ['jj'].
:- table e/4.
:- table o/4.
:- table r/4.
:- table g/4.
:- table x/4.
:- table w/4.
:- table l/4.
:- table b/4.
:- table ff/4.
:- table ss/4.
:- table u/4.
:- table hh/4.
:- table z/4.
:- table dd/4.
:- table n/4.
:- table bb/4.
:- table gg/4.
:- table p/4.
:- table t/4.
:- table ee/4.
:- table i/4.
:- table d/4.
:- table k/4.
:- table q/4.
:- table j/4.
:- table h/4.
:- table v/4.
:- table c/4.
:- table m/4.
:- table f/4.
:- table s/4.
:- table y/4.
:- table ii/4.
:- table cc/4.
:- table s1/4.
