<TeXmacs|2.1>

<style|book>

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
  discrete to continuous may cause problems (section <reference|section:
  Shannon Entropy Fails for Continuous Random Variable>), while the inverse
  will be safe and direct as long as any smooth structure of <math|X> is not
  employed throughout the discussion.

  <subsection|Master Equation Describes the Evolution of Markov
  Chain><label|section: Master Equation Describes the Evolution of Markov
  Chain>

  The generic dynamics of a Markov chain can be characterized by its
  <with|font-series|bold|transition density>
  <math|q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|y\|x|)>> which describes
  the density that transits from <math|x> at time <math|t> to <math|y> at
  time <math|t<rprime|'>>. Since the underlying dynamics which determines
  <math|q<rsub|t\<rightarrow\>t<rprime|'>>> is usually autonomous, we can
  suppose that <math|q<rsub|t\<rightarrow\>t<rprime|'>>> depends only on the
  difference <math|\<Delta\>t\<assign\>t<rprime|'>-t>. This will greatly
  reduce the complexity while covering most of the important situations. So,
  throughout this note, we use <math|q<rsub|\<Delta\>t>> instead of
  <math|q<rsub|t\<rightarrow\>t<rprime|'>>>.

  During a temporal unit <math|\<Delta\>t>, the change of density at
  <math|X=x> equals to the total density that transits into <math|x>
  subtracting the total density that transits out of <math|x>. That is,

  <\equation>
    p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    <around*|[|q<rsub|\<Delta\>t><around*|(|x\|y|)>p<around*|(|y,t|)>-
    q<rsub|\<Delta\>t><around*|(|y\|x|)>p<around*|(|x,t|)>|]>.<label|equation:Discrete
    Time Master Equation>
  </equation>

  It is called the <with|font-series|bold|discrete time master equation>.

  What are the requirements for transition density? The last term of master
  equation <reference|equation:Discrete Time Master Equation> can be
  re-written as <math|p<around*|(|x,t|)>\<times\><big|int><rsub|\<cal-X\>>\<mathd\>y
  q<rsub|\<Delta\>t><around*|(|y\|x|)>>. If <math|q<rsub|\<Delta\>t>> is
  normalized by <math|<big|int><rsub|\<cal-X\>>\<mathd\>y
  q<rsub|\<Delta\>t><around*|(|y\|x|)>=1> for any <math|x\<in\>\<cal-X\>>,
  then we have<\footnote>
    In principle, we can employ this simpler expression for defining master
    equation. But, the expression of equation (<reference|equation:Discrete
    Time Master Equation>) is particularly useful for deriving detailed
    balance condition in section <reference|section: Detailed Balance
    Provides Stationary Distribution>.
  </footnote>

  <\equation*>
    p<around*|(|x,t+\<Delta\>t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|x\|y|)>p<around*|(|y,t|)>.
  </equation*>

  It means the density at <math|x> equals to the density transited into
  <math|x> during the time interval <math|\<Delta\>t> (this is a little
  weird). We have <math|p<around*|(|x,t|)>\<gtr\>0> for all
  <math|x\<in\>\<cal-X\>>, but have to guarantee that
  <math|p<around*|(|x,t+\<Delta\>t|)>\<gtr\>0>, for sharing the same alphabet
  <math|\<cal-X\>> (recall in section <reference|section: A Short Review of
  Probability>, density function is defined to be positive). Basically, this
  requires <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>> to be non-negative for
  all <math|x,y\<in\>\<cal-X\>>, since, otherwise, we can construct a
  <math|p<around*|(|y,t|)>> with large value on the place where
  <math|q<rsub|\<Delta\>><around*|(|x\|y|)>\<less\>0> and tiny value on the
  rest, so that <math|p<around*|(|x,t+\<Delta\>t|)>\<less\>0>. This is
  natural since <math|q<rsub|\<Delta\>><around*|(|x\|y|)>> describes the
  transited density, and negative transited density cannot be \Pphysical\Q.
  It further requires that for each <math|x\<in\>\<cal-X\>>, there is density
  transited into <math|x>. Precisely, for any <math|x> there is a measurable
  subset of <math|y> such that <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>\<gtr\>0>.
  Combined with the non-negativity, it directly implies
  <math|p<around*|(|x,t+\<Delta\>t|)>\<gtr\>0>. As a summary, we require the
  transition density <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>> to be
  normalized on <math|x>, to be non-negative, and to be that there is
  measurable density transited into <math|x> (or equivalently,
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>y
  q<rsub|\<Delta\>t><around*|(|x\|y|)>\<gtr\>0>).

  If <math|q<rsub|\<Delta\>t>> is smooth on <math|\<Delta\>t>, then we have
  the linear expansion <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>=\<chi\><around*|(|x,y|)>+r<around*|(|x,y|)>
  \<Delta\>t+o<around*|(|\<Delta\>t|)>> where <math|q<rsub|0>> and <math|r>
  are well-defined functions (at least well-defined <hlink|generalized
  function|https://en.wikipedia.org/wiki/Generalized_function>s). When
  <math|\<Delta\>t=0>, there is no transition at all, and
  <math|p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
  \<chi\><around*|(|x,y|)>p<around*|(|y,t|)>>. The density function <math|p>
  is arbitrary, implying that <math|\<chi\><around*|(|x,y|)>=\<delta\><around*|(|x-y|)>>.
  Plugging all these back to equation <reference|equation:Discrete Time
  Master Equation> and taking the limit <math|\<Delta\>t\<rightarrow\>0>, we
  get the <with|font-series|bold|continuous time master equation>:

  <\equation>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y<around*|[|
    r<around*|(|x,y|)>p<around*|(|y,t|)>-r<around*|(|y,x|)>p<around*|(|x,t|)>|]>.<label|equation:Master
    Equation>
  </equation>

  The <math|r> is called the <with|font-series|bold|transition rate>,
  characterizing the speed of transition. The normalization
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  q<rsub|\<Delta\>t><around*|(|x\|y|)>=1> demands that
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>x r<around*|(|x,y|)>=0>. And the
  non-negativity <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>\<geqslant\>0>
  needs <math|r<around*|(|x,y|)>\<geqslant\>0> when <math|x\<neq\>y>. The
  last requirement of transition density demands that
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|x,y|)>\<gtr\>-1>,
  which is a little weird.

  <subsection|Transition Density Is Determined by Tansition Rate (TODO)>

  Practically, we employ the discrete time master equation
  (<reference|equation:Discrete Time Master Equation>) instead of (continuous
  time) master equation (<reference|equation:Master Equation>), because we
  cannot compute infinitesimal. So we wonder, given a transition rate, can we
  obtain the corresponding transition density? Generally, we cannot get the
  global (finite) from the local (infinitesimal). But, master equation has a
  group-like structure, by which the local accumulates to be global. We are
  to show how this happens.

  \ We are to express the transition density <math|q<rsub|\<Delta\>t>> by its
  transition rate <math|r>. By inserting <math|q<rsub|\<Delta\>t><around*|(|z\|x|)>=\<delta\><around*|(|z-x|)>+r<around*|(|z,x|)>
  \<Delta\>t +\<omicron\><around*|(|\<Delta\>t|)>> into

  <\equation>
    p<around*|(|z,t+\<Delta\>t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<rsub|\<Delta\>t><around*|(|z\|x|)>p<around*|(|x,t|)>,<label|equation:discrete
    time master equation v2>
  </equation>

  we find

  <\equation>
    <frac|\<partial\>p|\<partial\>t><around*|(|z,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    r<around*|(|z,x|)> p<around*|(|x,t|)>.<label|equation:master equation v2>
  </equation>

  Surprisingly, we can use this formula to calculate
  <math|\<partial\><rsup|n>p/\<partial\>t<rsup|n>> for any <math|n>. Indeed,
  for <math|n=2>,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<frac|\<partial\><rsup|2>p|\<partial\>t<rsup|2>><around*|(|z,t|)>>>|<row|<cell|<around*|{|insert
    equation <around*|(|<reference|equation:master equation
    v2>|)>|}>=>|<cell|<frac|\<partial\>|\<partial\>t><big|int><rsub|\<cal-X\>>\<mathd\>y
    r<around*|(|z,y|)> p<around*|(|y,t|)>>>|<row|<cell|<around*|{|exchange
    limits|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|z,y|)>
    <frac|\<partial\>p|\<partial\>t><around*|(|y,t|)>>>|<row|<cell|<around*|{|insert
    equation <around*|(|<reference|equation:master equation
    v2>|)>|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|z,y|)>
    <big|int><rsub|\<cal-X\>>\<mathd\>x r<around*|(|y,x|)>
    p<around*|(|x,t|)>>>|<row|<cell|<around*|{|rearrange|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x<big|int><rsub|\<cal-X\>>\<mathd\>y
    r<around*|(|z,y|)> \ r<around*|(|y,x|)> p<around*|(|x,t|)>.>>>>
  </align>

  Following the same steps, it can be generalized to higher order
  derivatives, as

  <\equation*>
    <frac|\<partial\><rsup|n+1>p|\<partial\>t<rsup|n+1>><around*|(|z,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|1>\<cdots\><big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|n>
    r<around*|(|z,y<rsub|n>|)> r<around*|(|y<rsub|n>,y<rsub|n-1>|)>\<cdots\>r<around*|(|y<rsub|1>,x|)>
    p<around*|(|x,t|)>.
  </equation*>

  Notice the pattern: a sequence of <math|r> and a rightmost
  <math|p<around*|(|x,t|)>>, the same as the right hand side of equation
  (<reference|equation:discrete time master equation v2>). The reason for
  this pattern to arise is that <math|q<rsub|\<Delta\>t>>, thus <math|r>, is
  independent of <math|t>: a Markovian property.

  Also, Taylor expand the both sides of equation
  (<reference|equation:discrete time master equation v2>) by
  <math|\<Delta\>t> gives, at <math|<around*|(|\<Delta\>t|)><rsup|n+1>>
  order,

  <\equation*>
    <frac|\<partial\><rsup|n+1>p|\<partial\>t<rsup|n+1>><around*|(|z,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    lim<rsub|\<Delta\>t\<rightarrow\>0><frac|\<partial\><rsup|n+1>q<rsub|\<Delta\>t>|\<partial\><around*|(|\<Delta\>t|)><rsup|n+1>><around*|(|z\|x|)>p<around*|(|x,t|)>.
  </equation*>

  So,<math|> we arrive at

  <\equation*>
    <big|int><rsub|\<cal-X\>>\<mathd\>x<around*|[|
    lim<rsub|\<Delta\>t\<rightarrow\>0><frac|\<partial\><rsup|n+1>q<rsub|\<Delta\>t>|\<partial\><around*|(|\<Delta\>t|)><rsup|n+1>><around*|(|z\|x|)>-<big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|1>\<cdots\><big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|n>
    r<around*|(|z,y<rsub|n>|)> r<around*|(|y<rsub|n>,y<rsub|n-1>|)>\<cdots\>r<around*|(|y<rsub|1>,x|)>|]>p<around*|(|x,t|)>=0,
  </equation*>

  which holds for all <math|p<around*|(|x,t|)>>, thus

  <\equation*>
    lim<rsub|\<Delta\>t\<rightarrow\>0><frac|\<partial\><rsup|n+1>q<rsub|\<Delta\>t>|\<partial\><around*|(|\<Delta\>t|)><rsup|n+1>><around*|(|z\|x|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|1>\<cdots\><big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|n>
    r<around*|(|z,y<rsub|n>|)> r<around*|(|y<rsub|n>,y<rsub|n-1>|)>\<cdots\>r<around*|(|y<rsub|1>,x|)>,
  </equation*>

  or say<\footnote>
    Another derivation uses exponential mapping. By regarding <math|p> a
    time-dependent element in functional space, and <math|r> as a linear
    operator, it becomes (we add a hat for indicating operator, using dot
    <math|\<cdummy\>> for its operation)

    <\equation*>
      <frac|\<mathd\>p|\<mathd\>t><around*|(|t|)>=<wide|r|^>\<cdummy\>p<around*|(|t|)>.
    </equation*>

    This operator differential equation has a famous solution, called
    exponential mapping, <math|p<around*|(|t|)>=exp<around*|(|<wide|r|^> t|)>
    p<around*|(|0|)>>, where the exponential operator is defined by Taylor
    expansion <math|exp<around*|(|<wide|L|^>|)>\<assign\><wide|1|^>+<wide|L|^>+<around*|(|1/2!|)>
    <wide|L|^><rsup|2>+\<cdots\>> for any linear operator <math|<wide|L|^>>.
    Indeed, by taking derivative on <math|t> on both sides, we find
    <math|<around*|(|\<mathd\>p/\<mathd\>t|)><around*|(|t|)>=<wide|r|^>\<cdot\>exp<around*|(|<wide|r|^>
    t|)> p<around*|(|0|)>=<wide|r|^>\<cdot\>p<around*|(|t|)>>. Recall the
    discrete time master equation, <math|p<around*|(|\<Delta\>t|)>=<wide|q|^><rsub|\<Delta\>t>\<cdot\>p<around*|(|0|)>>,
    where the transition density <math|<wide|q|^><rsub|\<Delta\>t>> is
    regarded as a linear operator too (so we put a hat on it). We find
    <math|exp<around*|(|<wide|r|^> \<Delta\>t|)>\<cdot\>p<around*|(|0|)>=<wide|q|^><rsub|\<Delta\>t>\<cdot\>p<around*|(|0|)>>,
    which holds for arbitrary <math|p<around*|(|0|)>>, implying
    <math|<wide|q|^><rsub|\<Delta\>t>=exp<around*|(|<wide|r|^>
    \<Delta\>t|)>=1+<wide|r|^> \<Delta\>t+<around*|(|1/2!|)>
    <around*|(|<wide|r|^>\<cdot\><wide|r|^>|)>
    <around*|(|\<Delta\>t|)><rsup|2>+\<cdots\>>. Going back to functional
    representation, we have the correspondences
    <math|<wide|q|^><rsub|\<Delta\>t>\<rightarrow\>q<rsub|\<Delta\>t><around*|(|z\|x|)>>,
    <math|<wide|r|^>\<rightarrow\>r<around*|(|z,x|)>>,
    <math|<wide|r|^>\<cdot\><wide|r|^>\<rightarrow\><big|int>\<mathd\>y
    r<around*|(|z,y|)> r<around*|(|y,x|)>>,
    <math|<wide|r|^>\<cdot\><wide|r|^>\<cdot\><wide|r|^>\<rightarrow\><big|int>\<mathd\>y<rsub|1>
    \<mathd\>y<rsub|2> r<around*|(|z,y<rsub|2>|)>
    r<around*|(|y<rsub|2>,y<rsub|1>|)> r<around*|(|y<rsub|1>,x|)>>, and so
    on, thus recover the relation between <math|q<rsub|\<Delta\>t>> and
    <math|r>.
  </footnote>

  <\align>
    <tformat|<table|<row|<cell|q<rsub|\<Delta\>t><around*|(|z\|x|)>=>|<cell|\<delta\><around*|(|z-x|)>>>|<row|<cell|+>|<cell|<around*|(|\<Delta\>t|)>
    r<around*|(|z,x|)>>>|<row|<cell|+>|<cell|<frac|<around*|(|\<Delta\>t|)><rsup|2>|2!>
    <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|z,y|)>
    r<around*|(|y,x|)>>>|<row|<cell|+>|<cell|\<cdots\>>>|<row|<cell|+>|<cell|<frac|<around*|(|\<Delta\>t|)><rsup|n+1>|<around*|(|n+1|)>!><big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|1>\<cdots\><big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|n>
    r<around*|(|z,y<rsub|n>|)> r<around*|(|y<rsub|n>,y<rsub|n-1>|)>\<cdots\>r<around*|(|y<rsub|1>,x|)>>>|<row|<cell|+>|<cell|\<cdots\>.>>>>
  </align>

  Well, this is a complicated formula, but its implication is straight
  forward and very impressive: <em|the transition density is equivalent to
  transition rate, even though transition rate is derived from infinitesimal
  time-interval transition density.>

  <subsection|Detailed Balance Provides Stationary
  Distribution><label|section: Detailed Balance Provides Stationary
  Distribution>

  Let <math|\<Pi\>> a stationary solution of master equation
  <reference|equation:Master Equation>. Then, its density function
  <math|\<pi\>> satisfies <math|<big|int><rsub|\<cal-X\>>\<mathd\>y
  <around*|[|r<around*|(|x,y|)> \<pi\><around*|(|y|)>-r<around*|(|y,x|)>\<pi\><around*|(|x|)>|]>=0>.
  But, this condition is too weak to be used. A more useful condition, which
  is stronger than this, is that the integrand vanishes everywhere:

  <\equation>
    r<around*|(|x,y|)> \<pi\><around*|(|y|)>=r<around*|(|y,x|)>\<pi\><around*|(|x|)>,<label|equation:Detailed
    Balance>
  </equation>

  which is called the <with|font-series|bold|detailed balance> condition.

  <subsection|Detailed Balance and Connectivity Monotonically Reduce Relative
  Entropy><label|section: Detailed Balance with Connectivity Monotonically
  Reduces Relative Entropy>

  Given the time <math|t>, if the time-dependent distribution
  <math|P<around*|(|t|)>> and the stationary distribution <math|\<Pi\>> share
  the same alphabet <math|\<cal-X\>>, which means
  <math|p<around*|(|x,t|)>\<gtr\>0> and <math|\<pi\><around*|(|x|)>\<gtr\>0>
  for each <math|x\<in\>\<cal-X\>>, we have defined the relative entropy
  between them, as

  <\equation>
    H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)> ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.
  </equation>

  It describes the uncertainty (surprise) caused by <math|P<around*|(|t|)>>
  when prior knowledge is given by <math|\<Pi\>>. It is a plausible
  generalization of Shannon entropy to continuous random variables.

  We can calculate the time-derivative of relative entropy by master equation
  <reference|equation:Master Equation>. Generally, the time-derivative of
  relative entropy has no interesting property. But, if the <math|\<pi\>> is
  more than stationary but satisfying a stronger condition: detailed balance,
  then <math|\<mathd\>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>/\<mathd\>t> will
  have a regular form<\footnote>
    The proof is given as follow. Directly, we have

    <\align>
      <tformat|<table|<row|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=>|<cell|<frac|\<mathd\>|\<mathd\>t><big|int><rsub|\<cal-X\>>\<mathd\>x
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
      <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
      <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>
      ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.
    </equation*>

    Now, we replace <math|\<partial\>p/\<partial\>t> by master equation
    <reference|equation:Master Equation>, as

    <\equation*>
      <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y <around*|[|r<around*|(|x,y|)>
      p<around*|(|y,t|)>-r<around*|(|y,x|)> p<around*|(|x,t|)>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>,
    </equation*>

    Then, insert detailed balance <math|r<around*|(|x,y|)>=r<around*|(|y,x|)>
    \<pi\><around*|(|x|)>/\<pi\><around*|(|y|)>>, as

    <\align>
      <tformat|<table|<row|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y <around*|[|r<around*|(|y,x|)>
      \<pi\><around*|(|x|)> <frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-r<around*|(|y,x|)>p<around*|(|x,t|)>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.>>>>
    </align>

    Since <math|x> and <math|y> are dummy, we interchange them in the
    integrand, and then insert detailed balance again, as

    <\align>
      <tformat|<table|<row|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|x,y|)>
      \<pi\><around*|(|y|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>
      \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>>>|<row|<cell|<around*|{|detailed
      balance|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>
      \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>.>>>>
    </align>

    By adding the two previous results together, we find

    <\align>
      <tformat|<table|<row|<cell|>|<cell|2
      <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>>>|<row|<cell|<around*|[|1st
      result|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>|<row|<cell|<around*|[|2nd
      result|]>+>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>
      \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>>>|<row|<cell|=>|<cell|-<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
      \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]><around*|[|
      ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>,>>>>
    </align>

    from which we directly get the result. Notice that this proof is very
    tricky: it uses detailed balance twice, between which the expression is
    symmetrized. It is an ingenious mathematical engineering.
  </footnote>

  <\equation>
    <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=-<frac|1|2><big|int><rsub|\<cal-X\>>\<mathd\>x
    <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
    \<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]><around*|[|
    ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>.<label|equation:relative
    entropy derivative>
  </equation>

  \;

  We are to check the sign of the integrand. The <math|r<around*|(|y,x|)>> is
  negative only when <math|x=y>, on which the integrand vanishes. Thus,
  <math|r<around*|(|y,x|)>> can be treated as non-negative, so is the
  <math|r<around*|(|y,x|)> \<pi\><around*|(|x|)>> (since
  <math|\<pi\><around*|(|x|)>\<gtr\>0> for all <math|x\<in\>\<cal-X\>>). Now,
  we check the sign of the last two terms. If
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>\<gtr\>p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>,
  then <math|ln<around*|[|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>|]>\<gtr\>ln<around*|[|p<around*|(|y,t|)>/\<pi\><around*|(|y|)>|]>>,
  thus the sign of the last two terms is positive. The same goes for
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>\<less\>p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>.
  Only when <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>
  can it be zero. Altogether, the integrand is non-positive, thus
  <math|\<mathd\>H/\<mathd\>t\<leqslant\>0>.

  The integrand vanishes when either <math|r<around*|(|y,x|)>=0> or
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>.
  If <math|r<around*|(|y,x|)>\<gtr\>0> for each <math|x\<neq\>y>, then
  <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=0> only when
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>
  for all <math|x,y\<in\>\<cal-X\>>, which implies that
  <math|p<around*|(|\<cdummy\>,t|)>=\<pi\>> (since
  <math|><math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
  \<pi\><around*|(|x|)>=1>), or <math|P<around*|(|t|)>=\<Pi\>>.

  Contrarily, if <math|r<around*|(|y,x|)>=0> on some subset
  <math|U\<subset\>\<cal-X\>\<times\>\<cal-X\>>, it seems that
  <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=0> cannot imply
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>
  on <math|U>. But, if there is a <math|z\<in\>\<cal-X\>> such that both
  <math|<around*|(|x,z|)>> and <math|<around*|(|y,z|)>> are not in <math|U>,
  then <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=0> implies
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|z,t|)>/\<pi\><around*|(|z|)>>
  and <math|p<around*|(|y,t|)>/\<pi\><around*|(|y|)>=\<pi\><around*|(|z,t|)>/\<pi\><around*|(|z|)>>,
  thus implies <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>.
  It hints for connectivity. Precisely, for each <math|x,z\<in\>\<cal-X\>>,
  if there is a series <math|<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>>
  from <math|x> (<math|y<rsub|1>\<assign\>x>) to <math|z>
  (<math|y<rsub|n>\<assign\>z>) with both
  <math|r<around*|(|y<rsub|i+1>,y<rsub|i>|)>> and
  <math|r<around*|(|y<rsub|i>,y<rsub|i+1>|)>> are positive for each <math|i>,
  then we say <math|x> and <math|z> are <with|font-series|bold|connected>,
  and the series is called a <with|font-series|bold|path>. It means <em|there
  are densities transiting along the forward and backward directions of the
  path>. In this situation, <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=0> implies
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|z,t|)>/\<pi\><around*|(|z|)>>.<\footnote>
    We have, along the path, <math|p<around*|(|y<rsub|1>,t|)>/\<pi\><around*|(|y<rsub|1>|)>=p<around*|(|y<rsub|2>,t|)>/\<pi\><around*|(|y<rsub|2>|)>=\<cdots\>=p<around*|(|y<rsub|n>,t|)>/\<pi\><around*|(|y<rsub|n>|)>>,
    thus <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|z,t|)>/\<pi\><around*|(|z|)>>
    since <math|x=y<rsub|1>> and <math|z=y<rsub|n>>.
  </footnote> So, by repeating the previous discussion on the case
  \P<math|r<around*|(|y,x|)>\<gtr\>0> for each <math|x\<neq\>y>\Q, we find
  <math|P<around*|(|t|)>=\<Pi\>> at <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=0> if every two elements in
  <math|\<cal-X\>> are connected.

  Let us examine the connectivity further. We additionally
  <with|font-shape|italic|define> that every element in <math|\<cal-X\>> is
  connected to itself, then connectivity forms an equivalence relation. So,
  it separates <math|\<cal-X\>> into subsets (equivalence classes)
  <math|\<cal-X\><rsub|1>,\<ldots\>,\<cal-X\><rsub|n>> with
  <math|\<cal-X\><rsub|i>\<cap\>\<cal-X\><rsub|j>=\<varnothing\>> for each
  <math|i\<neq\>j> and <math|\<cal-X\>=\<cup\><rsub|i=1><rsup|n>\<cal-X\><rsub|i>>.
  In each subset <math|\<cal-X\><rsub|i>>, every two elements are connected.
  In this way, the whole random system are separated into many independent
  subsystems. The distributions <math|P<rsub|i><around*|(|t|)>> and
  <math|\<Pi\><rsub|i>> defined in the subsystem <math|i> have the alphabet
  <math|\<cal-X\><rsub|i>> and densities functions
  <math|p<rsub|i><around*|(|x,t|)>\<assign\>p<around*|(|x,t|)>/<big|int><rsub|\<cal-X\><rsub|i>>\<mathd\>x
  p<around*|(|x,t|)>> and <math|\<pi\><rsub|i><around*|(|x|)>\<assign\>\<pi\><around*|(|x|)>/<big|int><rsub|\<cal-X\><rsub|i>>\<mathd\>x
  \<pi\><around*|(|x|)>> respectively (the denominators are used for
  normalization). Applying the previous discussion to this subsystem, we find
  <math|P<rsub|i><around*|(|t|)>=\<Pi\><rsub|i>> at
  <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<rsub|i><around*|(|t|)>,\<Pi\><rsub|i>|)>=0>.

  So, for the whole random system or each of its subsystems, the following
  theorem holds.

  <\theorem>
    <label|theorem:relax>Let <math|\<Pi\>> a distribution with alphabet
    <math|\<cal-X\>>. If there is a transition rate r such that 1) every two
    elements in <math|\<cal-X\>> are connected and that 2) the detailed
    balance <reference|equation:Detailed Balance> holds for <math|\<Pi\>> and
    <math|r>, then for any time-dependent distribution
    <math|P<around*|(|t|)>> with the same alphabet (at one time) evolved by
    the master equation <reference|equation:Master Equation>,
    <math|P<around*|(|t|)>> will monotonically and constantly relax to
    <math|\<Pi\>>.
  </theorem>

  Many textures use Fokker-Planck equation to prove the monotonic reduction
  of relative entropy. With an integral by part, they arrive at a negative
  definite expression, which means the monotonic reduction. This proof needs
  smooth structure on <math|X>, which is essential for integral by part. In
  this section, we provides a more generic alternative to the proof, for
  which smooth structure on <math|X> is unnecessary. It employs detailed
  condition instead of Fokker-Planck equation, which is a specific case of
  detailed balance (section <reference|section: Conservative Langevin
  Dynamics Satisfies Detailed Balance>).

  <subsection|Temporal Smoothness of Transition Density Is Necessary to
  Ensure Relaxation>

  The temporal smooth structure, however, cannot be avoided. Indeed, the
  smoothness of transition density on time and thus the smoothness of
  <math|p<around*|(|x,t|)>> on <math|t> is essential for the monotonic
  reduction of relative entropy, which is the essential end of our
  discussion.<\footnote>
    You may wonder if the temporal smoothness implies the continuum of
    alphabet. Explicitly, if <math|p<around*|(|x,t|)>> is smooth on <math|t>,
    then does the value of <math|x> have to be continuous? The answer is no.
    For example, consider an alphabet <math|\<cal-X\>=<around*|{|0,1|}>>; the
    <math|p<around*|(|1,t|)>> is given by
    <math|\<sigma\><around*|(|\<zeta\><around*|(|t|)>|)>> where
    <math|\<sigma\>> denotes the sigmoid function and
    <math|\<zeta\><around*|(|t|)>> is smooth on <math|t>, thus
    <math|p<around*|(|0,t|)>=1-\<sigma\><around*|(|\<zeta\><around*|(|t|)>|)>>.
    In this example, <math|p<around*|(|x,t|)>> is smooth on <math|t> but the
    random variable is discrete.
  </footnote>

  To see this clearly, let us examine <math|H<around*|(|P<around*|(|t+\<Delta\>t|)>,\<Pi\>|)>-H<around*|(|P<around*|(|t|)>,\<Pi\>|)>>
  when <math|\<Delta\>t> is not an infinitesimal. By definition,

  <\equation*>
    H<around*|(|P<around*|(|t+\<Delta\>t|)>,\<Pi\>|)>-H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t+\<Delta\>t|)> ln<frac|p<around*|(|x,t+\<Delta\>t|)>|\<pi\><around*|(|x|)>>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)> ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.
  </equation*>

  Inserting <math|<with|color|dark cyan|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,t+\<Delta\>t|)> ln<around*|(|p<around*|(|x,t|)>/\<pi\><around*|(|x,t|)>|)>>>
  gives

  <\align>
    <tformat|<table|<row|<cell|>|<cell|H<around*|(|P<around*|(|t+\<Delta\>t|)>,\<Pi\>|)>-H<around*|(|P<around*|(|t|)>,\<Pi\>|)>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
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

  The first line is recognized as <math|H<around*|(|P<around*|(|t+\<Delta\>t|)>,P<around*|(|t|)>|)>>,
  which is non-negative. Following the same steps in section
  <reference|section: Detailed Balance with Ergodicity Monotonically Reduces
  Relative Entropy> (but using discrete time master equation
  <reference|equation:Discrete Time Master Equation> instead), the second
  line reduces to

  <\equation*>
    -<frac|1|2><big|int><rsub|\<cal-X\>>\<mathd\>x<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|y\|x|)>\<pi\><around*|(|x|)><around*|[|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]><around*|[|
    ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|]>,
  </equation*>

  which is non-positive. The sign of the final result can be arbitrary.
  Indeed, the first line is determined by the difference between
  <math|p<around*|(|\<cdummy\>,t+\<Delta\>t|)>> and
  <math|p<around*|(|\<cdummy\>,t|)>>, while the second line is determined by
  the difference between <math|p<around*|(|\<cdummy\>,t|)>> and
  <math|\<pi\>>. They are intrinsically different, thus mutually independent.
  So, we conclude that the smoothness of <math|q<rsub|\<Delta\>t>> on
  <math|\<Delta\>t> is essential for the guarantee of the monotonic reduce of
  relative entropy between <math|p<around*|(|\<cdummy\>,t|)>> and
  <math|\<pi\>>, thus its relaxation.

  <subsection|Existence of Stationary Density Function>

  Given a transition rate, we wonder if there exists a density function such
  that detailed balance <reference|equation:Detailed Balance> holds.
  Actually, the equation <reference|equation:Detailed Balance> <em|defines> a
  density function. For example, if both <math|r<around*|(|x,y|)>> and
  <math|r<around*|(|y,x|)>> are not zero, we can construct
  <math|\<pi\><around*|(|y|)>> by given <math|\<pi\><around*|(|x|)>> as
  <math|\<pi\><around*|(|y|)>=\<pi\><around*|(|x|)>
  r<around*|(|y,x|)>/r<around*|(|x,y|)>>. Generally, if <math|x> and <math|y>
  are connected, then there is a path <math|P\<assign\><around*|(|p<rsub|0>,\<ldots\>,p<rsub|n>|)>>
  from <math|x> to <math|y> with <math|p<rsub|0>=x> and <math|p<rsub|n>=y>
  (path and connectivity are defined in section <reference|section: Detailed
  Balance with Connectivity Monotonically Reduces Relative Entropy>), and
  define

  <\align>
    <tformat|<table|<row|<cell|\<pi\><around*|(|p<rsub|1>|)>\<assign\>>|<cell|\<pi\><around*|(|p<rsub|0>|)>
    r<around*|(|p<rsub|1>,p<rsub|0>|)>/r<around*|(|p<rsub|0>,p<rsub|1>|)>>>|<row|<cell|\<pi\><around*|(|p<rsub|2>|)>\<assign\>>|<cell|\<pi\><around*|(|p<rsub|1>|)>
    r<around*|(|p<rsub|2>,p<rsub|1>|)>/r<around*|(|p<rsub|1>,p<rsub|2>|)>>>|<row|<cell|\<ldots\>>|<cell|>>|<row|<cell|\<pi\><around*|(|p<rsub|n>|)>\<assign\>>|<cell|\<pi\><around*|(|p<rsub|n-1>|)>
    r<around*|(|p<rsub|n>,p<rsub|n-1>|)>/r<around*|(|p<rsub|n-1>,p<rsub|n>|)>.>>>>
  </align>

  Thus, <math|\<pi\><around*|(|y|)>> (the
  <math|\<pi\><around*|(|p<rsub|n>|)>>) is constructed out of
  <math|\<pi\><around*|(|x|)>> (the <math|\<pi\><around*|(|p<rsub|0>|)>>).
  Let <math|\<rho\><around*|(|x,y|)>\<assign\>ln r<around*|(|x,y|)>-ln
  r<around*|(|y,x|)>>, it becomes

  <\equation*>
    ln \<pi\><around*|(|y|)>=ln \<pi\><around*|(|x|)>+<big|sum><rsub|i=0><rsup|n-1>\<rho\><around*|(|p<rsub|i+1>,p<rsub|i>|)>,
  </equation*>

  or in continuous format,

  <\equation>
    ln \<pi\><around*|(|y|)>=ln \<pi\><around*|(|x|)>+<big|int><rsub|P>\<mathd\>s
    \<rho\><around*|(|s|)>,<label|equation:define stationary density
    function>
  </equation>

  where <math|\<rho\><around*|(|s|)>> is short for
  <math|\<rho\><around*|(|p<rsub|s+1>,p<rsub|s>|)>> along the path <math|P>.
  In this way, given <math|x<rsub|0>\<in\>\<cal-X\>>, we define any
  <math|x\<in\>\<cal-X\>> that is connected to <math|x<rsub|0>> by <math|ln
  \<pi\><around*|(|x|)>\<assign\>ln \<pi\><around*|(|x<rsub|0>|)>+<big|int><rsub|P>\<mathd\>s
  \<rho\><around*|(|s|)>>. And <math|\<pi\><around*|(|x<rsub|0>|)>> is
  determined by the normalization of <math|\<pi\>>.

  But, there can be multiple paths from <math|x> to <math|y> which are
  connected in <math|\<cal-X\>>. For example, consider two paths <math|P> and
  <math|P<rprime|'>>, then we have <math|<big|int><rsub|P>\<mathd\>s
  \<rho\><around*|(|s|)>=<big|int><rsub|P<rprime|'>>\<mathd\>s
  \<rho\><around*|(|s|)>>. Generally, if <math|C> is a <strong|circle> which
  is a path starting at an element <math|x\<in\>\<cal-X\>> and finally end at
  <math|x> (but not simply standing at <math|x>), then

  <\equation>
    <big|oint><rsub|C>\<mathd\>s \<rho\><around*|(|s|)>=0.<label|equation:circle>
  </equation>

  It means every path along two connected elements in <math|\<cal-X\>> is
  equivalent. If the condition <reference|equation:circle> holds, we can
  simplify the notation in equation <reference|equation:define stationary
  density function> by

  <\equation*>
    ln \<pi\><around*|(|y|)>=ln \<pi\><around*|(|x|)>+<big|int><rsub|x><rsup|y>\<mathd\>s
    \<rho\><around*|(|s|)>,
  </equation*>

  where <math|<big|int><rsub|x><rsup|y>> indicates any path from <math|x> to
  <math|y> (if <math|x> and <math|y> are connected).

  Condition <reference|equation:circle> implies that the previous
  construction does define a <math|\<pi\>> that holds the detailed balance.
  Given <math|x,y\<in\>\<cal-X\>>, we have <math|ln \<pi\><around*|(|x|)>=ln
  \<pi\><around*|(|x<rsub|0>|)>+<big|int><rsub|x<rsub|0>><rsup|x>\<mathd\>s
  \<rho\><around*|(|s|)>> and <math|ln \<pi\><around*|(|y|)>=ln
  \<pi\><around*|(|x<rsub|0>|)>+<big|int><rsub|x<rsub|0>><rsup|y>\<mathd\>s
  \<rho\><around*|(|s|)>>. If <math|x> and <math|y> are connected, then, by
  condition <reference|equation:circle>,<math|>
  <math|\<rho\><around*|(|y,x|)>=<big|int><rsub|x><rsup|x<rsub|0>>\<mathd\>s
  \<rho\><around*|(|s|)>+<big|int><rsub|x<rsub|0>><rsup|y>\<mathd\>s
  \<rho\><around*|(|s|)>> (the <math|\<rho\><around*|(|y,x|)>> indicates the
  path <math|<around*|(|x,y|)>>, \Pjumping\Q directly from <math|x> to
  <math|y>), thus <math|ln \<pi\><around*|(|y|)>=ln
  \<pi\><around*|(|x|)>+\<rho\><around*|(|y,x|)>>, which is just the detailed
  balance <reference|equation:Detailed Balance>. And if <math|x> and <math|y>
  are not connected, then both <math|r<around*|(|x,y|)>> and
  <math|r<around*|(|y,x|)>> shall vanish (recall the requirements of
  transition rate in section <reference|section: Master Equation Describes
  the Evolution of Markov Chain>: if <math|r<around*|(|x,y|)>=0>, then
  <math|r<around*|(|y,x|)>=0>), and detailed balance holds naturally.

  So, condition <reference|equation:circle> is <em|essential and sufficient
  for the existence of <math|\<pi\>> that holds the detailed balance>
  <reference|equation:Detailed Balance>. If <math|\<cal-X\>> is a simply
  connected smooth manifold, then using Stokes's theorem, we have
  <math|\<nabla\>\<times\>\<rho\>=0> on <math|\<cal-X\>>. But, generally
  <math|\<cal-X\>> is neither simply connected nor smooth, but involving
  independent subsystems and discrete. In these cases, condition
  <reference|equation:circle> becomes very complicated.

  In many applications, we consider the inverse question: given a density
  function, if there exists a transition rate such that detailed balance
  holds. This inverse problem is much easier, and a proper transition rate
  can be constructed out of the density function (such as in
  Metropolis-Hastings algorithm).

  <subsection|Example: Metropolis-Hastings Algorithm>

  Metropolis-Hastings algorithm is a simple method that constructs transition
  density or transition rate for any given stationary distribution such that
  detailed balance (<reference|equation:Detailed Balance>) holds. Explicitly,
  given a stationary distribution <math|\<Pi\>>, and an auxiliary transition
  density <math|g<rsub|\<Delta\>t><around*|(|y\|x|)>> for each <math|x> and
  <math|y> in alphabet <math|\<cal-X\>> ensuring that
  <math|g<rsub|\<Delta\>t><around*|(|y\|x|)>\<gtr\>0>, the transition density
  <math|q<rsub|\<Delta\>t><around*|(|y\|x|)>> is given by

  <\equation>
    q<rsub|\<Delta\>t><around*|(|y\|x|)>\<assign\>min<around*|(|1,<frac|g<rsub|\<Delta\>t><around*|(|x\|y|)>
    \<pi\><around*|(|y|)>|g<rsub|\<Delta\>t><around*|(|y\|x|)>
    \<pi\><around*|(|x|)>>|)> g<rsub|\<Delta\>t><around*|(|y\|x|)>.<label|equation:Metropolis-Hastings>
  </equation>

  This definition has an intuitive explanation. The algorithm first propose a
  transition from <math|x> to <math|y> based on
  <math|g<rsub|\<Delta\>t><around*|(|y\|x|)>>, this proposal will be accepted
  by ratio given by the first factor in the right hand side. If accepted,
  then transit to <math|y>, otherwise stay on <math|x>.

  To obtain the transition rate, we expand <math|g<rsub|\<Delta\>t>> at
  <math|\<Delta\>t\<rightarrow\>0>, as <math|g<rsub|\<Delta\>t><around*|(|y\|x|)>=\<delta\><around*|(|x-y|)>+\<gamma\><around*|(|y,x|)>
  \<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>>. Since
  <math|g<rsub|\<Delta\>t><around*|(|y\|x|)>\<gtr\>0>, we have
  <math|\<gamma\><around*|(|y,x|)>\<gtr\>0> for each <math|x\<neq\>y>. Thus,
  in the area <math|x\<neq\>y> where <math|\<delta\><around*|(|x-y|)>>
  vanishes, we have

  <\equation*>
    q<rsub|\<Delta\>t><around*|(|y\|x|)>=min<around*|(|1,<frac|\<gamma\><around*|(|x,y|)>
    \<pi\><around*|(|y|)>+\<omicron\><around*|(|1|)>|\<gamma\><around*|(|y,x|)>
    \<pi\><around*|(|x|)>+\<omicron\><around*|(|1|)>>|)>
    \<gamma\><around*|(|y,x|)> \<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  And <math|q<rsub|\<Delta\>t><around*|(|x\|x|)>=g<rsub|\<Delta\>t><around*|(|x\|x|)>=\<delta\><around*|(|0|)>+\<gamma\><around*|(|x,x|)>
  \<Delta\>t>. Putting these together, in the limit
  <math|\<Delta\>t\<rightarrow\>0>, we get the transition rate of
  <math|q<rsub|\<Delta\>t>>, as

  <\equation*>
    r<around*|(|y,x|)>=min<around*|(|1,<frac|\<gamma\><around*|(|x,y|)>
    \<pi\><around*|(|y|)>|\<gamma\><around*|(|y,x|)>
    \<pi\><around*|(|x|)>>|)> \<gamma\><around*|(|y,x|)>,
  </equation*>

  which connects every two elements in <math|\<cal-X\>> (since
  <math|\<gamma\><around*|(|y,x|)>\<gtr\>0> for each <math|x\<neq\>y>).

  This transition rate, together with <math|\<pi\>>, satisfies the detailed
  balance condition. Directly,

  <\align>
    <tformat|<table|<row|<cell|r<around*|(|y,x|)>
    \<pi\><around*|(|x|)>=>|<cell|min<around*|(|1,<frac|\<gamma\><around*|(|x,y|)>
    \<pi\><around*|(|y|)>|\<gamma\><around*|(|y,x|)>
    \<pi\><around*|(|x|)>>|)> \<gamma\><around*|(|y,x|)>
    \<pi\><around*|(|x|)>>>|<row|<cell|=>|<cell|min<around*|(|\<gamma\><around*|(|y,x|)>
    \<pi\><around*|(|x|)>,\<gamma\><around*|(|x,y|)>
    \<pi\><around*|(|y|)>|)>>>|<row|<cell|=>|<cell|min<around*|(|<frac|\<gamma\><around*|(|y,x|)>
    \<pi\><around*|(|x|)>|\<gamma\><around*|(|x,y|)>
    \<pi\><around*|(|y|)>>,1|)> \<gamma\><around*|(|x,y|)>
    \<pi\><around*|(|y|)>>>|<row|<cell|=>|<cell|r<around*|(|x,y|)>
    \<pi\><around*|(|y|)>.>>>>
  </align>

  Thus detailed balance (<reference|equation:Detailed Balance>) holds.

  As a summary, Metropolis-Hastings algorithm defines the transition density
  <math|q<rsub|\<Delta\>t>> by equation (<reference|equation:Metropolis-Hastings>),
  together with a positive auxiliary transition density
  <math|g<rsub|\<Delta\>t>> and an accept ratio. The transition rate <math|r>
  derived from <math|q<rsub|\<Delta\>t>> satisfies detailed balance
  condition. Also <math|r> connects every two elements in the alphabet
  <math|\<cal-X\>>. So, theorem <reference|theorem:relax> states that,
  evolved by the master equation (<reference|equation:Master Equation>), any
  initial distribution will finally relax to the stationary distribution
  <math|\<Pi\>>.

  <section|Kramers-Moyal Expansion and Langevin Dynamics>

  We follow the discussion in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>, but focusing on the specific
  situation where there is extra smooth structure on <math|X>. This
  smoothness reflects on the connectivity of the alphabet <math|\<cal-X\>>,
  and on the smooth \Pspatial\Q dependence of the density functions
  <math|p<around*|(|x,t|)>> and <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>>.
  This means, the conclusions in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy> hold in this section, but the
  inverse is not guaranteed.

  <subsection|Spatial Expansion of Master Equation Gives Kramers-Moyal
  Expansion>

  Let the alphabet <math|\<cal-X\>=\<bbb-R\><rsup|n>> for some integer
  <math|n\<geqslant\>1>, which has sufficient connectivity. In addition,
  suppose that <math|p<around*|(|x,t|)>> and
  <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>> are smooth on <math|x> and
  <math|y>.

  Now, the master equation <reference|equation:Discrete Time Master Equation>
  becomes

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
    q<around*|(|x+\<epsilon\>\|x|)> p<around*|(|x,t|)>>>|<row|<cell|<around*|{|\<omega\>\<assign\>\<cdots\>|}>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x,\<epsilon\>|)> p<around*|(|x,t|)>.>>>>
  </align>

  Altogether, we have

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
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

  By denoting

  <\equation*>
    M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>,
  </equation*>

  we arrive at

  <\equation>
    p<around*|(|x,t+\<Delta\>t|)>-p<around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>
    p<around*|(|x,t|)>|]>.<label|equation:Kramers-Moyal expansion>
  </equation>

  This is called the <with|font-series|bold|Kramers\UMoyal expansion>.

  Recalling that <math|\<omega\><around*|(|x,\<epsilon\>|)>=q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>>,
  we have

  <\equation*>
    M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>
  </equation*>

  so <math|M<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>>
  is recognized as the <math|k>-order moment of <math|\<epsilon\>> sampled
  from transition density <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>>
  (regarding <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>> as a
  distribution <math|Q<rsub|\<Delta\>t><around*|(|\<epsilon\>|)>>).

  <subsection|Langevin Dynamics that Satisfies Detailed Balance Is
  Conservative><label|section: Conservative Langevin Dynamics Satisfies
  Detailed Balance>

  Given <math|\<mu\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> and
  <math|\<Sigma\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n\<times\>n>>,
  which is positive definite and symmetric, the transition density of
  <with|font-series|bold|Langevin dynamics>,
  <math|q<rsub|\<mathd\>t><around*|(|x<rprime|'>\|x|)>>, is a normal
  distribution of <math|x<rprime|'>-x> with mean value
  <math|\<mu\><around*|(|x|)> \<mathd\>t> and variance
  <math|2\<Sigma\><around*|(|x|)>\<mathd\>t>. Thus,
  <math|M<rsup|\<alpha\>><around*|(|x|)>=\<mu\><rsup|\<alpha\>><around*|(|x|)>
  \<mathd\>t>, <math|M<rsup|\<alpha\>\<beta\>><around*|(|x|)>=2\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
  \<mathd\>t>, and higher orders are of <math|o<around*|(|\<mathd\>t|)>>. The
  Kramers-Moyal expansion gives

  <\equation>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=-\<nabla\><rsub|\<alpha\>><around*|(|\<mu\><rsup|\<alpha\>><around*|(|x|)>
    p<around*|(|x,t|)>|)>+\<nabla\><rsub|\<alpha\>>\<nabla\><rsub|\<beta\>><around*|(|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    p<around*|(|x,t|)>|)>,
  </equation>

  which is the <with|font-series|bold|Fokker-Planck equation>.

  As a special case of master equation, we may wonder when Fokker-Planck
  equation will satisfy detailed balance? Directly from the form of
  transition density, we find that if there is a stationary distribution
  <math|\<Pi\>> such that Fokker-Planck equation satisfies detailed balance,
  then we must have <\footnote>
    <\small>
      Suppose there is a stationary distribution <math|\<pi\>> such that
      <math|q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>
      \<pi\><around*|(|x|)>=q<rsub|\<mathd\>t><around*|(|x\|x+\<epsilon\>|)>\<pi\><around*|(|x+\<epsilon\>|)>>.
      Since <math|q<rsub|\<mathd\>t><around*|(|x+\<epsilon\>\|x|)>> obeys
      normal distribution <math|\<cal-N\><around*|(|\<mu\><around*|(|x|)>\<mathd\>t,2\<Sigma\><around*|(|x|)>\<mathd\>t|)>>
      on <math|\<epsilon\>>, the the relation comes to be

      <\align>
        <tformat|<table|<row|<cell|>|<cell|<frac|1|<sqrt|<around*|(|4\<pi\>|)><rsup|n>
        det<around*|[|\<Sigma\><around*|(|x|)>|]>>>exp<around*|(|-<frac|1|4\<mathd\>t><around*|(|\<epsilon\>-\<mu\><around*|(|x|)>\<mathd\>t|)>\<cdummy\>\<Sigma\><rsup|-1><around*|(|x|)>\<cdot\><around*|(|\<epsilon\>-\<mu\><around*|(|x|)>\<mathd\>t|)>|)>\<pi\><around*|(|x|)>>>|<row|<cell|=>|<cell|<frac|1|<sqrt|<around*|(|4\<pi\>|)><rsup|n>
        det<around*|[|\<Sigma\><around*|(|x+\<epsilon\>|)>|]>>>exp<around*|(|-<frac|1|4\<mathd\>t><around*|(|-\<epsilon\>-\<mu\><around*|(|x+\<epsilon\>|)>\<mathd\>t|)>\<cdummy\>\<Sigma\><rsup|-1><around*|(|x+\<epsilon\>|)>\<cdot\><around*|(|-\<epsilon\>-\<mu\><around*|(|x+\<epsilon\>|)>\<mathd\>t|)>|)>\<pi\><around*|(|x+\<epsilon\>|)>.>>>>
      </align>

      Notice that

      <\align>
        <tformat|<table|<row|<cell|ln det<around*|[|\<Sigma\><around*|(|x+\<epsilon\>|)>|]>=>|<cell|ln
        det<around*|[|\<Sigma\><around*|(|x|)>+<around*|(|\<epsilon\>\<cdummy\>\<nabla\>|)>\<Sigma\><around*|(|x|)>|]>>>|<row|<cell|=>|<cell|ln
        det<around*|[|\<Sigma\><around*|(|x|)>|]>+ln
        det<around*|[|1+<around*|(|\<epsilon\>\<cdummy\>\<nabla\>|)><around*|(|\<Sigma\><rsup|-1><around*|(|x|)>\<cdummy\>\<Sigma\><around*|(|x|)>|)>|]>>>|<row|<cell|=>|<cell|ln
        det<around*|[|\<Sigma\><around*|(|x|)>|]>+ln<around*|{|1+tr<around*|[|<around*|(|\<epsilon\>\<cdummy\>\<nabla\>|)><around*|(|\<Sigma\><rsup|-1><around*|(|x|)>\<cdummy\>\<Sigma\><around*|(|x|)>|)>|]>|}>>>|<row|<cell|=>|<cell|n
        det<around*|[|\<Sigma\><around*|(|x|)>|]>+
        tr<around*|[|<around*|(|\<epsilon\>\<cdummy\>\<nabla\>|)><around*|(|\<Sigma\><rsup|-1><around*|(|x|)>\<cdummy\>\<Sigma\><around*|(|x|)>|)>|]>>>|<row|<cell|=>|<cell|ln
        det<around*|[|\<Sigma\><around*|(|x|)>|]>+\<epsilon\>\<cdummy\>\<nabla\>tr
        ln \<Sigma\>.>>>>
      </align>

      The typical order of <math|\<epsilon\>> is
      <math|<with|font|cal|O><around*|(|<sqrt|\<Sigma\><around*|(|x|)>
      \<mathd\>t>|)>>, or say, <math|\<mu\><around*|(|x|)>\<mathd\>t=<with|font|cal|O><around*|(|\<epsilon\><rsup|2>
      \<mu\><around*|(|x|)>/\<Sigma\><around*|(|x|)>|)>>. If
      <math|\<mu\><around*|(|x|)>=<with|font|cal|O><around*|(|\<Sigma\><around*|(|x|)>|)>>,
      then we have <math|\<mu\><around*|(|x|)>
      \<mathd\>t=<with|font|cal|><around*|(|\<epsilon\><rsup|2>|)>>. So, we
      have

      <\equation*>
        -<frac|1|4\<mathd\>t><around*|(|-\<epsilon\>-\<mu\><around*|(|x+\<epsilon\>|)>\<mathd\>t|)>\<cdummy\>\<Sigma\><rsup|-1><around*|(|x+\<epsilon\>|)>\<cdot\><around*|(|-\<epsilon\>-\<mu\><around*|(|x+\<epsilon\>|)>\<mathd\>t|)>=-<frac|1|4\<mathd\>t><around*|(|-\<epsilon\>-\<mu\><around*|(|x|)>\<mathd\>t|)>\<cdummy\>\<Sigma\><rsup|-1><around*|(|x|)>\<cdot\><around*|(|-\<epsilon\>-\<mu\><around*|(|x|)>\<mathd\>t|)>+o<around*|(|\<epsilon\><rsup|2>|)>.
      </equation*>

      Altogether, expanding the first formula on both sides by
      <math|\<epsilon\>> to the lowest order gives

      <\equation*>
        \<mu\><around*|(|x|)>=\<Sigma\><around*|(|x|)>\<cdot\>\<nabla\><around*|[|ln\<pi\><around*|(|x|)>-<frac|1|2>
        tr ln \<Sigma\><around*|(|x|)>|]>.
      </equation*>
    </small>
  </footnote>

  <\equation>
    \<mu\><rsup|\<alpha\>><around*|(|x|)>=\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>\<nabla\><rsub|\<beta\>><around*|[|ln\<pi\><around*|(|x|)>-<frac|1|2>
    tr ln \<Sigma\><around*|(|x|)>|]>.
  </equation>

  This indicates that, to satisfy detailed balance, <math|\<mu\>> shall be
  conservative.<\footnote>
    Recall that <math|\<Sigma\>> is symmetric thus can be diagonalized, the
    <math|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>> factor can be
    then be absorbed by a re-definition of <math|x> and
    <math|\<mu\><around*|(|x|)>>, so that vector field <math|\<mu\>> is the
    gradient of a scalar function, that is, being conservative.
  </footnote>
</body>

<\initial>
  <\collection>
    <associate|font|roman>
    <associate|font-family|rm>
    <associate|math-font|roman>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2|7>>
    <associate|auto-11|<tuple|2.1|8>>
    <associate|auto-12|<tuple|2.2|9>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|3>>
    <associate|auto-6|<tuple|1.5|3>>
    <associate|auto-7|<tuple|1.6|5>>
    <associate|auto-8|<tuple|1.7|6>>
    <associate|auto-9|<tuple|1.8|7>>
    <associate|equation:Detailed Balance|<tuple|5|3>>
    <associate|equation:Discrete Time Master Equation|<tuple|1|1>>
    <associate|equation:Kramers-Moyal expansion|<tuple|11|8>>
    <associate|equation:Master Equation|<tuple|2|1>>
    <associate|equation:Metropolis-Hastings|<tuple|10|7>>
    <associate|equation:circle|<tuple|9|6>>
    <associate|equation:define stationary density function|<tuple|8|6>>
    <associate|equation:discrete time master equation v2|<tuple|3|2>>
    <associate|equation:master equation v2|<tuple|4|2>>
    <associate|equation:relative entropy derivative|<tuple|7|4>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|3>>
    <associate|footnote-3|<tuple|3|4>>
    <associate|footnote-4|<tuple|4|5>>
    <associate|footnote-5|<tuple|5|5>>
    <associate|footnote-6|<tuple|6|9>>
    <associate|footnote-7|<tuple|7|9>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|3>>
    <associate|footnr-3|<tuple|3|4>>
    <associate|footnr-4|<tuple|4|5>>
    <associate|footnr-5|<tuple|5|5>>
    <associate|footnr-6|<tuple|6|9>>
    <associate|footnr-7|<tuple|7|9>>
    <associate|section: Conservative Langevin Dynamics Satisfies Detailed
    Balance|<tuple|2.2|9>>
    <associate|section: Detailed Balance Provides Stationary
    Distribution|<tuple|1.4|3>>
    <associate|section: Detailed Balance with Connectivity Monotonically
    Reduces Relative Entropy|<tuple|1.5|3>>
    <associate|section: Master Equation Describes the Evolution of Markov
    Chain|<tuple|1.2|1>>
    <associate|section: Master Equation, Detailed Balance, and Relative
    Entropy|<tuple|1|1>>
    <associate|theorem:relax|<tuple|1|5>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Master Equation, Detailed Balance, and Relative Entropy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Master Equation Describes
      the Evolution of Markov Chain <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Transition Density Is
      Determined by Tansition Rate (TODO)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Detailed Balance Provides
      Stationary Distribution <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Detailed Balance and
      Connectivity Monotonically Reduce Relative Entropy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Temporal Smoothness of
      Transition Density Is Necessary to Ensure Relaxation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Existence of Stationary
      Density Function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Example: Metropolis-Hastings
      Algorithm <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      2<space|2spc>Kramers-Moyal Expansion and Langevin Dynamics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Spatial Expansion of Master
      Equation Gives Kramers-Moyal Expansion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Langevin Dynamics that
      Satisfies Detailed Balance Is Conservative
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>
    </associate>
  </collection>
</auxiliary>