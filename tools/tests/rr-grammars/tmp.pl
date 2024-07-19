s(s(T1,T2),P) --> b(T1,P1), s(T2,P2), {P is P1*P2*0.4}.
s(s('a',T1),P) --> ['a'], s(T1,P1), {P is P1*0.3}.
s(s('a'),0.3) --> ['a'].
b(b(T1,T2),P) --> c(T1,P1), b(T2,P2), {P is P1*P2*0.4}.
b(b('b',T1),P) --> ['b'], b(T1,P1), {P is P1*0.3}.
b(b('b'),0.3) --> ['b'].
c(c(T1,T2),P) --> d(T1,P1), c(T2,P2), {P is P1*P2*0.4}.
c(c('c',T1),P) --> ['c'], c(T1,P1), {P is P1*0.3}.
c(c('c'),0.3) --> ['c'].
d(d(T1,T2),P) --> e(T1,P1), d(T2,P2), {P is P1*P2*0.4}.
d(d('d',T1),P) --> ['d'], d(T1,P1), {P is P1*0.3}.
d(d('d'),0.3) --> ['d'].
e(e(T1,T2),P) --> f(T1,P1), e(T2,P2), {P is P1*P2*0.4}.
e(e('e',T1),P) --> ['e'], e(T1,P1), {P is P1*0.3}.
e(e('e'),0.3) --> ['e'].
f(f(T1,T2),P) --> g(T1,P1), f(T2,P2), {P is P1*P2*0.4}.
f(f('f',T1),P) --> ['f'], f(T1,P1), {P is P1*0.3}.
f(f('f'),0.3) --> ['f'].
g(g(T1,T2),P) --> h(T1,P1), g(T2,P2), {P is P1*P2*0.4}.
g(g('g',T1),P) --> ['g'], g(T1,P1), {P is P1*0.3}.
g(g('g'),0.3) --> ['g'].
h(h(T1,T2),P) --> i(T1,P1), h(T2,P2), {P is P1*P2*0.4}.
h(h('h',T1),P) --> ['h'], h(T1,P1), {P is P1*0.3}.
h(h('h'),0.3) --> ['h'].
i(i(T1,T2),P) --> j(T1,P1), i(T2,P2), {P is P1*P2*0.4}.
i(i('i',T1),P) --> ['i'], i(T1,P1), {P is P1*0.3}.
i(i('i'),0.3) --> ['i'].
j(j(T1,T2),P) --> k(T1,P1), j(T2,P2), {P is P1*P2*0.4}.
j(j('j',T1),P) --> ['j'], j(T1,P1), {P is P1*0.3}.
j(j('j'),0.3) --> ['j'].
k(k(T1,T2),P) --> l(T1,P1), k(T2,P2), {P is P1*P2*0.4}.
k(k('k',T1),P) --> ['k'], k(T1,P1), {P is P1*0.3}.
k(k('k'),0.3) --> ['k'].
l(l(T1,T2),P) --> m(T1,P1), l(T2,P2), {P is P1*P2*0.4}.
l(l('l',T1),P) --> ['l'], l(T1,P1), {P is P1*0.3}.
l(l('l'),0.3) --> ['l'].
m(m(T1,T2),P) --> n(T1,P1), m(T2,P2), {P is P1*P2*0.4}.
m(m('m',T1),P) --> ['m'], m(T1,P1), {P is P1*0.3}.
m(m('m'),0.3) --> ['m'].
n(n(T1,T2),P) --> o(T1,P1), n(T2,P2), {P is P1*P2*0.4}.
n(n('n',T1),P) --> ['n'], n(T1,P1), {P is P1*0.3}.
n(n('n'),0.3) --> ['n'].
o(o(T1,T2),P) --> p(T1,P1), o(T2,P2), {P is P1*P2*0.4}.
o(o('o',T1),P) --> ['o'], o(T1,P1), {P is P1*0.3}.
o(o('o'),0.3) --> ['o'].
p(p(T1,T2),P) --> q(T1,P1), p(T2,P2), {P is P1*P2*0.4}.
p(p('p',T1),P) --> ['p'], p(T1,P1), {P is P1*0.3}.
p(p('p'),0.3) --> ['p'].
q(q(T1,T2),P) --> r(T1,P1), q(T2,P2), {P is P1*P2*0.4}.
q(q('q',T1),P) --> ['q'], q(T1,P1), {P is P1*0.3}.
q(q('q'),0.3) --> ['q'].
r(r(T1,T2),P) --> s1(T1,P1), r(T2,P2), {P is P1*P2*0.4}.
r(r('r',T1),P) --> ['r'], r(T1,P1), {P is P1*0.3}.
r(r('r'),0.3) --> ['r'].
s1(s1(T1,T2),P) --> t(T1,P1), s1(T2,P2), {P is P1*P2*0.4}.
s1(s1('s',T1),P) --> ['s'], s1(T1,P1), {P is P1*0.3}.
s1(s1('s'),0.3) --> ['s'].
t(t(T1,T2),P) --> u(T1,P1), t(T2,P2), {P is P1*P2*0.4}.
t(t('t',T1),P) --> ['t'], t(T1,P1), {P is P1*0.3}.
t(t('t'),0.3) --> ['t'].
u(u(T1,T2),P) --> v(T1,P1), u(T2,P2), {P is P1*P2*0.4}.
u(u('u',T1),P) --> ['u'], u(T1,P1), {P is P1*0.3}.
u(u('u'),0.3) --> ['u'].
v(v(T1,T2),P) --> w(T1,P1), v(T2,P2), {P is P1*P2*0.4}.
v(v('v',T1),P) --> ['v'], v(T1,P1), {P is P1*0.3}.
v(v('v'),0.3) --> ['v'].
w(w(T1,T2),P) --> x(T1,P1), w(T2,P2), {P is P1*P2*0.4}.
w(w('w',T1),P) --> ['w'], w(T1,P1), {P is P1*0.3}.
w(w('w'),0.3) --> ['w'].
x(x(T1,T2),P) --> y(T1,P1), x(T2,P2), {P is P1*P2*0.4}.
x(x('x',T1),P) --> ['x'], x(T1,P1), {P is P1*0.3}.
x(x('x'),0.3) --> ['x'].
y(y(T1,T2),P) --> z(T1,P1), y(T2,P2), {P is P1*P2*0.4}.
y(y('y',T1),P) --> ['y'], y(T1,P1), {P is P1*0.3}.
y(y('y'),0.3) --> ['y'].
z(z(T1,T2),P) --> ss(T1,P1), z(T2,P2), {P is P1*P2*0.4}.
z(z('z',T1),P) --> ['z'], z(T1,P1), {P is P1*0.3}.
z(z('z'),0.3) --> ['z'].
ss(ss(T1,T2),P) --> bb(T1,P1), ss(T2,P2), {P is P1*P2*0.4}.
ss(ss('aa',T1),P) --> ['aa'], ss(T1,P1), {P is P1*0.3}.
ss(ss('aa'),0.3) --> ['aa'].
bb(bb(T1,T2),P) --> cc(T1,P1), bb(T2,P2), {P is P1*P2*0.4}.
bb(bb('bb',T1),P) --> ['bb'], bb(T1,P1), {P is P1*0.3}.
bb(bb('bb'),0.3) --> ['bb'].
cc(cc(T1,T2),P) --> dd(T1,P1), cc(T2,P2), {P is P1*P2*0.4}.
cc(cc('cc',T1),P) --> ['cc'], cc(T1,P1), {P is P1*0.3}.
cc(cc('cc'),0.3) --> ['cc'].
dd(dd(T1,T2),P) --> ee(T1,P1), dd(T2,P2), {P is P1*P2*0.4}.
dd(dd('dd',T1),P) --> ['dd'], dd(T1,P1), {P is P1*0.3}.
dd(dd('dd'),0.3) --> ['dd'].
ee(ee(T1,T2),P) --> ff(T1,P1), ee(T2,P2), {P is P1*P2*0.4}.
ee(ee('ee',T1),P) --> ['ee'], ee(T1,P1), {P is P1*0.3}.
ee(ee('ee'),0.3) --> ['ee'].
ff(ff(T1,T2),P) --> gg(T1,P1), ff(T2,P2), {P is P1*P2*0.4}.
ff(ff('ff',T1),P) --> ['ff'], ff(T1,P1), {P is P1*0.3}.
ff(ff('ff'),0.3) --> ['ff'].
gg(gg(T1,T2),P) --> hh(T1,P1), gg(T2,P2), {P is P1*P2*0.4}.
gg(gg('gg',T1),P) --> ['gg'], gg(T1,P1), {P is P1*0.3}.
gg(gg('gg'),0.3) --> ['gg'].
hh(hh(T1,T2),P) --> ii(T1,P1), hh(T2,P2), {P is P1*P2*0.4}.
hh(hh('hh',T1),P) --> ['hh'], hh(T1,P1), {P is P1*0.3}.
hh(hh('hh'),0.3) --> ['hh'].
ii(ii(T1,T2),P) --> jj(T1,P1), ii(T2,P2), {P is P1*P2*0.4}.
ii(ii('ii',T1),P) --> ['ii'], ii(T1,P1), {P is P1*0.3}.
ii(ii('ii'),0.3) --> ['ii'].
jj(jj('jj'),1.0) --> ['jj'].
