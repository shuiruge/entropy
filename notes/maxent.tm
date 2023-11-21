<TeXmacs|2.1>

<style|generic>

<\body>
  <section|Maximum-Entropy Principle>

  <subsection|Conventions in This Section>

  Let <math|X> a time-dependent random variables, being either discrete or
  continuous, with alphabet <math|\<cal-X\>>. Even though the discussion
  applies to both discrete and continuous cases, we use the notation of the
  continuous. The reason is that converting from discrete to continuous may
  cause problems (we will see soon) while the inverse will be safe and direct
  as long as any smooth structure of <math|X> is not employed throughout the
  discussion.

  <subsection|Maximum-Entropy Principle Shall Minimize Relative Entropy>

  As discussed in section <reference|section: Relative Entropy>, Shannon
  entropy is not well-defined for continuous random variable, while the
  relative entropy is proper for both discrete and continuous random
  variables. For this reason, we suggest that the objective to be maximized
  shall be the negative relative entropy instead of Shannon entropy.
  Comparing with Shannon entropy, relative entropy needs an extra
  distribution, which describes the prior knowledge. It then characterizes
  the relative uncertainty (surprise) of a distribution to the distribution
  of prior knowledge. When the prior knowledge is unbiased and
  <math|<around*|\||\<cal-X\>|\|>\<less\>+\<infty\>>, the negative relative
  entropy reduces to Shannon entropy. So, maximum-entropy principle shall
  minimize relative entropy.

  Given a distribution <math|Q> of <math|X> that describes the prior
  knowledge, the basic problem is to find a distribution <math|P> of <math|X>
  such that the relative entropy <math|H<around*|[|p,q|]>> is minimized under
  a set of restrictions <math|<around*|{|\<bbb-E\><rsub|p><around*|[|f<rsub|\<alpha\>>|]>=<wide|f|\<bar\>><rsub|\<alpha\>>\|\<alpha\>=1,\<ldots\>,m,f<rsub|\<alpha\>>:\<cal-X\>\<rightarrow\>\<bbb-R\>|}>>.
  The notation <math|\<bbb-E\><rsub|p><around*|[|\<cdots\>|]>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x|)>\<cdots\>> represents expectation under <math|p>; and the
  function <math|f<rsub|\<alpha\>>> is called
  <with|font-series|bold|observable> and the value
  <math|<wide|f|\<bar\>><rsub|\<alpha\>>> is called an
  <with|font-series|bold|observation>. The <math|P>, thus, is the
  distribution which is closest to the prior knowledge with the restrictions
  fulfilled.

  To solve this problem, we use variational principle with Lagrangian
  multipliers. There are two kinds of constraints. One from the restrictions
  <math|\<bbb-E\><rsub|p><around*|[|f<rsub|\<alpha\>>|]>=<wide|f|\<bar\>><rsub|\<alpha\>>>
  for each <math|\<alpha\>>; and the other from
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x|)>=1>. Also, recall
  that the relative entropy <math|H<around*|[|p,q|]>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x|)>ln<around*|(|p<around*|(|x|)>/q<around*|(|x|)>|)>>.
  Altogether, the loss functional becomes

  <\equation>
    L<around*|[|p,\<lambda\>,\<mu\>|]>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>ln<frac|p<around*|(|x|)>|q<around*|(|x|)>>+\<lambda\><rsup|\<alpha\>><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>f<rsub|\<alpha\>><around*|(|x|)>-<wide|f|\<bar\>><rsub|\<alpha\>>|)>+\<mu\><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>-1|)>.
  </equation>

  So, we have

  <\align>
    <tformat|<table|<row|<cell|<frac|\<delta\>L|\<delta\>p<around*|(|x|)>><around*|[|p,\<lambda\>,\<mu\>|]>=>|<cell|ln
    p<around*|(|x|)>+1-ln q<around*|(|x|)>+\<lambda\><rsup|\<alpha\>>
    f<rsub|\<alpha\>><around*|(|x|)>+\<mu\>;>>|<row|<cell|<frac|\<partial\>L|\<partial\>\<lambda\><rsup|\<alpha\>>><around*|[|p,\<lambda\>,\<mu\>|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>f<rsub|\<alpha\>><around*|(|x|)>-<wide|f|\<bar\>><rsub|\<alpha\>>;>>|<row|<cell|<frac|\<partial\>L|\<partial\>\<mu\>><around*|[|p,\<lambda\>,\<mu\>|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>-1.>>>>
  </align>

  These equations shall vanish on extremum. If
  <math|<around*|(|p<rsub|\<star\>>,\<lambda\><rsub|\<star\>>,\<mu\><rsub|\<star\>>|)>>
  is an extremum, then we shall have

  <\equation>
    <frac|\<partial\>ln Z|\<partial\>\<lambda\><rsup|\<alpha\>>><around*|(|\<lambda\><rsub|\<star\>>|)>+<wide|f|\<bar\>><rsub|\<alpha\>>=0<label|equation:maxent
    eq1>
  </equation>

  for each <math|\<alpha\>=1,\<ldots\>,m>, where

  <\equation>
    Z<around*|(|\<lambda\>|)>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> exp<around*|(|-\<lambda\><rsup|\<alpha\>>
    f<rsub|\<alpha\>><around*|(|x|)>|)>;<label|equation:maxent partition
    function>
  </equation>

  and

  <\equation>
    p<rsub|\<star\>><around*|(|x|)>=p<around*|(|x,\<lambda\><rsub|\<star\>>|)>,<label|equation:maxent
    eq2>
  </equation>

  where

  <\equation>
    p<around*|(|x,\<lambda\>|)>\<assign\>Z<rsup|-1><around*|(|\<lambda\>|)>
    q<around*|(|x|)> exp<around*|(|-\<lambda\><rsup|\<alpha\>>
    f<rsub|\<alpha\>><around*|(|x|)>|)>.
  </equation>

  Notice that the <math|\<mu\><rsub|\<star\>>> has been included in the
  <math|Z>.

  <subsection|Prior Knowledge Furnishes Free Theory or Regulator>

  Compared with the maximum-entropy principle derived from maximizing Shannon
  entropy, we get an extra factor <math|q<around*|(|x|)>> in
  <math|p<around*|(|x,\<lambda\>|)>>. This factor plays the role of prior
  knowledge.

  In physics, this prior knowledge can be viewed as free theory, a theory
  without interactions. Indeed, interaction shall be given by the
  restrictions, the expectations of observables. It is the factor
  <math|exp<around*|(|-\<lambda\><rsup|\<alpha\>>
  f<rsub|\<alpha\>><around*|(|x|)>|)>> in <math|p<around*|(|x,\<lambda\>|)>>.
  The <math|\<lambda\>> plays the role of couplings. This indicates that
  <math|q<around*|(|x|)>> shall be the free theory.\ 

  In machine learning, it acts as regulator, a pre-determined term employed
  for regulating the value of <math|x>. It does not involve any parameter,
  which is the <math|\<lambda\>>.

  <subsection|Weak Maximum-Entropy Principle Furnishes Observables>

  In many situations, we are not explicitly sure what the observables should
  be, but instead, we have some raw data, which can be described by an
  empirical distribution <math|P<rsub|D>>. Remark that this empirical
  distribution is generally not supported on <math|\<cal-X\>>, since we may
  not have raw data for all possible values of <math|X>.

  For example, in machine learning, we have raw data, but we cannot know what
  the observables should be on the raw data. In some cases, we have some
  ansatz for the observables, but in most cases, we have little. In fact, a
  major task of machine learning is to find out useful observables, which is
  also called <with|font-series|bold|features>.

  To solve this issue, we are to parameterize the observables, as
  <math|f<around*|(|x,\<varphi\>|)>:\<cal-X\>\<times\>\<bbb-R\><rsup|p>\<rightarrow\>\<bbb-R\><rsup|m>>,
  where <math|\<bbb-R\><rsup|p>> is parameter space, usually a
  high-dimensional Euclidean space. The observations are determined by the
  empirical distribution, as <math|\<bbb-E\><rsub|p<rsub|D>><around*|[|f<around*|(|\<cdummy\>,\<varphi\>|)>|]>>.
  And as a free parameter, we are to adjust <math|\<varphi\>> to help
  maximize the relative entropy. So, the loss of maximum-entropy principle
  now becomes

  <\equation>
    L<around*|[|p,\<lambda\>,\<varphi\>,\<mu\>|]>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>ln<frac|p<around*|(|x|)>|q<around*|(|x|)>>+\<lambda\><rsup|\<alpha\>><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>f<rsub|\<alpha\>><around*|(|x,\<varphi\>|)>-\<bbb-E\><rsub|p<rsub|D>><around*|[|f<rsub|\<alpha\>><around*|(|\<cdummy\>,\<varphi\>|)>|]>|)>+\<mu\><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>-1|)>.
  </equation>

  Following the same steps as before, denoting
  <math|\<theta\>\<assign\><around*|(|\<lambda\>,\<varphi\>|)>> and

  <\equation*>
    S<around*|(|x,\<theta\>|)>\<assign\>\<lambda\><rsup|\<alpha\>>f<rsub|\<alpha\>><around*|(|x,\<varphi\>|)>,
  </equation*>

  the equation for an extremum <math|<around*|(|p<rsub|\<star\>>,\<theta\><rsub|\<star\>>,\<mu\><rsub|\<star\>>|)>>
  comes to be <\footnote>
    Explicitly, we have

    <\align>
      <tformat|<table|<row|<cell|<frac|\<delta\>L|\<delta\>p<around*|(|x|)>><around*|[|p,\<lambda\>,\<varphi\>,\<mu\>|]>=>|<cell|ln
      p<around*|(|x|)>+1-ln q<around*|(|x|)>+\<lambda\><rsup|\<alpha\>>
      f<rsub|\<alpha\>><around*|(|x,\<varphi\>|)>+\<mu\>>>|<row|<cell|=>|<cell|ln
      p<around*|(|x|)>+1-ln q<around*|(|x|)>+S<around*|(|x,<around*|(|\<lambda\>,\<varphi\>|)>|)>+\<mu\>>>|<row|<cell|<frac|\<partial\>L|\<partial\>\<lambda\><rsup|\<alpha\>>><around*|[|p,\<lambda\>,\<varphi\>,\<mu\>|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x|)>f<rsub|\<alpha\>><around*|(|x,\<varphi\>|)>-\<bbb-E\><rsub|p<rsub|D>><around*|[|f<rsub|\<alpha\>><around*|(|\<cdummy\>,\<varphi\>|)>|]>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x|)><frac|\<partial\>S|\<partial\>\<lambda\><rsup|\<alpha\>>><around*|(|x,<around*|(|\<lambda\>,\<varphi\>|)>|)>-\<bbb-E\><rsub|p<rsub|D>><around*|[|<frac|\<partial\>S|\<partial\>\<lambda\><rsup|\<alpha\>>><around*|(|\<cdummy\>,<around*|(|\<lambda\>,\<varphi\>|)>|)>|]>;>>|<row|<cell|<frac|\<partial\>L|\<partial\>\<varphi\><rsup|\<alpha\>>><around*|[|p,\<lambda\>,\<varphi\>,\<mu\>|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x|)>\<lambda\><rsup|\<beta\>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<varphi\><rsup|\<alpha\>>><around*|(|x,\<varphi\>|)>-\<bbb-E\><rsub|p<rsub|D>><around*|[|\<lambda\><rsup|\<beta\>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<varphi\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<varphi\>|)>|]>>>|<row|<cell|=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x|)><frac|\<partial\>S|\<partial\>\<varphi\><rsup|\<alpha\>>><around*|(|x,<around*|(|\<lambda\>,\<varphi\>|)>|)>-\<bbb-E\><rsub|p<rsub|D>><around*|[|<frac|\<partial\>S|\<partial\>\<varphi\><rsup|\<alpha\>>><around*|(|\<cdummy\>,<around*|(|\<lambda\>,\<varphi\>|)>|)>|]>;>>|<row|<cell|<frac|\<partial\>L|\<partial\>\<mu\>><around*|[|p,\<lambda\>,\<varphi\>,\<mu\>|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x|)>-1.>>>>
    </align>
  </footnote>

  <\equation>
    <frac|\<partial\>ln Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\><rsub|\<star\>>|)>+\<bbb-E\><rsub|p<rsub|D>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]>=0,<label|equation:weak
    maxent eq1>
  </equation>

  for each <math|\<alpha\>=1,\<ldots\>,m+p>, where

  <\equation>
    Z<around*|(|\<theta\>|)>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>;<label|equation:weak
    maxent partition function>
  </equation>

  and we have

  <\equation>
    p<rsub|\<star\>><around*|(|x|)>=p<around*|(|x,\<theta\><rsub|\<star\>>|)>.<label|equation:weak
    maxent eq2>
  </equation>

  This can be seen as a weak version of maximum-entropy principle.

  <subsection|Extremum Can Be Found by Iteration Method>

  Generally, it is hard to solve the equation <reference|equation:maxent eq1>
  and its weak version, equation <reference|equation:weak maxent eq1>. But,
  we can solve them numerically by iterative method. We are to show how to do
  this for the weak maximum-entropy principle, equation
  <reference|equation:weak maxent eq1>. Then, we will find that the equation
  <reference|equation:maxent eq1> is solved also.

  To solve equation <reference|equation:weak maxent eq1> iteratively, we are
  to find a loss function for <math|\<theta\>> such that
  <math|\<theta\><rsub|\<star\>>> locates at its minimum. Naturally, we
  consider the relative entropy <math|H<around*|[|p<rsub|D>,p<around*|(|\<cdummy\>,\<theta\>|)>|]>>
  <\footnote>
    You may argue that <math|p<rsub|D>> is not supported on <math|\<cal-X\>>.
    But, we can consider the <math|p<rsub|D>> as a limit of a smoothed
    empirical distribution, which is supported on <math|\<cal-X\>>.
  </footnote>. It is bounded below. Omitting the <math|\<theta\>>-independent
  terms, we get a loss function

  <\equation*>
    L<rsub|iter><around*|(|\<theta\>|)>\<assign\>ln
    Z<around*|(|\<theta\>|)>+\<bbb-E\><rsub|p<rsub|D>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>,
  </equation*>

  We find <math|\<partial\>L<rsub|iter>/\<partial\>\<theta\><rsup|\<alpha\>>=0>
  gives equation <reference|equation:weak maxent eq1>. So,
  <math|L<rsub|iter>> is a loss function of <math|\<theta\>> with
  <math|\<theta\><rsub|\<star\>>> as a minimum; we can find the
  <math|\<theta\><rsub|\<star\>>> by iteratively updating <math|\<theta\>>
  along the direction <math|-\<partial\>L<rsub|iter>/\<partial\>\<theta\>>.

  With a series of direct calculus, we find

  <\equation>
    -<frac|\<partial\>L<rsub|iter>|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=\<bbb-E\><rsub|p<around*|(|\<cdummy\>,\<theta\>|)>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|p<rsub|D>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>.<label|equation:weak
    maxent iteration>
  </equation>

  For equation <reference|equation:maxent eq1>, it becomes (now
  <math|\<theta\>> reduces to <math|\<lambda\>>, and
  <math|\<partial\>S/\<partial\>\<lambda\><rsup|\<alpha\>>=f<rsub|\<alpha\>>>)

  <\equation>
    -<frac|\<partial\>L<rsub|iter>|\<partial\>\<lambda\><rsup|\<alpha\>>><around*|(|\<lambda\>|)>=\<bbb-E\><rsub|p<around*|(|\<cdummy\>,\<lambda\>|)>><around*|[|f<rsub|\<alpha\>>|]>-<wide|f|\<bar\>><rsub|\<alpha\>>.<label|equation:maxent
    iteration>
  </equation>

  <subsection|When <math|\<lambda\><rsub|\<star\>>> is solvable?>

  It is hard to guarantee the equation <reference|equation:maxent eq1>
  solvable, especially when it is highly non-linear. But, we have some
  results for the case when <math|<wide|f|\<bar\>>\<approx\>\<bbb-E\><rsub|q><around*|[|f|]>>.
  That is, the perturbative case.

  To guarantee that perturbative solution exists for equation
  <reference|equation:maxent eq1>, we have to ensure that the Jacobian
  <math|\<partial\><rsup|2>ln Z/\<partial\>\<lambda\><rsup|\<alpha\>>\<partial\>\<lambda\><rsup|\<beta\>>>
  is not degenerate at <math|\<lambda\>=0>. With a series of simple
  calculation, we find

  <\equation>
    <frac|\<partial\><rsup|2>ln Z|\<partial\>\<lambda\><rsup|\<alpha\>>\<partial\>\<lambda\><rsup|\<beta\>>><around*|(|0|)>=Cov<rsub|q><around*|(|f<rsub|\<alpha\>>,f<rsub|\<beta\>>|)>,
  </equation>

  the covariance matrix of <math|f> under distribution <math|q>. TODO
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
    <associate|auto-6|<tuple|1.5|2>>
    <associate|auto-7|<tuple|1.6|3>>
    <associate|equation:maxent eq1|<tuple|2|1>>
    <associate|equation:maxent eq2|<tuple|4|1>>
    <associate|equation:maxent iteration|<tuple|11|3>>
    <associate|equation:maxent partition function|<tuple|3|1>>
    <associate|equation:weak maxent eq1|<tuple|7|2>>
    <associate|equation:weak maxent eq2|<tuple|9|2>>
    <associate|equation:weak maxent iteration|<tuple|10|3>>
    <associate|equation:weak maxent partition function|<tuple|8|2>>
    <associate|footnote-1|<tuple|1|3>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnr-1|<tuple|1|3>>
    <associate|footnr-2|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Maximum-Entropy
      Principle> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Maximum-Entropy Principle
      Maximizes Relative Entropy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Prior Knowledge Furnishes
      Free Theory or Regulator <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Weak Maximum-Entropy
      Principle Furnishes Observables <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Extremum Can Be Found by
      Iteration Method <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>When
      <with|mode|<quote|math>|\<lambda\><rsub|\<star\>>> is solvable?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>
    </associate>
  </collection>
</auxiliary>