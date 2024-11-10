<TeXmacs|2.1.4>

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
  Process><label|section: Master Equation Describes the Evolution of Markov
  Process>

  Without losing generality, consider a pile of sand on a desk. The desk has
  been fenced in so that the sands will not flow out of the desk. Imagine
  that these sands are magic, having free will to move on the desk. The
  distribution of sands changes with time. In the language of probability,
  the density of sands at position <math|x> of the desk is described by a
  time-dependent density function <math|p<around*|(|x,t|)>>, where the total
  mass of the sands on the desk is normalized to <math|1>, and the position
  on the desk characterizes the alphabet <math|\<cal-X\>>.

  Let <math|q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|y\|x|)>> denote the
  <em|portion> of density at position <math|x> that transits to position
  <math|y>, from <math|t> to <math|t<rprime|'>>. Then, the transited density
  will be <math|q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|y\|x|)>
  p<around*|(|x,t|)>>. There may be some portion of density at position
  <math|x> that does not transit during <math|t\<rightarrow\>t<rprime|'>>
  (the lazy sands). In this case we imagine the sands transit from position
  <math|x> to <math|x> (stay on <math|x>), which is
  <math|q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|x\|x|)>>. Now, every
  sand at position <math|x> has transited during
  <math|t\<rightarrow\>t<rprime|'>>, and the total portion shall be 100%,
  which means

  <\equation>
    <big|int><rsub|\<cal-X\>>\<mathd\>y q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|y\|x|)>=1.<label|equation:transition
    density normalization>
  </equation>

  As portion, <math|q<rsub|t\<rightarrow\>t<rprime|'>>> cannot be negative,
  thus <math|q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|x\|y|)>\<geqslant\>0>
  for each <math|x> and <math|y> in <math|\<cal-X\>>. We call
  <math|q<rsub|t\<rightarrow\>t<rprime|'>>> the <strong|transition density>.
  Not like the density function of distribution, transition density can be
  zero in a subset of <math|\<cal-X\>>.

  The transition makes a difference on density at position <math|x>. The
  difference is caused by the density transited from <math|x>, which is
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>y
  q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|y\|x|)> p<around*|(|x,t|)>>,
  and that transited to <math|x>, which is
  <math|><math|<big|int><rsub|\<cal-X\>>\<mathd\>y
  q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|x\|y|)>p<around*|(|y,t|)>>.
  Thus, we have

  <\equation*>
    p<around*|(|x,t<rprime|'>|)>-p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    <around*|[|q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|x\|y|)>p<around*|(|y,t|)>-
    q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|y\|x|)>p<around*|(|x,t|)>|]>.
  </equation*>

  By inserting equation (<reference|equation:transition density
  normalization>), we find

  <\equation>
    p<around*|(|x,t<rprime|'>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|t\<rightarrow\>t<rprime|'>><around*|(|x\|y|)>p<around*|(|y,t|)>,<label|equation:discrete
    time master equation v0>
  </equation>

  which is called the <strong|discrete time master equation>. When
  <math|t<rprime|'>=t>, we have <math|p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
  q<rsub|t\<rightarrow\>t><around*|(|x\|y|)>p<around*|(|y,t|)>>, indicating
  that

  <\equation*>
    q<rsub|t\<rightarrow\>t><around*|(|x\|y|)>=\<delta\><around*|(|x-y|)>.
  </equation*>

  \;

  In addition, if the movement of sand is smooth, that is, a sand cannot
  disappear at one position and then suddenly reappear at another position
  far distant away, but has to move from one position to another by
  continuous movement, then <math|q<rsub|t\<rightarrow\>t<rprime|'>>> is
  smooth on <math|t<rprime|'>>. Taking derivative on <math|t<rprime|'>> and
  then setting <math|t<rprime|'>> to <math|t>, we have

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    r<rsub|t><around*|(|x,y|)>p<around*|(|y,t|)>,<label|equation:master
    equation v0>
  </equation*>

  where <math|r<rsub|t><around*|(|x,y|)>\<assign\>lim<rsub|t<rprime|'>\<rightarrow\>t><around*|(|\<partial\>q<rsub|t\<rightarrow\>t<rprime|'>>/\<partial\>t<rprime|'>|)><around*|(|x\|y|)>>,
  called <strong|transition rate>. It is called the <strong|continuous time
  master equation>, or simply <strong|master equation>. The word \Pmaster\Q
  indicates that the transition rate has completely determined (mastered) the
  evolutionary behavior of distribution.

  Even though all these concepts are born of the pile of sand, they are
  applicable to any stochastic process where the distribution
  <math|P<around*|(|t|)>> is time-dependent (but the alphabet
  <math|\<cal-X\>> is time-invariant), no matter whether the random variable
  is discrete or continuous.

  A stochastic process is <strong|Markovian> if the transition density
  <math|q<rsub|t\<rightarrow\>t<rprime|'>>> depends only on the time interval
  <math|\<Delta\>t\<assign\>t<rprime|'>-t>, thus <math|q<rsub|\<Delta\>t>>.
  In this case, transition rate <math|r> is time-independent, so the master
  equation becomes

  <\equation>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    r<around*|(|x,y|)>p<around*|(|y,t|)>.<label|equation:master equation>
  </equation>

  <em|Since we only deal with Markovian stochastic process throughout this
  note, when referring to master equation, we mean equation
  <reference|equation:master equation>. And to discrete time master equation,
  equation <reference|equation:discrete time master equation>:>

  <\equation>
    p<around*|(|x,t+\<Delta\>t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|x,y|)>p<around*|(|y,t|)>.<label|equation:discrete
    time master equation>
  </equation>

  Before finishing this section, we discuss the demanded conditions for
  transition rate. The normalization of transition density
  <reference|equation:transition density normalization> implies that
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>x r<around*|(|x,y|)>=0>. This can
  be seen by Taylor expanding <math|q<rsub|\<Delta\>t>> by <math|\<Delta\>t>,
  as <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>=\<delta\><around*|(|x-y|)>+r<around*|(|x,y|)>
  \<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>>, where we have inserted
  <math|q<rsub|0><around*|(|x\|y|)>=\<delta\><around*|(|x-y|)>> and the
  definition of <math|r>. Also from this Taylor expansion, we see that the
  non-negativity of <math|q<rsub|\<Delta\>t>> implies
  <math|r<around*|(|x,y|)>\<geqslant\>0> when <math|x\<neq\>y>. Since
  <math|p> is a density function of distribution, and density function is
  defined to be positive (see section <reference|section: A Short Review of
  Probability>), the equation <reference|equation:discrete time master
  equation v0> must conserve this positivity. We are to show that this is
  guaranteed by the master equation itself, without any extra condition
  demanded for the transition rate. It is convenient to use discrete
  notations, thus replace <math|x\<rightarrow\>i>, <math|y\<rightarrow\>j>,
  and <math|<big|int>\<rightarrow\><big|sum>>. The master equation turns to
  be <math|<around*|(|\<mathd\>p<rsub|i>/\<mathd\>t|)><around*|(|t|)>=<big|sum><rsub|j>r<rsub|i
  j> p<rsub|j><around*|(|t|)>>. Notice that it becomes an ordinary
  differential equation. Recall that <math|r<rsub|i j>\<geqslant\>0> when
  <math|i\<neq\>j>, and thus <math|r<rsub|i i>\<leqslant\>0> (since
  <math|<big|sum><rsub|j>r<rsub|j i>=0>). We separate the right hand side to
  <math|r<rsub|i i> p<rsub|i><around*|(|t|)>+<big|sum><rsub|j:j\<neq\>i>r<rsub|i
  j> p<rsub|j><around*|(|t|)>>, and the worst situation is that
  <math|r<rsub|i j>=0> for each <math|j\<neq\>i> and <math|r<rsub|i
  i>\<less\>0>. In this case, the master equation reduces to
  <math|<around*|(|\<mathd\>p<rsub|i>/\<mathd\>t|)><around*|(|t|)>=r<rsub|i
  i> p<rsub|i><around*|(|t|)>>, which has the solution
  <math|p<rsub|i><around*|(|t|)>=p<rsub|i><around*|(|0|)>
  exp<around*|(|r<rsub|i i> t|)>>. It implies that
  <math|p<rsub|i><around*|(|t|)>\<gtr\>0> as long as
  <math|p<rsub|i><around*|(|0|)>\<gtr\>0>, indicating that master equation
  conserves the positivity of density function. As a summary, we demand
  transition rate <math|r> to be <math|r<around*|(|x,y|)>\<gtr\>0> when
  <math|x\<neq\>y> and <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  r<around*|(|x,y|)>=0>.

  <subsection|Transition Rate Determines Transition Density><label|section:
  Transition Rate Determines Transition Density>

  We wonder, given a transition rate, can we obtain the corresponding
  transition density? Generally, we cannot get the global (finite) from the
  local (infinitesimal). For example, we cannot determine a function only by
  its first derivative at the origin. But, master equation has a group-like
  structure, by which the local accumulates to be global. We are to show how
  this happens.

  \ We can use the master equation <reference|equation:master equation> to
  calculate <math|\<partial\><rsup|n>p/\<partial\>t<rsup|n>> for any
  <math|n>. Indeed, for <math|n=2>,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<frac|\<partial\><rsup|2>p|\<partial\>t<rsup|2>><around*|(|z,t|)>>>|<row|<cell|<around*|{|insert
    equation <reference|equation:master equation>|}>=>|<cell|<frac|\<partial\>|\<partial\>t><big|int><rsub|\<cal-X\>>\<mathd\>y
    r<around*|(|z,y|)> p<around*|(|y,t|)>>>|<row|<cell|<around*|{|exchange
    limits|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|z,y|)>
    <frac|\<partial\>p|\<partial\>t><around*|(|y,t|)>>>|<row|<cell|<around*|{|insert
    equation <reference|equation:master equation>|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>y
    r<around*|(|z,y|)> <big|int><rsub|\<cal-X\>>\<mathd\>x r<around*|(|y,x|)>
    p<around*|(|x,t|)>>>|<row|<cell|<around*|{|rearrange|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x<big|int><rsub|\<cal-X\>>\<mathd\>y
    r<around*|(|z,y|)> \ r<around*|(|y,x|)> p<around*|(|x,t|)>.>>>>
  </align>

  Following the same steps, it can be generalized to higher order
  derivatives, as

  <\equation*>
    <frac|\<partial\><rsup|n+1>p|\<partial\>t<rsup|n+1>><around*|(|z,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x<big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|1>\<cdots\><big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|n>
    r<around*|(|z,y<rsub|n>|)> r<around*|(|y<rsub|n>,y<rsub|n-1>|)>\<cdots\>r<around*|(|y<rsub|1>,x|)>
    p<around*|(|x,t|)>.
  </equation*>

  Notice the pattern: a sequence of <math|r> and a rightmost
  <math|p<around*|(|x,t|)>>. The reason for this pattern to arise is that
  <math|q<rsub|\<Delta\>t>>, thus <math|r>, is independent of <math|t>: a
  Markovian property.

  Also, Taylor expand the both sides of equation <reference|equation:discrete
  time master equation> by <math|\<Delta\>t> gives, at
  <math|<around*|(|\<Delta\>t|)><rsup|n+1>> order,

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

  <\equation>
    <tabular|<tformat|<cwith|1|-1|1|1|cell-hyphen|n>|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|2|cell-halign|l>|<table|<row|<cell|q<rsub|\<Delta\>t><around*|(|z\|x|)>=>|<cell|\<delta\><around*|(|z-x|)>>>|<row|<cell|+>|<cell|<around*|(|\<Delta\>t|)>
    r<around*|(|z,x|)>>>|<row|<cell|+>|<cell|<frac|<around*|(|\<Delta\>t|)><rsup|2>|2!>
    <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|z,y|)>
    r<around*|(|y,x|)>>>|<row|<cell|+>|<cell|\<cdots\>>>|<row|<cell|+>|<cell|<frac|<around*|(|\<Delta\>t|)><rsup|n+1>|<around*|(|n+1|)>!><big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|1>\<cdots\><big|int><rsub|\<cal-X\>>\<mathd\>y<rsub|n>
    r<around*|(|z,y<rsub|n>|)> r<around*|(|y<rsub|n>,y<rsub|n-1>|)>\<cdots\>r<around*|(|y<rsub|1>,x|)>>>|<row|<cell|+>|<cell|\<cdots\>.>>|<row|<cell|>|<cell|>>>>><label|equation:transition
    rate determines transition density>
  </equation>

  Well, this is a complicated formula, but its implication is straight
  forward and very impressive: <em|the transition density is equivalent to
  transition rate, even though transition rate is derived from infinitesimal
  time-interval transition density.>

  This may be a little weird at the first sight. For example, consider
  another transition density <math|q<rprime|'><rsub|\<Delta\>t><around*|(|y\|x|)>=q<rsub|\<Delta\>t><around*|(|y\|x|)>+f<around*|(|y,x|)>
  \<Delta\>t<rsup|2>>, where <math|f> is any function ensuring that
  <math|q<rprime|'><rsub|\<Delta\>t>> is non-negative and normalized (thus
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>y f<around*|(|y,x|)>=0>). Following
  the previous derivation, we find that the discrete time master equation

  <\equation*>
    p<around*|(|z,t+\<Delta\>t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<rprime|'><rsub|\<Delta\>t><around*|(|z\|x|)>p<around*|(|x,t|)>
  </equation*>

  also leads to equation <reference|equation:master equation>, the same
  <math|r> as that of <math|q<rsub|\<Delta\>t>>. So, we should have
  <math|q<rprime|'><rsub|\<Delta\>t>=q<rsub|\<Delta\>t>>, which means
  <math|f> is not free, but should vanish.

  The answer to this question is that, a transition density is not free to
  choose, but sharing the same degree of freedom as that of its transition
  rate. <em|The fundamental quantity that describes the evolution of a
  continuous time Markov process is transition rate.> For example, consider
  <math|p<around*|(|z,t+\<Delta\>t+\<Delta\>t<rprime|'>|)>> for any
  <math|\<Delta\>t> and <math|\<Delta\>t<rprime|'>>. Directly, we have

  <\equation*>
    p<around*|(|z,t+\<Delta\>t+\<Delta\>t<rprime|'>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<rsub|\<Delta\>t+\<Delta\>t<rprime|'>><around*|(|z\|x|)>p<around*|(|x,t|)>,
  </equation*>

  but on the other hand, by applying discrete time master equation twice, we
  find

  <\align>
    <tformat|<table|<row|<cell|p<around*|(|z,t+\<Delta\>t+\<Delta\>t<rprime|'>|)>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|z\|y|)>p<around*|(|y,t+\<Delta\>t<rprime|'>|)>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|z\|y|)><big|int><rsub|\<cal-X\>>\<mathd\>x
    q<rsub|\<Delta\>t<rprime|'>><around*|(|y\|x|)>p<around*|(|x,t|)>.>>>>
  </align>

  Thus,

  <\equation*>
    <big|int><rsub|\<cal-X\>>\<mathd\>x<around*|[|q<rsub|\<Delta\>t+\<Delta\>t<rprime|'>><around*|(|z\|x|)>-<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|z\|y|)> q<rsub|\<Delta\>t<rprime|'>><around*|(|y\|x|)>|]>p<around*|(|x,t|)>=0.
  </equation*>

  Since <math|p<around*|(|x,t|)>> can be arbitrary, we arrive at

  <\equation*>
    q<rsub|\<Delta\>t+\<Delta\>t<rprime|'>><around*|(|z\|x|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|z\|y|)> q<rsub|\<Delta\>t<rprime|'>><around*|(|y\|x|)>.
  </equation*>

  This provides an addition restriction to the transition density. Indeed,
  not every transition density, as a function of time interval
  <math|\<Delta\>t>, can satisfy this relation.

  <subsection|Detailed Balance Provides Stationary
  Distribution><label|section: Detailed Balance Provides Stationary
  Distribution>

  Let <math|\<Pi\>> a stationary solution of master equation
  <reference|equation:master equation>. Then, its density function
  <math|\<pi\>> satisfies <math|<big|int><rsub|\<cal-X\>>\<mathd\>y
  r<around*|(|x,y|)> \<pi\><around*|(|y|)>=0>. Since we have demanded that
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>=0>, the
  stationary master equation can be re-written as

  <\equation*>
    <big|int><rsub|\<cal-X\>>\<mathd\>y <around*|[|r<around*|(|x,y|)>
    \<pi\><around*|(|y|)>-r<around*|(|y,x|)>\<pi\><around*|(|x|)>|]>=0.
  </equation*>

  But, this condition is too weak to be used. A more useful condition, which
  is stronger than this, is that the integrand vanishes everywhere:

  <\equation>
    r<around*|(|x,y|)> \<pi\><around*|(|y|)>=r<around*|(|y,x|)>\<pi\><around*|(|x|)>,<label|equation:Detailed
    Balance>
  </equation>

  which is called the <with|font-series|bold|detailed balance condition>.

  Interestingly, for a transition rate <math|r> that satisfies detailed
  balance condition <reference|equation:Detailed Balance>, the transition
  density <math|q<rsub|\<Delta\>t>> generated by <math|r> using equation
  <reference|equation:transition rate determines transition density>
  satisfies a similar relation

  <\equation>
    q<rsub|\<Delta\>t><around*|(|x\|y|)> \<pi\><around*|(|y|)>=q<rsub|\<Delta\>t><around*|(|y\|x|)>\<pi\><around*|(|x|)>.<label|equation:Detailed
    Balance for transition density>
  </equation>

  To see this, consider the third line in equation
  (<reference|equation:transition rate determines transition density>), where
  the main factor is

  <\align>
    <tformat|<table|<row|<cell|q<rsub|\<Delta\>t><around*|(|z\|x|)>
    \<pi\><around*|(|x|)>\<supset\>>|<cell|<big|int>\<mathd\>y
    r<around*|(|z,y|)> r<around*|(|y,x|)>
    \<pi\><around*|(|x|)>>>|<row|<cell|<around*|{|r<around*|(|y,x|)>
    \<pi\><around*|(|x|)>=\<pi\><around*|(|y|)>
    r<around*|(|x,y|)>|}>=>|<cell|<big|int>\<mathd\>y r<around*|(|z,y|)>
    \<pi\><around*|(|y|)> r<around*|(|x,y|)>>>|<row|<cell|<around*|{|r<around*|(|z,y|)>
    \<pi\><around*|(|y|)>=\<pi\><around*|(|z|)>
    r<around*|(|x,y|)>|}>=>|<cell|<big|int>\<mathd\>y \<pi\><around*|(|z|)>
    r<around*|(|x,y|)> r<around*|(|y,z|)>>>|<row|<cell|=>|<cell|\<pi\><around*|(|z|)>
    <big|int>\<mathd\>y r<around*|(|x,y|)>
    r<around*|(|y,z|)>>>|<row|<cell|\<subset\>>|<cell|q<rsub|\<Delta\>t><around*|(|x\|z|)>
    \<pi\><around*|(|z|)>>>>>
  </align>

  Following the same steps, we can show that all terms in equation
  <reference|equation:transition rate determines transition density> share
  the same relation, indicating <math|q<rsub|\<Delta\>t><around*|(|z\|x|)>
  \<pi\><around*|(|x|)>=q<rsub|\<Delta\>t><around*|(|x\|z|)>
  \<pi\><around*|(|z|)>>.

  <subsection|Detailed Balance Condition and Connectivity Monotonically
  Reduce Relative Entropy><label|section: Detailed Balance Condition and
  Connectivity Monotonically Reduce Relative Entropy>

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
  <reference|equation:master equation>. Generally, the time-derivative of
  relative entropy has no interesting property. But, if the <math|\<pi\>> is
  more than stationary but satisfying a stronger condition: detailed balance,
  then <math|\<mathd\>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>/\<mathd\>t> will
  have a regular form<\footnote>
    The proof is given as follow. Directly, we have

    <\align>
      <tformat|<table|<row|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=>|<cell|<frac|\<mathd\>|\<mathd\>t><big|int><rsub|\<cal-X\>>\<mathd\>x
      <around*|[|p<around*|(|x,t|)> ln p<around*|(|x,t|)>-p<around*|(|x,t|)>
      ln \<pi\><around*|(|x|)>|]>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <around*|(|<frac|\<partial\>p|\<partial\>t><around*|(|x,t|)> ln
      p<around*|(|x,t|)>+<frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>-<frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>
      \ ln \<pi\><around*|(|x|)>|)>.>>>>
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
    <reference|equation:master equation>, as

    <\equation*>
      <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y <around*|[|r<around*|(|x,y|)>
      p<around*|(|y,t|)>-r<around*|(|y,x|)> p<around*|(|x,t|)>|]>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>,
    </equation*>

    Then, insert detailed balance condition
    <math|r<around*|(|y,x|)>=r<around*|(|x,y|)>
    \<pi\><around*|(|y|)>/\<pi\><around*|(|x|)>>, as

    <\align>
      <tformat|<table|<row|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y <around*|(|r<around*|(|x,y|)>
      p<around*|(|y,t|)>-r<around*|(|x,y|)>
      \<pi\><around*|(|y|)><frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>|)>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|x,y|)>
      \<pi\><around*|(|y|)><around*|(|<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>|)>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.>>>>
    </align>

    Since <math|x> and <math|y> are dummy, we interchange them in the
    integrand, and then insert detailed balance condition again, as

    <\align>
      <tformat|<table|<row|<cell|<frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|y,x|)>
      \<pi\><around*|(|x|)><around*|(|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|)>
      \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>>>|<row|<cell|<around*|{|detailed
      balance|}>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|x,y|)>
      \<pi\><around*|(|y|)><around*|(|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|)>
      \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>.>>>>
    </align>

    By adding the two previous results together, we find

    <\align>
      <tformat|<table|<row|<cell|>|<cell|2
      <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>>>|<row|<cell|<around*|[|1st
      result|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|x,y|)>
      \<pi\><around*|(|y|)><around*|(|<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>-<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>|)>
      \ \ ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>>>|<row|<cell|<around*|[|2nd
      result|]>+>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|x,t|)>
      \<pi\><around*|(|y|)><around*|(|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|)>
      \ \ ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>>>|<row|<cell|=>|<cell|-<big|int><rsub|\<cal-X\>>\<mathd\>x
      <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|x,y|)>
      \<pi\><around*|(|y|)><around*|(|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|)>
      <around*|(|ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|)>,>>>>
    </align>

    from which we directly get the result. Notice that this proof is very
    tricky: it uses detailed balance condition twice, between which the
    expression is symmetrized. It is an ingenious mathematical engineering.
  </footnote>

  <\equation>
    <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=-<frac|1|2><big|int><rsub|\<cal-X\>>\<mathd\>x
    <big|int><rsub|\<cal-X\>>\<mathd\>y r<around*|(|x,y|)>
    \<pi\><around*|(|x|)><around*|(|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|)>
    <around*|(|ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|)>.<label|equation:relative
    entropy derivative>
  </equation>

  \;

  We are to check the sign of the integrand. The <math|r<around*|(|x,y|)>> is
  negative only when <math|x=y>, on which the integrand vanishes. Thus,
  <math|r<around*|(|x,y|)>> can be treated as non-negative, so is the
  <math|r<around*|(|x,y|)> \<pi\><around*|(|y|)>> (since
  <math|\<pi\><around*|(|x|)>\<gtr\>0> for all <math|x\<in\>\<cal-X\>>). Now,
  we check the sign of the last two terms. If
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>\<gtr\>p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>,
  then <math|ln<around*|[|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>|]>\<gtr\>ln<around*|[|p<around*|(|y,t|)>/\<pi\><around*|(|y|)>|]>>,
  thus the sign of the last two terms is positive. The same goes for
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>\<less\>p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>.
  Only when <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>
  can it be zero. Altogether, the integrand is non-positive, thus
  <math|\<mathd\>H/\<mathd\>t\<leqslant\>0>.

  The integrand vanishes when either <math|r<around*|(|x,y|)>=0> or
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>.
  If <math|r<around*|(|x,y|)>\<gtr\>0> for each <math|x\<neq\>y>, then
  <math|<around*|(|\<mathd\>/\<mathd\>t|)>
  H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=0> only when
  <math|p<around*|(|x,t|)>/\<pi\><around*|(|x|)>=p<around*|(|y,t|)>/\<pi\><around*|(|y|)>>
  for all <math|x,y\<in\>\<cal-X\>>, which implies that
  <math|p<around*|(|\<cdummy\>,t|)>=\<pi\>> (since
  <math|><math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
  \<pi\><around*|(|x|)>=1>), or <math|P<around*|(|t|)>=\<Pi\>>.

  Contrarily, if <math|r<around*|(|x,y|)>=0> on some subset
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
  \P<math|r<around*|(|x,y|)>\<gtr\>0> for each <math|x\<neq\>y>\Q, we find
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
    balance condition <reference|equation:Detailed Balance> holds for
    <math|\<Pi\>> and <math|r>, then for any time-dependent distribution
    <math|P<around*|(|t|)>> with the same alphabet (at one time) evolved by
    the master equation <reference|equation:master equation>,
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

  <subsection|Simulation of Master Equation and Guarantee of
  Relaxation><label|section: Simulation of Master Equation and Guarantee of
  Relaxation>

  How to solve master equation <reference|equation:master equation>? When the
  alphabet <math|\<cal-X\>> is discrete and finite, where the desk becomes a
  finite two-dimensional array of lattices (recall section
  <reference|section: Master Equation Describes the Evolution of Markov
  Process>), we replace position by its index in the alphabet, like
  <math|x\<rightarrow\>i>. Then, master equation becomes autonomous linear
  dynamical system: <math|<around*|(|\<mathd\>/\<mathd\>t|)>p<rsub|i><around*|(|t|)>=<big|sum><rsub|j\<in\>\<cal-X\>>r<rsub|i
  j> p<rsub|j><around*|(|t|)>>. It can be solved analytically, by
  investigating the eigen-system of matrix <math|r>.

  When alphabet <math|\<cal-X\>> is neither discrete nor finite, we can
  approximate the solution by using some properties of <math|r>. To do so, we
  expand <math|p<around*|(|x,t|)>> by a set of bases of Hilbert space,
  <math|<around*|{|\<alpha\><rsub|1>,\<alpha\><rsub|2>,\<ldots\>|}>>, as
  <math|p<around*|(|x,t|)>=<big|sum><rsub|i>\<xi\><rsub|i><around*|(|t|)>
  \<alpha\><rsub|i><around*|(|x|)>>, where <math|\<xi\>> is the coefficient.
  The master equation turns to be

  <\equation*>
    <big|sum><rsub|k><frac|\<mathd\>\<xi\><rsub|k>|\<mathd\>t><around*|(|t|)>
    \<alpha\><rsub|k><around*|(|x|)>=<big|int><rsub|\<cal-X\>>\<mathd\>y
    r<around*|(|x,y|)> <big|sum><rsub|j>\<xi\><rsub|j><around*|(|t|)>
    \<alpha\><rsub|j><around*|(|x|)>.
  </equation*>

  By inner product with <math|\<alpha\><rsub|i><around*|(|x|)>> on both side,
  we find

  <\equation*>
    <frac|\<mathd\>\<xi\><rsub|i>|\<mathd\>t><around*|(|t|)>
    \<alpha\><rsub|i><around*|(|x|)>=<big|sum><rsub|j><around*|[|<big|int><rsub|\<cal-X\>>\<mathd\>x<big|int><rsub|\<cal-X\>>\<mathd\>y
    r<around*|(|x,y|)> \<alpha\><rsub|i><around*|(|x|)>
    \<alpha\><rsub|j><around*|(|y|)>|]> \<xi\><rsub|j><around*|(|t|)>.
  </equation*>

  If the <math|r> is specific (such as slowly varying) and the bases are
  properly chosen such that <math|<big|int><rsub|\<cal-X\>>\<mathd\>x<big|int><rsub|\<cal-X\>>\<mathd\>y
  r<around*|(|x,y|)> \<alpha\><rsub|i><around*|(|x|)>
  \<alpha\><rsub|j><around*|(|y|)>> is negligible for any <math|i> and
  <math|j> greater than a number, the problem reduces to the case when
  <math|\<cal-X\>> is discrete and finite.

  In the worst situation, we have to solve master equation by numerical
  simulation. We simulate each sand, but replace its free will by a
  transition probability determined by transition rate <math|r>. Explicitly,
  we initialize the sand randomly. Then iteratively update the position of
  each sand. In each iteration, a sand jumps from position <math|x> to
  position <math|y> with the probability <math|q<rsub|\<Delta\>t><around*|(|y\|x|)>\<approx\>\<delta\><around*|(|y-x|)>+r<around*|(|y,x|)>
  \<Delta\>t> where <math|\<Delta\>t> is sufficiently small. We have to
  ensure that computer has a sampler that makes random sampling for
  <math|q<rsub|\<Delta\>t><around*|(|y\|x|)>> (as an example, see section
  <reference|section: Example: Metropolis-Hastings Algorithm>). If <math|r>
  (or <math|q<rsub|\<Delta\>t>>), together with some stationary distribution
  <math|\<Pi\>>, satisfies the detailed balance condition, then we
  <em|expect> that the simulation will iteratively decrease the difference
  between the distribution of the sands and the <math|\<Pi\>>. We stop the
  iteration when they have been close enough.

  Like the Euler method in solving dynamical system, however, a finite time
  step results in a residual error. This residual error must be analyzed an
  controlled, so that the distribution will evaluate toward <math|\<Pi\>>, as
  we have expected. To examine this, we calculate the
  <math|H<around*|(|P<around*|(|t+\<Delta\>t|)>,\<Pi\>|)>-H<around*|(|P<around*|(|t|)>,\<Pi\>|)>>
  where <math|\<Delta\>t> is small but still finite, and check when it is
  negative (such that <math|H<around*|(|P<around*|(|t|)>|)>> monotonically
  decreases to <math|P<around*|(|t|)>\<rightarrow\>\<Pi\>>).

  By definition, we have

  <\equation*>
    \<Delta\>H\<assign\>H<around*|(|P<around*|(|t+\<Delta\>t|)>,\<Pi\>|)>-H<around*|(|P<around*|(|t|)>,\<Pi\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t+\<Delta\>t|)> ln<frac|p<around*|(|x,t+\<Delta\>t|)>|\<pi\><around*|(|x|)>>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)> ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>.
  </equation*>

  Inserting <math|<with|color|dark cyan|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,t+\<Delta\>t|)> ln<around*|(|p<around*|(|x,t|)>/\<pi\><around*|(|x,t|)>|)>>>
  gives

  <\align>
    <tformat|<table|<row|<cell|\<Delta\>H=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
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
  <reference|section: Detailed Balance Condition and Connectivity
  Monotonically Reduce Relative Entropy> (but using discrete time master
  equation <reference|equation:discrete time master equation> instead, and
  detailed balance condition <reference|equation:Detailed Balance for
  transition density> for transition density), the second line reduces to

  <\equation*>
    -<frac|1|2><big|int><rsub|\<cal-X\>>\<mathd\>x<big|int><rsub|\<cal-X\>>\<mathd\>y
    q<rsub|\<Delta\>t><around*|(|x\|y|)>\<pi\><around*|(|y|)><around*|(|<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|)><around*|(|ln<frac|p<around*|(|x,t|)>|\<pi\><around*|(|x|)>>-ln<frac|p<around*|(|y,t|)>|\<pi\><around*|(|y|)>>|)>,
  </equation*>

  which is non-positive (suppose that <math|r> connects every two elements in
  <math|\<cal-X\>>). So, the sign of <math|\<Delta\>H> is determined by that
  which line has greater absolute value. The first line depends only on the
  difference between <math|P<around*|(|t|)>> and
  <math|P<around*|(|t+\<Delta\>t|)>>, thus <math|\<Delta\>t>, while the
  second line additionally depends on the difference between
  <math|P<around*|(|t|)>> and <math|\<Pi\>> (the factor
  <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>> also depends on
  <math|\<Delta\>t>). When <math|\<Delta\>t\<rightarrow\>0>, the first line
  vanishes, while the second does not until
  <math|P<around*|(|t|)>\<rightarrow\>\<Pi\>>. This suggests us to
  investigate how fast each term converges as
  <math|\<Delta\>t\<rightarrow\>0>.

  To examine the speed of convergence, we calculate the leading order of
  <math|\<Delta\>t> in each line. To make it clear, we denote the first line
  by <math|\<Delta\>H<rsub|1>> and the second line <math|\<Delta\>H<rsub|2>>.
  Taylor expanding <math|\<Delta\>H<rsub|1>> by <math|\<Delta\>t>
  gives<\footnote>
    The first line

    <\equation*>
      I\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x,t+\<Delta\>t|)> ln<frac|p<around*|(|x,t+\<Delta\>t|)>|p<around*|(|x,t|)>>
    </equation*>

    To Taylor expand the right hand side by <math|\<Delta\>t>, we expand
    <math|p<around*|(|x,t+\<Delta\>t|)>> to
    <math|\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>>, as

    <with|color|dark blue|<\equation*>
      p<around*|(|x,t+\<Delta\>t|)>=p<around*|(|x,t|)>+\<Delta\>t
      <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>+<frac|\<Delta\>t<rsup|2>|2!><frac|\<partial\><rsup|2>p|\<partial\>t<rsup|2>><around*|(|x,t|)>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>,
    </equation*>>

    and the same for <math|ln p<around*|(|x,t+\<Delta\>t|)>>, as

    <\equation*>
      ln p<around*|(|x,t+\<Delta\>t|)>=ln p<around*|(|x,t|)>+\<Delta\>t
      <frac|\<partial\>|\<partial\>t>ln p<around*|(|x,t|)>+<frac|\<Delta\>t<rsup|2>|2!><frac|\<partial\><rsup|2>|\<partial\>t<rsup|2>>ln
      p<around*|(|x,t|)>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>.
    </equation*>

    Plugging in <math|<around*|(|\<mathd\>/\<mathd\>x|)>ln
    f<around*|(|x|)>=f<rprime|'><around*|(|x|)>/f<around*|(|x|)>> and then
    <math|<around*|(|\<mathd\><rsup|2>/\<mathd\>x<rsup|2>|)>ln
    f<around*|(|x|)>=f<rprime|''><around*|(|x|)>/f<around*|(|x|)>-<around*|(|f<rprime|'><around*|(|x|)>/f<around*|(|x|)>|)><rsup|2>>,
    we find

    <\equation*>
      <with|color|dark green|ln p<around*|(|x,t+\<Delta\>t|)>-ln
      p<around*|(|x,t|)>=\<Delta\>t<around*|[|<frac|\<partial\>p|\<partial\>t>p<around*|(|x,t|)>
      p<rsup|-1><around*|(|x,t|)>|]>+<frac|\<Delta\>t<rsup|2>|2>
      <around*|[|<frac|\<partial\><rsup|2>p|\<partial\>t<rsup|2>><around*|(|x,t|)>
      p<rsup|-1><around*|(|x,t|)>-<around*|(|<frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>
      p<rsup|-1>|)><rsup|2>|]>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>.>
    </equation*>

    So, the <math|\<Delta\>t> order term in <math|I> is

    <\equation*>
      <big|int><rsub|\<cal-X\>>\<mathd\>x <with|color|dark
      blue|<with|color|blue|p<around*|(|x,t|)>>> <with|color|dark
      green|<around*|[|<frac|\<partial\>p|\<partial\>t>p<around*|(|x,t|)>
      p<rsup|-1><around*|(|x,t|)>|]>>=<big|int><rsub|\<cal-X\>>\<mathd\>x
      <frac|\<partial\>p|\<partial\>t>p<around*|(|x,t|)>=<frac|\<partial\>|\<partial\>t><big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x,t|)>=0,
    </equation*>

    where we used the normalization of <math|p>. The
    <math|\<Delta\>t<rsup|2>> term in <math|I> is

    <\equation*>
      <big|int><rsub|\<cal-X\>>\<mathd\>x <with|color|dark
      blue|p<around*|(|x,t|)>> <with|color|dark
      green|<frac|1|2><around*|[|<frac|\<partial\><rsup|2>p|\<partial\>t<rsup|2>><around*|(|x,t|)>
      p<rsup|-1><around*|(|x,t|)>-<around*|(|<frac|\<partial\>p|\<partial\>t>p<around*|(|x,t|)>
      p<rsup|-1><around*|(|x,t|)>|)><rsup|2>|]>>+<with|color|dark
      blue|<frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>>
      <with|color|dark green|p<rsup|-1><around*|(|x,t|)>
      <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>>.
    </equation*>

    Using the normalization of <math|p> as before, it is reduced to

    <\equation*>
      <frac|1|2><big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x,t|)>
      <around*|(|<frac|\<partial\>p|\<partial\>t>p<around*|(|x,t|)>
      p<rsup|-1><around*|(|x,t|)>|)><rsup|2>=<frac|1|2><big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x,t|)> <around*|(|<frac|\<partial\>|\<partial\>t>ln
      p<around*|(|x,t|)>|)><rsup|2>.
    </equation*>

    Altogether, we arrive at

    <\equation*>
      I=<frac|\<Delta\>t<rsup|2>|2><big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x,t|)> <around*|(|<frac|\<partial\>|\<partial\>t>ln
      p<around*|(|x,t|)>|)><rsup|2>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>.
    </equation*>
  </footnote>

  <\equation*>
    \<Delta\>H<rsub|1>=<frac|\<Delta\>t<rsup|2>|2><big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)> <around*|(|<frac|\<partial\>|\<partial\>t>ln
    p<around*|(|x,t|)>|)><rsup|2>+\<omicron\><around*|(|\<Delta\>t<rsup|2>|)>,
  </equation*>

  where, by master equation <reference|equation:master equation>,
  <math|<around*|(|\<partial\>/\<partial\>t|)> ln
  p<around*|(|x,t|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x r<around*|(|x,y|)>
  p<around*|(|y,t|)>/p<around*|(|x,t|)>>. The same for
  <math|\<Delta\>H<rsub|1>>, which results in

  <\equation*>
    \<Delta\>H<rsub|2>=\<Delta\>t <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>+\<omicron\><around*|(|\<Delta\>t|)>,
  </equation*>

  where we have inserted equation <reference|equation:relative entropy
  derivative>. We find <math|\<Delta\>H<rsub|1>> converges with speed
  <math|\<Delta\>t<rsup|2>> while <math|\<Delta\>H<rsub|2>> has speed
  <math|\<Delta\>t>.

  Thus, given <math|P<around*|(|t|)>\<neq\>\<Pi\>> (so that
  <math|\<Delta\>H<rsub|2>\<neq\>0>, recall section <reference|section:
  Detailed Balance Condition and Connectivity Monotonically Reduce Relative
  Entropy>), there must be a <math|\<delta\>\<gtr\>0> such that for any
  <math|\<Delta\>t\<less\>\<delta\>>, we have
  <math|<around*|\||\<Delta\>H<rsub|1>|\|>\<less\><around*|\||\<Delta\>H<rsub|2>|\|>>,
  in which case the <math|\<Delta\>H=\<Delta\>H<rsub|1>+\<Delta\>H<rsub|2>\<less\>0>
  (recall that <math|\<Delta\>H<rsub|1>\<geqslant\>0> and
  <math|\<Delta\>H<rsub|2>\<leqslant\>0>). The <math|\<delta\>> is bounded by

  <\equation*>
    \<delta\>\<leqslant\><around*|[|- <frac|\<mathd\>|\<mathd\>t>H<around*|(|P<around*|(|t|)>,\<Pi\>|)>|]><mid|/><around*|[|<frac|1|2><big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,t|)> <around*|(|<frac|\<partial\>|\<partial\>t>ln
    p<around*|(|x,t|)>|)><rsup|2>|]>.
  </equation*>

  This bound is proportional to the difference between
  <math|P<around*|(|t|)>> and <math|\<Pi\>> (represented by the first
  factor). When <math|P<around*|(|t|)>> has approched <math|\<Pi\>> (that is,
  <math|P<around*|(|t|)>\<approx\>\<Pi\>> but not exactly equal),
  <math|\<delta\>> has to be extremely small. (This is a little like
  supervised machine learning where <math|\<Delta\>t> acts as learning rate
  and <math|H<around*|(|P<around*|(|t|)>,\<Pi\>|)>> as loss. In the early
  stage of training, the loss function has a greater slope and we can safely
  employ a relatively large learning rate to speed up the decreasing of loss.
  But, we have to tune the learning rate to be smaller and smaller during the
  training. Otherwise, the loss will not monotonically decrease but keep
  fluctuating when it has been sufficiently small, since the learning rate
  now becomes relatively too big.)

  <subsection|Example: Metropolis-Hastings Algorithm><label|section: Example:
  Metropolis-Hastings Algorithm>

  Metropolis-Hastings algorithm is a simple method that constructs transition
  rate for any given stationary distribution such that detailed balance
  condition holds. Explicitly, given a stationary distribution <math|\<Pi\>>,
  and an auxiliary transition rate <math|\<gamma\>>, ensuring that
  <math|\<gamma\><around*|(|x,y|)>\<gtr\>0> for each <math|x> and <math|y> in
  alphabet <math|\<cal-X\>> such that <math|x\<neq\>y>, the transition rate
  <math|r> is given by

  <\equation>
    r<around*|(|x,y|)>=min<around*|(|1,<frac|\<gamma\><around*|(|y,x|)>
    \<pi\><around*|(|x|)>|\<gamma\><around*|(|x,y|)>
    \<pi\><around*|(|y|)>>|)> \<gamma\><around*|(|x,y|)>.<label|equation:equation:metropolis-hastings>
  </equation>

  This transition rate connects every two elements in <math|\<cal-X\>> (since
  <math|\<gamma\><around*|(|y,x|)>\<gtr\>0> for each <math|x\<neq\>y>). In
  addition, together with <math|\<pi\>>, it satisfies the detailed balance
  condition <reference|equation:Detailed Balance>. Directly,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|r<around*|(|x,y|)>
    \<pi\><around*|(|y|)>>>|<row|<cell|<around*|{|definition of
    r|}>=>|<cell|min<around*|(|1,<frac|\<gamma\><around*|(|y,x|)>
    \<pi\><around*|(|x|)>|\<gamma\><around*|(|x,y|)>
    \<pi\><around*|(|y|)>>|)> \<gamma\><around*|(|x,y|)>
    \<pi\><around*|(|y|)>>>|<row|<cell|<around*|{|property of
    min|}>=>|<cell|min<around*|(|\<gamma\><around*|(|x,y|)>
    \<pi\><around*|(|y|)>,\<gamma\><around*|(|y,x|)>
    \<pi\><around*|(|x|)>|)>>>|<row|<cell|<around*|{|property of
    min|}>=>|<cell|min<around*|(|<frac|\<gamma\><around*|(|x,y|)>
    \<pi\><around*|(|y|)>|\<gamma\><around*|(|y,x|)>
    \<pi\><around*|(|x|)>>,1|)> \<gamma\><around*|(|y,x|)>
    \<pi\><around*|(|x|)>>>|<row|<cell|<around*|{|definition of
    r|}>=>|<cell|r<around*|(|y,x|)> \<pi\><around*|(|x|)>.>>>>
  </align>

  Thus detailed balance condition holds. So, theorem
  <reference|theorem:relax> states that, <em|evolved by the master equation
  <reference|equation:master equation>, any initial distribution will finally
  relax to the stationary distribution <math|\<Pi\>>>.

  Metropolis-Hastings algorithm was first proposed by Nicholas Metropolis and
  others in 1953 in Los Alamos, and then improved by Canadian statistician
  Wilfred Hastings in 1970. This algorithm was first defined for transition
  density. Together with a positive auxiliary transition density <math|g>,
  the transition density is defined as

  <\equation>
    q<around*|(|x\|y|)>\<assign\>min<around*|(|1,<frac|g<around*|(|y\|x|)>
    \<pi\><around*|(|x|)>|g<around*|(|x\|y|)> \<pi\><around*|(|y|)>>|)>
    g<around*|(|x\|y|)>,<label|equation:metropolis-hastings origin>
  </equation>

  where <math|g> is positive-definite on <math|\<cal-X\>>. Notice that, in
  equation <reference|equation:metropolis-hastings origin> there is no extra
  time parameter like the <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>> in
  section <reference|section: Master Equation Describes the Evolution of
  Markov Process>. It can be seen as a fixed time interval, which can only be
  used for discrete time master equation.

  This definition has an intuitive and practical explanation. The two factors
  can be seen as two conditional probability. The factor
  <math|g<around*|(|x\|y|)>> first proposes a transition from <math|y> to
  <math|x>. (In numerical simulation, we have to ensure that computer has a
  sampler for sampling an <math|x> from the conditional probability
  <math|g<around*|(|x\|y|)>>.) Then, this proposal will be accepted by
  Bernoulli probability with the ratio given by the first factor in the right
  hand side. If accepted, then transit to <math|x>, otherwise stay on
  <math|y>. Altogether, we get a conditional probability jumping from
  <math|y> to <math|x>, the <math|q<around*|(|x\|y|)>>.

  It is straight forward to check that, if, in addition, <math|g> smoothly
  depends on a parameter <math|\<Delta\>t> as <math|g<rsub|\<Delta\>t>>, so
  is <math|q> as <math|q<rsub|\<Delta\>t>>, and if we expand
  <math|g<rsub|\<Delta\>t>> at <math|\<Delta\>t\<rightarrow\>0> as
  <math|g<rsub|\<Delta\>t><around*|(|x\|y|)>=\<delta\><around*|(|x-y|)>+\<gamma\><around*|(|x,y|)>
  \<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>>, then we will find
  <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>=\<delta\><around*|(|x-y|)>+r<around*|(|x,y|)>
  \<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>>. Indeed, when <math|x=y>,
  we have <math|q<rsub|\<Delta\>t><around*|(|x\|x|)>=g<rsub|\<Delta\>t><around*|(|x,x|)>>.
  And when <math|x\<neq\>y>, <math|\<delta\><around*|(|x-y|)>=0>, we find

  <\equation*>
    q<rsub|\<Delta\>t><around*|(|x\|y|)>=<around*|[|min<around*|(|1,<frac|\<gamma\><around*|(|y,x|)>
    \<pi\><around*|(|x|)>+\<omicron\><around*|(|1|)>|\<gamma\><around*|(|x,y|)>
    \<pi\><around*|(|y|)>+\<omicron\><around*|(|1|)>>|)>
    <around*|(|\<gamma\><around*|(|x,y|)>+\<omicron\><around*|(|1|)>|)>|]>\<Delta\>t.
  </equation*>

  Altogether, for each <math|x,y\<in\>\<cal-X\>>, we find
  <math|q<rsub|\<Delta\>t><around*|(|x\|y|)>=\<delta\><around*|(|x-y|)>+r<around*|(|x,y|)>
  \<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>>. <em|In practice, we use
  the Metropolis-Hastings algorithm <reference|equation:metropolis-hastings
  origin> to numerically simulate master equation <reference|equation:master
  equation>.> But, based on the discussion in section <reference|section:
  Simulation of Master Equation and Guarantee of Relaxation>, the
  <math|\<Delta\>t> in <math|g<rsub|\<Delta\>t>> shall be properly bounded to
  be small (or equivalently speaking, <math|g> shall be \Pprincipal
  diagonal\Q) \ so as to ensure the relaxation
  <math|P<around*|(|t|)>\<rightarrow\>\<Pi\>>.

  <subsection|* Existence of Stationary Density Function>

  Given a transition rate, we wonder if there exists a density function such
  that detailed balance condition <reference|equation:Detailed Balance>
  holds. Actually, equation <reference|equation:Detailed Balance>
  <em|defines> a density function. For example, if both
  <math|r<around*|(|x,y|)>> and <math|r<around*|(|y,x|)>> are not zero, we
  can construct <math|\<pi\><around*|(|y|)>> by given
  <math|\<pi\><around*|(|x|)>> as <math|\<pi\><around*|(|y|)>=\<pi\><around*|(|x|)>
  r<around*|(|y,x|)>/r<around*|(|x,y|)>>. Generally, if <math|x> and <math|y>
  are connected, then there is a path <math|P\<assign\><around*|(|p<rsub|0>,\<ldots\>,p<rsub|n>|)>>
  from <math|x> to <math|y> with <math|p<rsub|0>=x> and <math|p<rsub|n>=y>
  (path and connectivity are defined in section <reference|section: Detailed
  Balance Condition and Connectivity Monotonically Reduce Relative Entropy>),
  and define

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
  construction does define a <math|\<pi\>> that holds the detailed balance
  condition. Given <math|x,y\<in\>\<cal-X\>>, we have <math|ln
  \<pi\><around*|(|x|)>=ln \<pi\><around*|(|x<rsub|0>|)>+<big|int><rsub|x<rsub|0>><rsup|x>\<mathd\>s
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
  balance condition <reference|equation:Detailed Balance>. And if <math|x>
  and <math|y> are not connected, then both <math|r<around*|(|x,y|)>> and
  <math|r<around*|(|y,x|)>> shall vanish (recall the requirements of
  transition rate in section <reference|section: Master Equation Describes
  the Evolution of Markov Process>: if <math|r<around*|(|x,y|)>=0>, then
  <math|r<around*|(|y,x|)>=0>), and detailed balance condition holds
  naturally.

  So, condition <reference|equation:circle> is <em|essential and sufficient
  for the existence of <math|\<pi\>> that holds the detailed balance
  condition <reference|equation:Detailed Balance>>. If <math|\<cal-X\>> is a
  simply connected smooth manifold, then using Stokes's theorem, we have
  <math|\<nabla\>\<times\>\<rho\>=0> on <math|\<cal-X\>>. But, generally
  <math|\<cal-X\>> is neither simply connected nor smooth, but involving
  independent subsystems and discrete. In these cases, condition
  <reference|equation:circle> becomes very complicated.

  In many applications, we consider the inverse question: given a density
  function, if there exists a transition rate such that detailed balance
  condition holds. This inverse problem is much easier, and a proper
  transition rate can be constructed out of the density function (such as in
  Metropolis-Hastings algorithm).

  <section|Kramers-Moyal Expansion and Langevin Dynamics (TODO)>

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

  Now, the discrete time master equation <reference|equation:discrete time
  master equation> becomes

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
  equation will satisfy detailed balance condition? Directly from the form of
  transition density, we find that if there is a stationary distribution
  <math|\<Pi\>> such that Fokker-Planck equation satisfies detailed balance
  condition, then we must have <\footnote>
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

  This indicates that, to satisfy detailed balance condition, <math|\<mu\>>
  shall be conservative.<\footnote>
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
    <associate|auto-10|<tuple|2|10>>
    <associate|auto-11|<tuple|2.1|10>>
    <associate|auto-12|<tuple|2.2|11>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|4>>
    <associate|auto-6|<tuple|1.5|5>>
    <associate|auto-7|<tuple|1.6|6>>
    <associate|auto-8|<tuple|1.7|8>>
    <associate|auto-9|<tuple|1.8|9>>
    <associate|equation:Detailed Balance|<tuple|6|4>>
    <associate|equation:Detailed Balance for transition density|<tuple|7|4>>
    <associate|equation:Kramers-Moyal expansion|<tuple|14|11>>
    <associate|equation:circle|<tuple|13|10>>
    <associate|equation:define stationary density function|<tuple|12|10>>
    <associate|equation:discrete time master equation|<tuple|4|2>>
    <associate|equation:discrete time master equation v0|<tuple|2|1>>
    <associate|equation:equation:metropolis-hastings|<tuple|10|8>>
    <associate|equation:master equation|<tuple|3|2>>
    <associate|equation:master equation v0|<tuple|2|1>>
    <associate|equation:metropolis-hastings origin|<tuple|11|9>>
    <associate|equation:relative entropy derivative|<tuple|9|5>>
    <associate|equation:transition density normalization|<tuple|1|1>>
    <associate|equation:transition rate determines transition
    density|<tuple|5|3>>
    <associate|footnote-1|<tuple|1|3>>
    <associate|footnote-2|<tuple|2|5>>
    <associate|footnote-3|<tuple|3|6>>
    <associate|footnote-4|<tuple|4|8>>
    <associate|footnote-5|<tuple|5|12>>
    <associate|footnote-6|<tuple|6|12>>
    <associate|footnr-1|<tuple|1|3>>
    <associate|footnr-2|<tuple|2|5>>
    <associate|footnr-3|<tuple|3|6>>
    <associate|footnr-4|<tuple|4|8>>
    <associate|footnr-5|<tuple|5|12>>
    <associate|footnr-6|<tuple|6|12>>
    <associate|section: Conservative Langevin Dynamics Satisfies Detailed
    Balance|<tuple|2.2|11>>
    <associate|section: Detailed Balance Condition and Connectivity
    Monotonically Reduce Relative Entropy|<tuple|1.5|5>>
    <associate|section: Detailed Balance Provides Stationary
    Distribution|<tuple|1.4|4>>
    <associate|section: Example: Metropolis-Hastings Algorithm|<tuple|1.7|8>>
    <associate|section: Master Equation Describes the Evolution of Markov
    Process|<tuple|1.2|1>>
    <associate|section: Master Equation, Detailed Balance, and Relative
    Entropy|<tuple|1|1>>
    <associate|section: Simulation of Master Equation and Guarantee of
    Relaxation|<tuple|1.6|6>>
    <associate|section: Transition Rate Determines Transition
    Density|<tuple|1.3|2>>
    <associate|theorem:relax|<tuple|1|6>>
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
      the Evolution of Markov Process <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Transition Rate Determines
      Transition Density <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Detailed Balance Provides
      Stationary Distribution <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Detailed Balance Condition
      and Connectivity Monotonically Reduce Relative Entropy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Simulation of Master
      Equation and Guarantee of Relaxation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Example: Metropolis-Hastings
      Algorithm <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>* Existence of Stationary
      Density Function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      2<space|2spc>Kramers-Moyal Expansion and Langevin Dynamics (TODO)
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