<TeXmacs|2.1>

<style|generic>

<\body>
  <section|Master Equation, Detailed Balance, and Relative Entropy>

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
  a unit of time <math|\<mathd\>t>. So, the change of probability at
  <math|X=x> equals to the total probability that transits from any <math|y>
  with <math|y\<neq\>x> to <math|x> substracting the total probability that
  transits from <math|x> to any <math|y> with <math|y\<neq\>x>. That is,
  <\footnote>
    Notice that in the case of <math|y=x>, the right hand side vanishes
    automatically. It is for this reason, the integral is over the whole
    alphabet <math|\<cal-X\>>.
  </footnote>

  <\equation>
    <frac|\<mathd\>p|\<mathd\>t><around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    <around*|[|W<around*|(|x\|y|)> p<around*|(|y,t|)>-W<around*|(|y\|x|)>p<around*|(|x,t|)>|]>,<label|equation:Master
    Equation>
  </equation>

  which is called the <with|font-series|bold|master equation>.

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
  <math|X=y\<rightarrow\>x> equals to the reverse one
  <math|X=x\<rightarrow\>y>. This reversibility, however, will furnishes a
  irreversibility in a subjective sense.

  <subsection|Detailed Balance Monotonically Reduces Relative Entropy>

  <\theorem>
    If there exists a stationary distribution <math|\<pi\>> such that
    detailed balance <reference|equation:Detailed Balance> is satisfied, then
    for any distribution <math|p> obeying the master equation
    <reference|equation:Master Equation> we have
    <math|\<mathd\>H<around*|[|p,\<pi\>|]>/\<mathd\>t\<leqslant\>0> and the
    only possibility of vanishing is <math|p=\<pi\>>.
  </theorem>

  This means the distribution <math|p> will monotonically and constantly
  relax to the stationary distribution <math|\<pi\>>. Generally, we prove the
  monotonic reduction of relative entropy by using Fokker-Planck equation.
  With an integral by part, we arrive a negative definite expression, which
  means the monotonic reduction. This proof needs smooth structure, which is
  employed by integral by part. Here, we provides a \Pdiscrete\Q, but more
  generic, alternative to the proof.

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
      p<around*|(|x,t|)>=0>, we arrive at

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

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|?>>
    <associate|auto-3|<tuple|1.2|?>>
    <associate|auto-4|<tuple|1.3|?>>
    <associate|equation:Detailed Balance|<tuple|2|?>>
    <associate|equation:Master Equation|<tuple|1|?>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnote-3|<tuple|3|?>>
    <associate|footnr-1|<tuple|1|?>>
    <associate|footnr-2|<tuple|2|?>>
    <associate|footnr-3|<tuple|3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Master
      Equation and H-theorem> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>