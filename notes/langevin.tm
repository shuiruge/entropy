<TeXmacs|2.1.4>

<style|generic>

<\body>
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
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-2|<tuple|1.1|1|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-3|<tuple|1.2|2|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|equation:Kramers-Moyal expansion|<tuple|1|2|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|footnote-1|<tuple|1|2|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|footnote-2|<tuple|2|2|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|footnr-1|<tuple|1|2|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|footnr-2|<tuple|2|2|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|section: Conservative Langevin Dynamics Satisfies Detailed
    Balance|<tuple|1.2|2|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Kramers-Moyal
      Expansion and Langevin Dynamics (TODO)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Spatial Expansion of Master
      Equation Gives Kramers-Moyal Expansion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Langevin Dynamics that
      Satisfies Detailed Balance Is Conservative
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>