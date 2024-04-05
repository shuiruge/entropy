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
  <math|\<sigma\>> represents the SiLU activation, that is,
  <math|\<sigma\><around*|(|x|)>=x/<around*|(|1+\<mathe\><rsup|-x>|)>>.

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

  This action has the minimum <math|S<around*|(|\<theta\><rsub|\<star\>>|)>=0>,
  where <math|q<rsub|m><around*|(|z,\<theta\><rsub|\<star\>>|)>=1> for each
  <math|z>.

  <with|color|dark green|Assume that <math|p<around*|(|m|)>\<assign\><big|sum><rsub|z>p<around*|(|z,m|)>=1/M>
  for all <math|m=1,\<ldots\>,M>, meaning that the data have been properly
  balanced.>

  <subsection|Taylor Expansion of Action>

  Now, we are to Taylor expand <math|S<around*|(|\<theta\>|)>> at
  <math|\<theta\>=0>. Denote the expansion by

  <\equation>
    S<around*|(|\<theta\>|)>\<backassign\>S<rsub|0>+S<rsub|1><around*|(|\<theta\>|)>+\<cdots\>,
  </equation>

  where <math|S<rsub|n><around*|(|\<theta\>|)>\<sim\>\<theta\><rsup|n>>, and
  <math|S<rsub|0>\<assign\>S<around*|(|0|)>> is <math|\<theta\>>-independent.

  <subsubsection|Zeroth Order>

  When <math|\<theta\>=0> (i.e. <math|U,c,W,b=0>), we have
  <math|f<rsub|\<alpha\>><around*|(|z,0|)>=0>, thus
  <math|q<rsub|\<alpha\>><around*|(|z,0|)>=softmax<rsub|\<alpha\>><around*|(|f<around*|(|z,0|)>|)>=1/M>
  for all <math|\<alpha\>=1,\<ldots\>,M>. So,

  <\equation>
    S<rsub|0>=ln M.
  </equation>

  <subsubsection|First Order>

  Plugging in equation <reference|equ:q derivative>, we have

  <\equation*>
    <frac|\<partial\>S|\<partial\>\<theta\>>=<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<alpha\>>q<rsub|\<alpha\>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>>-<frac|\<partial\>f<rsub|m>|\<partial\>\<theta\>>|]>.
  </equation*>

  To calculate <math|<around*|(|\<partial\>S/\<partial\>\<theta\>|)><around*|(|0|)>>,
  we have to calculate <math|<around*|(|\<partial\>f/\<partial\>\<theta\>|)><around*|(|z,0|)>>.
  Replacing <math|\<theta\>> by <math|U>, <math|c>, <math|W>, and <math|b>
  respectively, we have the non-vanishing terms

  <\small>
    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>U<rsub|\<alpha\>\<beta\>>><around*|(|z,\<theta\>|)>=>|<cell|\<sigma\><around*|(|<big|sum><rsub|\<gamma\>>W<rsub|\<beta\>\<gamma\>>
      z<rsub|\<gamma\>>+b<rsub|\<beta\>>|)>;>>|<row|<cell|<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>c<rsub|\<alpha\>>><around*|(|z,\<theta\>|)>=>|<cell|1;>>|<row|<cell|<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>W<rsub|\<beta\>\<gamma\>>><around*|(|z,\<theta\>|)>=>|<cell|U<rsub|\<alpha\>\<beta\>>
      \<sigma\><rprime|'><around*|(|<big|sum><rsub|\<gamma\><rprime|'>>W<rsub|\<beta\>\<gamma\><rprime|'>>
      z<rsub|\<gamma\><rprime|'>>+b<rsub|\<beta\>>|)>
      z<rsub|\<gamma\>>;>>|<row|<cell|<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>b<rsub|\<beta\>>><around*|(|z,\<theta\>|)>=>|<cell|U<rsub|\<alpha\>\<beta\>>
      \<sigma\><rprime|'><around*|(|<big|sum><rsub|\<gamma\><rprime|'>>W<rsub|\<beta\>\<gamma\><rprime|'>>
      z<rsub|\<gamma\><rprime|'>>+b<rsub|\<beta\>>|)>.>>>>
    </align>
  </small>

  Setting <math|\<theta\>=0>, only

  <\equation*>
    <frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>c<rsub|\<alpha\>>><around*|(|z,0|)>=1
  </equation*>

  is left. Thus, we shall take <math|\<theta\>\<rightarrow\>c<rsub|\<alpha\>>>,
  that is,

  <\small>
    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\>S|\<partial\>c<rsub|\<alpha\>>><around*|(|0|)>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<alpha\><rprime|'>>q<rsub|\<alpha\><rprime|'>><frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<alpha\>>>-<frac|\<partial\>f<rsub|m>|\<partial\>c<rsub|\<alpha\>>>|]>>>|<row|<cell|<around*|{|<frac|\<partial\>f|\<partial\>c>=\<cdots\>|}>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<frac|1|M><big|sum><rsub|\<alpha\><rprime|'>>\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>-\<delta\><rsub|m\<alpha\>>|]>>>|<row|<cell|<around*|{|p<around*|(|m|)>=<frac|1|M>|}>=>|<cell|<frac|1|M><big|sum><rsub|\<alpha\><rprime|'>>\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>-<frac|1|M><big|sum><rsub|m>\<delta\><rsub|m\<alpha\>>>>|<row|<cell|=>|<cell|0.>>>>
    </align>
  </small>

  So,

  <\equation>
    S<rsub|1><around*|(|\<theta\>|)>=0.
  </equation>

  <subsubsection|Second Order>

  Taking derivative on <math|\<partial\>S/\<partial\>\<theta\>> and plugging
  in equation <reference|equ:q derivative>, we arrive at

  <\equation*>
    <frac|\<partial\><rsup|2>S|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>>=<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<alpha\>>q<rsub|\<alpha\>><around*|(|<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|'>>+<frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>>|)>-<big|sum><rsub|\<alpha\>,\<beta\>>q<rsub|\<alpha\>>q<rsub|\<beta\>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|'>>-<frac|\<partial\><rsup|2>f<rsub|m>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>>|]>.
  </equation*>

  To calculate <math|<around*|(|\<partial\><rsup|2>S/\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>|)><around*|(|0|)>>,
  we have to calculate <math|<around*|(|\<partial\><rsup|2>f/\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>|)><around*|(|z,0|)>>.
  We have the non-vanishing terms

  <\small>
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
  </small>

  \;

  Since <math|\<sigma\><around*|(|0|)>=0>,
  <math|\<sigma\><rprime|'><around*|(|0|)>=1/2>, we have, in addition to

  <\equation*>
    <frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>c<rsub|\<alpha\>>><around*|(|z,0|)>=1,
  </equation*>

  <\equation*>
    <frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>><around*|(|z,0|)>=<frac|z<rsub|\<gamma\>>|2>,
  </equation*>

  and

  <\equation*>
    <frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>><around*|(|z,0|)>=<frac|1|2>.
  </equation*>

  At <math|\<theta\>=0>, taking <math|\<theta\>\<rightarrow\>c<rsub|\<alpha\>>>
  and <math|\<theta\><rprime|'>\<rightarrow\>c<rsub|\<beta\>>> gives

  <\small>
    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\><rsup|2>S|\<partial\>c<rsub|\<alpha\>>\<partial\>c<rsub|\<beta\>>><around*|(|0|)>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<gamma\>>q<rsub|\<gamma\>><frac|\<partial\>f<rsub|\<gamma\>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<gamma\>>|\<partial\>c<rsub|\<beta\>>>-<big|sum><rsub|\<gamma\>,\<gamma\><rprime|'>>q<rsub|\<gamma\>>q<rsub|\<gamma\><rprime|'>><frac|\<partial\>f<rsub|\<gamma\>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<gamma\><rprime|'>>|\<partial\>c<rsub|\<beta\>>>|]>>>|<row|<cell|<around*|{|q<rsub|\<alpha\>>=<frac|1|M>,<frac|\<partial\>f|\<partial\>c>=\<cdots\>|}>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<frac|1|M>\<delta\><rsub|\<alpha\>\<beta\>>-<frac|1|M<rsup|2>>|]>>>|<row|<cell|<around*|{|<big|sum><rsub|z,m>p<around*|(|z,m|)>=1|}>=>|<cell|<frac|\<delta\><rsub|\<alpha\>\<beta\>>|M>-<frac|1|M<rsup|2>>.>>>>
    </align>
  </small>

  Taking <math|\<theta\>\<rightarrow\>U<rsub|\<alpha\>\<beta\>>> and
  <math|\<theta\><rprime|'>\<rightarrow\>W<rsub|\<beta\>\<gamma\>>> gives

  <\small>
    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\><rsup|2>S|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>><around*|(|0|)>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<alpha\><rprime|'>>q<rsub|\<alpha\><rprime|'>><frac|\<partial\><rsup|2>f<rsub|\<alpha\><rprime|'>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>>-<frac|\<partial\><rsup|2>f<rsub|m>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>>|]>>>|<row|<cell|<around*|{|q<rsub|\<alpha\>>=<frac|1|M>,<frac|\<partial\><rsup|2>f|\<partial\>U\<partial\>W>=\<cdots\>|}>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<frac|z<rsub|\<gamma\>>|2M>
      -<frac|\<delta\><rsub|m\<alpha\>> z<rsub|\<gamma\>>|2>|]>>>|<row|<cell|=>|<cell|<big|sum><rsub|z>p<around*|(|z|)><frac|z<rsub|\<gamma\>>|2M>-<big|sum><rsub|z>p<around*|(|z,\<alpha\>|)><frac|
      z<rsub|\<gamma\>>|2>>>|<row|<cell|<around*|{|p<around*|(|z,\<alpha\>|)>=p<around*|(|\<alpha\>|)>
      p<around*|(|z\|\<alpha\>|)>|}>=>|<cell|<big|sum><rsub|z>p<around*|(|z|)><frac|z<rsub|\<gamma\>>|2M>-p<around*|(|\<alpha\>|)><big|sum><rsub|z>p<around*|(|z\|\<alpha\>|)><frac|z<rsub|\<gamma\>>|2>>>|<row|<cell|<around*|{|p<around*|(|\<alpha\>|)>=<frac|1|M>|}>=>|<cell|<big|sum><rsub|z>p<around*|(|z|)><frac|z<rsub|\<gamma\>>|2M>-<big|sum><rsub|z>p<around*|(|z\|\<alpha\>|)><frac|z<rsub|\<gamma\>>|2M>>>|<row|<cell|=>|<cell|<frac|1|2M><around*|(|\<bbb-E\><rsub|z\<sim\>p<around*|(|z|)>><around*|[|z<rsub|\<gamma\>>|]>-\<bbb-E\><rsub|z\<sim\>p<around*|(|z\|\<alpha\>|)>><around*|[|z<rsub|\<gamma\>>|]>|)>.>>>>
    </align>
  </small>

  But, taking <math|\<theta\>\<rightarrow\>U<rsub|\<alpha\>\<beta\>>> and
  <math|\<theta\><rprime|'>\<rightarrow\>b<rsub|\<beta\>>> gives

  <\small>
    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\><rsup|2>S|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>><around*|(|0|)>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<alpha\><rprime|'>>q<rsub|\<alpha\><rprime|'>><frac|\<partial\><rsup|2>f<rsub|\<alpha\><rprime|'>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>>-<frac|\<partial\><rsup|2>f<rsub|m>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>>|]>>>|<row|<cell|<around*|{|q<rsub|\<alpha\>>=<frac|1|M>,<frac|\<partial\><rsup|2>f|\<partial\>U\<partial\>b>=\<cdots\>|}>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><around*|[|<big|sum><rsub|\<alpha\><rprime|'>><frac|\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>|2M>-<frac|\<delta\><rsub|m\<alpha\>>|2>|]>>>|<row|<cell|<around*|{|p<around*|(|m|)>=<frac|1|M>|}>=>|<cell|<frac|1|2M><big|sum><rsub|\<alpha\><rprime|'>>\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>-<frac|1|2M><big|sum><rsub|m>\<delta\><rsub|m\<alpha\>>>>|<row|<cell|=>|<cell|0.>>>>
    </align>
  </small>

  So,

  <\equation>
    S<rsub|2><around*|(|\<theta\>|)>=<frac|1|2><big|sum><rsub|\<alpha\>,\<beta\>><around*|(|<frac|\<delta\><rsub|\<alpha\>\<beta\>>|M>-<frac|1|M<rsup|2>>|)>c<rsub|\<alpha\>>c<rsub|\<beta\>>+<frac|1|2><big|sum><rsub|\<alpha\>,\<gamma\>><frac|J<rsub|\<alpha\>\<gamma\>>|2M>
    <big|sum><rsub|\<beta\>>U<rsub|\<alpha\>\<beta\>>W<rsub|\<beta\>\<gamma\>>
  </equation>

  where <math|J<rsub|\<alpha\>\<gamma\>>\<assign\>\<bbb-E\><rsub|z\<sim\>p<around*|(|z|)>><around*|[|z<rsub|\<gamma\>>|]>-\<bbb-E\><rsub|z\<sim\>p<around*|(|z\|\<alpha\>|)>><around*|[|z<rsub|\<gamma\>>|]>>.

  By numerical computation, we find that the matrix
  <math|\<delta\>/M-1/M<rsup|2>> is <with|color|dark green|non-positive
  definite> since it has non-positive determinant. The term
  <math|<big|sum><rsub|\<beta\>>U<rsub|\<alpha\>\<beta\>>W<rsub|\<beta\>\<gamma\>>>
  can be seen as a \Ppropagation\Q from the <math|\<gamma\>>-neuron to the
  <math|\<alpha\>>-neuron, weighted by <math|J<rsub|\<alpha\>\<gamma\>>/<around*|(|2M|)>>.
  Computed on fashion-MNIST dataset, components of <math|J> vary from
  <math|-0.1> to <math|0.075>.

  But, numerical computation shows that there is not lower bound for the
  second term of <math|S<rsub|2>>. This means, the <math|<around*|\||U|\|>>
  and <math|<around*|\||W|\|>> grows until the next order takes part in. And
  the matrix <math|\<delta\><rsub|\<alpha\>\<beta\>>-1/M> has non-positive
  determinant for <math|M=2,3,\<ldots\>>, which means <math|c=0> is also
  unstable. So, we have to consider the third order.

  We further analyzed <math|S<rsub|2>> on the best fit
  <math|\<theta\><rsub|\<star\>>>, trained on training data and evaluated on
  test data of fashion-MNIST dataset. We found that it is the second term
  that dominates <math|S<rsub|2><around*|(|\<theta\><rsub|\<star\>>|)>>.
  Interestingly, both the terms <math|J<rsub|\<alpha\>\<gamma\>>> and
  <math|<big|sum><rsub|\<beta\>>U<rsub|\<alpha\>\<beta\>>W<rsub|\<beta\>\<gamma\>>>,
  as rank-2 tensors, have Gaussian distributed elements, centered at zero.
  But, the multiplied, \ <math|J<rsub|\<alpha\>\<gamma\>>
  <big|sum><rsub|\<beta\>>U<rsub|\<alpha\>\<beta\>>W<rsub|\<beta\>\<gamma\>>>,
  has highly biased elements, most of which are negative. This terms
  represents the correlation between an output class and a single input
  dimension.

  <subsubsection|Third Order>

  Taking derivative on <math|\<partial\><rsup|2>S/<around*|(|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>|)>>
  and plugging in equation <reference|equ:q derivative>, we have

  <\small>
    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\><rsup|3>S|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>\<partial\>\<theta\><rprime|''>>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)>
      <big|sum><rsub|\<alpha\>>q<rsub|\<alpha\>><around*|[|<frac|\<partial\><rsup|3>f<rsub|\<alpha\>>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>\<partial\>\<theta\><rprime|''>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|'>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|''>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|'>\<partial\>\<theta\><rprime|''>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|''>><frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|'>><frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|''>\<partial\>\<theta\>>|]>>>|<row|<cell|->|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)>
      <big|sum><rsub|\<alpha\>,\<beta\>>q<rsub|\<alpha\>>q<rsub|\<beta\>><around*|[|<frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|''>>+<frac|\<partial\><rsup|2>f<rsub|\<alpha\>>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|''>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|'>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\><rsup|2>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|'>\<partial\>\<theta\><rprime|''>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|'>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|''>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|'>><frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\><rprime|''>>+<frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|'>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|''>>|]>>>|<row|<cell|+>|<cell|2<big|sum><rsub|z,m>p<around*|(|z,m|)>
      <big|sum><rsub|\<alpha\>,\<beta\>,\<gamma\>>q<rsub|\<alpha\>>q<rsub|\<beta\>>q<rsub|\<gamma\>>
      <frac|\<partial\>f<rsub|\<alpha\>>|\<partial\>\<theta\>><frac|\<partial\>f<rsub|\<beta\>>|\<partial\>\<theta\><rprime|'>><frac|\<partial\>f<rsub|\<gamma\>>|\<partial\>\<theta\><rprime|''>>>>|<row|<cell|->|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)><frac|\<partial\><rsup|3>f<rsub|m>|\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>\<partial\>\<theta\><rprime|''>>>>>>
    </align>
  </small>

  To calculate <math|<around*|(|\<partial\><rsup|3>S/\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>\<partial\>\<theta\><rprime|''>|)><around*|(|0|)>>,
  we have to calculate <math|<around*|(|\<partial\><rsup|3>f/\<partial\>\<theta\>\<partial\>\<theta\><rprime|'>\<partial\>\<theta\><rprime|''>|)><around*|(|z,0|)>>.
  Since <math|\<sigma\><around*|(|0|)>=0>,
  <math|\<sigma\><rprime|'><around*|(|0|)>=1/2>, and
  <math|\<sigma\><rprime|''><around*|(|0|)>=1/6>, we have the non-vanishing
  terms

  <\small>
    <\align>
      <tformat|<table|<row|<cell|<frac|\<partial\><rsup|3>f<rsub|\<alpha\>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>\<partial\>W<rsub|\<beta\>\<delta\>>><around*|(|z,0|)>=>|<cell|<frac|z<rsub|\<gamma\>>
      z<rsub|\<delta\>>|6>;>>|<row|<cell|<frac|\<partial\><rsup|3>f<rsub|\<alpha\>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>b<rsub|\<beta\>>><around*|(|z,0|)>=>|<cell|<frac|z<rsub|\<gamma\>>|6>;>>|<row|<cell|<frac|\<partial\><rsup|3>f<rsub|\<alpha\>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>\<partial\>b<rsub|\<beta\>>><around*|(|z,\<theta\>|)>=>|<cell|<frac|1|6>.>>>>
    </align>
  </small>

  Thus, taking <math|\<theta\>\<rightarrow\>c<rsub|\<alpha\>>>,
  <math|\<theta\><rprime|'>\<rightarrow\>c<rsub|\<beta\>>> and
  <math|\<theta\><rprime|''>\<rightarrow\>c<rsub|\<gamma\>>> gives

  <small|<align|<tformat|<table|<row|<cell|<frac|\<partial\><rsup|3>S|\<partial\>c<rsub|\<alpha\>>\<partial\>c<rsub|\<beta\>>\<partial\>c<rsub|\<gamma\>>><around*|(|0|)>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)>
  <big|sum><rsub|\<alpha\><rprime|'>>q<rsub|\<alpha\><rprime|'>><around*|[|<frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<beta\>>><frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<gamma\>>>|]>>>|<row|<cell|->|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)>
  <big|sum><rsub|\<alpha\><rprime|'>,\<beta\><rprime|'>>q<rsub|\<alpha\><rprime|'>>q<rsub|\<beta\><rprime|'>><around*|[|<frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<beta\>>><frac|\<partial\>f<rsub|\<beta\><rprime|'>>|\<partial\>c<rsub|\<gamma\>>>+<frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<beta\><rprime|'>>|\<partial\>c<rsub|\<beta\>>><frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<gamma\>>>+<frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<beta\><rprime|'>>|\<partial\>c<rsub|\<beta\>>><frac|\<partial\>f<rsub|\<beta\><rprime|'>>|\<partial\>c<rsub|\<gamma\>>>|]>>>|<row|<cell|+>|<cell|2<big|sum><rsub|z,m>p<around*|(|z,m|)>
  <big|sum><rsub|\<alpha\><rprime|'>,\<beta\><rprime|'>,\<gamma\><rprime|'>>q<rsub|\<alpha\><rprime|'>>q<rsub|\<beta\><rprime|'>>q<rsub|\<gamma\><rprime|'>>
  <frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<alpha\>>><frac|\<partial\>f<rsub|\<beta\><rprime|'>>|\<partial\>c<rsub|\<beta\>>><frac|\<partial\>f<rsub|\<gamma\><rprime|'>>|\<partial\>c<rsub|\<gamma\>>>>>|<row|<cell|<around*|{|q<rsub|\<alpha\>>\<equiv\><frac|1|M>,<frac|\<partial\>f|\<partial\>c>=\<delta\>|}>=>|<cell|<frac|1|M><big|sum><rsub|\<alpha\><rprime|'>>\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>\<delta\><rsub|\<beta\>\<alpha\><rprime|'>>\<delta\><rsub|\<gamma\>\<alpha\><rprime|'>>-<frac|1|M<rsup|2>><big|sum><rsub|\<alpha\><rprime|'>,\<beta\><rprime|'>><around*|[|\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>\<delta\><rsub|\<beta\>\<alpha\><rprime|'>>\<delta\><rsub|\<gamma\>\<beta\><rprime|'>>+\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>\<delta\><rsub|\<beta\>\<beta\><rprime|'>>\<delta\><rsub|\<gamma\>\<alpha\><rprime|'>>+\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>\<delta\><rsub|\<beta\>\<beta\><rprime|'>>\<delta\><rsub|\<gamma\>\<beta\><rprime|'>>|]>+<frac|2|M<rsup|3>><big|sum><rsub|\<alpha\><rprime|'>,\<beta\><rprime|'>,\<gamma\><rprime|'>>\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>\<delta\><rsub|\<beta\>\<beta\><rprime|'>>\<delta\><rsub|\<gamma\>\<gamma\><rprime|'>>>>|<row|<cell|=>|<cell|<frac|\<delta\><rsub|\<alpha\>\<beta\>\<gamma\>>|M>-<frac|\<delta\><rsub|\<alpha\>\<beta\>>+\<delta\><rsub|\<alpha\>\<gamma\>>+\<delta\><rsub|\<beta\>\<gamma\>>|M<rsup|2>>+<frac|2|M<rsup|3>>.>>>>>>

  Taking <math|\<theta\>\<rightarrow\>U<rsub|\<alpha\>\<beta\>>>,
  <math|\<theta\><rprime|'>\<rightarrow\>W<rsub|\<beta\>\<gamma\>>> and
  <math|\<theta\><rprime|''>\<rightarrow\>c<rsub|\<delta\>>> gives

  <\small>
    <align|<tformat|<table|<row|<cell|<frac|\<partial\><rsup|3>S|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>\<partial\>c<rsub|\<delta\>>><around*|(|0|)>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)>
    <big|sum><rsub|\<alpha\><rprime|'>>q<rsub|\<alpha\><rprime|'>><frac|\<partial\><rsup|2>f<rsub|\<alpha\><rprime|'>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>><frac|\<partial\>f<rsub|\<alpha\><rprime|'>>|\<partial\>c<rsub|\<delta\>>>>>|<row|<cell|->|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)>
    <big|sum><rsub|\<alpha\><rprime|'>,\<beta\><rprime|'>>q<rsub|\<alpha\><rprime|'>>q<rsub|\<beta\><rprime|'>><frac|\<partial\><rsup|2>f<rsub|\<alpha\><rprime|'>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>><frac|\<partial\>f<rsub|\<beta\><rprime|'>>|\<partial\>c<rsub|\<delta\>>>>>|<row|<cell|<around*|{|<frac|\<partial\><rsup|2>f|\<partial\>U\<partial\>W>=\<cdots\>,<frac|\<partial\>f|\<partial\>c>=\<delta\>|}>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)>
    <big|sum><rsub|\<alpha\><rprime|'>><frac|1|M><frac|\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>
    z<rsub|\<gamma\>>|2>\<delta\><rsub|\<delta\>\<alpha\><rprime|'>>-<big|sum><rsub|z,m>p<around*|(|z,m|)>
    <big|sum><rsub|\<alpha\><rprime|'>,\<beta\><rprime|'>><frac|1|M<rsup|2>><frac|\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>
    z<rsub|\<gamma\>>|2>\<delta\><rsub|\<delta\>\<beta\><rprime|'>>>>|<row|<cell|=>|<cell|<around*|(|<frac|\<delta\><rsub|\<alpha\>\<delta\>>|2M>-<frac|1|2M<rsup|2>>|)>Z<rsub|\<gamma\>>>>>>>
  </small>

  where <math|Z<rsub|\<gamma\>>\<assign\>\<bbb-E\><rsub|z\<sim\>p<around*|(|z|)>><around*|[|z<rsub|\<gamma\>>|]>>.
  Following the same process, we find

  <\small>
    <\equation*>
      <frac|\<partial\><rsup|3>S|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>\<partial\>c<rsub|\<gamma\>>><around*|(|0|)>=<frac|\<delta\><rsub|\<alpha\>\<gamma\>>|2M>-<frac|1|2M<rsup|2>>.
    </equation*>
  </small>

  Taking <math|\<theta\>\<rightarrow\>U<rsub|\<alpha\>\<beta\>>>,
  <math|\<theta\><rprime|'>\<rightarrow\>W<rsub|\<beta\>\<gamma\>>> and
  <math|\<theta\><rprime|''>\<rightarrow\>W<rsub|\<beta\>\<delta\>>> gives

  <\small>
    <align|<tformat|<table|<row|<cell|<frac|\<partial\><rsup|3>S|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>\<partial\>W<rsub|\<beta\>\<delta\>>><around*|(|0|)>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)>
    <big|sum><rsub|\<alpha\><rprime|'>>q<rsub|\<alpha\><rprime|'>><frac|\<partial\><rsup|3>f<rsub|\<alpha\><rprime|'>>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>\<partial\>W<rsub|\<beta\>\<delta\>>>-<big|sum><rsub|z,m>p<around*|(|z,m|)><frac|\<partial\><rsup|3>f<rsub|m>|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>\<partial\>W<rsub|\<beta\>\<delta\>>>>>|<row|<cell|<around*|{|q<rsub|\<alpha\>>\<equiv\><frac|1|M>,<frac|\<partial\><rsup|3>f|\<partial\>U\<partial\>W\<partial\>W>=\<cdots\>|}>=>|<cell|<big|sum><rsub|z,m>p<around*|(|z,m|)>
    <big|sum><rsub|\<alpha\><rprime|'>><frac|1|M><frac|\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>
    z<rsub|\<gamma\>> z<rsub|\<delta\>>|6>-<big|sum><rsub|z,m>p<around*|(|z,m|)><frac|\<delta\><rsub|m\<alpha\>>
    z<rsub|\<gamma\>> z<rsub|\<delta\>>|6>>>|<row|<cell|<around*|{|p<around*|(|\<alpha\>|)>\<equiv\><frac|1|M>|}>=>|<cell|<frac|1|6M>
    J<rsub|\<alpha\>\<gamma\>\<delta\>>>>>>>
  </small>

  where <math|J<rsub|\<alpha\>\<gamma\>\<delta\>>\<assign\>\<bbb-E\><rsub|z\<sim\>p<around*|(|z|)>><around*|[|z<rsub|\<gamma\>>
  z<rsub|\<delta\>>|]>-\<bbb-E\><rsub|z\<sim\>p<around*|(|z\|\<alpha\>|)>><around*|[|z<rsub|\<gamma\>>
  z<rsub|\<delta\>>|]>>. Following the same process, we find

  <\small>
    <\equation*>
      <frac|\<partial\><rsup|3>S|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>W<rsub|\<beta\>\<gamma\>>\<partial\>b<rsub|\<beta\>>><around*|(|0|)>=<frac|1|6M><around*|(|\<bbb-E\><rsub|z\<sim\>p<around*|(|z|)>><around*|[|z<rsub|\<gamma\>>|]>-\<bbb-E\><rsub|z\<sim\>p<around*|(|z\|\<alpha\>|)>><around*|[|z<rsub|\<gamma\>>|]>|)>=<frac|1|6M>J<rsub|\<alpha\>\<gamma\>>
    </equation*>
  </small>

  and

  <\small>
    <\equation*>
      <frac|\<partial\><rsup|3>S|\<partial\>U<rsub|\<alpha\>\<beta\>>\<partial\>b<rsub|\<beta\>>\<partial\>b<rsub|\<beta\>>><around*|(|0|)>=0.
    </equation*>
  </small>

  So,

  <\align>
    <tformat|<table|<row|<cell|S<rsub|3><around*|(|\<theta\>|)>=>|<cell|<big|sum><rsub|\<alpha\>,\<beta\>,\<gamma\>><around*|(|<frac|\<delta\><rsub|\<alpha\>\<beta\>\<gamma\>>|6M>-<frac|\<delta\><rsub|\<alpha\>\<beta\>>+\<delta\><rsub|\<alpha\>\<gamma\>>+\<delta\><rsub|\<beta\>\<gamma\>>|6M<rsup|2>>+<frac|1|3M<rsup|3>>|)>c<rsub|\<alpha\>>c<rsub|\<beta\>>c<rsub|\<gamma\>>>>|<row|<cell|+>|<cell|<big|sum><rsub|\<alpha\>,\<beta\>,\<gamma\>><around*|(|<frac|\<delta\><rsub|\<alpha\>\<gamma\>>|12M>-<frac|1|12M<rsup|2>>|)>U<rsub|\<alpha\>\<beta\>>b<rsub|\<beta\>>c<rsub|\<gamma\>>>>|<row|<cell|+>|<cell|<big|sum><rsub|\<alpha\>,\<beta\>,\<gamma\>,\<delta\>><around*|(|<frac|Z<rsub|\<gamma\>>
    \<delta\><rsub|\<alpha\>\<delta\>>|12M>-<frac|Z<rsub|\<gamma\>>|12M<rsup|2>>|)>U<rsub|\<alpha\>\<beta\>>W<rsub|\<beta\>\<gamma\>>c<rsub|\<delta\>>>>|<row|<cell|+>|<cell|<big|sum><rsub|\<alpha\>,\<beta\>,\<gamma\>><frac|J<rsub|\<alpha\>\<gamma\>>|36M>U<rsub|\<alpha\>\<beta\>>W<rsub|\<beta\>\<gamma\>>b<rsub|\<beta\>>>>|<row|<cell|+>|<cell|<big|sum><rsub|\<alpha\>,\<beta\>,\<gamma\>,\<delta\>><frac|J<rsub|\<alpha\>\<gamma\>\<delta\>>|36M>U<rsub|\<alpha\>\<beta\>>W<rsub|\<beta\>\<gamma\>>W<rsub|\<beta\>\<delta\>>.>>>>
  </align>

  Numerical computation again shows that, up to the third order, the action
  still has no lower bound.

  We further analyzed <math|S<rsub|3>> on the best fit
  <math|\<theta\><rsub|\<star\>>>. We found that it is the last term that
  dominates <math|S<rsub|2><around*|(|\<theta\><rsub|\<star\>>|)>>.
  Interestingly, like the case of <math|S<rsub|2>>, both the terms
  <math|J<rsub|\<alpha\>\<gamma\>\<delta\>>> and
  <math|<big|sum><rsub|\<beta\>>U<rsub|\<alpha\>\<beta\>>W<rsub|\<beta\>\<gamma\>>W<rsub|\<beta\>\<delta\>>>,
  as rank-3 tensors, have Gaussian distributed elements, centered at zero.
  But, the multiplied, \ <math|J<rsub|\<alpha\>\<gamma\>\<delta\>>
  U<rsub|\<alpha\>\<beta\>>W<rsub|\<beta\>\<gamma\>>W<rsub|\<beta\>\<delta\>>>,
  has highly biased elements, most of which are positive. This terms
  represents the correlation between an output class and two \ input
  dimensions.

  <subsubsection|Higher Orders>

  Based on the previous analysis, it is suspected that the main contribution
  from <math|S<rsub|n+1><around*|(|\<theta\><rsub|\<star\>>|)>> to
  <math|S<around*|(|\<theta\><rsub|\<star\>>|)>> is

  <\equation*>
    <frac|\<sigma\><rsup|<around*|(|n|)>><around*|(|0|)>|<around*|(|n+1|)>!
    M><big|sum><rsub|\<alpha\>,\<gamma\><rsub|1>,\<ldots\>,\<gamma\><rsub|n>>J<rsub|\<alpha\>\<gamma\><rsub|1>\<cdots\>\<gamma\><rsub|n>><big|sum><rsub|\<beta\>>U<rsub|\<alpha\>\<beta\>>W<rsub|\<beta\>\<gamma\><rsub|1>>\<cdots\>W<rsub|\<beta\>\<gamma\><rsub|n>>
  </equation*>

  which characterizes the correlation between an output class
  <math|\<alpha\>> and the input dimensions
  <math|\<gamma\><rsub|1>,\<ldots\>,\<gamma\><rsub|n>>, and
  <math|J<rsub|\<alpha\>\<gamma\><rsub|1>\<cdots\>\<gamma\><rsub|n>>\<assign\>\<bbb-E\><rsub|z\<sim\>p<around*|(|z|)>><around*|[|z<rsub|\<gamma\><rsub|1>>\<cdots\>z<rsub|\<gamma\><rsub|n>>|]>-\<bbb-E\><rsub|z\<sim\>p<around*|(|z\|\<alpha\>|)>><around*|[|z<rsub|\<gamma\><rsub|1>>\<cdots\>z<rsub|\<gamma\><rsub|n>>|]>>
  as usual.
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
    <associate|auto-4|<tuple|2|1>>
    <associate|auto-5|<tuple|2.1|1>>
    <associate|auto-6|<tuple|2.2|1>>
    <associate|auto-7|<tuple|2.3|2>>
    <associate|auto-8|<tuple|2.4|4>>
    <associate|auto-9|<tuple|2.5|?>>
    <associate|equ:q derivative|<tuple|1|1>>
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

      <with|par-left|<quote|2tab>|2.1<space|2spc>Zeroth Order
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|2tab>|2.2<space|2spc>First Order
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|2tab>|2.3<space|2spc>Second Order
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|2.4<space|2spc>Third Order
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>
    </associate>
  </collection>
</auxiliary>