<TeXmacs|2.1>

<style|book>

<\body>
  <section|Relative Entropy><label|section: Relative Entropy>

  <subsection|Shannon Entropy Is Plausible for Discrete Variable>

  The Shannon entropy is well-defined for discrete random variable. Let
  <math|X> a discrete random variables with alphabet
  <math|<around*|{|x<rsub|1>,\<ldots\>,x<rsub|n>|}>> with <math|p<rsub|i>>
  the probability of <math|X=x<rsub|i>>. The Shannon entropy is thus a
  function of <math|p\<assign\><around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>>
  defined as

  <\equation*>
    H<around*|(|p|)>\<assign\>-K <big|sum><rsub|i=1><rsup|n>p<rsub|i> ln
    p<rsub|i>,
  </equation*>

  where <math|K> is any positive constant. Interestingly, this expression is
  unique given some plausible conditions, which can be qualitatively
  expressed as <\footnote>
    For details and quantitative description, see the appendix A of
    <hlink|Jaynes (1957)|https://bayes.wustl.edu/etj/articles/theory.1.pdf>.
  </footnote>

  <\enumerate-numeric>
    <item><math|H> is a continuous function of <math|p>;

    <item>larger alphabet has higher uncertainty (information or entropy);
    and

    <item>if we have known some information (entropy), and based on this
    knowledge we know further, the total information shall be the summation
    of all that we know.
  </enumerate-numeric>

  <subsection|Shannon Entropy Fails for Continuous Random Variable>

  The Shannon entropy, however, cannot be directly generalized to continuous
  random variable. Usually, entropy for continuous random variable <math|X>
  with distribution <math|P> is given by

  <\equation*>
    H<around*|[|p|]>\<assign\>-K<big|int>\<mathd\>x p<around*|(|x|)>
    ln<around*|(|p<around*|(|x|)>|)>,
  </equation*>

  which, however, is not well-defined, reflected by two issues. The first
  issue is that the <math|p> has dimension, indicated by
  <math|<big|int>\<mathd\>x p<around*|(|x|)>=1>. This means we put a
  dimensional quantity into logarithm, leading to a problem of dimension. The
  second issue is that the <math|H> defined so cannot be invariant under
  inverse map <math|X\<rightarrow\>Y\<assign\>\<varphi\><around*|(|X|)>>
  where <math|\<varphi\>> is a diffeomorphism. As a \Pphysical\Q quantity,
  <math|H> should be invariant under \Pnon-physical\Q transformations, such
  as coordinates transformation characterized by the <math|\<varphi\>>.

  To eliminate the two issues, we shall extends the axiomatic description of
  entropy. The key to this extension is introducing another distribution,
  <math|Q>; and instead considering <with|font-shape|italic|the uncertainty
  (surprise) caused by <math|P> when prior knowledge is given by <math|Q>>.
  As we will see, this will solve the two issues altogether.

  Explicitly, we extends the conditions as <\footnote>
    We follow the note by <hlink|D. Rezende|https://danilorezende.com/wp-content/uploads/2018/07/divergences.pdf>.
  </footnote>

  <\enumerate-numeric>
    <item><math|H> is a continuous and local function of <math|p> and
    <math|q>;

    <item><math|H> is invariant for diffeomorphic transformation; and

    <item><math|H> can reduce to Shannon entropy when <math|X> is discrete
    and <math|Q> is uniform.
  </enumerate-numeric>

  The first condition employs the locality of <math|H>, which is thought as
  natural since <math|H> has be a <with|font-shape|italic|functional>. The
  second condition is for solving the second issue. Finally, the third
  condition relates back to Shannon entropy.

  Comparing with the conditions of Shannon entropy, the first condition is
  strengthened by adding locality; the second condition is absent since it is
  not well-defined for continuous variable.

  <subsection|Relative Entropy is Unique Solution to the Extended Conditions>

  Based on the first condition, <math|H> shall have the following expression

  <\equation*>
    H<around*|[|p,q|]>=<big|int>\<mathd\>x p<around*|(|x|)>
    L<around*|(|p<around*|(|x|)>,q<around*|(|x|)>|)>.
  </equation*>

  The second condition indicates that

  <\equation*>
    L<around*|(|p,q|)>=f<around*|(|p/q|)>
  </equation*>

  for some continuous function <math|f>. Indeed, the <math|\<mathd\>x
  p<around*|(|x|)>> is invariant under diffeomorphic transformation
  <math|X\<rightarrow\>Y\<assign\>\<varphi\><around*|(|X|)>> for some
  diffeomorphism <math|\<varphi\>>. And if we take an infinitesimal
  transformation, we find <math|L<around*|(|p<around*|(|1+\<epsilon\>|)>,q<around*|(|1+\<epsilon\>|)>|)>=L<around*|(|p,q|)>>,
  which indicates <math|\<partial\><rsub|1>L<around*|(|p,q|)>
  p+\<partial\><rsub|2>L<around*|(|p,q|)> q=0>. Taking <math|p=A e<rsup|t>>
  and <math|q=B e<rsup|t>>, we find <math|L<around*|(|A e<rsup|t>,B
  e<rsup|t>|)>=C> where <math|C> is a constant corresponding to <math|t>.
  This is valid only when <math|L<around*|(|p,q|)>=f<around*|(|p/q|)>> for
  some <math|f>.

  The third condition indicates that

  <\equation*>
    f<around*|(|x|)>\<propto\>ln x.
  </equation*>

  Indeed, when <math|X> is discrete and <math|Q> is uniform, we have
  <math|H<around*|[|p,q|]>=<big|sum><rsub|i>p<rsub|i>f<around*|(|p<rsub|i>/q|)>>
  which is compared with Shannon entropy <math|-K <big|sum><rsub|i>p<rsub|i>
  ln<around*|(|p<rsub|i>|)>>, where <math|q=1/n> and <math|n> the alphabet
  size of <math|X>. For eliminating constraint
  <math|<big|sum><rsub|i>p<rsub|i>=1>, we introduce <math|\<zeta\>> by
  <math|p<rsub|i>=\<mathe\><rsup|\<zeta\><rsub|i>>/<around*|(|<big|sum><rsub|j>\<mathe\><rsup|\<zeta\><rsub|j>>|)>>.
  Given <math|j>, taking derivative on <math|\<zeta\><rsub|j>> on both
  <math|<big|sum><rsub|i>p<rsub|i>f<around*|(|p<rsub|i>/q|)>> and <math|-K
  <big|sum><rsub|i>p<rsub|i> ln<around*|(|p<rsub|i>|)>>, we find

  <\equation*>
    f<around*|(|x<rsub|j>|)>+x<rsub|j> f<rprime|'><around*|(|x<rsub|j>|)>-<frac|1|n><big|sum><rsub|i=1><rsup|n>x<rsub|i><around*|[|f<around*|(|x<rsub|i>|)>+x<rsub|i>f<rprime|'><around*|(|x<rsub|i>|)>|]>=-K
    ln x<rsub|j>+K<frac|1|n><big|sum><rsub|i=1><rsup|n>x<rsub|i> ln
    x<rsub|i>,
  </equation*>

  where <math|x<rsub|i>\<assign\>p<rsub|i>/q>. Letting
  <math|g<around*|(|x|)>\<assign\>-x f<around*|(|x|)>/K>, we arrive at

  <\equation*>
    -g<rprime|'><around*|(|x<rsub|j>|)>+<frac|1|n><big|sum><rsub|i=1><rsup|n>x<rsub|i>
    g<rprime|'><around*|(|x<rsub|i>|)>=-ln
    x<rsub|j>+<frac|1|n><big|sum><rsub|i=1><rsup|n>x<rsub|i> ln x<rsub|i>.
  </equation*>

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
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|1>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|1>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|1>>
    <associate|section: Relative Entropy|<tuple|1|1>>
    <associate|section: Shannon Entropy Fails for Continuous Random
    Variable|<tuple|1.2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Relative Entropy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Shannon Entropy Is Plausible
      for Discrete Variable <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Shannon Entropy Fails for
      Continuous Random Variable <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Relative Entropy is Unique
      Solution to the Extended Conditions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>
    </associate>
  </collection>
</auxiliary>