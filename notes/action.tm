<TeXmacs|2.1>

<style|book>

<\body>
  <section|Least-Action Principle>

  In this section, we are to find a way of extracting dynamics (action or
  Lagrangian) from any raw data of any entity.

  <subsection|Conventions in This Section>

  Follow the conventions in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>.

  <subsection|Data Fitting Is Equivalent to Least-Action
  Principle><label|section: Generic Dynamics Can Be Extract From Data
  Fitting>

  Let <math|p<around*|(|\<cdummy\>,\<theta\>|)>> represent a parametrized
  distribution of <math|X>, and <math|q> a distribution of <math|X> that
  represents prior knowledge as in the case of maximum-entropy principle. Let
  <math|S<around*|(|x,\<theta\>|)>\<assign\>-ln
  <around*|(|p<around*|(|x,\<theta\>|)>/q<around*|(|x|)>|)>-ln
  Z<around*|(|\<theta\>|)>> with <math|Z> to be determined. Notice that the
  distribution <math|q> is essential for defining <math|S>, since <math|ln
  p<around*|(|x,\<theta\>|)>> is not well-defined. <\footnote>
    First, when the random variable <math|X> is continuous, the
    <math|p<around*|(|x,\<theta\>|)>> has dimension. But logarithm cannot
    accept a variable which has dimension. The second reason is that when we
    take a diffeomorphism of <math|X> to <math|X<rprime|'>>, which can be
    viewed as a coordinate transformation, <math|S> cannot be invariant. But,
    to make it an action (later), <math|S> has to be invariant under
    coordinate transformation. For these two reasons, <math|ln
    p<around*|(|x,\<theta\>|)>> is not well-defined. But, it is easy to prove
    that <math|ln <around*|(|p<around*|(|x,\<theta\>|)>/q<around*|(|x|)>|)>>
    is well-defined.
  </footnote> Then, we can re-formulate <math|p<around*|(|x,\<theta\>|)>> as

  <\equation>
    p<around*|(|x,\<theta\>|)>=Z<rsup|-1><around*|(|\<theta\>|)>
    q<around*|(|\<theta\>|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)><label|equation:Generic
    Density>,
  </equation>

  and since <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,\<theta\>|)>=1>,

  <\equation>
    Z<around*|(|\<theta\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|\<theta\>|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)><label|equation:Partition
    Function>.
  </equation>

  \;

  As a generic form of a parameterized distribution, it can be used to fit
  raw data, by adjusting parameter <math|\<theta\>>. To do so, we employ the
  usual loss function <math|H<around*|[|p<rsub|D>,p<around*|(|\<cdummy\>,\<theta\>|)>|]>>.
  By omitting the <math|\<theta\>>-independent terms, the loss function comes
  to be

  <\equation*>
    L<around*|(|\<theta\>|)>\<assign\>ln Z<around*|(|\<theta\>|)>+\<bbb-E\><rsub|p<rsub|D>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>.
  </equation*>

  The best fit <math|\<theta\><rsub|\<star\>>> locates at the minimum of
  <math|L<around*|(|\<theta\>|)>>, where <math|p<around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>=p<rsub|D>>.
  At the minimum, we shall have <math|\<partial\>L/\<partial\>\<theta\>=0>.
  Then, we find that <math|\<theta\><rsub|\<star\>>> obeys

  <\equation>
    \<bbb-E\><rsub|p<around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]>=\<bbb-E\><rsub|p<rsub|D>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]><label|equation:Restriction>.
  </equation>

  We can find the <math|\<theta\><rsub|\<star\>>> by iteratively updating
  <math|\<theta\>> along the direction <math|-\<partial\>L/\<partial\>\<theta\>>.
  With a series of direct calculus, we find

  <\equation>
    <frac|\<partial\>L|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=\<bbb-E\><rsub|p<rsub|D>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|p<around*|(|\<cdummy\>,\<theta\>|)>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]><label|equation:Iteration>.
  </equation>

  Notice that <math|L> is equivalent to another loss <math|L<rsub|LA>> where

  <\equation>
    L<rsub|LA><around*|(|\<theta\>|)>\<assign\>\<bbb-E\><rsub|p<rsub|D>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|p<around*|(|\<cdummy\>,\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<rsub|D><around*|(|x|)> S<around*|(|x,\<theta\>|)>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,\<theta\>|)> S<around*|(|x,\<theta\>|)><label|equation:Equivalent
    Loss>.
  </equation>

  It can be read from this equation that minimizing <math|L<rsub|LA>> is to
  decrease the <math|S<around*|(|\<cdummy\>,\<theta\>|)>> at data points (the
  first term) while increase it at the points away from data (the second
  term). This way of optimization will site a real world datum onto a local
  minimum of <math|S<around*|(|\<cdummy\>,\<theta\>|)>>, in statistical
  sense. TODO: add a diagram for better illustration. In this way, the
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>> is recognized as a parameterized
  action. It thus represents the dynamics of an having real data fall to
  local minima

  \;

  entity. The entity may be physical, like particles. But it can also be
  words, genes, flock of birds, and so on. For example, we can find out how
  words interact with each other.

  <subsection|Extract Dynamics from Raw Data: An Instance of Classical
  Physics>

  Suppose that we have a set of raw data about an entity from classical
  physics. To describe the entity, we need a configuration like
  <math|x<around*|(|t|)>>. So, the raw data is a set
  <math|<around*|{|x<rsub|k><around*|(|1:T|)>\|k=1,\<ldots\>,D|}>> where time
  is discretized as <math|<around*|(|1,\<ldots\>,T|)>> and the data size is
  <math|D>. We have employed <math|x<rsub|k><around*|(|1:T|)>> for the series
  of <math|<around*|(|x<rsub|k><around*|(|1|)>,\<ldots\>,x<rsub|k><around*|(|T|)>|)>>.
  Thus, each datum is a movie of the physical system, frame by frame. These
  raw data are obtained by experiments and measurements. Considering the
  errors in the measurements, variances shall be involved and the empirical
  distribution <math|p<rsub|D><around*|(|x<around*|(|1:T|)>|)>> comes to be a
  sum of normal distribution.

  As a physical system, the <math|q> that represents free theory shall be
  Gaussian. It may be

  <\equation*>
    q<around*|(|x|)>\<propto\>exp<around*|{|-<frac|1|2><big|sum><rsub|t=1><rsup|T-1>
    <around*|[|x<around*|(|t+1|)>-x<around*|(|t|)>|]><rsup|2>|}>,
  </equation*>

  indicating a kinetic term.

  The action <math|S<around*|[|x,\<theta\>|]>> is given by some ansatz.
  First, we may suppose that the action is local. That is, there is a
  Lagrangian <math|L<around*|(|x,t,\<theta\>|)>> such that
  <math|S<around*|[|x,\<theta\>|]>=<big|sum><rsub|t=1><rsup|T>L<around*|(|x<around*|(|t|)>,t,\<theta\>|)>>.
  Next, we may suppose that there exist some symmetries about the physical
  system, such as autonomous and parity symmetry, which means
  <math|L<around*|(|x,t,\<theta\>|)>=<big|sum><rsub|n=1><rsup|+\<infty\>>\<theta\><rsub|n>
  x<rsup|2n>> when <math|x> is <math|1>-dimensional. These symmetries will
  further restrict the possible form of the action. Finally, we can write
  down a most generic form of action that satisfies all the ansatz. Neural
  network and symbolic regression may help you write down this most generic
  form <\footnote>
    For example, <math|L<around*|(|x,t,\<theta\>|)>=f<around*|(|x,\<theta\>|)>>
    where <math|f> is a neural network.
  </footnote>. Then, we find the best fit <math|\<theta\><rsub|\<star\>>> by
  equation <reference|equation:Iteration>. The action
  <math|S<around*|[|x,\<theta\><rsub|\<star\>>|]>> describes the dynamics
  extracted from the raw data.

  <subsection|Maximum-Entropy and Least-Action Are Saddle Point of a
  Functional>

  When <math|S<around*|[|x,\<theta\>|]>=\<theta\><rsup|\<alpha\>>
  f<rsub|\<alpha\>><around*|(|x|)>> for a function
  <math|f:\<cal-X\>\<rightarrow\>\<bbb-R\><rsup|m>> and
  <math|<wide|f|\<bar\>>\<assign\>\<bbb-E\><rsub|p<rsub|D>><around*|(|f|)>>,
  the <math|p<around*|(|x,\<theta\>|)>> given by equation
  <reference|equation:Generic Density> reduces to that given by
  maximum-entropy principle, with <math|f> the observables and
  <math|<wide|f|\<bar\>>> the observation.

  In fact, equations <reference|equation:Generic Density>,
  <reference|equation:Partition Function>, and
  <reference|equation:Restriction> can be seen as an extremum of the
  functional

  <\equation*>
    V<around*|[|p,\<theta\>,\<mu\>|]>\<assign\>H<around*|[|p,q|]>+<around*|(|\<bbb-E\><rsub|p><around*|[|S<around*|(|x,\<theta\>|)>|]>-\<bbb-E\><rsub|p<rsub|D>><around*|[|S<around*|(|x,\<theta\>|)>|]>|)>+\<mu\><around*|(|\<bbb-E\><rsub|p><around*|[|1|]>-1|)>,
  </equation*>

  or explicitly

  <\equation*>
    V<around*|[|p,\<theta\>,\<mu\>|]>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>ln<frac|p<around*|(|x|)>|q<around*|(|x|)>>+<around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>S<around*|(|x,\<theta\>|)>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<rsub|D><around*|(|x|)>S<around*|(|x,\<theta\>|)>|)>+\<mu\><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>-1|)>.
  </equation*>

  Indeed, variance on <math|p> gives equation <reference|equation:Generic
  Density> and equation <reference|equation:Partition Function>. And partial
  derivative on <math|\<theta\>> gives equation
  <reference|equation:Restriction>. Condition by partial derivative on
  <math|\<mu\>> has been involved in the <math|Z<around*|(|\<theta\>|)>>.

  Interestingly, the second term is just the
  <math|-L<rsub|LA><around*|(|\<theta\>|)>> in equation
  <reference|equation:Equivalent Loss>. So, the extremum is in fact a saddle
  point, as

  <\equation>
    <around*|(|p<rsub|\<star\>>,\<theta\><rsub|\<star\>>,\<mu\><rsub|\<star\>>|)>=max<rsub|\<theta\>>
    min<rsub|p,\<mu\>>V<around*|[|p,\<theta\>,\<mu\>|]>.
  </equation>

  The first minimization corresponds to maximum-entropy principle, which
  minimizes the relative entropy between <math|p> and <math|q> and the
  expectation of action <math|S<around*|(|\<cdummy\>,\<theta\>|)>>, which in
  turn relates the probability <math|p> and the action
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>. The second maximization sites
  real data onto the action's local minima. So, we find that maximum-entropy
  principle and least-action principle are saddle point of a functional
  <math|V>.
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
    <associate|equation:Equivalent Loss|<tuple|5|1>>
    <associate|equation:Generic Density|<tuple|1|1>>
    <associate|equation:Iteration|<tuple|4|1>>
    <associate|equation:Partition Function|<tuple|2|1>>
    <associate|equation:Restriction|<tuple|3|1>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|2>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|2>>
    <associate|section: Generic Dynamics Can Be Extract From Data
    Fitting|<tuple|1.2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Least-Action Principle
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Data Fitting Is Equivalent
      to Least-Action Principle <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Extract Dynamics from Raw
      Data: An Instance of Classical Physics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Maximum-Entropy and
      Least-Action Are Saddle Point of a Functional
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>