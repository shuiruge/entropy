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

  <subsection|Maximum-Entropy Principle Maximize Relative Entropy>

  As discussed in section <reference|section: Relative Entropy>, Shannon
  entropy is not well-defined for continuous random variable, while the
  relative entropy is proper for both discrete and continuous random
  variables. For this reason, we suggest that the objective to be maximized
  shall be relative entropy instead of Shannon entropy. Comparing with
  Shannon entropy, relative entropy needs an extra distribution, which
  describes the prior knowledge. It then characterizes the relative
  uncertainty (surprise) of a distribution to the distribution of prior
  knowledge.

  Given a distribution <math|Q> of <math|X> that describes the prior
  knowledge, the basic problem is to find a distribution <math|P> of <math|X>
  such that the relative entropy <math|H<around*|[|p,q|]>> is maximized under
  a set of restrictions <math|<around*|{|<around*|\<langle\>|f<rsub|\<alpha\>>|\<rangle\>><rsub|p>=<wide|f|\<bar\>><rsub|\<alpha\>>\|\<alpha\>=1,\<ldots\>,m,f<rsub|r>:\<cal-X\>\<rightarrow\>\<bbb-R\>|}>>.
  The notation <math|<around*|\<langle\>|\<cdots\>|\<rangle\>><rsub|p>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x|)>\<cdots\>> represents expectation. The <math|P>, thus, is
  the most unbiased distribution relative to prior knowledge with the
  restrictions fulfilled.

  To solve this problem, we use variational principle with Lagrangian
  multipliers. There are two kinds of constraints. One from the restrictions
  <math|<around*|\<langle\>|f<rsub|\<alpha\>>|\<rangle\>><rsub|p>=<wide|f|\<bar\>><rsub|\<alpha\>>>
  for each <math|\<alpha\>>; and the other from
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x|)>=1>. Also, recall
  that the relative entropy <math|H<around*|[|p,q|]>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x|)>ln<around*|(|p<around*|(|x|)>/q<around*|(|x|)>|)>>.
  Altogether, the loss functional becomes

  <\equation>
    L<around*|[|p,\<lambda\>,\<mu\>|]>\<assign\>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>ln<frac|p<around*|(|x|)>|q<around*|(|x|)>>+\<lambda\><rsup|\<alpha\>><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>f<rsub|\<alpha\>><around*|(|x|)>-<wide|f|\<bar\>><rsub|\<alpha\>>|)>+\<mu\><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>-1|)>.
  </equation>

  So, we have

  <\align>
    <tformat|<table|<row|<cell|<frac|\<delta\>L|\<delta\>p<around*|(|x|)>><around*|[|p,\<lambda\>,\<mu\>|]>=>|<cell|-ln
    p<around*|(|x|)>-1+ln q<around*|(|x|)>+\<lambda\><rsup|\<alpha\>>
    f<rsub|\<alpha\>><around*|(|x|)>+\<mu\>;>>|<row|<cell|<frac|\<partial\>L|\<partial\>\<lambda\><rsup|\<alpha\>>><around*|[|p,\<lambda\>,\<mu\>|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>f<rsub|\<alpha\>><around*|(|x|)>-<wide|f|\<bar\>><rsub|\<alpha\>>;>>|<row|<cell|<frac|\<partial\>L|\<partial\>\<mu\>><around*|[|p,\<lambda\>,\<mu\>|]>=>|<cell|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>-1.>>>>
  </align>

  These equations shall vanish on extremum. If
  <math|<around*|(|p<rsub|\<star\>>,\<lambda\><rsub|\<star\>>,\<mu\><rsub|\<star\>>|)>>
  is an extremum, then we shall have

  <\equation>
    <frac|\<partial\>ln Z|\<partial\>\<lambda\><rsup|\<alpha\>>><around*|(|\<theta\><rsub|\<star\>>|)>=<wide|f|\<bar\>><rsub|\<alpha\>>
  </equation>

  for each <math|\<alpha\>=1,\<ldots\>,m>, where

  <\equation>
    Z<around*|(|\<lambda\>|)>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> exp<around*|(|\<lambda\><rsup|\<alpha\>>
    f<rsub|\<alpha\>><around*|(|x|)>|)>;
  </equation>

  and

  <\equation>
    p<rsub|\<star\>><around*|(|x|)>=p<around*|(|x,\<lambda\><rsub|\<star\>>|)>,
  </equation>

  where

  <\equation>
    p<around*|(|x,\<lambda\>|)>\<assign\>Z<rsup|-1><around*|(|\<lambda\>|)>
    q<around*|(|x|)> exp<around*|(|\<lambda\><rsup|\<alpha\>>
    f<rsub|\<alpha\>><around*|(|x|)>|)>.
  </equation>

  Notice that the <math|\<mu\><rsub|\<star\>>> has been included in the
  <math|Z>.

  <subsection|Prior Knowledge Furnishes Free Term or Regulator>

  Compared with the maximum-entropy principle derived from maximizing Shannon
  entropy, we get an extra factor <math|q<around*|(|x|)>> in
  <math|p<around*|(|x,\<lambda\>|)>>. TODO

  <subsection|When <math|\<theta\><rsub|\<star\>>> is solvable?>

  TODO
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
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|?>>
    <associate|auto-6|<tuple|1.5|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Maximum-Entropy
      Principle> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Maximum-Entropy Principle
      Maximize Relative Entropy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Prior Knowledge Furnishes
      Free Term or Regulator <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>When
      <with|mode|<quote|math>|\<theta\><rsub|\<star\>>> is solvable?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>
    </associate>
  </collection>
</auxiliary>