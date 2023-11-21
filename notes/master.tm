<TeXmacs|2.1>

<style|generic>

<\body>
  <section|Master Equation, Detailed Balance, and Relative
  Entropy><label|section: Master Equation, Detailed Balance, and Relative
  Entropy>

  <subsection|Conventions in This Section>

  Let <math|X> a time-dependent random variables, being either discrete or
  continuous, with alphabet <math|\<cal-X\>> and distribution <math|P>. Even
  though the discussion in this section applies to both discrete and
  continuous random variables, we use the notation of the continuous. The
  reason is that converting from discrete to continuous may cause problems
  <\footnote>
    Such as the problem of Shannon entropy, which has no proper definition
    for continuous random variable.
  </footnote> while the inverse will be safe and direct as long as any smooth
  structure of <math|X> is not employed throughout the discussion.

  <subsection|Master Equation Describes Generic Dynamics of Markov Chain>

  The generic dynamics of continuous time Markov chain can be characterized
  by transition probability <math|q<rsub|\<Delta\>t><around*|(|y\|x|)>> which
  describes the transition from <math|X=x> to <math|X=y> during a temporal
  unit <math|\<Delta\>t>. When <math|\<Delta\>t=0>, we shall have
  <math|q<rsub|0><around*|(|y\|x|)>=\<delta\><around*|(|y-x|)>>. When
  <math|\<Delta\>t> tends to be infinitesimal, as <math|\<mathd\>t>, the
  transition probability can be expanded by <math|\<mathd\>t> up to linear
  order, as <math|q<rsub|\<mathd\>t><around*|(|y\|x|)>=\<delta\><around*|(|y-x|)>+W<around*|(|y\|x|)>\<mathd\>t>.
  This <math|W<around*|(|y\|x|)>> is thus the
  <with|font-series|bold|transition rate> from <math|X=x> to <math|Y=y>. It
  is the speed of probabilistic transition.

  During an infinitesimal temporal unit <math|\<mathd\>t>, the change of
  probability at <math|X=x> equals to the total probability that transits
  from any <math|y> with <math|y\<neq\>x> to <math|x> subtracting the total
  probability that transits from <math|x> to any <math|y> with
  <math|y\<neq\>x>. That is, <\footnote>
    Notice that in the case of <math|y=x>, the right hand side vanishes
    automatically. It is for this reason, the integral is over the whole
    alphabet <math|\<cal-X\>>.
  </footnote>

  <\equation*>
    p<around*|(|x,t+\<mathd\>t|)>-p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y<around*|[|q<rsub|\<mathd\>t><around*|(|x\|y|)>p<around*|(|y,t|)>-q<rsub|\<mathd\>t><around*|(|y\|x|)>p<around*|(|x,t|)>|]>.
  </equation*>

  Expanding by <math|\<mathd\>t> up to linear order gives

  <\align>
    <tformat|<table|<row|<cell|p<around*|(|x,t+\<mathd\>t|)>-p<around*|(|x,t|)>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>y<around*|[|\<delta\><around*|(|x-y|)>p<around*|(|y,t|)>-\<delta\><around*|(|x-y|)>p<around*|(|x,t|)>|]>>>|<row|<cell|+>|<cell|\<mathd\>t<big|int><rsub|\<cal-X\>>\<mathd\>y<around*|[|W<around*|(|x\|y|)>
    p<around*|(|y,t|)>-W<around*|(|y\|x|)>p<around*|(|x,t|)>|]>,>>>>
  </align>

  where the first line vanishes. So, we get

  <\equation>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    <around*|[|W<around*|(|x\|y|)> p<around*|(|y,t|)>-W<around*|(|y\|x|)>p<around*|(|x,t|)>|]>,<label|equation:Master
    Equation>
  </equation>

  which is called the <with|font-series|bold|master equation>. <\footnote>
    There is another way of writing master equation, as

    <\equation*>
      <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
      W<around*|(|x\|y|)> p<around*|(|y,t|)>,
    </equation*>

    which is a direct result of the fact

    <\equation*>
      p<around*|(|x,t+\<mathd\>t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
      q<rsub|\<mathd\>t><around*|(|x\|y|)> p<around*|(|y,t|)>.
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

  The <math|W>, or the transition probability <math|q<rsub|\<mathd\>t>>, may
  also depend on time. But since the underlying dynamics which determines
  <math|W> is usually autonomous, supposing <math|W> as time-independent will
  greatly reduce the complexity while covering most of the important
  situations. So, throughout this note, without specific declaration,
  <math|W> is always independent of time.

  <subsection|Detailed Balance Provides a Stationary Distribution>

  Let <math|\<pi\>> a stationary solution of master equation
  <reference|equation:Master Equation>. Then, <math|\<pi\>> satisfies
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>y <around*|[|W<around*|(|x\|y|)>
  \<pi\><around*|(|y|)>-W<around*|(|y\|x|)>\<pi\><around*|(|x|)>|]>=0>. But,
  this condition is too weak to be used. A more useful condition, which is
  stronger than this, is that the integrand vanishes everywhere. That is,

  <\equation>
    W<around*|(|x\|y|)> \<pi\><around*|(|y|)>=W<around*|(|y\|x|)>\<pi\><around*|(|x|)>,<label|equation:Detailed
    Balance>
  </equation>

  which is called the <with|font-series|bold|detailed balance (condition)>.

  This condition also hints for reversibility: the probability of transition
  <math|X=y\<rightarrow\>x> equals to the reversed one
  <math|X=x\<rightarrow\>y>. Indeed, directly from the definition of
  <math|W>, we have

  <\equation>
    q<rsub|\<mathd\>t><around*|(|x\|y|)>\<pi\><around*|(|y|)>=q<rsub|\<mathd\>t><around*|(|y\|x|)>\<pi\><around*|(|x|)>,<label|equation:Detailed
    Balance V2>
  </equation>

  where <math|q<rsub|\<mathd\>t>> is the transition probability during time
  interval <math|\<mathd\>t>. This reversibility, however, will furnishes a
  irreversibility in a subjective sense, shown as follow.

  <subsection|Detailed Balance Monotonically Reduces Relative Entropy>

  If the time-dependent distribution <math|p<around*|(|\<cdummy\>,t|)>> and
  the stationary distribution <math|\<pi\>> are both supported on
  <math|\<cal-X\>>, which means <math|p<around*|(|x,t|)>\<gtr\>0> and
  <math|\<pi\><around*|(|x|)>\<gtr\>0> for each <math|x\<in\>\<cal-X\>>, we
  can define the relative entropy between them, as

  <\equation>
    H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)> ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.
  </equation>

  It describes the uncertainty (surprise) caused by
  <math|p<around*|(|\<cdummy\>,t|)>> when prior knowledge is given by
  <math|\<pi\>>. It is a plausible generalization of Shannon entropy to
  continuous random variables.

  Since <math|p<around*|(|\<cdummy\>,t|)>> is time-dependent, so is the
  relative entropy. Generally, the time-derivative of relative entropy has no
  interesting property. But, if the <math|\<pi\>> is more than stationary but
  satisfying a stronger condition: detailed balance, then we can express the
  <math|\<mathd\>H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>/\<mathd\>t>
  in a regular form, as the following theorem shows.

  <\theorem>
    If there is a stationary distribution <math|\<pi\>> supported on
    <math|\<cal-X\>> such that detailed balance <reference|equation:Detailed
    Balance> holds, then for any time-dependent distribution
    <math|p<around*|(|\<cdummy\>,t|)>> supported on <math|\<cal-X\>>, we have

    <\equation>
      <frac|\<mathd\>|\<mathd\>t>H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>=-<frac|1|2><big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y W<around*|(|y\|x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]><around*|[|
      ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>.<label|equation:relative
      entropy derivative>
    </equation>
  </theorem>

  The proof of this theorem is given as follow. <\footnote>
    As you will see, the proof is very tricky: it uses detailed balance
    twice, between which the expression is symmetrized. It is an ingenious
    mathematical engineering.
  </footnote>

  <\small>
    <\proof>
      Directly, we have

      <\align>
        <tformat|<table|<row|<cell|>|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>>>|<row|<cell|=>|<cell|<frac|\<mathd\>|\<mathd\>t><big|int><rsub|\<cal-X\>>\<mathd\>x
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

      Thus proof ends.
    </proof>
  </small>

  If we further assume that the transition rate <math|W> is supported on
  <math|\<cal-X\>>, which means <math|W<around*|(|x\|y|)>\<gtr\>0> for each
  <math|x> and <math|y> in <math|\<cal-X\>>, then by equation
  <reference|equation:relative entropy derivative>, the sign of
  <math|\<mathd\>H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>/\<mathd\>t>
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

  <\corollary>
    Suppose that the transition rate <math|W> is supported on
    <math|\<cal-X\>>. If there is a stationary distribution <math|\<pi\>>
    supported on <math|\<cal-X\>> such that detailed balance
    <reference|equation:Detailed Balance> holds, then for any time-dependent
    distribution <math|p<around*|(|\<cdummy\>,t|)>> supported on
    <math|\<cal-X\>>, <math|\<mathd\>H<around*|[|p<around*|(|\<cdummy\>,t|)>,\<pi\>|]>/\<mathd\>t>
    is negative as long as <math|p<around*|(|\<cdummy\>,t|)>\<neq\>\<pi\>>
    and vanishes when <math|p<around*|(|\<cdummy\>,t|)>=\<pi\>> for some
    <math|t>.
  </corollary>

  This means the time-dependent distribution <math|p> will monotonically and
  constantly relax to the stationary distribution <math|\<pi\>>. And equation
  <reference|equation:relative entropy derivative> gives an explicit
  estimation to the relaxation rate.

  <\remark>
    Here is a remark on smooth structure.

    Generally, we prove the monotonic reduction of relative entropy by using
    Fokker-Planck equation. With an integral by part, we arrive a negative
    definite expression, which means the monotonic reduction. This proof
    needs smooth structure on <math|X>, which is employed by integral by
    part. Here, we provides a \Pdiscretizable\Q, but more generic,
    alternative to the proof, which employs detailed condition instead of
    Fokker-Planck equation, which is a specific case of detailed balance
    (section <reference|section: Conservative Langevin Dynamics Satisfies
    Detailed Balance>).

    The smooth structure on time, however, cannot be avoided. Indeed, the
    smoothness of transition probability on time is essential for defining
    transition rate, thus master equation; and the smoothness of
    <math|p<around*|(|x,t|)>> on time is essential for the monotonic
    reduction of relative entropy, which is the essential end of our
    discussion.
  </remark>

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

  Let <math|\<epsilon\>\<assign\>x-y> and
  <math|\<omega\><around*|(|x,\<epsilon\>|)>\<assign\>W<around*|(|x+\<epsilon\>\|x|)>>.
  We then have, for the first term,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    W<around*|(|x\|y|)> p<around*|(|y,t|)>>>|<row|<cell|<around*|{|y=x-\<epsilon\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    W<around*|(|x\|x-\<epsilon\>|)> p<around*|(|x-\<epsilon\>,t|)>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    W<around*|(|<around*|(|x-\<epsilon\>|)>+\<epsilon\>\|x-\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>>>|<row|<cell|<around*|{|\<omega\>\<assign\>\<cdots\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x-\<epsilon\>,\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>.>>>>
  </align>

  And for the second term,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    W<around*|(|y\|x|)>p<around*|(|x,t|)>>>|<row|<cell|<around*|{|y=x-\<epsilon\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\><around*|(|-\<epsilon\>|)>
    W<around*|(|x-\<epsilon\>\|x|)> p<around*|(|x,t|)>>>|<row|<cell|<around*|{|-\<epsilon\>\<rightarrow\>\<epsilon\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    W<around*|(|x+\<epsilon\>\|x|)> p<around*|(|x,t|)>>>|<row|<cell|<around*|{|\<omega\>\<assign\>\<cdots\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x,\<epsilon\>|)> p<around*|(|x,t|)>.>>>>
  </align>

  Altogether, we have

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x-\<epsilon\>,\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x,\<epsilon\>|)> p<around*|(|x,t|)>.
  </equation*>

  Now, since <math|W> and <math|p> is smooth, we can Taylor expand the first
  term, and find

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
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|p<around*|(|x,t|)> <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>|]>.
  </equation*>

  Recalling that <math|\<omega\><around*|(|x,\<epsilon\>|)>=W<around*|(|x+\<epsilon\>\|x|)>>
  and that transition probability <math|q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>=\<delta\><around*|(|\<epsilon\>|)>+W<around*|(|x+\<epsilon\>\|x|)>
  \<mathd\>t>, we have

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>=<frac|1|\<mathd\>t><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>\<backassign\><frac|1|\<mathd\>t><around*|\<langle\>|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|\<rangle\>><rsub|q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>>.
  </equation*>

  So, we arrive at

  <\equation>
    p<around*|(|x,t+\<mathd\>t|)>-p<around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>
    p<around*|(|x,t|)>|]>,<label|equation:Kramers-Moyal expansion>
  </equation>

  where <math|M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>\<assign\><around*|\<langle\>|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|\<rangle\>><rsub|q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>>>
  is the <math|k>-order moment of <math|\<epsilon\>\<sim\>q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>>.
  This is called the <with|font-series|bold|Kramers\UMoyal expansion>.

  <subsection|Conservative Langevin Dynamics Satisfies Detailed
  Balance><label|section: Conservative Langevin Dynamics Satisfies Detailed
  Balance>

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
  equation will satisfy detailed balance? For this question, we have the
  following theorem.

  <\theorem>
    If there is a stationary distribution <math|\<pi\>> such that
    Fokker-Planck equation satisfies detailed balance, then we have

    <\equation>
      f<around*|(|x|)>=T\<nabla\>ln\<pi\><around*|(|x|)>.
    </equation>

    This indicates that the corresponding Langevin dynamics is conservative.
  </theorem>

  <small|<\proof>
    To check detailed balance, we can employ either equation
    <reference|equation:Detailed Balance> or equation
    <reference|equation:Detailed Balance V2>. Since <math|q<rsub|\<mathd\>t>>
    is transparent, we check it using equation <reference|equation:Detailed
    Balance V2>. That is, if there is a stationary distribution <math|\<pi\>>
    such that <math|q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>
    \<pi\><around*|(|x|)>=q<rsub|\<mathd\>t><around*|(|x\|x+\<epsilon\>|)>\<pi\><around*|(|x+\<epsilon\>|)>>?
    Since <math|q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>> obeys
    <math|\<cal-N\><around*|(|f<around*|(|x|)>\<mathd\>t,2T\<mathd\>t|)>> on
    <math|\<epsilon\>>, the question becomes

    <\equation*>
      <frac|1|<sqrt|<around*|(|4\<pi\>T|)><rsup|n>>>exp<around*|(|-<frac|<around*|(|\<epsilon\>-f<around*|(|x|)>\<mathd\>t|)><rsup|2>|4T\<mathd\>t>|)>\<pi\><around*|(|x|)><above|=|?><frac|1|<sqrt|<around*|(|4\<pi\>T|)><rsup|n>>>exp<around*|(|-<frac|<around*|(|-\<epsilon\>-f<around*|(|x-\<epsilon\>|)>\<mathd\>t|)><rsup|2>|4T\<mathd\>t>|)>\<pi\><around*|(|x+\<epsilon\>|)>.
    </equation*>

    Expanding the both sides up to the first order of <math|\<mathd\>t> and
    <math|\<epsilon\>>, we directly find

    <\equation>
      f<around*|(|x|)>=T\<nabla\>ln\<pi\><around*|(|x|)>.
    </equation>

    Thus proof ends.
  </proof>>
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
    <associate|auto-6|<tuple|2|4>>
    <associate|auto-7|<tuple|2.1|4>>
    <associate|auto-8|<tuple|2.2|5>>
    <associate|equation:Detailed Balance|<tuple|2|2>>
    <associate|equation:Detailed Balance V2|<tuple|3|2>>
    <associate|equation:Kramers-Moyal expansion|<tuple|6|5>>
    <associate|equation:Master Equation|<tuple|1|1>>
    <associate|equation:Master Equation V2|<tuple|3|2>>
    <associate|equation:relative entropy derivative|<tuple|5|3>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|1>>
    <associate|footnote-3|<tuple|3|2>>
    <associate|footnote-4|<tuple|4|3>>
    <associate|footnote-5|<tuple|5|?>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|1>>
    <associate|footnr-3|<tuple|3|2>>
    <associate|footnr-4|<tuple|4|3>>
    <associate|footnr-5|<tuple|5|?>>
    <associate|section: Conservative Langevin Dynamics Satisfies Detailed
    Balance|<tuple|2.2|5>>
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

      <with|par-left|<quote|1tab>|1.4<space|2spc>Detailed Balance
      Monotonically Reduces Relative Entropy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Kramers-Moyal
      Expansion and Langevin Dynamics> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Spatial Expansion of Master
      Equation Gives Kramers-Moyal Expansion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Conservative Langevin
      Dynamics Satisfies Detailed Balance
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>
    </associate>
  </collection>
</auxiliary>