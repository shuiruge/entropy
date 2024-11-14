<TeXmacs|2.1.4>

<style|book>

<\body>
  <section|Kramers-Moyal Expansion and Langevin Dynamics>

  We follow the discussion in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>, but focusing on the specific
  situation where there is extra smooth structure on <math|X>. This
  smoothness reflects on the connectivity of the alphabet <math|\<cal-X\>>,
  and on the smooth \Pspatial\Q dependence of the density function and
  transition rate. This indicates that the conclusions in section
  <reference|section: Master Equation, Detailed Balance, and Relative
  Entropy> hold in this section, but the inverse is not guaranteed.

  <subsection|Spatial Expansion of Master Equation Gives Kramers-Moyal
  Expansion><label|section: Spatial Expansion of Master Equation Gives
  Kramers-Moyal Expansion>

  Let the alphabet <math|\<cal-X\>=\<bbb-R\><rsup|n>> for some integer
  <math|n\<geqslant\>1>, which has sufficient connectivity. In addition,
  suppose that the density function <math|p<around*|(|x,t|)>> of a
  time-dependent distribution <math|P<around*|(|t|)>> and the transition rate
  <math|r<around*|(|x,y|)>> are smooth on <math|x> and <math|y>. In this
  section, we investigate the direct results of spatial smoothness.

  Now, the master equation <reference|equation:master equation> becomes

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    r<around*|(|x,y|)> p<around*|(|y,t|)>.
  </equation*>

  The spatial smoothness indicates that we can Taylor expand the right hand
  side to arbitrary order. The quantity that is used to perform the Taylor
  expansion neither <math|x> nor <math|y> since they are equally weighted,
  but their difference, <math|\<epsilon\>\<assign\>x-y>. If we replace the
  <math|y> in the right hand side with <math|x-\<epsilon\>>, that is,
  <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y r<around*|(|x,y|)>
  p<around*|(|y,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x,x-\<epsilon\>|)> p<around*|(|x-\<epsilon\>,t|)>>, and
  directly Taylor expand by <math|\<epsilon\>>, then we will get the leading
  term <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x,x|)> p<around*|(|x,t|)>>, the result of which is unknown.
  What we have known is <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x+\<epsilon\>,x|)> p<around*|(|x,t|)>> which is zero because of
  the \Pnormalization\Q of transition density. So, we expect to Taylor expand
  by <math|\<epsilon\>> that which results in a leading term
  <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x+\<epsilon\>,x|)> p<around*|(|x,t|)>.> To do this, we need a
  little magic.

  First of all, we have the identity

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x,x-\<epsilon\>|)> p<around*|(|x-\<epsilon\>,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|<around*|(|x-\<epsilon\>|)>+\<epsilon\>,x-\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>.
  </equation*>

  Next, we perform the magic. We first define
  <math|\<omega\><around*|(|x,\<epsilon\>|)>\<assign\>r<around*|(|x+\<epsilon\>,x|)>>,
  which the factor we want to obtain in the leading term. Then, the integral
  turns to be <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  \<omega\><around*|(|x-\<epsilon\>,\<epsilon\>|)>
  p<around*|(|x-\<epsilon\>,t|)>>. The key is Taylor expanding by the
  <math|\<epsilon\>> <em|in the first argument> of
  <math|\<omega\><around*|(|x-\<epsilon\>,\<epsilon\>|)>> in addition to that
  in <math|p<around*|(|x-\<epsilon\>,t|)>>. So, it becomes

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x,\<epsilon\>|)> p<around*|(|x,t|)>+<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)><big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|\<omega\><around*|(|x,\<epsilon\>|)> p<around*|(|x,t|)>|]>.
  </equation*>

  The leading term (the first one) vanishes, as expected. With some
  re-arrangement to the second term, and plugging it back to the right hand
  side of master equation, we find

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|p<around*|(|x,t|)> <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>|]>.
  </equation*>

  \;

  The integral <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
  \<omega\><around*|(|x,\<epsilon\>|)>> in the <math|<around*|[|\<cdots\>|]>>
  factor has an intuitive meaning. Remind of
  <math|\<omega\><around*|(|x,\<epsilon\>|)>=r<around*|(|x+\<epsilon\>,x|)>>
  and <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=\<delta\><around*|(|\<epsilon\>|)>+r<around*|(|x+\<epsilon\>,x|)>
  \<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>>, we have

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=\<Delta\>t
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  So, <math|\<Delta\>t <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
  \<omega\><around*|(|x,\<epsilon\>|)>> is recognized as an approximation of
  the <math|k>-order correlation of <math|\<epsilon\>> sampled from
  transition density <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>>
  (regarding <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>> as an
  <math|x>-dependent distribution <math|Q<rsub|\<Delta\>t><around*|(|x|)>>
  that samples <math|\<epsilon\>>). We denote it by (<math|K> for the leading
  consonant of \Pcorrelation\Q)

  <\equation*>
    K<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>.
  </equation*>

  Finally, we arrive at

  <\equation>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|K<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>
    p<around*|(|x,t|)>|]>.<label|equation:Kramers-Moyal expansion>
  </equation>

  This Taylor expansion of master equation is called the
  <with|font-series|bold|Kramers\UMoyal expansion>.

  <subsection|Transition Density of Langevin Dynamics Is Approximately
  Gaussian>

  Spatial connectivity enables us to investigate the most general
  distribution of continuous random variable, the normal distribution. Given
  <math|\<mu\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> and
  <math|\<Sigma\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n\<times\>n>>,
  which is positive definite and symmetric, let
  <math|q<rsub|\<Delta\>t><around*|(|x<rprime|'>\|x|)>> the normal
  distribution of <math|x<rprime|'>-x> with mean value
  <math|\<mu\><around*|(|x|)> \<Delta\>t> and variance
  <math|2\<Sigma\><around*|(|x|)>\<Delta\>t>. That is,

  <\equation*>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=<frac|1|<sqrt|<around*|(|4\<mathpi\>
    \<Delta\>t|)><rsup|n> det \<Sigma\><around*|(|x|)>>>exp<around*|(|-<frac|1|4\<Delta\>t>
    <around*|[|\<Sigma\><rsup|-1><around*|(|x|)>|]><rsub|\<alpha\>\<beta\>>
    <around*|(|\<epsilon\><rsup|\<alpha\>>-\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<Delta\>t|)> <around*|(|\<epsilon\><rsup|\<beta\>>-\<mu\><rsup|\<beta\>><around*|(|x|)>
    \<Delta\>t|)>|)>.
  </equation*>

  When <math|\<Delta\>t> is sufficiently small, <math|q<rsub|\<Delta\>t>> can
  be approximately regarded as a transition density (section
  <reference|section: Transition Rate Determines Transition Density>). The
  corresponding Markov process is called <with|font-series|bold|Langevin
  dynamics>.

  In many textures, Langevin dynamics is written by a stochastic differential
  equation (again, we use capital letters for random variables)

  <\equation*>
    \<mathd\>X<rsup|\<alpha\>>=\<mu\><rsup|\<alpha\>><around*|(|x|)>\<mathd\>t+\<mathd\>W<rsup|\<alpha\>><around*|(|x|)>,
  </equation*>

  where <math|\<mathd\>W<rsup|\<alpha\>><around*|(|x|)>>, called
  <strong|Wiener process>, is a random variable obeying the normal
  distribution with zero mean and variance <math|2 \<Sigma\><around*|(|x|)>
  \<mathd\>t>. This stochastic differential equation is an formal equivalent
  of <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>> when
  <math|\<Delta\>t\<rightarrow\>\<mathd\>t> and
  <math|\<epsilon\>\<rightarrow\>\<mathd\>x>.

  <subsection|Transition Rate of Langevin Dynamics Is a Generalized Function>

  In the rest of this section, we calculate the the transition rate of the
  transition density of Langevin dynamics. The <math|\<Delta\>t> appears in
  many places, and directly Taylor expanding <math|q<rsub|\<Delta\>t>> by
  <math|\<Delta\>t> is very hard. Instead, we employ an arbitrary test
  function <math|f\<in\>C<rsup|+\<infty\>><around*|(|\<bbb-R\><rsup|n>,\<bbb-R\>|)>>,
  and Taylor expand <math|f> by its variable

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
    f<around*|(|\<epsilon\>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)><around*|[|
    f<around*|(|0|)>+\<epsilon\><rsup|\<alpha\>>
    \<partial\><rsub|\<alpha\>>f<around*|(|0|)>+<frac|1|2>\<epsilon\><rsup|\<alpha\>>
    \<epsilon\><rsup|\<beta\>> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<around*|(|0|)>+\<cdots\>|]>
  </equation*>

  These Gaussian integrals result in

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
    \<epsilon\><rsup|\<alpha\>>=\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<Delta\>t
  </equation*>

  and (recall the relation between covariance and mean,
  <math|Cov<around*|(|X,Y|)>=\<bbb-E\><around*|[|X
  Y|]>-\<bbb-E\><around*|[|X|]> \<bbb-E\><around*|[|Y|]>>)

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
    \<epsilon\><rsup|\<alpha\>> \<epsilon\><rsup|\<beta\>>=\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<Delta\>t+\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<mu\><rsup|\<beta\>><around*|(|x|)> \<Delta\>t<rsup|2>=\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  Altogether,

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
    f<around*|(|\<epsilon\>|)>=f<around*|(|0|)>+\<Delta\>t<around*|[|
    \<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>f<around*|(|0|)>+\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<around*|(|0|)>|]>+\<omicron\><around*|(|\<Delta\>t|)>,
  </equation*>

  as <math|\<Delta\>t\<rightarrow\>0> (for example,
  <math|><math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)><around*|[|
  \<epsilon\><rsup|\<alpha\>> \<epsilon\><rsup|\<beta\>>
  \<epsilon\><rsup|\<gamma\>> \<epsilon\><rsup|\<delta\>>
  \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<partial\><rsub|\<gamma\>>\<partial\><rsub|\<delta\>>f<around*|(|0|)>|]>=<with|font|cal|O><around*|(|\<Delta\>t<rsup|2>|)>=\<omicron\><around*|(|\<Delta\>t|)>>).
  On the other hand, if we Taylor expand <math|q<rsub|\<Delta\>t>> by
  <math|\<Delta\>t> as <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=\<delta\><around*|(|\<epsilon\>|)>+r<around*|(|x+\<epsilon\>,x|)>
  \<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>>, where <math|r> is the
  transition rate, then we will get

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
    f<around*|(|\<epsilon\>|)>=f<around*|(|0|)>+\<Delta\>t<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x+\<epsilon\>,x|)> f<around*|(|\<epsilon\>|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  From the terms proportional to <math|\<Delta\>t>, we recognize

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x+\<epsilon\>,x|)> f<around*|(|\<epsilon\>|)>=\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>f<around*|(|0|)>+\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<around*|(|0|)>.
  </equation*>

  Noticing the integral by part

  <\equation*>
    -<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>
    f<around*|(|\<epsilon\>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<mu\><rsup|\<alpha\>><around*|(|x|)> \<delta\><around*|(|\<epsilon\>|)>
    \<partial\><rsub|\<alpha\>>f<around*|(|\<epsilon\>|)>=\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>f<around*|(|0|)>,
  </equation*>

  and

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>
    f<around*|(|\<epsilon\>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<delta\><around*|(|\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<around*|(|\<epsilon\>|)>=\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<around*|(|0|)>,
  </equation*>

  we get

  <\equation*>
    r<around*|(|x+\<epsilon\>,x|)>=-\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>+\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>.
  </equation*>

  Because of the Dirac's <math|\<delta\>>-functions, this transition rate is
  a generalized function.

  <subsection|Master Equation of Langevin Dynamics Is Fokker-Planck Equation>

  After discussing transition rate, we turn to the master equation of
  Langevin dynamics. Since Langevin dynamics applies to continuous random
  variable, we can use Kramers-Moyal expansion (section <reference|section:
  Spatial Expansion of Master Equation Gives Kramers-Moyal Expansion>) to
  evaluate its master equation. Directly, we have
  <math|K<rsup|\<alpha\>><around*|(|x|)>=\<mu\><rsup|\<alpha\>><around*|(|x|)>>,
  <math|K<rsup|\<alpha\>\<beta\>><around*|(|x|)>=2\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>>,
  and higher orders are all vanishing. For example, the integral
  <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  <around*|(|\<epsilon\><rsup|\<alpha\>> \<epsilon\><rsup|\<beta\>>
  \<epsilon\><rsup|\<gamma\>>|)> q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=\<omicron\><around*|(|\<Delta\>t|)>>.
  By relation <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  <around*|(|\<epsilon\><rsup|\<alpha\>> \<epsilon\><rsup|\<beta\>>
  \<epsilon\><rsup|\<gamma\>>|)> q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=\<Delta\>t
  K<rsup|\<alpha\>\<beta\>\<gamma\>><around*|(|x|)>+\<omicron\><around*|(|\<Delta\>t|)>>
  (derived in section <reference|section: Spatial Expansion of Master
  Equation Gives Kramers-Moyal Expansion>), we find
  <math|K<rsup|\<alpha\>\<beta\>\<gamma\>><around*|(|x|)>=0>. Thus,
  Kramers-Moyal expansion <reference|equation:Kramers-Moyal expansion> reads

  <\equation>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=-\<nabla\><rsub|\<alpha\>><around*|(|\<mu\><rsup|\<alpha\>><around*|(|x|)>
    p<around*|(|x,t|)>|)>+\<nabla\><rsub|\<alpha\>>\<nabla\><rsub|\<beta\>><around*|(|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    p<around*|(|x,t|)>|)>.<label|equation:Fokker-Planck equation>
  </equation>

  This equation is called <with|font-series|bold|Fokker-Planck equation>,
  found by Adriaan Fokker and Max Planck in 1914 and 1917 respectively, or
  <strong|Kolmogorov forward equation>, independently discovered in 1931.

  <subsection|Stationary Solution of Fokker-Planck Equation>

  Fokker-Planck equation <reference|equation:Fokker-Planck equation> has
  stationary solution <math|\<Pi\>> which satisfies (since there is only one
  variable <math|x>, we use <math|\<partial\>> instead of <math|\<nabla\>>)

  <\equation*>
    -\<partial\><rsub|\<alpha\>><around*|(|\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>+\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|(|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>=0,
  </equation*>

  which means <math|-\<mu\><rsup|\<alpha\>><around*|(|x|)>
  \<pi\><around*|(|x|)>+\<partial\><rsub|\<beta\>><around*|(|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
  \<pi\><around*|(|x|)>|)>=\<nu\><rsup|\<alpha\>><around*|(|x|)>>, or
  equivalently,

  <\equation*>
    \<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<beta\>>\<pi\><around*|(|x|)>=<around*|[|\<mu\><rsup|\<alpha\>><around*|(|x|)>-\<partial\><rsub|\<beta\>>\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>|]>
    \<pi\><around*|(|x|)>+\<nu\><rsup|\<alpha\>><around*|(|x|)>,
  </equation*>

  where <math|\<nu\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> is an
  arbitrary vector field such that <math|\<partial\><rsub|\<alpha\>>\<nu\><rsup|\<alpha\>><around*|(|x|)>=0>.

  The vector field <math|\<nu\>> has an intuitive explanation. Regarding
  <math|\<nu\>> as a flux on <math|\<bbb-R\><rsup|n>>, we find that there is
  not net flux flowing out of anywhere in <math|\<bbb-R\><rsup|n>>.
  Otherwise, suppose there is <math|x\<in\>\<bbb-R\><rsup|n>> and a closed
  surface <math|S> around <math|x> such that the net flux
  <math|<big|int>\<mathd\>S\<cdot\>\<nu\><around*|(|x|)>> does not vanish.
  Then, by Stokes theorem, the surface integral
  <math|<big|int>\<mathd\>S\<cdot\>\<nu\><around*|(|x|)>=<big|int>\<mathd\>x
  \<nabla\>\<cdot\>v<around*|(|x|)>=0>, thus conflicts. Such a vector field
  <math|\<nu\>> is called <strong|free of source>.

  Specially, if <math|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>=\<delta\><rsup|\<alpha\>\<beta\>>>,
  <math|\<nu\><rsup|\<alpha\>><around*|(|x|)>=0>, and
  <math|\<mu\><around*|(|x|)>=-\<nabla\>E<around*|(|x|)>/T> for some scalar
  function <math|E:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>> and positive
  number <math|T>, then the stationary Fokker-Planck equation becomes
  <math|\<partial\><rsup|\<alpha\>>\<pi\><around*|(|x|)>=-\<partial\><rsup|\<alpha\>>E<around*|(|x|)>
  \<pi\><around*|(|x|)>/T>, which has solution
  <math|\<pi\><around*|(|x|)>\<propto\>exp<around*|(|-E<around*|(|x|)>/T|)>>,
  corresponding the Boltzmann distribution where <math|E> is recognized as
  energy and <math|T> as temperature. Fokker-Planck equation, or Langevin
  dynamics, is much broader than Boltzmann distribution.

  <subsection|Detailed Balance Condition for Langevin Dynamics>

  After discussing stationary distribution of Fokker-Planck equation (as a
  master equation), we continue investigate when will Langevin dynamics relax
  an initial distribution to the stationary. By theorem <reference|theorem:
  relaxation>, this is equivalent to ask: when will the transition rate of
  Langevin dynamics satisfy detailed balance condition? Detailed balance
  condition reads <math|r<around*|(|x+\<epsilon\>,x|)>
  \<pi\><around*|(|x|)>=r<around*|(|x,x+\<epsilon\>|)>
  \<pi\><around*|(|x+\<epsilon\>|)>>. Directly, we have

  <\equation*>
    r<around*|(|x+\<epsilon\>,x|)> \<pi\><around*|(|x|)>=-\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>+\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>,
  </equation*>

  and

  <\align>
    <tformat|<table|<row|<cell|>|<cell|r<around*|(|x,x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)>>>|<row|<cell|=>|<cell|r<around*|(|<around*|(|x+\<epsilon\>|)>-\<epsilon\>,x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)>>>|<row|<cell|=>|<cell|-\<mu\><rsup|\<alpha\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<delta\><around*|(|-\<epsilon\>|)>+\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-\<epsilon\>|)>.>>>>
  </align>

  As generalized functions, we are to examine these two expressions by using
  an arbitrary test function <math|f>. Thus,

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x+\<epsilon\>,x|)> \<pi\><around*|(|x|)>
    f<around*|(|\<epsilon\>|)>=-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>
    \<pi\><around*|(|x|)> f<around*|(|\<epsilon\>|)>+<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>
    \<pi\><around*|(|x|)> f<around*|(|\<epsilon\>|)>.
  </equation*>

  Integral by part gives

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x+\<epsilon\>,x|)> \<pi\><around*|(|x|)>
    f<around*|(|\<epsilon\>|)>=<with|color|dark
    cyan|\<mu\><rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>f<around*|(|0|)>+\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<around*|(|0|)>>.
  </equation*>

  The other expression is a little complicated,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x,x+\<epsilon\>|)> \<pi\><around*|(|x+\<epsilon\>|)>
    f<around*|(|\<epsilon\>|)>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|<around*|(|x+\<epsilon\>|)>-\<epsilon\>,x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> f<around*|(|\<epsilon\>|)>>>|<row|<cell|=>|<cell|-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>\<mu\><rsup|\<alpha\>><around*|(|x+\<epsilon\>|)>
    \<partial\><rsub|\<alpha\>>\<delta\><around*|(|-\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> f<around*|(|\<epsilon\>|)>+<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x+\<epsilon\>|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> f<around*|(|\<epsilon\>|)>.>>>>
  </align>

  Again, integral by part results in

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>\<delta\><around*|(|-\<epsilon\>|)><frac|\<partial\>|\<partial\>\<epsilon\><rsup|\<alpha\>>><around*|[|\<mu\><rsup|\<alpha\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> f<around*|(|\<epsilon\>|)>|]>+<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<delta\><around*|(|-\<epsilon\>|)><frac|\<partial\><rsup|2>|\<partial\>\<epsilon\><rsup|\<alpha\>>\<partial\>\<epsilon\><rsup|\<beta\>>><around*|[|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> f<around*|(|\<epsilon\>|)>|]>>>|<row|<cell|=>|<cell|\<partial\><rsub|\<alpha\>><around*|[|\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|]> f<around*|(|0|)>+<with|color|dark
    cyan|\<mu\><rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>f<around*|(|0|)>>>>|<row|<cell|+>|<cell|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|[|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|]> f<around*|(|0|)>+2
    \<partial\><rsub|\<beta\>><around*|[|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|]> \<partial\><rsub|\<alpha\>>f<around*|(|0|)>+<with|color|dark
    cyan|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<around*|(|0|)>>.>>>>
  </align>

  By equaling <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x+\<epsilon\>,x|)> \<pi\><around*|(|x|)>
  f<around*|(|\<epsilon\>|)>> and <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x,x+\<epsilon\>|)> \<pi\><around*|(|x+\<epsilon\>|)>
  f<around*|(|\<epsilon\>|)>>, since <math|f> is arbitrary, we find, for the
  <math|f<around*|(|0|)>> terms,

  <\equation*>
    \<partial\><rsub|\<alpha\>><around*|[|\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|]>+\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|[|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|]>=0,
  </equation*>

  and for <math|\<partial\>f<around*|(|0|)>> terms,

  <\equation*>
    2 \<partial\><rsub|\<beta\>><around*|[|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|]>=0.
  </equation*>

  The <math|\<partial\>\<partial\>f<around*|(|0|)>> terms vanishes
  automatically. Altogether, we find

  <\equation*>
    \<mu\><rsup|\<alpha\>><around*|(|x|)>=\<nu\><rsup|\<alpha\>><around*|(|x|)>/\<pi\><around*|(|x|)>,
  </equation*>

  where <math|\<nu\><rsup|\<alpha\>><around*|(|x|)>> is an arbitrary vector
  field such that <math|\<partial\><rsub|\<alpha\>>\<nu\><rsup|\<alpha\>><around*|(|x|)>=0>.
  This is weird. TODO
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|3>>
    <associate|auto-6|<tuple|1.5|3>>
    <associate|auto-7|<tuple|1.6|3>>
    <associate|equation:Fokker-Planck equation|<tuple|2|3>>
    <associate|equation:Kramers-Moyal expansion|<tuple|1|2>>
    <associate|section: Spatial Expansion of Master Equation Gives
    Kramers-Moyal Expansion|<tuple|1.1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Kramers-Moyal Expansion and Langevin Dynamics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Spatial Expansion of Master
      Equation Gives Kramers-Moyal Expansion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Transition Density of
      Langevin Dynamics Is Approximately Gaussian
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Transition Rate of Langevin
      Dynamics Is a Generalized Function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Master Equation of Langevin
      Dynamics Is Fokker-Planck Equation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Stationary Solution of
      Fokker-Planck Equation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Detailed Balance Condition
      for Langevin Dynamics <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>
    </associate>
  </collection>
</auxiliary>