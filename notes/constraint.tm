<TeXmacs|2.1>

<style|book>

<\body>
  <section|Constraint>

  <subsection|From Constraints to Sub-manifold (TODO)>

  A collection of constraints can define a sub-manifold embedded in a
  higher-dimensional Euclidean space. For example, consider the constraint
  <math|x<rsup|2>+y<rsup|2>-1=0> where <math|<around*|(|x,y|)>\<in\>\<bbb-R\><rsup|2>>.
  It describes an <math|1>-dimensional sub-manifold (a circle) in
  <math|2>-dimensional Euclidean space (a plane).

  Generally, constraints on <math|\<bbb-R\><rsup|n>> can be given by a
  function <math|f:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>> as
  <math|f<around*|(|x|)>=0>. Apparently, <math|m\<leqslant\>n>. If for each
  <math|x\<in\>\<bbb-R\><rsup|n>>, the Jacobian

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|<frac|\<partial\>f<rsup|1>|\<partial\>x<rsup|1>>>|<cell|\<cdots\>>|<cell|<frac|\<partial\>f<rsup|1>|\<partial\>x<rsup|m>>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|<frac|\<partial\>f<rsup|m>|\<partial\>x<rsup|1>>>|<cell|\<cdots\>>|<cell|<frac|\<partial\>f<rsup|m>|\<partial\>x<rsup|m>>>>>>>
  </equation*>

  is non-singular (has non-vanishing determinant), then there is a function
  <math|g:\<bbb-R\><rsup|n-m>\<rightarrow\>\<bbb-R\><rsup|m>> such that
  <math|f<around*|(|g<around*|(|x|)>,x|)>=0>. That is, the first <math|m>
  coordinates are fully determined by the rest. This is ensured by inverse
  mapping theorem. Thus, <math|g> is an embedding of the manifold given by
  constraints <math|f> into the Euclidean space <math|\<bbb-R\><rsup|n>>.

  <em|The non-singularity of Jacobian does not always hold.> In the previous
  example, the Jacobian is an <math|1\<times\>1> matrix
  <math|\<partial\>f/\<partial\>x=2x> (let <math|x> be <math|x<rsup|1>> and
  <math|y> be <math|x<rsup|2>>). It vanishes at <math|<around*|(|0,1|)>> and
  <math|<around*|(|0,-1|)>> on the circle. But, if we use polar coordinate
  <math|<around*|(|\<theta\>,r|)>\<in\><around*|[|0,2\<pi\>|)>\<times\><around*|[|0,+\<infty\>|)>>
  instead, the Jacobian becomes <math|\<partial\>f/\<partial\>\<theta\>\<equiv\>1>.
  If the Jacobian is singular only on some boundaries (like the
  <math|<around*|(|0,1|)>> and <math|<around*|(|0,-1|)>> on the circle), we
  can \Pcut\Q the sub-manifold along these boundaries into a collection of
  sub-manifolds, each of which has a non-singular Jacobian.

  If we use another set of coordinate, say
  <math|<around*|(|x<rsup|2>,\<ldots\>,x<rsup|m+1>|)>>, instead of
  <math|<around*|(|x<rsup|1>,\<ldots\>,x<rsup|m>|)>> for solving the
  constraints <math|f>, we will obtain a different embedding map <math|g>.
  So, the embedding map depends on which coordinates we choose. This is easy
  to understand since we can freely rotate the sub-manifold in the Euclidean
  space, and there is a different embedding map for every rotation angle.

  <subsection|>

  Following the previous section, we are to examine how the partition
  functional on a sub-manifold can be determined by the constraints that
  define the sub-manifold. Let <math|S:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>>
  a scalar function. Let <math|\<cal-M\><rsub|f>> be the
  <math|<around*|(|n-m|)>>-dimension sub-manifold determined by constraints
  <math|f:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>>. If we want to
  write down a partition functional with the constraints, we have to solve
  the embedding map <math|g:\<bbb-R\><rsup|n-m>\<rightarrow\>\<bbb-R\><rsup|m>>
  such that <math|f<around*|(|g<around*|(|x|)>,x|)>=0>. So, the partition
  functional on a test function <math|\<varphi\>> is defined by

  <\equation>
    Z<around*|(|\<varphi\>|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>x
    exp<around*|(|-S<around*|(|g<around*|(|x|)>,x|)>|)>
    \<varphi\><around*|(|x|)>.
  </equation>

  But, the inverse mapping theorem only ensures the existence of <math|g>,
  and generally <math|g> is hard to be solved out of <math|f>. A better
  choice is using <math|\<delta\>>-function, like

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>x
    exp<around*|(|-S<around*|(|g<around*|(|x|)>,x|)>|)>\<rightarrow\><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|f<around*|(|x|)>|)>.
  </equation*>

  But, we must be caution with <math|\<delta\>>-function, since we have known
  that, when <math|m=n>, <math|\<cal-M\><rsub|f>> becomes a collection of
  discrete points, and

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|f<around*|(|x|)>|)>=<big|sum><rsub|x\<in\>\<cal-M\><rsub|f>>exp<around*|(|-S<around*|(|x|)>|)>
    <around*|\||det<around*|(|<frac|\<partial\>f|\<partial\>x>|)>|\|><rsup|-1><around*|(|x|)>.
  </equation*>

  There appears an extra factor beside the
  <math|<big|sum><rsub|x\<in\>\<cal-M\><rsub|f>>exp<around*|(|-S<around*|(|x|)>|)>>.
  So, it should be

  <\equation>
    Z<around*|(|\<varphi\>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|f<around*|(|x|)>|)><with|color|blue|<around*|\||det<around*|(|<frac|\<partial\>f|\<partial\>x>|)>|\|><around*|(|x|)>>
    \<varphi\><around*|(|x|)>.<label|eq2>
  </equation>

  This is the case of <math|m=n>. We are to show that this expression also
  holds for <math|m\<less\>n>. By inserting an unit term (the
  <math|<around*|[|\<ldots\>|]>>), we get

  <\small>
    <\equation*>
      <\align>
        <tformat|<table|<row|<cell|Z<around*|(|\<varphi\>|)>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
        exp<around*|(|-S<around*|(|x|)>|)>
        \<delta\><around*|(|f<around*|(|x|)>|)><around*|\||det<around*|(|<frac|\<partial\>f|\<partial\>x>|)>|\|><around*|(|x|)>
        <around*|[|<big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>y
        \<delta\><around*|(|x<rsup|m+1>-y<rsup|1>|)>\<cdots\>\<delta\><around*|(|x<rsup|n>-y<rsup|n-m>|)>|]>
        \<varphi\><around*|(|x|)>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>y
        <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
        exp<around*|(|-S<around*|(|x|)>|)>
        <around*|[|\<delta\><around*|(|f<around*|(|x|)>|)>
        \<delta\><around*|(|x<rsup|m+1>-y<rsup|1>|)>\<cdots\>\<delta\><around*|(|x<rsup|n>-y<rsup|n-m>|)>|]>
        <around*|\||det<around*|(|<frac|\<partial\>f|\<partial\>x>|)>|\|><around*|(|x|)>.>>>>
      </align>
    </equation*>
  </small>

  Define <math|<wide|f|~><rsub|y><around*|(|x|)>\<assign\><around*|(|f<rsup|1><around*|(|x|)>,\<ldots\>,f<rsup|m><around*|(|x|)>,x<rsup|m+1>-y<rsup|1>,\<ldots\>,x<rsup|n>-y<rsup|n-m>|)>>.
  So, <math|<around*|\||\<partial\><wide|f|~>/\<partial\>x|\|>\<equiv\><around*|\||\<partial\>f/\<partial\>x|\|>>,
  where the first derivative is taken on <math|<around*|(|x<rsup|1>,\<ldots\>,x<rsup|m>|)>>
  only. Integrating over <math|x> gives the expression that we need

  <\small>
    <\equation*>
      <\align>
        <tformat|<table|<row|<cell|Z<around*|(|\<varphi\>|)>=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>y
        <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
        exp<around*|(|-S<around*|(|x|)>|)>
        \<delta\><around*|(|<wide|f|~><rsub|y><around*|(|x|)>|)>
        <around*|\||det<around*|(|<frac|\<partial\><wide|f|~><rsub|y>|\<partial\>x>|)>|\|><around*|(|x|)>
        \<varphi\><around*|(|x|)>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>y
        exp<around*|{|-S<around*|(|g<around*|(|y|)>,y|)>|}>
        \<varphi\><around*|(|g<around*|(|y|)>,y|)>.>>>>
      </align>
    </equation*>
  </small>

  <subsection|>

  There is a gauge in the constraints <math|f>: <math|f<around*|(|x|)>=0> is
  equivalent to <math|h<around*|(|x|)> f<around*|(|x|)>=0> for any
  non-vanishing <math|h>. For any <math|x> in the sub-manifold given by
  <math|f> (thus <math|f<around*|(|x|)>=0>), the Jacobian of <math|h f> is

  <\equation*>
    <frac|\<partial\><around*|(|h f|)>|\<partial\>x><around*|(|x|)>=<frac|\<partial\>h|\<partial\>x><around*|(|x|)>
    f<around*|(|x|)>+h<around*|(|x|)> <frac|\<partial\>f|\<partial\>x>=h<around*|(|x|)>
    <frac|\<partial\>f|\<partial\>x><around*|(|x|)>.
  </equation*>

  Thus, the determinant becomes <math|h<rsup|m><around*|(|x|)>
  det<around*|(|\<partial\>f/\<partial\>x|)><around*|(|x|)>>. If the Jacobian
  of <math|f> is everywhere non-singular, then, by choosing
  <math|h<around*|(|x|)>=<around*|[|det<around*|(|\<partial\>f/\<partial\>x|)>|]><rsup|-m>>,
  we get <math|det<around*|(|\<partial\><around*|(|h
  f|)>/\<partial\>x|)><around*|(|x|)>=1> for each <math|x>. This provides a
  trick to \Pnormalize\Q the constraints <math|f> such that
  <math|det<around*|(|\<partial\>f/\<partial\>x|)>=1>. And once <math|f> is
  normalized so that, then we have

  <\equation>
    Z<around*|(|\<varphi\>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|f<around*|(|x|)>|)>
    \<varphi\><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x<big|int><rsub|\<bbb-R\>>\<mathd\>\<lambda\>
    exp<around*|(|-S<around*|(|x|)>+\<mathi\> \<lambda\> f<around*|(|x|)>|)>
    \<varphi\><around*|(|x|)>.
  </equation>

  This expression reminds us of the Lagrangian multiplier method that deals
  with constraints in optimization. The only difference is that multiplier
  here (the <math|\<mathi\> \<lambda\>>) is purely imaginary.
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
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|?>>
    <associate|eq2|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Constraint <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>From Constraints to
      Submanifold (TODO) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>