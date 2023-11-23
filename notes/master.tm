<TeXmacs|2.1>

<style|generic>

<\body>
  <section|Master Equation, Detailed Balance, and Relative
  Entropy><label|section: Master Equation, Detailed Balance, and Relative
  Entropy>

  <subsection|Conventions in This Section>

  Let <math|X> a multi-dimensional random variables, being, discrete,
  continuous, or partially discrete and partially continuous, with alphabet
  <math|\<cal-X\>> and distribution <math|P>. Even though the discussion in
  this section applies to both discrete and continuous random variables, we
  use the notation of the continuous. The reason is that converting from
  discrete to continuous may cause problems <\footnote>
    Such as the problem of Shannon entropy, which has no proper definition
    for continuous random variable.
  </footnote> while the inverse will be safe and direct as long as any smooth
  structure of <math|X> is not employed throughout the discussion.

  <subsection|Master Equation Describes Generic Dynamics of Markov Chain>

  The generic dynamics of a Markov chain can be characterized by its
  <with|font-series|bold|transition probability>
  <math|q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|y\|x|)>> which describes
  the probability of transition from <math|X=x> at time <math|t> to
  <math|X=y> at time <math|t<rprime|'>>. Since the underlying dynamics which
  determines <math|q<rsub|t\<rightarrow\>t<rprime|'>>> is usually autonomous,
  we can suppose that <math|q<rsub|t\<rightarrow\>t<rprime|'>>> depends only
  on the difference <math|\<Delta\>t\<assign\>t<rprime|'>-t>. This will
  greatly reduce the complexity while covering most of the important
  situations. So, throughout this note, we use <math|q<rsub|\<Delta\>t>>
  instead of <math|q<rsub|t\<rightarrow\>t<rprime|'>>>.

  During a temporal unit <math|\<Delta\>t>, the change of probability at
  <math|X=x> equals to the total probability that transits from any <math|y>
  with <math|y\<neq\>x> to <math|x> subtracting the total probability that
  transits from <math|x> to any <math|y> with <math|y\<neq\>x>. That is,
  <\footnote>
    Notice that in the case of <math|y=x>, the right hand side vanishes
    automatically. It is for this reason, the integral is over the whole
    alphabet <math|\<cal-X\>>.
  </footnote>

  <\equation>
    p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y<around*|[|q<rsub|\<Delta\>t><around*|(|x\|y|)>p<around*|(|y,t|)>-q<rsub|\<Delta\>t><around*|(|y\|x|)>p<around*|(|x,t|)>|]>.<label|equation:Master
    Equation>
  </equation>

  which is called the <with|font-series|bold|master equation>. <\footnote>
    There is another way of writing master equation, as

    <\equation>
      p<around*|(|x,t+\<Delta\>t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
      q<rsub|\<Delta\>t><around*|(|x\|y|)>
      p<around*|(|y,t|)><label|equation:Master Equation V2>.
    </equation>

    In fact, these two definitions are equivalent, which is the result of
    <math|<big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x,t|)>=1>. To make
    it transparent, we use the discrete version, as

    <\equation*>
      p<around*|(|x,t+\<Delta\>t|)>=<big|sum><rsub|y\<in\>\<cal-X\>>q<rsub|\<Delta\>t><around*|(|x\|y|)>
      p<around*|(|y,t|)>.
    </equation*>

    Since <math|<big|sum><rsub|y\<in\>\<cal-X\>>q<rsub|\<Delta\>t><around*|(|y\|x|)>=1>,
    we have <math|q<rsub|\<Delta\>t><around*|(|x\|x|)>=1-<big|sum><rsub|y\<neq\>x>q<rsub|\<Delta\>t><around*|(|y\|x|)>>.
    Thus,

    <\align>
      <tformat|<table|<row|<cell|p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>=>|<cell|<big|sum><rsub|y\<in\>\<cal-X\>>q<rsub|\<Delta\>t><around*|(|x\|y|)>
      p<around*|(|y,t|)>-p<around*|(|x,t|)>>>|<row|<cell|=>|<cell|<big|sum><rsub|y\<neq\>x>q<rsub|\<Delta\>t><around*|(|x\|y|)>
      p<around*|(|y,t|)>+q<rsub|\<Delta\>t><around*|(|x\|x|)>
      p<around*|(|x,t|)>-p<around*|(|x,t|)>>>|<row|<cell|<around*|{|q<rsub|\<Delta\>t><around*|(|x\|x|)>=1-<big|sum><rsub|y\<neq\>x>q<rsub|\<Delta\>t><around*|(|y\|x|)>|}>=>|<cell|<big|sum><rsub|y\<neq\>x><around*|[|q<rsub|\<Delta\>t><around*|(|x\|y|)>
      p<around*|(|y,t|)>-q<rsub|\<Delta\>t><around*|(|y\|x|)>
      p<around*|(|x,t|)>|]>>>|<row|<cell|=>|<cell|<big|sum><rsub|y\<in\>\<cal-X\>><around*|[|q<rsub|\<Delta\>t><around*|(|x\|y|)>
      p<around*|(|y,t|)>-q<rsub|\<Delta\>t><around*|(|y\|x|)>
      p<around*|(|x,t|)>|]>,>>>>
    </align>

    which is the discrete version of master equation
    <reference|equation:Master Equation>.
  </footnote> <\footnote>
    In many textures, master equation is defined by transition rate, instead
    of transition probability. This demands the smoothness of
    <math|q<rsub|\<Delta\>t>> on <math|\<Delta\>t>. But, this condition is
    not essential for applying master equation in many cases.
  </footnote>

  <subsection|Detailed Balance Provides a Stationary Distribution>

  Let <math|\<pi\>> a stationary solution of master equation
  <reference|equation:Master Equation>. Then, <math|\<pi\>> satisfies
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>y
  <around*|[|q<rsub|\<Delta\>t><around*|(|x\|y|)>
  \<pi\><around*|(|y|)>-q<rsub|\<Delta\>t><around*|(|y\|x|)>\<pi\><around*|(|x|)>|]>=0>.
  But, this condition is too weak to be used. A more useful condition, which
  is stronger than this, is that the integrand vanishes everywhere. That is,

  <\equation>
    q<rsub|\<Delta\>t><around*|(|x\|y|)> \<pi\><around*|(|y|)>=q<rsub|\<Delta\>t><around*|(|y\|x|)>\<pi\><around*|(|x|)><label|equation:Detailed
    Balance>,
  </equation>

  which is called the <with|font-series|bold|detailed balance (condition)>.

  <subsection|Detailed Balance with Ergodicity Monotonically Reduces Relative
  Entropy><label|section: Detailed Balance with Ergodicity Monotonically
  Reduces Relative Entropy>

  Given the time <math|t>, if the time-dependent distribution
  <math|p<around*|(|\<cdummy\>,t|)>> and the stationary distribution
  <math|\<pi\>> are both supported on <math|\<cal-X\>>, which means
  <math|p<around*|(|x,t|)>\<gtr\>0> and <math|\<pi\><around*|(|x|)>\<gtr\>0>
  for each <math|x\<in\>\<cal-X\>>, we have defined the relative entropy
  between them, as

  <\equation>
    H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)> ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.
  </equation>

  It describes the uncertainty (surprise) caused by
  <math|p<around*|(|\<cdummy\>,t|)>> when prior knowledge is given by
  <math|\<pi\>>. It is a plausible generalization of Shannon entropy to
  continuous random variables.

  When <math|p<around*|(|\<cdummy\>,t|)>> is evolved by the master equation
  of <math|q<rsub|\<Delta\>t>>, to keep <math|H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>>
  well-defined, we have to ensure that <math|p<around*|(|\<cdummy\>,t|)>> is
  supported on <math|\<cal-X\>> for all <math|t>. This is guaranteed when
  <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>\<gtr\>0> for each
  <math|x,y\<in\>\<cal-X\>> and for each <math|\<Delta\>t\<in\><around*|[|0,T|]>>,
  where <math|T> is an arbitrary positive number. This property of transition
  probability is called <with|font-series|bold|ergodicity>. Indeed, by
  repeatedly applying master equation <reference|equation:Master Equation
  V2>, <math|p<around*|(|x,t<rprime|'>|)>> is found to be supported on
  <math|\<cal-X\>> for any <math|t<rprime|'>\<gtr\>t>. This keeps
  <math|H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>> well-defined as
  long as it is well-defined initially.

  If <math|q<rsub|\<Delta\>t>> is smooth on <math|\<Delta\>t>, then by master
  equation <reference|equation:Master Equation>,
  <math|p<around*|(|\<cdummy\>,t|)>> is smooth on <math|t>. Then we can
  calculate the time-derivative of relative entropy. Generally, the
  time-derivative of relative entropy has no interesting property. But, if
  the <math|\<pi\>> is more than stationary but satisfying a stronger
  condition: detailed balance, then we can express the
  <math|\<mathd\>H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>/\<mathd\>t>
  in a regular form, as <\footnote>
    The proof is given as follow. Directly, we have

    <\align>
      <tformat|<table|<row|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>=>|<cell|<frac|\<mathd\>|\<mathd\>t><big|int><rsub|\<cal-X\>>\<mathd\>x
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

    Now, we replace <math|\<partial\>p/\<partial\>t> by master equation in
    which <math|\<Delta\>t> is replaced by the infinitesimal
    <math|\<mathd\>t>, as

    <\equation*>
      \<mathd\>H<around*|[|p,\<pi\>|]>=<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y
      <around*|[|q<rsub|\<mathd\>t><around*|(|x\|y|)>
      p<around*|(|y,t|)>-q<rsub|\<mathd\>t><around*|(|y\|x|)>p<around*|(|x,t|)>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>,
    </equation*>

    where <math|\<mathd\>H<around*|[|p,\<pi\>|]>\<assign\>H<around*|[|p<around*|(|\<cdummy\>,t+\<mathd\>t|)>,\<pi\>|]>-H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>>.
    Then, insert detailed balance <math|q<rsub|\<mathd\>t><around*|(|x\|y|)>=q<rsub|\<mathd\>t><around*|(|y\|x|)>
    \<pi\><around*|(|x|)>/\<pi\><around*|(|y|)>>, as

    <\align>
      <tformat|<table|<row|<cell|\<mathd\>H<around*|[|p,\<pi\>|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y
      <around*|[|q<rsub|\<mathd\>t><around*|(|y\|x|)> \<pi\><around*|(|x|)>
      <frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-q<rsub|\<mathd\>t><around*|(|y\|x|)>p<around*|(|x,t|)>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y
      q<rsub|\<mathd\>t><around*|(|y\|x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.>>>>
    </align>

    Since <math|x> and <math|y> are dummy, we interchange them in the
    integrand, and then insert detailed balance again, as

    <\align>
      <tformat|<table|<row|<cell|\<mathd\>H<around*|[|p,\<pi\>|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y
      q<rsub|\<mathd\>t><around*|(|x\|y|)>
      \<pi\><around*|(|y|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>
      \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>>>|<row|<cell|<around*|{|detailed
      balance|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y
      q<rsub|\<mathd\>t><around*|(|y\|x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>
      \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>.>>>>
    </align>

    By adding the two previous results together, we find

    <\align>
      <tformat|<table|<row|<cell|>|<cell|2
      \<mathd\>H<around*|[|p,\<pi\>|]>>>|<row|<cell|<around*|[|1st
      result|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y
      q<rsub|\<mathd\>t><around*|(|y\|x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>|<row|<cell|<around*|[|2nd
      result|]>+>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y
      q<rsub|\<mathd\>t><around*|(|y\|x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>
      \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>>>|<row|<cell|=>|<cell|-<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y
      q<rsub|\<mathd\>t><around*|(|y\|x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]><around*|[|
      ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>,>>>>
    </align>

    from which we directly get the result. Notice that this proof is very
    tricky: it uses detailed balance twice, between which the expression is
    symmetrized. It is an ingenious mathematical engineering.
  </footnote>

  <small|<\equation>
    H<around*|[|p<around*|(|\<cdummy\>,t+\<mathd\>t|)>,\<pi\>|]>-H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>=-<frac|1|2><big|int><rsub|\<cal-X\>>\<mathd\>x
    <big|int><rsub|\<cal-X\>>\<mathd\>y q<rsub|\<mathd\>t><around*|(|y\|x|)>
    \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]><around*|[|
    ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>.<label|equation:relative
    entropy derivative>
  </equation>>

  Since <math|\<pi\>> is supported on <math|\<cal-X\>>,
  <math|q<rsub|\<mathd\>t><around*|(|y\|x|)> \<pi\><around*|(|x|)>> cannot
  vanish everywhere. Thus, the sign of <math|\<mathd\>H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>/\<mathd\>t>
  is determined by the last two terms. If
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>\<gtr\>p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>,
  then <math|ln<around*|[|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>|]>\<gtr\>ln<around*|[|p<around*|(|y,t|)>/\<pi\><around*|(|y|)>|]>>,
  so that the whole expression is negative. The same for
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>\<less\>p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>.
  Only when <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>
  can it be zero; and this equation implies that
  <math|p<around*|(|\<cdummy\>,t|)>=\<pi\>> since
  <math|><math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
  \<pi\><around*|(|x|)>=1>. So, we conclude that

  <\theorem>
    Suppose that the transition probability <math|q<rsub|\<Delta\>t>> is
    ergodic and smooth on <math|\<Delta\>t>. If there is a stationary
    distribution <math|\<pi\>> supported on <math|\<cal-X\>> such that
    detailed balance <reference|equation:Detailed Balance> holds, then for
    any time-dependent distribution <math|p<around*|(|\<cdummy\>,t|)>>
    initially supported on <math|\<cal-X\>> and evolved by the master
    equation of <math|q<rsub|\<Delta\>t>>,
    <math|\<mathd\>H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>/\<mathd\>t>
    is negative as long as <math|p<around*|(|\<cdummy\>,t|)>\<neq\>\<pi\>>
    and vanishes when <math|p<around*|(|\<cdummy\>,t|)>=\<pi\>> for some
    <math|t>.
  </theorem>

  This means the time-dependent distribution <math|p> will monotonically and
  constantly relax to the stationary distribution <math|\<pi\>>.

  Generally, we prove the monotonic reduction of relative entropy by using
  Fokker-Planck equation. With an integral by part, we arrive a negative
  definite expression, which means the monotonic reduction. This proof needs
  smooth structure on <math|X>, which is employed by integral by part. In
  this section, we provides a more generic alternative to the proof, for
  which smooth structure on <math|X> is unnecessary. It employs detailed
  condition instead of Fokker-Planck equation, which is a specific case of
  detailed balance (section <reference|section: Conservative Langevin
  Dynamics Satisfies Detailed Balance>).

  <subsection|Temporal Smoothness of Transition Probability Is Necessary to
  Ensure Relaxation>

  The temporal smooth structure, however, cannot be avoided. Indeed, the
  smoothness of transition probability on time and thus the smoothness of
  <math|p<around*|(|x,t|)>> on <math|t> is essential for the monotonic
  reduction of relative entropy, which is the essential end of our
  discussion. <\footnote>
    You may wonder if the temporal smoothness implies the continuum of
    alphabet. Explicitly, if <math|p<around*|(|x,t|)>> is smooth on <math|t>,
    then does the value of <math|x> have to be continuous? The answer is no.
    For example, you can consider 1-dimensional case where the alphabet
    <math|\<cal-X\>=<around*|{|0,1|}>>; the <math|p<around*|(|x,t|)>> is
    given by <math|\<sigma\><around*|(|\<zeta\><around*|(|t|)>|)>> where
    <math|\<sigma\>> denotes the sigmoid function and
    <math|\<zeta\><around*|(|t|)>> is smooth on <math|t>. In this example,
    <math|p<around*|(|x,t|)>> is smooth on <math|t> but the random variable
    is discrete.
  </footnote>

  To see this clearly, let us exam <math|H<around*|[|p<around*|(|\<cdummy\>,t+\<Delta\>t|)>,\<pi\>|]>-H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>>
  when <math|\<Delta\>t> is not an infinitesimal. By definition,

  <\equation*>
    H<around*|[|p<around*|(|\<cdummy\>,t+\<Delta\>t|)>,\<pi\>|]>-H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t+\<Delta\>t|)> ln<frac|p<around*|(|x,t+\<Delta\>t|)>|\<pi\><around*|(|x|)>>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)> ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.
  </equation*>

  Inserting <math|<with|color|dark cyan|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,t+\<Delta\>t|)> ln<around*|(|p<around*|(|x,t|)>/\<pi\><around*|(|x,t|)>|)>>>
  gives

  <\align>
    <tformat|<table|<row|<cell|>|<cell|H<around*|[|p<around*|(|\<cdummy\>,t+\<Delta\>t|)>,\<pi\>|]>-H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t+\<Delta\>t|)> ln<frac|p<around*|(|x,t+\<Delta\>t|)>|\<pi\><around*|(|x|)>>-<with|color|dark
    cyan|<big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x,t+\<Delta\>t|)>
    ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>>|<row|<cell|+>|<cell|<with|color|dark
    cyan|<big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x,t+\<Delta\>t|)>
    ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)> ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t+\<Delta\>t|)> ln<frac|p<around*|(|x,t+\<Delta\>t|)>|p<around*|(|x,t|)>>>>|<row|<cell|+>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
    <around*|[|p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>|]>
    ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>>>
  </align>

  The first line is recognized as <math|H<around*|[|p<around*|(|\<cdummy\>,t+\<Delta\>t|)>,p<around*|(|\<cdummy\>,t|)>|]>>,
  which is non-negative. Following the same steps in section
  <reference|section: Detailed Balance with Ergodicity Monotonically Reduces
  Relative Entropy>, the second line reduces to

  <\equation*>
    -<frac|1|2><big|int><rsub|\<cal-X\>>\<mathd\>x<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|y\|x|)>\<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]><around*|[|
    ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>,
  </equation*>

  which is non-positive. The sign of the final result can be arbitrary.
  Indeed, the first line is determined by the difference between
  <math|p<around*|(|\<cdummy\>,t+\<Delta\>t|)>> and
  <math|p<around*|(|\<cdummy\>,t|)>> <\footnote>
    The difference is <math|<with|font|cal|O><around*|(|\<Delta\>t<rsup|2>|)>>.
  </footnote>, while the second line is determined by the difference between
  <math|p<around*|(|\<cdummy\>,t|)>> and <math|\<pi\>>. They are
  intrinsically different, thus mutually independent. So, we conclude that
  the smoothness of <math|q<rsub|\<Delta\>t>> on <math|\<Delta\>t> is
  essential for the guarantee of the monotonic reduce of relative entropy
  between <math|p<around*|(|\<cdummy\>,t|)>> and <math|\<pi\>>, thus its
  relaxation.

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
  suppose that <math|p<around*|(|x,t|)>> and
  <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>> are smooth on <math|x> and
  <math|y>.

  Now, the master equation <reference|equation:Master Equation> becomes

  <\equation*>
    p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    <around*|[|q<rsub|\<Delta\>t><around*|(|x\|y|)>
    p<around*|(|y,t|)>-q<rsub|\<Delta\>t><around*|(|y\|x|)>p<around*|(|x,t|)>|]>.
  </equation*>

  Let <math|\<epsilon\>\<assign\>x-y> and
  <math|\<omega\><around*|(|x,\<epsilon\>|)>\<assign\>q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>>.
  We then have, for the first term,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|x\|y|)> p<around*|(|y,t|)>>>|<row|<cell|<around*|{|y=x-\<epsilon\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x\|x-\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|<around*|(|x-\<epsilon\>|)>+\<epsilon\>\|x-\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>>>|<row|<cell|<around*|{|\<omega\>\<assign\>\<cdots\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x-\<epsilon\>,\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>.>>>>
  </align>

  And for the second term,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|y\|x|)>p<around*|(|x,t|)>>>|<row|<cell|<around*|{|y=x-\<epsilon\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\><around*|(|-\<epsilon\>|)>
    q<rsub|\<Delta\>t><around*|(|x-\<epsilon\>\|x|)>
    p<around*|(|x,t|)>>>|<row|<cell|<around*|{|-\<epsilon\>\<rightarrow\>\<epsilon\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
    p<around*|(|x,t|)>>>|<row|<cell|<around*|{|\<omega\>\<assign\>\<cdots\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x,\<epsilon\>|)> p<around*|(|x,t|)>.>>>>
  </align>

  Altogether, we have

  <\equation*>
    p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x-\<epsilon\>,\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x,\<epsilon\>|)> p<around*|(|x,t|)>.
  </equation*>

  Now, since <math|q<rsub|\<Delta\>t>> and <math|p> are smooth, we can Taylor
  expand the first term, and find

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \ \<omega\><around*|(|x,\<epsilon\>|)>
    p<around*|(|x,t|)>+<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|p<around*|(|x,t|)> <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>|]>.
  </equation*>

  All together, we get

  <\equation*>
    p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|p<around*|(|x,t|)> <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>|]>.
  </equation*>

  Recalling that <math|\<omega\><around*|(|x,\<epsilon\>|)>=q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>>,
  we have

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>\<backassign\>M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>,
  </equation*>

  which is the <math|k>-order moment of <math|\<epsilon\>\<sim\>q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>>.
  So, we arrive at

  <\equation>
    p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>
    p<around*|(|x,t|)>|]><label|equation:Kramers-Moyal expansion>,
  </equation>

  This is called the <with|font-series|bold|Kramers\UMoyal expansion>.

  Notice that deriving the Kramers\UMoyal expansion needs the smoothness of
  <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>> and <math|p<around*|(|x,t|)>>
  on <math|x> and <math|y>, but not the smoothness on <math|\<Delta\>t> and
  <math|t>.

  <subsection|Langevin Dynamics that Satisfies Detailed Balance Is
  Conservative><label|section: Conservative Langevin Dynamics Satisfies
  Detailed Balance>

  Given a function <math|f:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
  and a Wiener process <math|\<mathd\>\<xi\>> with variance
  <math|2T\<mathd\>t>, the <with|font-series|bold|Langevin dynamics> is

  <\equation*>
    \<mathd\>X=f<around*|(|X|)>\<mathd\>t+\<mathd\>\<xi\>.
  </equation*>

  The transition probability <math|q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>>
  is <math|\<cal-N\><around*|(|f<around*|(|x|)>\<mathd\>t,2T\<mathd\>t|)>> on
  <math|\<epsilon\>>, where <math|T> is a positive constant. Thus, moments
  <math|M<rsup|\<alpha\>><around*|(|x|)>=f<rsup|\<alpha\>><around*|(|x|)>\<mathd\>t>,
  <math|M<rsup|\<alpha\>\<beta\>>=2T \<delta\><rsup|\<alpha\>\<beta\>>\<mathd\>t>,
  and higher orders are of <math|o<around*|(|\<mathd\>t|)>>. The
  Kramers-Moyal expansion gives

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=\<nabla\><rsub|\<alpha\>><around*|(|f<rsup|\<alpha\>><around*|(|x|)>
    p<around*|(|x,t|)>|)>+T \<nabla\><rsup|2>p<around*|(|x,t|)>,
  </equation*>

  which is the <with|font-series|bold|Fokker-Planck equation>.

  As a special case of master equation, we may wonder when Fokker-Planck
  equation will satisfy detailed balance? Directly from the form of
  transition probability, we find that if there is a stationary distribution
  <math|\<pi\>> such that Fokker-Planck equation satisfies detailed balance,
  then we must have <\footnote>
    <\small>
      To check detailed balance, we can employ either equation
      <reference|equation:Detailed Balance> or equation
      <reference|equation:Detailed Balance V2>. Since
      <math|q<rsub|\<mathd\>t>> is transparent, we check it using equation
      <reference|equation:Detailed Balance V2>. That is, if there is a
      stationary distribution <math|\<pi\>> such that
      <math|q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>
      \<pi\><around*|(|x|)>=q<rsub|\<mathd\>t><around*|(|x\|x+\<epsilon\>|)>\<pi\><around*|(|x+\<epsilon\>|)>>?
      Since <math|q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>> obeys
      <math|\<cal-N\><around*|(|f<around*|(|x|)>\<mathd\>t,2T\<mathd\>t|)>>
      on <math|\<epsilon\>>, the question becomes

      <\equation*>
        <frac|1|<sqrt|<around*|(|4\<pi\>T|)><rsup|n>>>exp<around*|(|-<frac|<around*|(|\<epsilon\>-f<around*|(|x|)>\<mathd\>t|)><rsup|2>|4T\<mathd\>t>|)>\<pi\><around*|(|x|)><above|=|?><frac|1|<sqrt|<around*|(|4\<pi\>T|)><rsup|n>>>exp<around*|(|-<frac|<around*|(|-\<epsilon\>-f<around*|(|x-\<epsilon\>|)>\<mathd\>t|)><rsup|2>|4T\<mathd\>t>|)>\<pi\><around*|(|x+\<epsilon\>|)>.
      </equation*>

      Expanding the both sides up to the first order of <math|\<mathd\>t> and
      <math|\<epsilon\>>, we directly find

      <\equation>
        f<around*|(|x|)>=T\<nabla\>ln\<pi\><around*|(|x|)>.
      </equation>
    </small>
  </footnote>

  <\equation>
    f<around*|(|x|)>=T\<nabla\>ln\<pi\><around*|(|x|)>.
  </equation>

  This indicates that, to satisfy detailed balance, Langevin dynamics shall
  be conservative.
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
    <associate|auto-6|<tuple|1.5|4>>
    <associate|auto-7|<tuple|2|4>>
    <associate|auto-8|<tuple|2.1|5>>
    <associate|auto-9|<tuple|2.2|6>>
    <associate|equation:Detailed Balance|<tuple|3|2>>
    <associate|equation:Kramers-Moyal expansion|<tuple|6|5>>
    <associate|equation:Master Equation|<tuple|1|1>>
    <associate|equation:Master Equation V2|<tuple|2|1>>
    <associate|equation:relative entropy derivative|<tuple|5|3>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|1>>
    <associate|footnote-3|<tuple|3|1>>
    <associate|footnote-4|<tuple|4|1>>
    <associate|footnote-5|<tuple|5|3>>
    <associate|footnote-6|<tuple|6|4>>
    <associate|footnote-7|<tuple|7|4>>
    <associate|footnote-8|<tuple|8|6>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|1>>
    <associate|footnr-3|<tuple|2|1>>
    <associate|footnr-4|<tuple|4|1>>
    <associate|footnr-5|<tuple|5|3>>
    <associate|footnr-6|<tuple|6|4>>
    <associate|footnr-7|<tuple|7|4>>
    <associate|footnr-8|<tuple|7|6>>
    <associate|section: Conservative Langevin Dynamics Satisfies Detailed
    Balance|<tuple|2.2|6>>
    <associate|section: Convention Master Equation|<tuple|1.1|?>>
    <associate|section: Detailed Balance with Ergodicity Monotonically
    Reduces Relative Entropy|<tuple|1.4|2>>
    <associate|section: Master Equation, Detailed Balance, and Relative
    Entropy|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Master
      Equation, Detailed Balance, and Relative Entropy>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Master Equation Describes
      Generic Dynamics of Markov Chain <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Detailed Balance Provides a
      Stationary Distribution <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Detailed Balance with
      Ergodicity Monotonically Reduces Relative Entropy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Temporal Smoothness of
      Transition Probability Is Necessary to Ensure Relaxation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Kramers-Moyal
      Expansion and Langevin Dynamics> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Spatial Expansion of Master
      Equation Gives Kramers-Moyal Expansion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Langevin Dynamics that
      Satisfies Detailed Balance Is Conservative
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>