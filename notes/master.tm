<TeXmacs|2.1>

<style|generic>

<\body>
  <section|Master Equation, Detailed Balance, and Relative
  Entropy><label|section: Master Equation, Detailed Balance, and Relative
  Entropy>

  <subsection|Conventions>

  Let <math|X> a time-dependent random variables, being either discrete or
  continuous, with alphabet <math|\<cal-X\>> and distribution <math|P>. Even
  though the discussion applies to both discrete and continuous cases, we use
  the notation of the continuous. The reason is that converting from discrete
  to continuous may cause problems <\footnote>
    Such as the problem of Shannon entropy, which has no proper definition in
    continuous case.
  </footnote> while the inverse will be safe and direct as long as any smooth
  structure of <math|X> is not employed throughout the discussion.

  <subsection|Master Equation Describes Generic Dynamics of Markov Chain>

  The generic dynamics of Markov chain can be described by a
  <with|font-series|bold|transition rate> <math|W<around*|(|y\|x|)>> which is
  defined as the transition probability from <math|X=x> to <math|X=y> during
  a temporal unit <math|\<mathd\>t> <\footnote>
    <with|color|red|Keep in mind that, throughout this section, this temporal
    unit can be arbitrary, other than infinitesimal.> Here it is written as
    <math|\<mathd\>t>, a formal infinitesimal, because it is convenient for
    writing expressions. For example, we can write
    <math|\<partial\>p/\<partial\>t> rather than
    <math|\<Delta\>p/\<Delta\>t>, which looks ugly.
  </footnote>. So, the change of probability at <math|X=x> equals to the
  total probability that transits from any <math|y> with <math|y\<neq\>x> to
  <math|x> subtracting the total probability that transits from <math|x> to
  any <math|y> with <math|y\<neq\>x>. That is, <\footnote>
    Notice that in the case of <math|y=x>, the right hand side vanishes
    automatically. It is for this reason, the integral is over the whole
    alphabet <math|\<cal-X\>>.
  </footnote>

  <\equation>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    <around*|[|W<around*|(|x\|y|)> p<around*|(|y,t|)>-W<around*|(|y\|x|)>p<around*|(|x,t|)>|]>,<label|equation:Master
    Equation>
  </equation>

  which is called the <with|font-series|bold|master equation>. <\footnote>
    There is another way of writing master equation, as

    <\equation*>
      <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
      W<around*|(|x\|y|)> p<around*|(|y,t|)>.
    </equation*>

    In fact, these two definitions are equivalent, which is the result of
    <math|<big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x,t|)>=1>. To make
    it transparent, we use the discrete version, as

    <\equation*>
      <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|y\<in\>\<cal-X\>>W<around*|(|x\|y|)>
      p<around*|(|y,t|)>.<label|equation:Master Equation V2>
    </equation*>

    First notice that <math|<big|sum><rsub|x\<in\>\<cal-X\>><around*|(|\<partial\>p/\<partial\>t|)><around*|(|x,t|)>=<around*|(|\<partial\>/\<partial\>t|)>
    <big|sum><rsub|x\<in\>\<cal-X\>>p<around*|(|x,t|)>=<around*|(|\<partial\>/\<partial\>t|)>1=0>.
    Inserting equation <reference|equation:Master Equation V2>, we find
    <math|><math|<big|sum><rsub|x\<in\>\<cal-X\>><big|sum><rsub|y\<in\>\<cal-X\>>W<around*|(|x\|y|)>
    p<around*|(|y,t|)>=0>. This holds for any <math|p>. So, letting
    <math|p<around*|(|y,t|)>=\<delta\><around*|(|y\|z|)>>, the Kronecker
    delta function, we get <math|<big|sum><rsub|x\<in\>\<cal-X\>>W<around*|(|x\|z|)>=0>
    for any <math|z\<in\>\<cal-X\>>. So, we find
    <math|W<around*|(|z\|z|)>=-<big|sum><rsub|x\<neq\>z>W<around*|(|x\|z|)>>,
    where the sum is on <math|x>. Then, we get
    <math|W<around*|(|z\|z|)>p<around*|(|z,t|)>=-<big|sum><rsub|x\<neq\>z>W<around*|(|x\|z|)>
    p<around*|(|z,t|)>>. With this formula, we find

    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=>|<cell|<big|sum><rsub|y\<in\>\<cal-X\>>W<around*|(|x\|y|)>
      p<around*|(|y,t|)>>>|<row|<cell|=>|<cell|<big|sum><rsub|y\<neq\>x>W<around*|(|x\|y|)>
      p<around*|(|y,t|)>+W<around*|(|x\|x|)>
      p<around*|(|x,t|)>>>|<row|<cell|<around*|{|W<around*|(|x\|x|)>p<around*|(|x,t|)>=-<big|sum><rsub|y\<neq\>x>W<around*|(|y\|x|)>
      p<around*|(|x,t|)>|}>=>|<cell|<big|sum><rsub|y\<neq\>x><around*|[|W<around*|(|x\|y|)>
      p<around*|(|y,t|)>-W<around*|(|y\|x|)>
      p<around*|(|x,t|)>|]>>>|<row|<cell|=>|<cell|<big|sum><rsub|y\<in\>\<cal-X\>><around*|[|W<around*|(|x\|y|)>
      p<around*|(|y,t|)>-W<around*|(|y\|x|)> p<around*|(|x,t|)>|]>,>>>>
    </align>

    which is the discrete version of master equation
    <reference|equation:Master Equation>.
  </footnote>

  The <math|W> may also depend on time. But since the underlying dynamics
  which determines <math|W> is usually autonomous, supposing <math|W> as
  time-independent will greatly reduce the complexity while covering most of
  the important situations. So, throughout this note, without specific
  declaration, <math|A> is always independent of time.

  <subsection|Detailed Balance Provides a Stationary Distribution>

  When <math|\<mathd\>p<around*|(|x,t|)>/\<mathd\>t=0>, we get a stationary
  distribution, denoted by <math|\<pi\><around*|(|x|)>>. The master equation
  implies <math|<big|int><rsub|\<cal-X\>>\<mathd\>y
  <around*|[|W<around*|(|x\|y|)> \<pi\><around*|(|y|)>-W<around*|(|y\|x|)>\<pi\><around*|(|x|)>|]>=0>.
  But, this condition is too weak to be used. A more useful condition, which
  is stronger than this, is that the integrand vanishes everywhere. That is,

  <\equation>
    W<around*|(|x\|y|)> \<pi\><around*|(|y|)>=W<around*|(|y\|x|)>\<pi\><around*|(|x|)>,<label|equation:Detailed
    Balance>
  </equation>

  which is called the <with|font-series|bold|detailed balance (condition)>.

  This condition also hints for reversibility: the probability of transition
  <math|X=y\<rightarrow\>x> equals to the reversed one
  <math|X=x\<rightarrow\>y>. This reversibility, however, will furnishes a
  irreversibility in a subjective sense.

  <subsection|Detailed Balance Monotonically Reduces Relative Entropy>

  <\theorem>
    If <math|W<around*|(|x\|y|)>\<gtr\>0> for each <math|x,y\<in\>\<cal-X\>>
    and there is a stationary distribution <math|\<pi\>> such that detailed
    balance <reference|equation:Detailed Balance> holds and that
    <math|\<pi\><around*|(|x|)>\<gtr\>0> for each <math|x\<in\>\<cal-X\>>,
    then for any distribution <math|p> obeying the master equation
    <reference|equation:Master Equation>, we have
    <math|\<mathd\>H<around*|[|p,\<pi\>|]>/\<mathd\>t\<leqslant\>0> and it
    vanishes if and only if <math|p=\<pi\>>. <\footnote>
      If conditions <math|W<around*|(|x\|y|)>\<gtr\>0> and
      <math|\<pi\><around*|(|x|)>\<gtr\>0> do not hold for some subset of
      <math|\<cal-X\>>, we can exclude this subset from <math|\<cal-X\>>,
      which results in a new alphabet <math|\<cal-X\><rprime|'>> on which
      this theorem will hold.
    </footnote>
  </theorem>

  This means the distribution <math|p> will monotonically and constantly
  relax to the stationary distribution <math|\<pi\>>. Generally, we prove the
  monotonic reduction of relative entropy by using Fokker-Planck equation.
  With an integral by part, we arrive a negative definite expression, which
  means the monotonic reduction. This proof needs smooth structure, which is
  employed by integral by part. Here, we provides a \Pdiscrete\Q, but more
  generic, alternative to the proof, which employs detailed condition instead
  of Fokker-Planck equation, which is a specific case of detailed condition.

  The proof of this theorem is given as follow. <\footnote>
    As you will see, the proof is very tricky: it uses detailed balance
    twice, between which the expression is symmetrized. It is an ingenious
    mathematical engineering.
  </footnote>

  <\small>
    <\proof>
      Recalling that <math|H<around*|[|p,\<pi\>|]>=<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x,t|)> ln<around*|(|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>|)>>,
      we have

      <\align>
        <tformat|<table|<row|<cell|>|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|[|p,\<pi\>|]>>>|<row|<cell|=>|<cell|<frac|\<mathd\>|\<mathd\>t><big|int><rsub|\<cal-X\>>\<mathd\>x
        <around*|[|p<around*|(|x,t|)> ln p<around*|(|x,t|)>-p<around*|(|x,t|)>
        ln \<pi\><around*|(|x|)>|]>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
        <around*|[|<frac|\<partial\>p|\<partial\>t><around*|(|x,t|)> ln
        p<around*|(|x,t|)>+<frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>-<frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>
        \ ln \<pi\><around*|(|x|)>|]>.>>>>
      </align>

      Since <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <around*|(|\<partial\>p/\<partial\>t|)><around*|(|x,t|)>=<around*|(|\<partial\>/\<partial\>t|)><big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x,t|)>=0>, the second term vanishes. Then, we get

      <\equation*>
        <frac|\<mathd\>|\<mathd\>t>H<around*|[|p,\<pi\>|]>=<big|int><rsub|\<cal-X\>>\<mathd\>x
        <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>
        ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.
      </equation*>

      Now, we replace <math|\<partial\>p/\<partial\>t> by master equation, as

      <\equation*>
        <frac|\<mathd\>|\<mathd\>t>H<around*|[|p,\<pi\>|]>=<big|int><rsub|\<cal-X\>>\<mathd\>x
        <big|int><rsub|\<cal-X\>>\<mathd\>y <around*|[|W<around*|(|x\|y|)>
        p<around*|(|y,t|)>-W<around*|(|y\|x|)>p<around*|(|x,t|)>|]>
        \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.
      </equation*>

      Then, insert detailed balance <math|W<around*|(|x\|y|)>=W<around*|(|y\|x|)>
      \<pi\><around*|(|x|)>/\<pi\><around*|(|y|)>>, as

      <\align>
        <tformat|<table|<row|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|[|p,\<pi\>|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
        <big|int><rsub|\<cal-X\>>\<mathd\>y <around*|[|W<around*|(|y\|x|)>
        \<pi\><around*|(|x|)> <frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-W<around*|(|y\|x|)>p<around*|(|x,t|)>|]>
        \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
        <big|int><rsub|\<cal-X\>>\<mathd\>y W<around*|(|y\|x|)>
        \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>|]>
        \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.>>>>
      </align>

      Since <math|x> and <math|y> are dummy, we interchange them in the
      integrand, and then insert detailed balance again, as

      <\align>
        <tformat|<table|<row|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|[|p,\<pi\>|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
        <big|int><rsub|\<cal-X\>>\<mathd\>y W<around*|(|x\|y|)>
        \<pi\><around*|(|y|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>
        \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>>>|<row|<cell|<around*|{|detailed
        balance|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
        <big|int><rsub|\<cal-X\>>\<mathd\>y W<around*|(|y\|x|)>
        \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>
        \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>.>>>>
      </align>

      By adding the two previous results together, we find

      <\align>
        <tformat|<table|<row|<cell|>|<cell|2
        <frac|\<mathd\>|\<mathd\>t>H<around*|[|p,\<pi\>|]>>>|<row|<cell|<around*|[|1st
        result|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
        <big|int><rsub|\<cal-X\>>\<mathd\>y W<around*|(|y\|x|)>
        \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>|]>
        \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>|<row|<cell|<around*|[|2nd
        result|]>+>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
        <big|int><rsub|\<cal-X\>>\<mathd\>y W<around*|(|y\|x|)>
        \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>
        \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>>>|<row|<cell|=>|<cell|-<big|int><rsub|\<cal-X\>>\<mathd\>x
        <big|int><rsub|\<cal-X\>>\<mathd\>y W<around*|(|y\|x|)>
        \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]><around*|[|
        ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>.>>>>
      </align>

      In this expression, for each <math|x> and <math|y> in <math|\<cal-X\>>,
      <math|W<around*|(|y\|x|)>\<gtr\>0> and
      <math|\<pi\><around*|(|x|)>\<gtr\>0>. So,
      <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>\<gtr\>p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>
      implies <math|ln<around*|[|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>|]>\<gtr\>ln<around*|[|p<around*|(|y,t|)>/\<pi\><around*|(|y|)>|]>>,
      so that the whole expression is negative. The same for
      <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>\<less\>p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>.
      Only when <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>
      can it be zero; and this equation implies that <math|p=\<pi\>> since
      <math|><math|<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
      \<pi\><around*|(|x|)>=1>. So, we conclude that
      <math|\<mathd\>H<around*|[|p,\<pi\>|]>/\<mathd\>t> is negative as long
      as <math|p\<neq\>\<pi\>> and vanishes when <math|p=\<pi\>>.
    </proof>
  </small>

  <section|Kramers-Moyal Expansion and Langevin Dynamics>

  We follow the discussion in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>, but focusing on the specific
  situation where there is extra smooth structure on <math|X>. This
  smoothness reflects on the connectivity of the alphabet <math|\<cal-X\>>,
  and on the smooth \Pspatial\Q-dependence of the distribution <math|P> and
  of the transition rate <math|W>. This means, the conclusions in section
  <reference|section: Master Equation, Detailed Balance, and Relative
  Entropy> hold in this section, but the inverse is not true.

  <subsection|Spatial Expansion of Master Equation Gives Kramers-Moyal
  Expansion>

  Let the alphabet <math|\<cal-X\>=\<bbb-R\><rsup|n>> for some integer
  <math|n\<geqslant\>1>, which has sufficient connectivity. In addition,
  suppose that <math|p<around*|(|x,t|)>> and <math|W<around*|(|x\|y|)>> are
  smooth on <math|x> and <math|y>.

  Now, the master equation <reference|equation:Master Equation> becomes

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    <around*|[|W<around*|(|x\|y|)> p<around*|(|y,t|)>-W<around*|(|y\|x|)>p<around*|(|x,t|)>|]>.
  </equation*>

  Letting <math|\<epsilon\>\<assign\>x-y> and
  <math|\<omega\><around*|(|x,\<epsilon\>|)>\<assign\>W<around*|(|x+\<epsilon\>\|x|)>>.
  we then have

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    W<around*|(|x\|x-\<epsilon\>|)> p<around*|(|x-\<epsilon\>,t|)>-p<around*|(|x,t|)><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    W<around*|(|x-\<epsilon\>\|x|)>,
  </equation*>

  where we have employed the formula <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\><around*|(|-\<epsilon\>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>>
  (check this). For the second integral, using this formula again, we find

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    W<around*|(|x-\<epsilon\>\|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    W<around*|(|x+\<epsilon\>\|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x,\<epsilon\>|)>.
  </equation*>

  And for the first integral,

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    W<around*|(|<around*|(|x-\<epsilon\>|)>+\<epsilon\>\|x-\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x-\<epsilon\>,\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>.
  </equation*>

  Now, since <math|W> and <math|p> is smooth, we can Taylor expand the first
  integrand, and find

  <\equation*>
    p<around*|(|x,t|)><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x,\<epsilon\>|)>+<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|p<around*|(|x,t|)> <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>|]>.
  </equation*>

  All together, we get

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|p<around*|(|x,t|)> <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>|]>.
  </equation*>

  Recalling <math|\<omega\><around*|(|x,\<epsilon\>|)>=W<around*|(|x+\<epsilon\>\|x|)>>,
  we arrive at

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>
    p<around*|(|x,t|)>|]>,
  </equation*>

  where <math|M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>\<assign\><around*|\<langle\>|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|\<rangle\>><rsub|W<around*|(|x+\<epsilon\>\|x|)>>>
  is the <math|k>-order moment of <math|\<epsilon\>\<sim\>W<around*|(|x+\<epsilon\>\|x|)>>.
  This is called the <with|font-series|bold|Kramers\UMoyal expansion>.
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
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|2>>
    <associate|auto-6|<tuple|2|?>>
    <associate|auto-7|<tuple|2.1|?>>
    <associate|equation:Detailed Balance|<tuple|2|2>>
    <associate|equation:Master Equation|<tuple|1|1>>
    <associate|equation:Master Equation V2|<tuple|4|1>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|1>>
    <associate|footnote-3|<tuple|3|1>>
    <associate|footnote-4|<tuple|4|2>>
    <associate|footnote-5|<tuple|5|2>>
    <associate|footnote-6|<tuple|6|?>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|1>>
    <associate|footnr-3|<tuple|3|1>>
    <associate|footnr-4|<tuple|4|2>>
    <associate|footnr-5|<tuple|5|2>>
    <associate|footnr-6|<tuple|6|?>>
    <associate|section: Master Equation, Detailed Balance, and Relative
    Entropy|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Master
      Equation, Detailed Balance, and Relative Entropy>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Master Equation Describes
      Generic Dynamics of Markov Chain <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Detailed Balance Provides a
      Stationary Distribution <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Detailed Balance
      Monotonically Reduces Relative Entropy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>