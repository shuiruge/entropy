<TeXmacs|2.1.4>

<style|book>

<\body>
  <section|Kramers-Moyal Expansion and Langevin Process><label|section:
  Kramers-Moyal Expansion and Langevin Process>

  We follow the discussion in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>, but focusing on the specific
  situation where there is extra smooth structure on <math|X>. This
  smoothness reflects on the connectivity of the alphabet <math|\<cal-X\>>,
  and on the smooth \Pspatial\Q dependence of the density function and
  transition rate. This indicates that the conclusions in section
  <reference|section: Master Equation, Detailed Balance, and Relative
  Entropy> hold in this section, but the inverse is not guaranteed.

  <subsection|Conventions in This Section>

  Follow the conventions in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>. In addition, we employ the
  <strong|Einstein convention>. That is, we omit the sum notation for the
  duplicated indices as long as they are \Pbalanced\Q. For example,
  <math|x<rsub|\<alpha\>> y<rsup|\<alpha\>>> represents
  <math|<big|sum><rsub|\<alpha\>>x<rsub|\<alpha\>> y<rsup|\<alpha\>>>. The
  <math|\<alpha\>> appears twice in the expression, once in subscript (the
  <math|x<rsub|\<alpha\>>>) and once in superscript (the
  <math|y<rsup|\<alpha\>>>), for which we say indices are balanced.
  Expression like <math|x<rsub|\<alpha\>> y<rsub|\<alpha\>>>, however, does
  not represent a summation over <math|\<alpha\>>, because indices are not
  balanced (both are subscript). A more complicated example is
  <math|\<partial\><rsub|\<alpha\>>A<rsup|\<alpha\>><rsub|\<beta\>>
  x<rsup|\<beta\>>>, which means <math|<big|sum><rsub|\<alpha\>><big|sum><rsub|\<beta\>>\<partial\><rsub|\<alpha\>>A<rsup|\<alpha\>><rsub|\<beta\>>
  x<rsup|\<beta\>>>.

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

  <subsection|Transition Density of Langevin Process Is Approximately
  Gaussian><label|section: Transition Density of Langevin Process Is
  Approximately Gaussian>

  Spatial connectivity enables us to investigate the most general
  distribution of continuous random variable, the normal distribution. Given
  <math|\<mu\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> and
  <math|\<Sigma\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n\<times\>n>>,
  which is positive definite and symmetric, let
  <math|q<rsub|\<Delta\>t><around*|(|x<rprime|'>\|x|)>> the normal
  distribution of <math|x<rprime|'>-x> with mean value
  <math|\<mu\><around*|(|x|)> \<Delta\>t> and variance
  <math|\<Sigma\><around*|(|x|)>\<Delta\>t>. That is,

  <\equation*>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=<frac|1|<sqrt|<around*|(|2\<mathpi\>
    \<Delta\>t|)><rsup|n> det \<Sigma\><around*|(|x|)>>>exp<around*|(|-<frac|1|2\<Delta\>t>
    <around*|[|\<Sigma\><rsup|-1><around*|(|x|)>|]><rsub|\<alpha\>\<beta\>>
    <around*|(|\<epsilon\><rsup|\<alpha\>>-\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<Delta\>t|)> <around*|(|\<epsilon\><rsup|\<beta\>>-\<mu\><rsup|\<beta\>><around*|(|x|)>
    \<Delta\>t|)>|)>.
  </equation*>

  When <math|\<Delta\>t> is sufficiently small, <math|q<rsub|\<Delta\>t>> can
  be approximately regarded as a transition density (section
  <reference|section: Transition Rate Determines Transition
  Density>).<\footnote>
    Will <math|q<rsub|\<Delta\>t>> be a transition density for arbitrary
    positive <math|\<Delta\>t>? In section <reference|Transition Rate
    Determines Transition Density>, we have shown that
    <math|q<rsub|\<Delta\>t>> is a transition density if and only if
    <math|q<rsub|\<Delta\>t+\<Delta\>t<rprime|'>><around*|(|x\|z|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t<rprime|'>><around*|(|x\|y|)>
    q<rsub|\<Delta\>t><around*|(|y\|z|)>>. By inserting the
    <math|q<rsub|\<Delta\>t>> of Langevin process, we find the right hand
    side proprotional to

    <\equation*>
      exp<around*|(|-<frac|1|2\<Delta\>t<rprime|'>>
      \<Sigma\><rsup|-1><around*|(|y|)> <around*|(|x-y-\<mu\><around*|(|y|)>
      \<Delta\>t<rprime|'>|)> <around*|(|x-y-\<mu\><around*|(|y|)>
      \<Delta\>t<rprime|'>|)>-<frac|1|2\<Delta\>t>
      \<Sigma\><rsup|-1><around*|(|z|)> <around*|(|y-z-\<mu\><around*|(|z|)>
      \<Delta\>t|)> <around*|(|y-z-\<mu\><around*|(|z|)> \<Delta\>t|)>|)>.
    </equation*>

    In this expression, <math|y> appears in many places, including
    <math|\<Sigma\><rsup|-1><around*|(|y|)>> and
    <math|\<mu\><around*|(|y|)>>. Thus, that in the exponential is not
    quadratic on <math|y>. It is hard to expect that integrating over
    <math|y> will give a result that is proportional to

    <\equation*>
      exp<around*|(|-<frac|1|2<around*|(|\<Delta\>t+\<Delta\>t<rprime|'>|)>>
      \<Sigma\><rsup|-1><around*|(|z|)> <around*|[|x-z-\<mu\><around*|(|z|)>
      <around*|(|\<Delta\>t+\<Delta\>t<rprime|'>|)>|]>
      <around*|[|x-z-\<mu\><around*|(|z|)>
      <around*|(|\<Delta\>t+\<Delta\>t<rprime|'>|)>|]>|)>.
    </equation*>

    So, we prefer to guess that <math|q<rsub|\<Delta\>t>> is not a transition
    density for arbitrary positive <math|\<Delta\>t>.
  </footnote> The corresponding Markov process is called <strong|Langevin
  dynamics> or <with|font-series|bold|Langevin process>.

  In many textures, Langevin process is written by a stochastic differential
  equation (again, we use capital letters for random variables)

  <\equation*>
    \<mathd\>X<rsup|\<alpha\>>=\<mu\><rsup|\<alpha\>><around*|(|X|)>\<mathd\>t+C<rsup|\<alpha\>><rsub|\<beta\>><around*|(|X|)>
    \<mathd\>W<rsup|\<alpha\>>,
  </equation*>

  where <math|\<mathd\>W<rsup|\<alpha\>>>, called <strong|Wiener process>, is
  a random variable obeying the normal distribution with zero mean and
  variance <math|\<mathd\>t>. The matrix-valued field <math|C<around*|(|x|)>>
  that factorizes <math|\<Sigma\><around*|(|x|)>> by
  <math|\<Sigma\><around*|(|x|)>=C<rsup|T><around*|(|x|)> C<around*|(|x|)>>
  is called <strong|Cholesky factorization>, named by the French militory
  officer André-Louis Cholesky, died at age 31.<\footnote>
    Cholesky factorization is always valid for positive definite symmetric
    matrix. Given any <math|x>, since <math|\<Sigma\><around*|(|x|)>> is real
    and symmetric matrix, we have orthogonal decomposition
    <math|\<Sigma\><around*|(|x|)>=E<rsup|T><around*|(|x|)>
    \<Lambda\><around*|(|x|)> E<around*|(|x|)>>, where
    <math|E<around*|(|x|)>> is orthogonal matrix and
    <math|\<Lambda\><around*|(|x|)>> is diagonal. Since
    <math|\<Sigma\><around*|(|x|)>> is also positive definite, we have
    <math|\<Lambda\><rsup|\<alpha\>\<alpha\>><around*|(|x|)>\<gtr\>0> for all
    <math|\<alpha\>>. Then, define <math|C<around*|(|x|)>\<assign\><sqrt|\<Lambda\><around*|(|x|)>>
    E<around*|(|x|)>> which gives <math|C<rsup|T><around*|(|x|)>
    C<around*|(|x|)>=<around*|(|E<rsup|T><around*|(|x|)>
    <sqrt|\<Lambda\><around*|(|x|)>>|)> <around*|(|<sqrt|\<Lambda\><around*|(|x|)>>
    E<around*|(|x|)>|)>=E<rsup|T><around*|(|x|)> \<Lambda\><around*|(|x|)>
    E<around*|(|x|)>=\<Sigma\><around*|(|x|)>>. That is,
    <math|\<Sigma\><around*|(|x|)>> is factorized by <math|C<around*|(|x|)>>.
  </footnote> This stochastic differential equation is an formal equivalence
  of <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>> when
  <math|\<Delta\>t\<rightarrow\>\<mathd\>t> and
  <math|\<epsilon\>\<rightarrow\>\<mathd\>x>.

  <subsection|Transition Rate of Langevin Process Is a Generalized
  Function><label|section: Transition Rate of Langevin Process Is a
  Generalized Function>

  In this section, we calculate the the transition rate of Langevin process
  from transition density. The <math|\<Delta\>t> appears in many places in
  transition density, and directly Taylor expanding <math|q<rsub|\<Delta\>t>>
  by <math|\<Delta\>t> is very hard. Instead, we employ an arbitrary test
  function <math|f\<in\>S<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\>|)>>,<\footnote>
    The <math|S> represents Schwarts space, which is a functional space in
    which any function <math|f:X\<rightarrow\>Y> is smooth and rapidly falls
    to zero in the region far from origin. For example, Gaussian function
    (the density function of normal distribution) is in
    <math|S<around*|(|\<bbb-R\>,\<bbb-R\>|)>>.
  </footnote> and Taylor expand <math|f> by its variable

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
    \<partial\><rsub|\<alpha\>>f<around*|(|0|)>+<frac|1|2>\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
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
    \<partial\><rsub|\<alpha\>>f<around*|(|0|)>+<frac|1|2>\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<around*|(|0|)>.
  </equation*>

  Noticing the integration by parts<\footnote>
    High-dimensional integration by parts employs Stokes theorem. Consider
    the integral <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|x|)>
    v<rsup|\<alpha\>><around*|(|x|)>> with smooth scalar function
    <math|\<varphi\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>> and vector
    field <math|v:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>. We have
    identity

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|x|)>
      v<rsup|\<alpha\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>><around*|[|\<varphi\><around*|(|x|)>
      v<rsup|\<alpha\>><around*|(|x|)>|]>-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<varphi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>v<rsup|\<alpha\>><around*|(|x|)>.
    </equation*>

    The first integrand in the right hand side is a divergence. Using Stokes
    theorem, it becomes

    <\equation*>
      <big|int><rsub|\<partial\>\<bbb-R\><rsup|n>>\<mathd\>S<rsub|\<alpha\>>
      <around*|[|\<varphi\><around*|(|x|)>
      v<rsup|\<alpha\>><around*|(|x|)>|]>,
    </equation*>

    where <math|\<partial\>\<bbb-R\><rsup|n>> is the \Pboundary\Q of
    <math|\<bbb-R\><rsup|n>>. If <math|\<varphi\>> or <math|v> is in Schwarts
    space, then this term vanishes, and the integral results in

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|x|)>
      v<rsup|\<alpha\>><around*|(|x|)>=-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<varphi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>v<rsup|\<alpha\>><around*|(|x|)>.
    </equation*>
  </footnote>

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>
    f<around*|(|\<epsilon\>|)>=-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<mu\><rsup|\<alpha\>><around*|(|x|)> \<delta\><around*|(|\<epsilon\>|)>
    \<partial\><rsub|\<alpha\>>f<around*|(|\<epsilon\>|)>=-\<mu\><rsup|\<alpha\>><around*|(|x|)>
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

  <\equation>
    r<around*|(|x+\<epsilon\>,x|)>=-\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>+<frac|1|2>\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>.<label|equation:Langevin
    transition rate>
  </equation>

  Because of the Dirac's <math|\<delta\>>-functions, this transition rate is
  a generalized function. That is, only when applied to a test function can
  they be evaluated.

  For example, to evaluate <math|\<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>>,
  we have to employ an arbitrary test function
  <math|f\<in\>S<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|n>|)>>, and
  calculate <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>
  f<rsup|\<alpha\>><around*|(|x|)>>. First, notice that
  <math|\<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>> is in fact
  <math|<around*|(|\<partial\><rsub|\<alpha\>>\<delta\>|)><around*|(|-x|)>>
  and that <math|<around*|(|\<partial\>\<delta\>/\<partial\>x<rsup|\<alpha\>>|)><around*|(|-x|)>=-<around*|(|\<partial\>/\<partial\>x<rsup|\<alpha\>>|)>\<delta\><around*|(|-x|)>>,
  thus

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    \<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>
    f<rsup|\<alpha\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    <around*|(|\<partial\><rsub|\<alpha\>>\<delta\>|)><around*|(|-x|)>
    f<rsup|\<alpha\>><around*|(|x|)>=-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    \<partial\><rsub|\<alpha\>><around*|[|\<delta\><around*|(|-x|)>|]>
    f<rsup|\<alpha\>><around*|(|x|)>.
  </equation*>

  Then, integration by parts gives <math|-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<partial\><rsub|\<alpha\>><around*|[|\<delta\><around*|(|-x|)>|]>
  f<rsup|\<alpha\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<delta\><around*|(|-x|)> \<partial\><rsub|\<alpha\>>f<rsup|\<alpha\>><around*|(|x|)>>.
  After inserting the relation <math|\<delta\><around*|(|x|)>=\<delta\><around*|(|-x|)>>,
  we arrive at <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>
  f<rsup|\<alpha\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>f<rsup|\<alpha\>><around*|(|0|)>>.
  On the other hand, we have, by integration by parts,
  <math|-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<partial\><rsub|\<alpha\>>\<delta\><around*|(|x|)>
  f<rsup|\<alpha\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<delta\><around*|(|x|)> \<partial\><rsub|\<alpha\>>f<rsup|\<alpha\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>f<rsup|\<alpha\>><around*|(|0|)>>.
  Altogether, we find <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>
  f<rsup|\<alpha\>><around*|(|x|)>=-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<partial\><rsub|\<alpha\>>\<delta\><around*|(|x|)>
  f<rsup|\<alpha\>><around*|(|x|)>>, for any
  <math|f\<in\>S<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|n>|)>>. Thus,
  <math|\<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>> is evaluated to
  be <math|-\<partial\><rsub|\<alpha\>>\<delta\><around*|(|x|)>>. That is,
  <em|<math|\<partial\><rsub|\<alpha\>>\<delta\>> is odd>. Following the same
  process, we can show that <em|<math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\>>
  is even>.<\footnote>
    We are to calculate <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-x|)>
    f<rsup|\<alpha\>\<beta\>><around*|(|x|)>>, where
    <math|f\<in\>S<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|n\<times\>n>|)>>.
    Again, noticing that <math|<around*|(|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\>|)><around*|(|-x|)>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|[|\<delta\><around*|(|-x|)>|]>>,
    we have

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-x|)>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      <around*|(|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\>|)><around*|(|-x|)>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|[|\<delta\><around*|(|-x|)>|]>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>.
    </equation*>

    Then integration by parts gives

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|[|\<delta\><around*|(|-x|)>|]>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<delta\><around*|(|-x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<rsup|\<alpha\>\<beta\>><around*|(|0|)>.
    </equation*>

    That is, <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-x|)>
    f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<rsup|\<alpha\>\<beta\>><around*|(|0|)>>.
    On the other hand, we have

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|x|)>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<delta\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<rsup|\<alpha\>\<beta\>><around*|(|0|)>.
    </equation*>

    So,

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-x|)>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|x|)>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    </equation*>

    holds for any <math|f\<in\>S<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|n\<times\>n>|)>>,
    thus <math|><math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-x|)>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|x|)>>.
  </footnote> These conclusions are to be used in section <reference|section:
  Detailed Balance Condition of Langevin Process Lacks Source-Free Degree of
  Freedom>.

  <subsection|Master Equation of Langevin Process Is Fokker-Planck Equation>

  After discussing transition rate, we turn to the master equation of
  Langevin process. Since Langevin process applies to continuous random
  variable, we can use Kramers-Moyal expansion to evaluate its master
  equation. Directly, we have <math|K<rsup|\<alpha\>><around*|(|x|)>=\<mu\><rsup|\<alpha\>><around*|(|x|)>>,
  <math|K<rsup|\<alpha\>\<beta\>><around*|(|x|)>=\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>>,
  and higher orders are all vanishing (<math|K> was defined in section
  <reference|section: Spatial Expansion of Master Equation Gives
  Kramers-Moyal Expansion>). For example, the integral
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
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=-\<partial\><rsub|\<alpha\>><around*|(|\<mu\><rsup|\<alpha\>><around*|(|x|)>
    p<around*|(|x,t|)>|)>+<frac|1|2>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|(|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    p<around*|(|x,t|)>|)>.<label|equation:Fokker-Planck equation>
  </equation>

  This equation is called <with|font-series|bold|Fokker-Planck equation>,
  found by Adriaan Fokker and Max Planck in 1914 and 1917 respectively, or
  <strong|Kolmogorov forward equation>, independently discovered in 1931.

  <subsection|Stationary Solution of Langevin Process Has Source-Free Degree
  of Freedom>

  The master equation of Langevin process (equation
  <reference|equation:Fokker-Planck equation>) has stationary solution
  <math|\<Pi\>> which satisfies (since there is only one variable <math|x>,
  we use <math|\<partial\>> instead of <math|\<nabla\>>)

  <\equation*>
    -\<partial\><rsub|\<alpha\>><around*|(|\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>+<frac|1|2>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|(|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>=0,
  </equation*>

  which means

  <\equation>
    \<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)>=<frac|1|2>\<partial\><rsub|\<beta\>><around*|(|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>+\<nu\><rsup|\<alpha\>><around*|(|x|)>,<label|equation:stationary
    Fokker-Planck equation>
  </equation>

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
  <math|\<nu\>> is called <strong|free of source> or <strong|source-free>.

  <subsection|Detailed Balance Condition of Langevin Process Lacks
  Source-Free Degree of Freedom><label|section: Detailed Balance Condition of
  Langevin Process Lacks Source-Free Degree of Freedom>

  After discussing stationary distribution of Fokker-Planck equation (as a
  master equation), we continue investigate when will Langevin process relax
  an initial distribution to the stationary. By theorem <reference|theorem:
  relaxation>, this is equivalent to ask: when will the transition rate of
  Langevin process satisfy detailed balance condition? Detailed balance
  condition reads <math|r<around*|(|x+\<epsilon\>,x|)>
  \<pi\><around*|(|x|)>=r<around*|(|x,x+\<epsilon\>|)>
  \<pi\><around*|(|x+\<epsilon\>|)>>. Directly inserting equation
  <reference|equation:Langevin transition rate>, we get, for the left hand
  side,

  <\equation*>
    r<around*|(|x+\<epsilon\>,x|)> \<pi\><around*|(|x|)>=-\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>+<frac|1|2>\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>,
  </equation*>

  and, for the right hand side,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|r<around*|(|x,x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)>>>|<row|<cell|=>|<cell|r<around*|(|<around*|(|x+\<epsilon\>|)>-\<epsilon\>,x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)>>>|<row|<cell|=>|<cell|-\<mu\><rsup|\<alpha\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<delta\><around*|(|-\<epsilon\>|)>+<frac|1|2>\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-\<epsilon\>|)>>>|<row|<cell|=>|<cell|\<mu\><rsup|\<alpha\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>+<frac|1|2>\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>,>>>>
  </align>

  where in the last line, we have used <math|\<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>=-\<partial\><rsub|\<alpha\>>\<delta\><around*|(|x|)>>
  and <math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-x|)>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|x|)>>
  (derived in the end of section <reference|section: Transition Rate of
  Langevin Process Is a Generalized Function>).

  As generalized functions, we are to examine these two expressions by using
  an arbitrary test function <math|f>. Thus, for the left hand side,

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x+\<epsilon\>,x|)> \<pi\><around*|(|x|)>
    f<around*|(|\<epsilon\>|)>=-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<mu\><rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>
    f<around*|(|\<epsilon\>|)>+<frac|1|2><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)> \<pi\><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>
    f<around*|(|\<epsilon\>|)>.
  </equation*>

  Integration by parts gives (note that the <math|\<partial\>> is applied on
  <math|\<epsilon\>>)

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x+\<epsilon\>,x|)> \<pi\><around*|(|x|)>
    f<around*|(|\<epsilon\>|)>=<with|color|dark
    cyan|\<mu\><rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>f<around*|(|0|)>+<frac|1|2>\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<around*|(|0|)>>.
  </equation*>

  The right hand side is a little complicated,

  <\small>
    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
      r<around*|(|x,x+\<epsilon\>|)> \<pi\><around*|(|x+\<epsilon\>|)>
      f<around*|(|\<epsilon\>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>\<mu\><rsup|\<alpha\>><around*|(|x+\<epsilon\>|)>
      \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>
      f<around*|(|\<epsilon\>|)>+<frac|1|2><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
      \<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x+\<epsilon\>|)>
      \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>
      f<around*|(|\<epsilon\>|)>.
    </equation*>
  </small>

  Again, integration by parts results in (again, the <math|\<partial\>>
  operator is applied on <math|\<epsilon\>>)

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x,x+\<epsilon\>|)> \<pi\><around*|(|x+\<epsilon\>|)>
    f<around*|(|\<epsilon\>|)>>>|<row|<cell|=>|<cell|-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>\<delta\><around*|(|\<epsilon\>|)><frac|\<partial\>|\<partial\>\<epsilon\><rsup|\<alpha\>>><around*|[|\<mu\><rsup|\<alpha\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> f<around*|(|\<epsilon\>|)>|]>>>|<row|<cell|+>|<cell|<frac|1|2><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<delta\><around*|(|\<epsilon\>|)><frac|\<partial\><rsup|2>|\<partial\>\<epsilon\><rsup|\<alpha\>>\<partial\>\<epsilon\><rsup|\<beta\>>><around*|[|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> f<around*|(|\<epsilon\>|)>|]>>>|<row|<cell|=>|<cell|-\<partial\><rsub|\<alpha\>><around*|[|\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|]> f<around*|(|0|)>-<with|color|dark
    cyan|\<mu\><rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>f<around*|(|0|)>>>>|<row|<cell|+>|<cell|<frac|1|2>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|[|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|]> f<around*|(|0|)>+\<partial\><rsub|\<beta\>><around*|[|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|]> \<partial\><rsub|\<alpha\>>f<around*|(|0|)>+<with|color|dark
    cyan|<frac|1|2>\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<around*|(|0|)>>.>>>>
  </align>

  By equaling <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x+\<epsilon\>,x|)> \<pi\><around*|(|x|)>
  f<around*|(|\<epsilon\>|)>> and <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x,x+\<epsilon\>|)> \<pi\><around*|(|x+\<epsilon\>|)>
  f<around*|(|\<epsilon\>|)>>, since <math|f> is arbitrary, we find, for the
  <math|f<around*|(|0|)>> terms,

  <\equation*>
    -\<partial\><rsub|\<alpha\>><around*|(|\<mu\><rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>+<frac|1|2>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|(|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>=0,
  </equation*>

  and for <math|\<partial\>f<around*|(|0|)>> terms,

  <\equation*>
    -\<mu\><rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>+
    <frac|1|2>\<partial\><rsub|\<beta\>><around*|(|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>=0.
  </equation*>

  The <math|\<partial\>\<partial\>f<around*|(|0|)>> terms vanishes
  automatically. Altogether, we find the detailed balance condition for
  Langevin process to be

  <\equation>
    \<mu\><rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>=<frac|1|2>
    \<partial\><rsub|\<beta\>><around*|(|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>.<label|equation:detailed balance condition for
    Langevin>
  </equation>

  Comparing with the stationary solution of Langevin process (equation
  <reference|equation:stationary Fokker-Planck equation>), the source-free
  vector field <math|\<nu\>> is absent here. Recall in section
  <reference|section: Detailed Balance Provides Stationary Distribution>
  where detailed balance condition was first encountered, we said that
  detailed balance condition is stronger than just being stationary. Now, in
  Langevin process, this becomes concrete: <em|detailed balance condition is
  stronger than stationary condition in the sense that it lacks the
  source-free degree of freedom that appears in the stationary condition>.
  The lost degree of freedom is the cost of ensuring that any initial
  distribution will finally relax to the stationary.

  <subsection|* Wiener Process Is Almost Everywhere in Nature><label|section:
  * Wiener Process Is Almost Everywhere in Nature>

  In section <reference|section: Transition Density of Langevin Process Is
  Approximately Gaussian>, we have introduced Wiener process
  <math|\<mathd\>W<around*|(|x|)>> that obeys the normal distribution with
  zero mean and variance <math|\<Sigma\><around*|(|x|)> \<mathd\>t>. This was
  first discovered in 1827, when botanist Robert Brown noticed that pollen
  particles automatically shakes in water. This phenomenon was first
  explained by Albert Einstein in 1905. He argued that the pollen particles
  are constantly hitted by water molecules. Untill 1918, Norbert Wiener
  constructed a mathematical theory about this stochastic process. Wiener's
  theory is an elegant application of central limit theorem.

  Consider the Gaussian conditional density function

  <\equation*>
    q<rsub|\<Delta\>t><around*|(|x\|y|)>=<frac|1|<sqrt|2\<mathpi\>
    \<Delta\>t>> exp<around*|(|-<frac|<around*|(|x-y|)><rsup|2>|2\<Delta\>t>|)>,
  </equation*>

  we have

  <\equation*>
    q<rsub|\<Delta\>t+\<Delta\>t<rprime|'>><around*|(|x\|z|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|x\|y|)> q<rsub|\<Delta\>t<rprime|'>><around*|(|y\|z|)>.
  </equation*>

  \;
</body>

<\initial>
  <\collection>
    <associate|bg-color|#c7edcc>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|2>>
    <associate|auto-6|<tuple|1.5|4>>
    <associate|auto-7|<tuple|1.6|4>>
    <associate|auto-8|<tuple|1.7|5>>
    <associate|auto-9|<tuple|1.8|6>>
    <associate|equation:Fokker-Planck equation|<tuple|3|4>>
    <associate|equation:Kramers-Moyal expansion|<tuple|1|2>>
    <associate|equation:Langevin transition rate|<tuple|2|3>>
    <associate|equation:detailed balance condition for Langevin|<tuple|5|5>>
    <associate|equation:stationary Fokker-Planck equation|<tuple|4|4>>
    <associate|footnote-1|<tuple|1|2>>
    <associate|footnote-2|<tuple|2|3>>
    <associate|footnote-3|<tuple|3|4>>
    <associate|footnote-4|<tuple|4|?>>
    <associate|footnote-5|<tuple|5|?>>
    <associate|footnr-1|<tuple|1|2>>
    <associate|footnr-2|<tuple|2|3>>
    <associate|footnr-3|<tuple|3|4>>
    <associate|footnr-4|<tuple|4|?>>
    <associate|footnr-5|<tuple|5|?>>
    <associate|section: * Wiener Process Is Almost Everywhere in
    Nature|<tuple|1.8|6>>
    <associate|section: Detailed Balance Condition of Langevin Process Lacks
    Source-Free Degree of Freedom|<tuple|1.7|5>>
    <associate|section: Kramers-Moyal Expansion and Langevin
    Process|<tuple|1|1>>
    <associate|section: Spatial Expansion of Master Equation Gives
    Kramers-Moyal Expansion|<tuple|1.2|1>>
    <associate|section: Transition Density of Langevin Process Is
    Approximately Gaussian|<tuple|1.3|2>>
    <associate|section: Transition Rate of Langevin Process Is a Generalized
    Function|<tuple|1.4|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Kramers-Moyal Expansion and Langevin Process
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Spatial Expansion of Master
      Equation Gives Kramers-Moyal Expansion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Transition Density of
      Langevin Process Is Approximately Gaussian
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Transition Rate of Langevin
      Process Is a Generalized Function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Master Equation of Langevin
      Process Is Fokker-Planck Equation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Stationary Solution of
      Langevin Process Has Source-Free Degree of Freedom
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Detailed Balance Condition
      of Langevin Process Lacks Source-Free Degree of Freedom
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>* Wiener Process Is Almost
      Everywhere in Nature <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>