<TeXmacs|2.1.4>

<style|book>

<\body>
  <section|Maximum-Entropy Principle><label|section: Maximum-Entropy
  Principle>

  <subsection|Conventions in This Section>

  Follow the conventions in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>.

  <subsection|Maximum-Entropy Principle Shall Minimize Relative Entropy>

  As discussed in section <reference|section: Relative Entropy>, Shannon
  entropy is not well-defined for continuous random variable, while the
  relative entropy is proper for both discrete and continuous random
  variables. Comparing with Shannon entropy, relative entropy needs an extra
  distribution, which describes the prior knowledge. It then characterizes
  the relative uncertainty (surprise) of a distribution to the distribution
  of prior knowledge. When the prior knowledge is unbiased and
  <math|<around*|\||\<cal-X\>|\|>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  1\<less\>+\<infty\>>, the negative relative entropy reduces to Shannon
  entropy. So, maximum-entropy principle shall minimize relative entropy.

  Given a distribution <math|P<rsub|0>> that describes the prior knowledge of
  random variable <math|X>, the basic problem is to find a distribution
  <math|P> of <math|X> such that the relative entropy
  <math|H<around*|(|P,P<rsub|0>|)>> is minimized under a set of restrictions
  <math|<around*|{|\<bbb-E\><rsub|P><around*|[|f<rsub|\<alpha\>>|]>=<wide|f|\<bar\>><rsub|\<alpha\>>\|\<alpha\>=1,\<ldots\>,m,f<rsub|\<alpha\>>:\<cal-X\>\<rightarrow\>\<bbb-R\>|}>>.
  The notation <math|\<bbb-E\><rsub|P><around*|[|\<cdots\>|]>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x|)>\<cdots\>> represents expectation under <math|P>; and the
  function <math|f<rsub|\<alpha\>>> is called
  <with|font-series|bold|observable> and the value
  <math|<wide|f|\<bar\>><rsub|\<alpha\>>> is called an
  <with|font-series|bold|observation>. Thus, <math|P> is the distribution
  that is closest to the prior knowledge with the restrictions fulfilled.

  To solve this problem, we use variational principle with Lagrangian
  multipliers. There are two kinds of constraints. One from the restrictions
  <math|\<bbb-E\><rsub|P><around*|[|f<rsub|\<alpha\>>|]>=<wide|f|\<bar\>><rsub|\<alpha\>>>
  for each <math|\<alpha\>>; and the other from normalization
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x|)>=1>. Recall that
  the relative entropy <math|H<around*|(|P,P<rsub|0>|)>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x|)>ln<around*|(|p<around*|(|x|)>/p<rsub|0><around*|(|x|)>|)>>.
  Altogether, the loss functional becomes

  <\equation>
    L<around*|(|p,\<lambda\>,\<mu\>|)>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>ln<frac|p<around*|(|x|)>|p<rsub|0><around*|(|x|)>>+\<lambda\><rsup|\<alpha\>><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>f<rsub|\<alpha\>><around*|(|x|)>-<wide|f|\<bar\>><rsub|\<alpha\>>|)>+\<mu\><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>-1|)>.
  </equation>

  So, we have (<math|L> is a functional of <math|p>, thus use
  <math|\<delta\>> instead of <math|\<partial\>> for <math|p>),

  <\align>
    <tformat|<table|<row|<cell|<frac|\<delta\>L|\<delta\>p<around*|(|x|)>><around*|(|p,\<lambda\>,\<mu\>|)>=>|<cell|ln
    p<around*|(|x|)>+1-ln p<rsub|0><around*|(|x|)>+\<lambda\><rsup|\<alpha\>>
    f<rsub|\<alpha\>><around*|(|x|)>+\<mu\>;>>|<row|<cell|<frac|\<partial\>L|\<partial\>\<lambda\><rsup|\<alpha\>>><around*|(|p,\<lambda\>,\<mu\>|)>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>f<rsub|\<alpha\>><around*|(|x|)>-<wide|f|\<bar\>><rsub|\<alpha\>>;>>|<row|<cell|<frac|\<partial\>L|\<partial\>\<mu\>><around*|(|p,\<lambda\>,\<mu\>|)>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>-1.>>>>
  </align>

  These equations shall vanish on the extremum. If
  <math|<around*|(|p<rsub|\<star\>>,\<lambda\><rsub|\<star\>>,\<mu\><rsub|\<star\>>|)>>
  is an extremum, then

  <\equation>
    <frac|\<partial\>ln Z|\<partial\>\<lambda\><rsup|\<alpha\>>><around*|(|\<lambda\><rsub|\<star\>>|)>+<wide|f|\<bar\>><rsub|\<alpha\>>=0<label|equation:maxent
    eq1>
  </equation>

  for each <math|\<alpha\>=1,\<ldots\>,m>, where

  <\equation>
    Z<around*|(|\<lambda\>|)>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
    p<rsub|0><around*|(|x|)> exp<around*|(|-\<lambda\><rsup|\<alpha\>>
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
    p<around*|(|x,\<lambda\>|)>\<assign\>p<rsub|0><around*|(|x|)>
    exp<around*|(|-\<lambda\><rsup|\<alpha\>>
    f<rsub|\<alpha\>><around*|(|x|)>|)>/Z<around*|(|\<lambda\>|)>.
  </equation>

  The <math|\<mu\><rsub|\<star\>>> has been included in the <math|Z>.

  <subsection|Prior Knowledge Furnishes Free Theory or Regulator>

  Compared with the maximum-entropy principle derived from maximizing Shannon
  entropy, we get an extra factor <math|p<rsub|0><around*|(|x|)>> in
  <math|p<around*|(|x,\<lambda\>|)>>. This factor plays the role of prior
  knowledge.

  In physics, this prior knowledge can be viewed as free theory, a theory
  without interactions. Indeed, interaction shall be given by the
  restrictions, the expectations of observables. It is the factor
  <math|exp<around*|(|-\<lambda\><rsup|\<alpha\>>
  f<rsub|\<alpha\>><around*|(|x|)>|)>> in <math|p<around*|(|x,\<lambda\>|)>>.
  The <math|\<lambda\>> plays the role of couplings. This indicates that
  <math|p<rsub|0><around*|(|x|)>> shall be the free theory.

  In machine learning, it acts as regulator, a pre-determined term employed
  for regulating the value of <math|x>.
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
    <associate|auto-4|<tuple|1.3|1>>
    <associate|auto-5|<tuple|1.4|2>>
    <associate|equation:maxent eq1|<tuple|2|1>>
    <associate|equation:maxent eq2|<tuple|4|1>>
    <associate|equation:maxent partition function|<tuple|3|1>>
    <associate|section: Maximum-Entropy Principle|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Maximum-Entropy Principle
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Maximum-Entropy Principle
      Shall Minimize Relative Entropy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Prior Knowledge Furnishes
      Free Theory or Regulator <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>* When Is
      <with|mode|<quote|math>|\<lambda\><rsub|\<star\>>> Solvable? (TODO)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>