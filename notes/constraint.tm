<TeXmacs|2.1>

<style|book>

<\body>
  <section|Constraint in Partition Functional>

  <subsection|Constraints Give a Sub-manifold Embedded in Euclidean Space>

  A collection of constraints can define a sub-manifold embedded in a
  higher-dimensional Euclidean space. For example, consider the constraint
  <math|x<rsup|2>+y<rsup|2>-1=0> where <math|<around*|(|x,y|)>\<in\>\<bbb-R\><rsup|2>>.
  It describes an <math|1>-dimensional sub-manifold (a circle) in
  <math|2>-dimensional Euclidean space (a plane).

  Generally, constraints on <math|\<bbb-R\><rsup|n>> can be given by a
  function <math|f:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>> as
  <math|f<around*|(|x|)>=0>. Apparently, <math|m\<leqslant\>n>. If for each
  <math|x\<in\>\<bbb-R\><rsup|n>>, the Jacobian (we used coordinates
  <math|<around*|(|x<rsup|1>,\<ldots\>,x<rsup|m>|)>>, but this is arbitrary)

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|<frac|\<partial\>f<rsup|1>|\<partial\>x<rsup|1>>>|<cell|\<cdots\>>|<cell|<frac|\<partial\>f<rsup|1>|\<partial\>x<rsup|m>>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|<frac|\<partial\>f<rsup|m>|\<partial\>x<rsup|1>>>|<cell|\<cdots\>>|<cell|<frac|\<partial\>f<rsup|m>|\<partial\>x<rsup|m>>>>>>>
  </equation*>

  is non-singular, then there is a function
  <math|g:\<bbb-R\><rsup|n-m>\<rightarrow\>\<bbb-R\><rsup|m>> such that
  <math|f<around*|(|g<around*|(|x|)>,x|)>=0>. That is, the first <math|m>
  coordinates are fully determined by the rest. This is ensured by
  <hlink|implicit function theorem|https://en.wikipedia.org/wiki/Implicit_function_theorem>.
  Thus, <math|g> is an embedding of the manifold given by constraints
  <math|f> into the Euclidean space <math|\<bbb-R\><rsup|n>>.

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

  If we use another set of coordinates, say
  <math|<around*|(|x<rsup|2>,\<ldots\>,x<rsup|m+1>|)>>, instead of
  <math|<around*|(|x<rsup|1>,\<ldots\>,x<rsup|m>|)>> for solving the
  constraints <math|f>, we will obtain a different embedding map <math|g>.
  So, <em|the embedding map depends on which coordinates we choose>. This is
  easy to understand, since we can freely rotate the sub-manifold in the
  Euclidean space, and for every rotation angle, the embedding is different.

  <subsection|>

  Following the previous section, we are to examine how the partition
  functional on a sub-manifold can be determined by the constraints that
  define the sub-manifold. Let <math|S:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>>
  a scalar function. Let <math|\<cal-M\><rsub|f>> be the
  <math|<around*|(|n-m|)>>-dimension sub-manifold determined by constraints
  <math|f:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>>. If we want to
  write down a partition functional with the constraints, we have to solve
  the embedding map <math|g:\<bbb-R\><rsup|n-m>\<rightarrow\>\<bbb-R\><rsup|m>>
  such that <math|f<around*|(|g<around*|(|x|)>,x|)>=0>. Then, the partition
  functional on a test function <math|\<varphi\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>>
  is defined by

  <\equation>
    Z<around*|(|\<varphi\>|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>x
    exp<around*|(|-S<around*|(|g<around*|(|x|)>,x|)>|)>
    \<varphi\><around*|(|g<around*|(|x|)>,x|)>.
  </equation>

  \;

  Even though, the implicit function theorem ensures the existence and
  uniqueness of <math|g>, generally <math|g> is too hard to be solved out of
  <math|f>. A better choice is using <math|\<delta\>>-function, like

  <\equation*>
    Z<around*|(|\<varphi\>|)>\<rightarrow\><big|int><rsub|\<bbb-R\><rsup|<with|color|blue|n>>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)> <with|color|blue|\<delta\><around*|(|f<around*|(|x|)>|)>>
    \<varphi\><around*|(|x|)>.
  </equation*>

  But, we must be caution with <math|\<delta\>>-function, since we have known
  that, when <math|m=n> and there is an unique <math|x<rsub|\<star\>>> such
  that <math|f<around*|(|x<rsub|\<star\>>|)>=0>, we have

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|f<around*|(|x|)>|)>
    \<varphi\><around*|(|x|)>=exp<around*|(|-S<around*|(|x<rsub|\<star\>>|)>|)>
    \<varphi\><around*|(|x<rsub|\<star\>>|)>
    <around*|\||det<around*|(|<frac|\<partial\>f|\<partial\>x>|)>|\|><rsup|-1><around*|(|x<rsub|\<star\>>|)>.
  </equation*>

  There appears an extra factor beside the
  <math|exp<around*|(|-S<around*|(|x<rsub|\<star\>>|)>|)>
  \<varphi\><around*|(|x<rsub|\<star\>>|)>>. So, an educated guess should be

  <\equation>
    Z<around*|(|\<varphi\>|)>\<rightarrow\><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|f<around*|(|x|)>|)><with|color|blue|<around*|\||det<around*|(|<frac|\<partial\>f|\<partial\>x>|)>|\|><around*|(|x|)>>
    \<varphi\><around*|(|x|)>.<label|eq2>
  </equation>

  \;

  We are to show that this expression holds for <math|m\<leqslant\>n>. By
  inserting an unit term (the <math|<around*|[|\<ldots\>|]>>), we find

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
  only. Thus,<math|>

  <\equation*>
    Z<around*|(|\<varphi\>|)>=<big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>y
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|<wide|f|~><rsub|y><around*|(|x|)>|)>
    <around*|\||det<around*|(|<frac|\<partial\><wide|f|~><rsub|y>|\<partial\>x>|)>|\|><around*|(|x|)>
    \<varphi\><around*|(|x|)>.
  </equation*>

  While integrating over <math|x>, because of the
  <math|\<delta\><around*|(|<wide|f|~><rsub|y><around*|(|x|)>|)>
  \ <around*|\||det<around*|(|\<partial\><wide|f|~><rsub|y>/\<partial\>x|)>|\|><around*|(|x|)>>
  term, we formally solve the equation <math|<wide|f|~><around*|(|x|)>=0>,
  which, by implicit function theorem, has the unique solution
  <math|x<rsup|m+1>=y<rsup|1>,\<ldots\>,x<rsup|n>=y<rsup|n-m>> and hence
  <math|x<rsup|1>=g<rsup|1><around*|(|y|)>,\<ldots\>,x<rsup|m>=g<rsup|m><around*|(|y|)>>,
  and plug back to the rest terms, thus

  <\equation*>
    Z<around*|(|\<varphi\>|)>=<big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>y
    exp<around*|{|-S<around*|(|g<around*|(|y|)>,y|)>|}>
    \<varphi\><around*|(|g<around*|(|y|)>,y|)>,
  </equation*>

  \ which is what we need.

  <subsection|Normalization of Constraints Furnishes Lagrangian Multiplier>

  There is a gauge in the constraints <math|f:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>>.
  That is, <math|f<around*|(|x|)>=0> is equivalent to <math|h<around*|(|x|)>
  f<around*|(|x|)>=0> for any non-singular matrix valued function
  <math|H:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m\<times\>m>>. The
  gauge is removed by choosing an <math|H>. We are to show that, when the
  Jacobian of <math|f> is non-singular, we can find a proper <math|H> such
  that the \Pnormalized\Q constraints <math|<wide|f|^>\<assign\>H f> has an
  unit determinant.

  For any <math|x> in the sub-manifold given by <math|f> (thus
  <math|f<around*|(|x|)>=0>), the Jacobian of <math|<wide|f|^>> is

  <\equation*>
    <frac|\<partial\><wide|f|^>|\<partial\>x><around*|(|x|)>=<frac|\<partial\><around*|(|H
    f|)>|\<partial\>x><around*|(|x|)>=<frac|\<partial\>H|\<partial\>x><around*|(|x|)>
    f<around*|(|x|)>+H<around*|(|x|)> <frac|\<partial\>f|\<partial\>x>=H<around*|(|x|)>
    <frac|\<partial\>f|\<partial\>x><around*|(|x|)>.
  </equation*>

  Thus, the determinant becomes <math|det<around*|(|H|)>
  det<around*|(|\<partial\>f/\<partial\>x|)>>. If the Jacobian of <math|f> is
  non-singular, then, by choosing an <math|H> such that
  <math|det<around*|(|H|)>=<around*|[|det<around*|(|\<partial\>f/\<partial\>x|)>|]><rsup|-1>>,
  we get <math|det<around*|(|\<partial\><wide|f|^>/\<partial\>x|)>=1>.

  With the normalized constraints <math|<wide|f|^>>, we have

  <\equation>
    Z<around*|(|\<varphi\>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|<wide|f|^><around*|(|x|)>|)>
    \<varphi\><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x<big|int><rsub|\<bbb-R\>>\<mathd\>\<lambda\>
    exp<around*|(|-S<around*|(|x|)>+\<mathi\> \<lambda\>
    <wide|f|^><around*|(|x|)>|)> \<varphi\><around*|(|x|)>,
  </equation>

  where we have used the Fourier transform
  <math|\<delta\><around*|(|x|)>=<big|int><rsub|\<bbb-R\>>\<mathd\>\<lambda\>
  exp<around*|(|\<mathi\> \<lambda\> x|)>>. This expression reminds us of the
  Lagrangian multiplier method that deals with constraints in optimization.
  The only difference is that multiplier here (the <math|\<mathi\>
  \<lambda\>>) is purely imaginary.
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
    <associate|auto-4|<tuple|1.3|2>>
    <associate|eq2|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Constraint <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Constraints Give a
      Sub-manifold Embedded in Euclidean Space
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Normalization of Constraints
      Furnishes Lagrangian Multiplier <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>
    </associate>
  </collection>
</auxiliary>