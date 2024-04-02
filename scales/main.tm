<TeXmacs|2.1>

<style|<tuple|generic|pagella-font>>

<\body>
  <subsection|Basics>

  <subsubsection|Configuration Space>

  Let <math|z\<in\>\<bbb-R\><rsup|E>> represent the embeding vector,
  <math|m=1,\<ldots\>,M> is the categorical label, and
  <math|q<rsub|m><around*|(|z,\<theta\>|)>\<assign\>softmax<rsub|m><around*|(|f<around*|(|z,\<theta\>|)>|)>>
  with <math|f<around*|(|\<cdummy\>,\<theta\>|)>> a neural network
  parameterized by <math|\<theta\>>. Given <math|<around*|(|z,\<theta\>|)>>,
  we have

  <\equation>
    <frac|\<partial\>|\<partial\>\<theta\>>ln
    q<rsub|m>=<frac|\<partial\>f<rsub|m>|\<partial\>\<theta\>>-<big|sum><rsub|\<alpha\>>q<rsub|\<alpha\>>
    <frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>>.<label|equ:q
    derivative>
  </equation>

  Consider <math|f<rsub|\<alpha\>><around*|(|z,\<theta\>|)>=<big|sum><rsub|\<beta\>>U<rsub|\<alpha\>\<beta\>>
  \<sigma\><around*|(|<big|sum><rsub|\<gamma\>>W<rsub|\<beta\>\<gamma\>>
  z<rsub|\<gamma\>>+b<rsub|\<beta\>>|)>+c<rsub|\<alpha\>>>, where
  <math|\<sigma\>> represents the ReLU function, with
  <math|\<sigma\><rsup|<around*|(|n|)>><around*|(|0|)>=1> only when
  <math|n=1> otherwise zero. So, when <math|\<theta\>=0> (i.e.
  <math|U,c,W,b=0>), all the non-vanishing terms are<\footnote>
    The non-vanishing terms of the first derivative are

    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>U<rsub|\<alpha\>\<beta\>>><around*|(|z,\<theta\>|)>=>|<cell|\<sigma\><around*|(|<big|sum><rsub|\<gamma\>>W<rsub|\<beta\>\<gamma\>>
      z<rsub|\<gamma\>>+b<rsub|\<beta\>>|)>;>>|<row|<cell|<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>c<rsub|\<alpha\>>><around*|(|z,\<theta\>|)>=>|<cell|1;>>|<row|<cell|<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>W<rsub|\<beta\>\<gamma\>>><around*|(|z,\<theta\>|)>=>|<cell|U<rsub|\<alpha\>\<beta\>>
      \<sigma\><rprime|'><around*|(|<big|sum><rsub|\<gamma\><rprime|'>>W<rsub|\<beta\>\<gamma\><rprime|'>>
      z<rsub|\<gamma\><rprime|'>>+b<rsub|\<beta\>>|)>
      z<rsub|\<gamma\>>;>>|<row|<cell|<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>b<rsub|\<beta\>>><around*|(|z,\<theta\>|)>=>|<cell|U<rsub|\<alpha\>\<beta\>>
      \<sigma\><rprime|'><around*|(|<big|sum><rsub|\<gamma\><rprime|'>>W<rsub|\<beta\>\<gamma\><rprime|'>>
      z<rsub|\<gamma\><rprime|'>>+b<rsub|\<beta\>>|)>.>>>>
    </align>

    Thus, the non-vanishing terms of the second derivative are

    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>><around*|(|z,\<theta\>|)>=>|<cell|\<sigma\><rprime|'><around*|(|<big|sum><rsub|\<gamma\><rprime|'>>W<rsub|\<beta\>\<gamma\><rprime|'>>
      z<rsub|\<gamma\><rprime|'>>+b<rsub|\<beta\>>|)>
      z<rsub|\<gamma\>>;>>|<row|<cell|<frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>><around*|(|z,\<theta\>|)>=>|<cell|\<sigma\><rprime|'><around*|(|<big|sum><rsub|\<gamma\><rprime|'>>W<rsub|\<beta\>\<gamma\><rprime|'>>
      z<rsub|\<gamma\><rprime|'>>+b<rsub|\<beta\>>|)>;>>|<row|<cell|<frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>W<rsub|\<beta\>\<gamma\>>\<partial\>W<rsub|\<beta\>\<gamma\><rprime|'>>><around*|(|z,\<theta\>|)>=>|<cell|U<rsub|\<alpha\>\<beta\>>
      \<sigma\><rprime|''><around*|(|<big|sum><rsub|\<gamma\><rprime|''>>W<rsub|\<beta\>\<gamma\><rprime|''>>
      z<rsub|\<gamma\><rprime|''>>+b<rsub|\<beta\>>|)> z<rsub|\<gamma\>>
      z<rsub|\<gamma\><rprime|'>>;>>|<row|<cell|<frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>W<rsub|\<beta\>\<gamma\>>\<partial\>b<rsub|\<beta\>>><around*|(|z,\<theta\>|)>=>|<cell|U<rsub|\<alpha\>\<beta\>>
      \<sigma\><rprime|''><around*|(|<big|sum><rsub|\<gamma\><rprime|'>>W<rsub|\<beta\>\<gamma\><rprime|'>>
      z<rsub|\<gamma\><rprime|'>>+b<rsub|\<beta\>>|)>
      z<rsub|\<gamma\>>;>>|<row|<cell|<frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>b<rsub|\<beta\>>\<partial\>b<rsub|\<beta\>>><around*|(|z,\<theta\>|)>=>|<cell|U<rsub|\<alpha\>\<beta\>>
      \<sigma\><rprime|''><around*|(|<big|sum><rsub|\<gamma\><rprime|'>>W<rsub|\<beta\>\<gamma\><rprime|'>>
      z<rsub|\<gamma\><rprime|'>>+b<rsub|\<beta\>>|)>.>>>>
    </align>

    For higher derivatives, <math|\<sigma\><rsup|<around*|(|1|)>>> is absent.
  </footnote>

  <\equation>
    <frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>c<rsub|\<alpha\>>><around*|(|z,0|)>=1;<label|equ:dfdc>
  </equation>

  <\equation>
    <frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>><around*|(|z,0|)>=z<rsub|\<gamma\>>;<label|equ:dfdUdW>
  </equation>

  and

  <\equation>
    <frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>><around*|(|z,0|)>=1.<label|equ:dfdUdb>
  </equation>

  <subsubsection|Data and Action>

  Given the distribution of real world data <math|p>, the relative entropy
  between <math|p> and <math|q> is

  <\equation*>
    H<around*|[|p,q|]>=<big|sum><rsub|z,m>p<around*|(|z,m|)> ln
    p<around*|(|z,m|)>-<big|sum><rsub|z,m>p<around*|(|z,m|)> ln
    q<rsub|m><around*|(|z,\<theta\>|)>.
  </equation*>

  The first term is <math|\<theta\>>-independent. Thus, the action of
  <math|\<theta\>> shall be the second term, that is

  <\equation>
    S<around*|(|\<theta\>|)>\<assign\>-<big|sum><rsub|z,m>p<around*|(|z,m|)>
    ln q<rsub|m><around*|(|z,\<theta\>|)>.
  </equation>

  <with|color|dark green|Assume that <math|p<around*|(|m|)>\<assign\><big|sum><rsub|z>p<around*|(|z,m|)>=1/M>
  for all <math|m=1,\<ldots\>,M>, meaning that the data have been properly
  balanced.>

  <subsection|Taylor Expansion>

  Now, we are to Taylor expand <math|S<around*|(|\<theta\>|)>> at
  <math|\<theta\>=0>. Denote the expansion by

  <\equation>
    S<around*|(|\<theta\>|)>\<backassign\>S<rsub|0>+S<rsub|1><around*|(|\<theta\>|)>+\<cdots\>,
  </equation>

  where <math|S<rsub|n><around*|(|\<theta\>|)>\<sim\>\<theta\><rsup|n>>, and
  <math|S<rsub|0>\<assign\>S<around*|(|0|)>> is <math|\<theta\>>-independent.

  <subsubsection|Zeroth-Order>

  When <math|\<theta\>=0> (i.e. <math|U,c,W,b=0>), we have
  <math|f<rsub|\<alpha\>><around*|(|z,0|)>=0>, thus
  <math|q<rsub|\<alpha\>><around*|(|z,0|)>=softmax<rsub|\<alpha\>><around*|(|f<around*|(|z,0|)>|)>=1/M>
  for all <math|\<alpha\>=1,\<ldots\>,M>. So,

  <\equation>
    S<rsub|0>=ln M.
  </equation>

  <subsubsection|First-Order>

  Plugging in equation <reference|equ:q derivative>, we have

  <\equation*>
    <frac|\<partial\>S|\<partial\>\<theta\>>=<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<alpha\>>q<rsub|\<alpha\>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>>-<frac|\<partial\>f<rsub|m>|\<partial\>\<theta\>>|]>.
  </equation*>

  At <math|\<theta\>=0>, all terms are vanishing.<\footnote>
    By equations <reference|equ:dfdc>, <reference|equ:dfdUdW>, and
    <math|<reference|equ:dfdUdb>>, at the first order, the only term that is
    not apparently zero is derivative on <math|c>. But,

    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\>S|\<partial\>c<rsub|\<alpha\>>><around*|(|0|)>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<alpha\><rprime|'>>q<rsub|\<alpha\><rprime|'>><frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<alpha\>>>-<frac|\<partial\>f<rsub|m>|\<partial\>c<rsub|\<alpha\>>>|]>>>|<row|<cell|<around*|{|<frac|\<partial\>f|\<partial\>c>=\<cdots\>|}>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<frac|1|M><big|sum><rsub|\<alpha\><rprime|'>>\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>-\<delta\><rsub|m\<alpha\>>|]>>>|<row|<cell|<around*|{|p<around*|(|m|)>=<frac|1|M>|}>=>|<cell|<frac|1|M><big|sum><rsub|\<alpha\><rprime|'>>\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>-<frac|1|M><big|sum><rsub|m>\<delta\><rsub|m\<alpha\>>>>|<row|<cell|=>|<cell|0.>>>>
    </align>
  </footnote> So,

  <\equation>
    S<rsub|1><around*|(|\<theta\>|)>=0.
  </equation>

  <subsubsection|Second-Order>

  Taking derivative on <math|\<partial\>S/\<partial\>\<theta\>> and plugging
  in equation <reference|equ:q derivative>, we arrive at

  <\equation*>
    <frac|\<partial\><rsup|2>S|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>>=<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<alpha\>>q<rsub|\<alpha\>><around*|(|<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|'>>+<frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>>|)>-<big|sum><rsub|\<alpha\>,\<beta\>>q<rsub|\<alpha\>>q<rsub|\<beta\>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|'>>-<frac|\<partial\><rsup|2>f<rsub|m>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>>|]>.
  </equation*>

  At <math|\<theta\>=0>, we have

  <\equation*>
    <frac|\<partial\><rsup|2>S|\<partial\>c<rsub|\<alpha\>>\<partial\>c<rsub|\<beta\>>><around*|(|0|)>=<frac|\<delta\><rsub|\<alpha\>\<beta\>>|M>-<frac|1|M<rsup|2>>,
  </equation*>

  and

  <\equation*>
    <frac|\<partial\><rsup|2>S|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>><around*|(|0|)>=<frac|1|M><around*|(|\<bbb-E\><rsub|z\<sim\>p<around*|(|z|)>><around*|[|z<rsub|\<gamma\>>|]>-\<bbb-E\><rsub|z\<sim\>p<around*|(|z\|\<alpha\>|)>><around*|[|z<rsub|\<gamma\>>|]>|)>\<backassign\>J<rsub|\<alpha\>\<gamma\>>.
  </equation*>

  Other terms are all vanishing.<\footnote>
    Plugging in equation <reference|equ:dfdc>, we have

    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\><rsup|2>S|\<partial\>c<rsub|\<alpha\>>\<partial\>c<rsub|\<beta\>>><around*|(|0|)>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<gamma\>>q<rsub|\<gamma\>><frac|\<partial\>f<rsub|\<gamma\>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<gamma\>>|\<partial\>c<rsub|\<beta\>>>-<big|sum><rsub|\<gamma\>,\<gamma\><rprime|'>>q<rsub|\<gamma\>>q<rsub|\<gamma\><rprime|'>><frac|\<partial\>f<rsub|\<gamma\>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<gamma\><rprime|'>>|\<partial\>c<rsub|\<beta\>>>|]>>>|<row|<cell|<around*|{|q<rsub|\<alpha\>>=<frac|1|M>,<frac|\<partial\>f|\<partial\>c>=\<cdots\>|}>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<frac|1|M>\<delta\><rsub|\<alpha\>\<beta\>>-<frac|1|M<rsup|2>>|]>>>|<row|<cell|<around*|{|<big|sum><rsub|z,m>p<around*|(|z,m|)>=1|}>=>|<cell|<frac|\<delta\><rsub|\<alpha\>\<beta\>>|M>-<frac|1|M<rsup|2>>.>>>>
    </align>

    Plugging in equation <reference|equ:dfdUdW>, we have

    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\><rsup|2>S|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>><around*|(|0|)>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<alpha\><rprime|'>>q<rsub|\<alpha\><rprime|'>><frac|\<partial\><rsup|2>f<rsub|\<alpha\><rprime|'>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>>-<frac|\<partial\><rsup|2>f<rsub|m>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>>|]>>>|<row|<cell|<around*|{|q<rsub|\<alpha\>>=<frac|1|M>,<frac|\<partial\><rsup|2>f|\<partial\>U\<partial\>W>=\<cdots\>|}>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<frac|1|M>
      z<rsub|\<gamma\>>-\<delta\><rsub|m\<alpha\>>
      z<rsub|\<gamma\>>|]>>>|<row|<cell|=>|<cell|<frac|1|M><big|sum><rsub|z>p<around*|(|z|)>
      z<rsub|\<gamma\>>-<big|sum><rsub|z>p<around*|(|z,\<alpha\>|)>
      z<rsub|\<gamma\>>>>|<row|<cell|<around*|{|p<around*|(|z,\<alpha\>|)>=p<around*|(|\<alpha\>|)>
      p<around*|(|z\|\<alpha\>|)>|}>=>|<cell|<frac|1|M><big|sum><rsub|z>p<around*|(|z|)>
      z<rsub|\<gamma\>>-p<around*|(|\<alpha\>|)><big|sum><rsub|z>p<around*|(|z\|\<alpha\>|)>
      z<rsub|\<gamma\>>>>|<row|<cell|<around*|{|p<around*|(|\<alpha\>|)>=<frac|1|M>|}>=>|<cell|<frac|1|M><around*|(|<big|sum><rsub|z>p<around*|(|z|)>
      z<rsub|\<gamma\>>-<big|sum><rsub|z>p<around*|(|z\|\<alpha\>|)>
      z<rsub|\<gamma\>>|)>>>|<row|<cell|=>|<cell|<frac|1|M><around*|(|\<bbb-E\><rsub|z\<sim\>p<around*|(|z|)>><around*|[|z<rsub|\<gamma\>>|]>-\<bbb-E\><rsub|z\<sim\>p<around*|(|z\|\<alpha\>|)>><around*|[|z<rsub|\<gamma\>>|]>|)>.>>>>
    </align>

    Plugging in equation <math|<reference|equ:dfdUdb>>, we have

    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\><rsup|2>S|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>><around*|(|0|)>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<alpha\><rprime|'>>q<rsub|\<alpha\><rprime|'>><frac|\<partial\><rsup|2>f<rsub|\<alpha\><rprime|'>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>>-<frac|\<partial\><rsup|2>f<rsub|m>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>>|]>>>|<row|<cell|<around*|{|q<rsub|\<alpha\>>=<frac|1|M>,<frac|\<partial\><rsup|2>f|\<partial\>U\<partial\>b>=\<cdots\>|}>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<frac|1|M><big|sum><rsub|\<alpha\><rprime|'>>\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>-\<delta\><rsub|m\<alpha\>>|]>>>|<row|<cell|<around*|{|p<around*|(|m|)>=<frac|1|M>|}>=>|<cell|<frac|1|M><big|sum><rsub|\<alpha\><rprime|'>>\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>-<frac|1|M><big|sum><rsub|m>\<delta\><rsub|m\<alpha\>>>>|<row|<cell|=>|<cell|0.>>>>
    </align>
  </footnote> So,

  <\equation>
    S<rsub|2><around*|(|\<theta\>|)>=<frac|1|2><big|sum><rsub|\<alpha\>,\<beta\>><around*|(|<frac|\<delta\><rsub|\<alpha\>\<beta\>>|M>-<frac|1|M<rsup|2>>|)>c<rsub|\<alpha\>>c<rsub|\<beta\>>+<frac|1|2><big|sum><rsub|\<alpha\>,\<gamma\>>J<rsub|\<alpha\>\<gamma\>>
    <big|sum><rsub|\<beta\>>U<rsub|\<alpha\>\<beta\>>W<rsub|\<beta\>\<gamma\>>.
  </equation>

  By numerical computation, we find that the matrix
  <math|\<delta\>/M-1/M<rsup|2>> is <with|color|dark green|non-negative
  definite>. The term <math|<big|sum><rsub|\<beta\>>U<rsub|\<alpha\>\<beta\>>W<rsub|\<beta\>\<gamma\>>>
  can be seen as a \Ppropagation\Q from the <math|\<gamma\>>-neuron to the
  <math|\<alpha\>>-neuron, weighted by <math|J<rsub|\<alpha\>\<gamma\>>>.
  Computed on fashion-MNIST dataset, components of <math|J> vary from
  <math|-0.2> to <math|0.15>.

  <subsubsection|Third-Order (TODO)>

  Taking derivative on <math|\<partial\><rsup|2>S/<around*|(|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>|)>>
  and plugging in equation <reference|equ:q derivative>, we have

  <\small>
    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\><rsup|3>S|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>\<partial\>\<theta\><rprime|''>>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)>
      <big|sum><rsub|\<alpha\>>q<rsub|\<alpha\>><around*|[|<frac|\<partial\><rsup|3>f<rsub|\<alpha\>>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>\<partial\>\<theta\><rprime|''>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|'>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|''>>+<with|color|blue|<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|'>\<partial\>\<theta\><rprime|''>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|''>><frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|'>><frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|''>\<partial\>\<theta\>>>|]>>>|<row|<cell|->|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)>
      <big|sum><rsub|\<alpha\>,\<beta\>>q<rsub|\<alpha\>>q<rsub|\<beta\>><around*|[|<frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|''>>+<frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|''>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|'>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\><rsup|2>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|'>\<partial\>\<theta\><rprime|''>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|'>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|''>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|''>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|'>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|'>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|''>>|]>>>|<row|<cell|+>|<cell|2<big|sum><rsub|z,m>p<around*|(|z,m|)>
      <big|sum><rsub|\<alpha\>,\<beta\>,\<gamma\>>q<rsub|\<alpha\>>q<rsub|\<beta\>>q<rsub|\<gamma\>>
      <frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|'>><frac|\<partial\>f<rsub|\<gamma\>>|\<partial\>\<theta\><rprime|''>>>>|<row|<cell|->|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><frac|\<partial\><rsup|3>f<rsub|m>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>\<partial\>\<theta\><rprime|''>>>>>>
    </align>
  </small>

  Plugging in equation <reference|equ:dfdc>, <reference|equ:dfdUdW>, and
  <math|<reference|equ:dfdUdb>,> the terms that are not apparently zero come
  to be

  <\align>
    <tformat|<table|<row|<cell|<frac|\<partial\><rsup|3>S|\<partial\>c<rsub|\<alpha\>>\<partial\>c<rsub|\<beta\>>\<partial\>c<rsub|\<gamma\>>><around*|(|0|)>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)>
    <big|sum><rsub|\<alpha\><rprime|'>>q<rsub|\<alpha\><rprime|'>><around*|[|<frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<beta\>>><frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<gamma\>>>|]>>>|<row|<cell|>|<cell|-<big|sum><rsub|z,m>p<around*|(|z,m|)>
    <big|sum><rsub|\<alpha\><rprime|'>,\<beta\><rprime|'>>q<rsub|\<alpha\><rprime|'>>q<rsub|\<beta\><rprime|'>><around*|[|<frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<beta\>>><frac|\<partial\>f<rsub|\<beta\><rprime|'>>|\<partial\>c<rsub|\<gamma\>>>+<frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<beta\><rprime|'>>|\<partial\>c<rsub|\<beta\>>><frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<gamma\>>>+<frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<beta\><rprime|'>>|\<partial\>c<rsub|\<beta\>>><frac|\<partial\>f<rsub|\<beta\><rprime|'>>|\<partial\>c<rsub|\<gamma\>>>|]>>>|<row|<cell|>|<cell|+2<big|sum><rsub|z,m>p<around*|(|z,m|)>
    <big|sum><rsub|\<alpha\><rprime|'>,\<beta\><rprime|'>,\<gamma\><rprime|'>>q<rsub|\<alpha\><rprime|'>>q<rsub|\<beta\><rprime|'>>q<rsub|\<gamma\><rprime|'>>
    <frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<beta\><rprime|'>>|\<partial\>c<rsub|\<beta\>>><frac|\<partial\>f<rsub|\<gamma\><rprime|'>>|\<partial\>c<rsub|\<gamma\>>>>>|<row|<cell|=>|<cell|<frac|\<delta\><rsub|\<alpha\>\<beta\>\<gamma\>>|M>-<frac|1|M<rsup|2>><big|sum><rsub|\<alpha\><rprime|'>,\<beta\><rprime|'>><around*|[|\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>\<delta\><rsub|\<beta\>\<alpha\><rprime|'>>\<delta\><rsub|\<gamma\>\<beta\><rprime|'>>+\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>\<delta\><rsub|\<beta\>\<beta\><rprime|'>>\<delta\><rsub|\<gamma\>\<alpha\><rprime|'>>+\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>\<delta\><rsub|\<beta\>\<beta\><rprime|'>>\<delta\><rsub|\<gamma\>\<beta\><rprime|'>>|]>+<frac|2|M<rsup|3>><big|sum><rsub|\<alpha\><rprime|'>,\<beta\><rprime|'>,\<gamma\><rprime|'>>\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>\<delta\><rsub|\<beta\>\<beta\><rprime|'>>\<delta\><rsub|\<gamma\>\<gamma\><rprime|'>>>>|<row|<cell|=>|<cell|<frac|\<delta\><rsub|\<alpha\>\<beta\>\<gamma\>>|M>-<frac|\<delta\><rsub|\<alpha\>\<beta\>>+\<delta\><rsub|\<alpha\>\<gamma\>>+\<delta\><rsub|\<beta\>\<gamma\>>|M<rsup|2>>+<frac|2|M<rsup|3>>;>>|<row|<cell|<frac|\<partial\><rsup|3>S|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>\<partial\>c<rsub|\<delta\>>><around*|(|0|)>=>|<cell|?>>|<row|<cell|<frac|\<partial\><rsup|3>S|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>\<partial\>c<rsub|\<gamma\>>><around*|(|0|)>=>|<cell|?>>|<row|<cell|>|<cell|>>>>
  </align>

  So,

  <\equation>
    S<rsub|3><around*|(|\<theta\>|)>=<big|sum><rsub|\<alpha\>,\<beta\>,\<gamma\>><around*|(|<frac|\<delta\><rsub|\<alpha\>\<beta\>\<gamma\>>|6M>-<frac|\<delta\><rsub|\<alpha\>\<beta\>>+\<delta\><rsub|\<alpha\>\<gamma\>>+\<delta\><rsub|\<beta\>\<gamma\>>|6M<rsup|2>>+<frac|1|3M<rsup|3>>|)>c<rsub|\<alpha\>>c<rsub|\<beta\>>c<rsub|\<gamma\>>+?
  </equation>
</body>

<\initial>
  <\collection>
    <associate|math-font|math-pagella>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|2|2>>
    <associate|auto-5|<tuple|2.1|2>>
    <associate|auto-6|<tuple|2.2|2>>
    <associate|auto-7|<tuple|2.3|2>>
    <associate|auto-8|<tuple|2.4|3>>
    <associate|equ:dfdUdW|<tuple|3|1>>
    <associate|equ:dfdUdb|<tuple|4|1>>
    <associate|equ:dfdc|<tuple|2|1>>
    <associate|equ:q derivative|<tuple|1|1>>
    <associate|equ:q derive|<tuple|1|?>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|2>>
    <associate|footnote-3|<tuple|3|3>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|2>>
    <associate|footnr-3|<tuple|3|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1<space|2spc>Basics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|2tab>|1.1<space|2spc>Configuration Space
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|2tab>|1.2<space|2spc>Data and Action
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2<space|2spc>Taylor Expansion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|2.1<space|2spc>Zeroth-Order
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|2tab>|2.2<space|2spc>First-Order
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|2tab>|2.3<space|2spc>Second-Order
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|2.4<space|2spc>Third-Order (TODO)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>
    </associate>
  </collection>
</auxiliary>