<TeXmacs|2.1>

<style|<tuple|letter|termes-font>>

<\body>
  Let <math|S<around*|(|x|)>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>> a
  scalar function, and <math|f<around*|(|x|)>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>>
  represent <math|m> independent constraints. Apparently,
  <math|m\<leqslant\>n>. We want to write down a partition for <math|S>
  constrained by <math|f>. Let <math|\<cal-M\><rsub|f>> be the
  <math|<around*|(|n-m|)>>-dimension manifold determined by <math|f>. So, the
  partition function of <math|S> constrained by <math|f> is

  <\equation>
    Z=<big|int><rsub|\<cal-M\><rsub|f>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)>.
  </equation>

  But, to calculate this expression, we have to determine what the
  <math|\<cal-M\><rsub|f>> explicitly is. For example, we have to solve the
  equations

  <\equation*>
    <tabular*|<tformat|<table|<row|<cell|f<rsup|1><around*|(|x<rsup|1>,\<ldots\>,x<rsup|n>|)>=0;>>|<row|<cell|\<ldots\>>>|<row|<cell|f<rsup|m><around*|(|x<rsup|1>,\<ldots\>,x<rsup|n>|)>=0.>>>>>
  </equation*>

  For example, if for any <math|x\<in\>\<bbb-R\><rsup|n>>, the Jacobian

  <\equation*>
    <matrix|<tformat|<table|<row|<cell|<frac|\<partial\>f<rsup|1>|\<partial\>x<rsup|1>>>|<cell|\<cdots\>>|<cell|<frac|\<partial\>f<rsup|1>|\<partial\>x<rsup|m>>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|<frac|\<partial\>f<rsup|m>|\<partial\>x<rsup|1>>>|<cell|\<cdots\>>|<cell|<frac|\<partial\>f<rsup|m>|\<partial\>x<rsup|m>>>>>>>
  </equation*>

  has non-vanishing determinant, then there is a function
  <math|g:\<bbb-R\><rsup|n-m>\<rightarrow\>\<bbb-R\><rsup|m>> such that,

  <\equation*>
    <tabular*|<tformat|<table|<row|<cell|f<rsup|1><around*|(|g<rsup|1><around*|(|x<rsup|m+1:n>|)>,\<ldots\>,g<rsup|m><around*|(|x<rsup|m+1:n>|)>,x<rsup|m+1>,\<ldots\>,x<rsup|n>|)>=0;>>|<row|<cell|\<ldots\>>>|<row|<cell|f<rsup|1><around*|(|g<rsup|1><around*|(|x<rsup|m+1:n>|)>,\<ldots\>,g<rsup|m><around*|(|x<rsup|m+1:n>|)>,x<rsup|m+1>,\<ldots\>,x<rsup|n>|)>=0.>>>>>
  </equation*>

  This is ensured by inverse mapping theorem. So, we have an explicit
  expression for the partition function

  <\equation*>
    <big|int><rsub|\<cal-M\><rsub|f>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)>\<rightarrow\><big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>x
    exp<around*|{|-S<around*|(|g<rsup|1><around*|(|x<rsup|m+1:n>|)>,\<ldots\>,g<rsup|m><around*|(|x<rsup|m+1:n>|)>,x<rsup|m+1>,\<ldots\>,x<rsup|n>|)>|}>.
  </equation*>

  This process is quite complicated. A better choice is considering
  <math|\<delta\>>-function, like <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|f<around*|(|x|)>|)>>.
  But, we must be caution with <math|\<delta\>>-function, since we have known
  that, when <math|m=n>, <math|\<cal-M\><rsub|f>> becomes a collection of
  discrete points, and

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|f<around*|(|x|)>|)>=<big|sum><rsub|x\<in\>\<cal-M\><rsub|f>>exp<around*|(|-S<around*|(|x|)>|)>
    <around*|\||<frac|\<partial\>f|\<partial\>x>|\|><rsup|-1><around*|(|x|)>,
  </equation*>

  where <math|<around*|\||\<partial\>f/\<partial\>x|\|>> represents the
  determinat of Jacobian. There appears an extra factor beside the
  <math|<big|sum><rsub|x\<in\>\<cal-M\><rsub|f>>exp<around*|(|-S<around*|(|x|)>|)>>.
  So, it should be

  <\equation>
    Z=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|f<around*|(|x|)>|)><around*|\||<frac|\<partial\>f|\<partial\>x>|\|><around*|(|x|)>.<label|eq2>
  </equation>

  This is the case of <math|m=n>. When <math|m\<less\>n>, and when the
  previous condition of Jacobian holds, we expect the result

  <\equation*>
    Z=<big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>y
    exp<around*|{|-S<around*|(|g<rsup|1><around*|(|y|)>,\<ldots\>,g<rsup|m><around*|(|y|)>,y<rsup|1>,\<ldots\>,y<rsup|n-m>|)>|}>.
  </equation*>

  For this, we try

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|f<around*|(|x|)>|)>
    <around*|\||<frac|\<partial\>f|\<partial\>x>|\|><around*|(|x|)>.
  </equation*>

  By inserting an unity, we get

  <\equation*>
    <\align>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|f<around*|(|x|)>|)><around*|\||<frac|\<partial\>f|\<partial\>x>|\|><around*|(|x|)>
      <around*|[|<big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>y
      \<delta\><around*|(|x<rsup|m+1>-y<rsup|1>|)>\<cdots\>\<delta\><around*|(|x<rsup|n>-y<rsup|n-m>|)>|]>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>y
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      exp<around*|(|-S<around*|(|x|)>|)> <around*|[|\<delta\><around*|(|f<around*|(|x|)>|)>
      \<delta\><around*|(|x<rsup|m+1>-y<rsup|1>|)>\<cdots\>\<delta\><around*|(|x<rsup|n>-y<rsup|n-m>|)>|]>
      <around*|\||<frac|\<partial\>f|\<partial\>x>|\|><around*|(|x|)>.>>>>
    </align>
  </equation*>

  Define <math|<wide|f|~><rsub|y><around*|(|x|)>\<assign\><around*|(|f<rsup|1><around*|(|x|)>,\<ldots\>,f<rsup|m><around*|(|x|)>,x<rsup|m+1>-y<rsup|1>,\<ldots\>,x<rsup|n>-y<rsup|n-m>|)>>.
  So, <math|<around*|\||\<partial\><wide|f|~>/\<partial\>x|\|>\<equiv\><around*|\||\<partial\>f/\<partial\>x|\|>>,
  where the first derivative is taken on <math|<around*|(|x<rsup|1>,\<ldots\>,x<rsup|m>|)>>
  only. Integrating over <math|x> gives the expression that we need

  <\equation*>
    <\align>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>y
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      exp<around*|(|-S<around*|(|x|)>|)> \<delta\><around*|(|<wide|f|~><rsub|y><around*|(|x|)>|)>
      <around*|\||<frac|\<partial\><wide|f|~><rsub|y>|\<partial\>x>|\|><around*|(|x|)>>>|<row|<cell|=>|<cell|<big|int><rsub|\<bbb-R\><rsup|n-m>>\<mathd\>y
      exp<around*|{|-S<around*|(|g<rsup|1><around*|(|y|)>,\<ldots\>,g<rsup|m><around*|(|y|)>,y<rsup|1>,\<ldots\>,y<rsup|n-m>|)>|}>.>>>>
    </align>
  </equation*>

  For example, we can use equation <reference|eq2> to compute circumference.
  But, it is still confusing, since it depends on the choice of coordinates
  <math|<around*|(|x<rsup|1>,\<ldots\>,x<rsup|m>|)>> that are to be solved as
  function <math|g<around*|(|x<rsup|m+1:n>|)>>.
</body>

<\initial>
  <\collection>
    <associate|math-font|math-termes>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|eq2|<tuple|2|?>>
  </collection>
</references>