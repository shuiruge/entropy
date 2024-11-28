<TeXmacs|2.1.4>

<style|book>

<\body>
  <section|Relative Entropy><label|section: Relative Entropy>

  <subsection|A Brief Review of Probability><label|section: A Brief Review of
  Probability>

  <em|Those that are not deterministic are denoted by capital letters.> But,
  a capital letter may also denote something that is determined. For example,
  a random variable has to be denoted by capital letter, like <math|X>, while
  we can also use <math|F> to denote something determined, such as a
  functional.

  The set of all possible values of a random variable is called the
  <strong|alphabet>.<\footnote>
    Some textures call it <with|font-series|bold|sample space>. But \Pspace\Q
    usually hints for extra structures such as vector space or topological
    space. So, we use \Palphabet\Q instead (following David Mackay, see his
    book <with|font-shape|italic|Information Theory, Inference, and Learning
    Algorithms>, section 2.1. Link to free PDF:
    <hlink|https://www.inference.org.uk/itprnn/book.pdf|https://www.inference.org.uk/itprnn/book.pdf>).
  </footnote> And for each value in the alphabet, we assign a <em|positive>
  value called <strong|density> if the alphabet is of continuum (continuous
  random variable), or <strong|mass> otherwise (discrete random
  variable).<\footnote>
    In many textures, the density or mass function is non-negative (rather
    than being positive). Being positive is beneficial because, for example,
    we will discuss the logarithm of density or mass function, for which
    being zero is invalid. For any value on which density or mass function
    vanishes, we throw it out of <math|\<cal-X\>>, which in turn guarantees
    the positivity.
  </footnote> We use <strong|distribution> for not only the mass or density
  on the alphabet, but also a sampler that can sample an ensemble of values
  of the random variable that converges to the mass or density when the
  number of sample tends to infinity. For example, we say <math|X> is a
  random variable with alphabet <math|\<cal-X\>> and distribution <math|P>.

  The density of a value <math|x> is usually denoted by
  <math|p<around*|(|x|)>>, which, as a function, is called <strong|density
  function>. Notice that <math|p<around*|(|x|)>> is deterministic, thus not
  capital. The same for mass, where <math|p<around*|(|x|)>> is called
  <strong|mass function>. Thus, we can say the expectation of a function
  <math|f> on distribution <math|P>, denoted by
  <math|\<bbb-E\><rsub|P><around*|[|f|]>> or
  <math|\<bbb-E\><rsub|x\<sim\>P><around*|[|f<around*|(|x|)>|]>>. If the
  alphabet <math|\<cal-X\>> is of continuum, then it is
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x|)>
  f<around*|(|x|)>>, otherwise <math|<big|sum><rsub|x\<in\>\<cal-X\>>p<around*|(|x|)>
  f<around*|(|x|)>>.

  If there exists random variables <math|Y> and <math|Z>, with alphabets
  <math|\<cal-Y\>> and <math|\<cal-Z\>> respectively, such that
  <math|X=Y\<oplus\>Z> (for example, let <math|X> two-dimensional, <math|Y>
  and <math|Z> are the components), then we have <strong|marginal
  distribution>s, denoted by <math|P<rsub|Y>> and <math|P<rsub|Z>>, where
  <math|p<rsub|Y><around*|(|y|)>\<assign\><big|int><rsub|\<cal-Z\>>\<mathd\>z
  p<around*|(|y,z|)>> and <math|p<rsub|Z><around*|(|z|)>\<assign\><big|int><rsub|\<cal-Y\>>\<mathd\>y
  p<around*|(|y,z|)>> if <math|X> is of continuum, and the same for mass
  function. We <strong|marginalize> <math|Z> so as to get <math|P<rsub|Y>>.

  <subsection|Shannon Entropy Is Plausible for Discrete Random Variable>

  The Shannon entropy is well-defined for discrete random variable. Let
  <math|X> a discrete random variables with alphabet
  <math|<around*|{|1,\<ldots\>,n|}>> with <math|p<rsub|i>> the mass of
  <math|X=i>. The Shannon entropy is thus a function of
  <math|<around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>> defined by

  <\equation*>
    H<around*|(|P|)>\<assign\>-k <big|sum><rsub|i=1><rsup|n>p<rsub|i> ln
    p<rsub|i>,
  </equation*>

  where <math|k> is a positive constant. Interestingly, this expression is
  unique given some plausible conditions, which can be qualitatively
  expressed as

  <\enumerate-numeric>
    <item><math|H> is a continuous function of
    <math|<around*|(|p<rsub|1>,\<ldots\>,p<rsub|n>|)>>;

    <item>larger alphabet has higher uncertainty (information or entropy);
    and

    <item>if we have known some information, and based on this knowledge we
    know further, the total information shall be the sum of all that we know.
  </enumerate-numeric>

  Here, we use <with|font-series|bold|uncertainty>,
  <with|font-series|bold|surprise>, <with|font-series|bold|information>, and
  <with|font-series|bold|entropy> as interchangeable.

  The third condition is also called the additivity of information. For two
  independent variables <math|X> and <math|Y> with distributions <math|P> and
  <math|Q> respectively, the third condition indicates that the total
  information of <math|H<around*|(|P Q|)>> is
  <math|H<around*|(|P|)>+H<around*|(|Q|)>>. But, the third condition
  indicates more than this. It also defines a \Pconditional entropy\Q for
  dealing with the situation where <math|X> and <math|Y> are dependent.
  Jaynes gives a detailed declaration to these conditions.<\footnote>
    See the appendix A of <with|font-shape|italic|Information Theory and
    Statistical Mechanics> by E. T. Jaynes, 1957. A free PDF version can be
    found on Internet: <hlink|https://bayes.wustl.edu/etj/articles/theory.1.pdf|https://bayes.wustl.edu/etj/articles/theory.1.pdf>.
  </footnote> This conditional entropy is, argued by others, quite strong and
  not sufficiently natural. The problem is that this stronger condition is
  essential for Shannon entropy to arise. Otherwise, there will be other
  entropy definitions that satisfy all the conditions, where the third
  involves only independent random variables, such as Rényi
  entropy.<\footnote>
    <with|font-shape|italic|On measures of information and entropy> by Alfréd
    Rényi, 1961. A free PDF version can be found on Internet:
    <hlink|http://digitalassets.lib.berkeley.edu/math/ucb/text/math_s4_v1_article-27.pdf|http://digitalassets.lib.berkeley.edu/math/ucb/text/math_s4_v1_article-27.pdf>.
  </footnote>

  As we will see, when extending the alphabet to continuum, this problem
  naturally ceases.

  <subsection|Shannon Entropy Fails for Continuous Random
  Variable><label|section: Shannon Entropy Fails for Continuous Random
  Variable>

  The Shannon entropy, however, cannot be directly generalized to continuous
  random variable. Usually, the entropy for continuous random variable
  <math|X> with alphabet <math|\<cal-X\>> and distribution <math|P> is given
  as a functional of the density function <math|p<around*|(|x|)>>,

  <\equation*>
    H<around*|(|P|)>\<assign\>-k<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)> ln p<around*|(|x|)>
  </equation*>

  which, however, is not well-defined. The first issue is that the <math|p>
  has dimension, indicated by <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x|)>=1>. This means we put a dimensional quantity into
  logarithm which is invalid. The second issue is that the <math|H> is not
  invariant under coordinate transformation
  <math|X\<rightarrow\>Y\<assign\>\<varphi\><around*|(|X|)>> where
  <math|\<varphi\>> is a diffeomorphism. But as a \Pphysical\Q quantity,
  <math|H> should be invariant under \Pnon-physical\Q transformations.

  To eliminate the two issues, we shall extends the axiomatic description of
  entropy. The key to this extension is introducing another distribution,
  <math|Q>, which has the same alphabet as <math|P>; and instead considering
  <with|font-shape|italic|the uncertainty (surprise) caused by <math|P> when
  prior knowledge has been given by <math|Q>>. As we will see, this will
  solve the two issues altogether.

  Explicitly, we extends the conditions as

  <\enumerate-numeric>
    <item><math|H> is a smooth and local functional of <math|p> and <math|q>;

    <item><math|H<around*|(|P,Q|)>\<gtr\>0> with <math|P\<neq\>Q> and
    <math|H<around*|(|P,P|)>=0>; and

    <item>If <math|X=Y\<oplus\>Z>, and if <math|Y> and <math|Z> independent,
    then <math|H<around*|(|P,Q|)>=H<around*|(|P<rsub|Y>,Q<rsub|Y>|)>+H<around*|(|P<rsub|Z>,Q<rsub|Z>|)>>,
    where <math|P<rsub|Y>,\<ldots\>,Q<rsub|Z>> are marginal distributions.
  </enumerate-numeric>

  The first condition employs the locality of <math|H>, which is thought as
  natural since <math|H> has been a functional. The second condition
  indicates that <math|H> vanishes only when there is no surprise caused by
  <math|P> (thus <math|P=Q>). It is a little like the second condition for
  Shannon entropy. The third condition, like the third in Shannon entropy,
  claims the additivity of surprise: if <math|X> has two independent parts,
  the total surprise shall be the sum of each.

  <subsection|Relative Entropy is the Unique Solution to the Conditions>

  We are to derive the explicit expression of <math|H> based on the three
  conditions. The result is found to be unique.

  Based on the first condition, there is a function
  <math|h:<around*|(|0,+\<infty\>|)>\<times\><around*|(|0,+\<infty\>|)>\<rightarrow\><around*|[|0,+\<infty\>|)>>
  such that <math|H> can be expressed as

  <\equation*>
    H<around*|(|P,Q|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x|)>
    h<around*|(|p<around*|(|x|)>,q<around*|(|x|)>|)>.
  </equation*>

  We are to determine the explicit form of <math|h>. Thus, from second
  condition,

  <\equation*>
    H<around*|(|P,P|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x|)>
    h<around*|(|p<around*|(|x|)>,p<around*|(|x|)>|)>=0
  </equation*>

  holds for all distribution <math|P>. Since <math|p> is positive and
  <math|h> is non-negative, then we have <math|h<around*|(|p<around*|(|x|)>,p<around*|(|x|)>|)>=0>
  for all <math|x\<in\>\<cal-X\>>. The distribution <math|P> is arbitrary,
  thus we find <math|h<around*|(|x,x|)>=0> for any
  <math|x\<in\><around*|(|0,+\<infty\>|)>>.

  Now come to the third condition. Since <math|Y> and <math|Z> are
  independent, <math|H<around*|(|P,Q|)>> can be written as
  <math|<big|int><rsub|\<cal-X\>>\<mathd\>y\<mathd\>z
  p<rsub|Y><around*|(|y|)> p<rsub|Z><around*|(|z|)>
  h<around*|(|p<rsub|Y><around*|(|y|)> p<rsub|Z><around*|(|z|)>,q<rsub|Y><around*|(|y|)>
  q<rsub|Z><around*|(|z|)>|)>>. Thus, the third condition implies

  <\equation*>
    <big|int><rsub|\<cal-X\>>\<mathd\>y\<mathd\>z p<rsub|Y><around*|(|y|)>
    p<rsub|Z><around*|(|z|)><around*|[|h<around*|(|p<rsub|Y><around*|(|y|)>
    p<rsub|Z><around*|(|z|)>,q<rsub|Y><around*|(|y|)>
    q<rsub|Z><around*|(|z|)>|)>-h<around*|(|p<rsub|Y><around*|(|y|)>,q<rsub|Y><around*|(|y|)>|)>-h<around*|(|p<rsub|Z><around*|(|z|)>,q<rsub|Z><around*|(|z|)>|)>|]>=0.
  </equation*>

  Following the previous argument, we find <math|h<around*|(|a x,b
  y|)>=h<around*|(|a,b|)>+h<around*|(|x,y|)>> for any
  <math|a,b,x,y\<in\><around*|(|0,+\<infty\>|)>>. Taking derivative on
  <math|a> and <math|b> results in <math|\<partial\><rsub|1>h<around*|(|a x,b
  y|)> x=\<partial\><rsub|1>h<around*|(|a,b|)>> and
  <math|\<partial\><rsub|2>h<around*|(|a x,b y|)>
  y=\<partial\><rsub|2>h<around*|(|a,b|)>>. Since
  <math|\<partial\><rsub|1>h<around*|(|a,a|)>+\<partial\><rsub|2>h<around*|(|a,a|)>=<around*|(|\<mathd\>/\<mathd\>a|)>
  h<around*|(|a,a|)>=0>, we get <math|\<partial\><rsub|1>h<around*|(|a x,a
  y|)> x+\<partial\><rsub|2>h<around*|(|a x,a y|)> y=0>. Letting <math|a=1>,
  it becomes a first order partial differential equation
  <math|\<partial\><rsub|1>h<around*|(|x,y|)>
  x+\<partial\><rsub|2>h<around*|(|x,y|)> y=0>, which has a unique solution
  that <math|h<around*|(|x \<mathe\><rsup|t>,y \<mathe\><rsup|t>|)>> is
  constant for all <math|t>. Choosing <math|t=-ln y>, we find
  <math|h<around*|(|x,y|)>=h<around*|(|x/y,1|)>>. Now <math|h> reduces from
  two variables to one. So, plugging this result back to <math|h<around*|(|a
  x,b y|)>=h<around*|(|a,b|)>+h<around*|(|x,y|)>>, we have
  <math|h<around*|(|x y,1|)>=h<around*|(|x,1|)>+h<around*|(|y,1|)>>. It looks
  like a logarithm. We are to show that it is indeed so. By taking derivative
  on <math|x> and then letting <math|y=1>, we get an first order ordinary
  differential equation <math|\<partial\><rsub|1>h<around*|(|x,1|)>=\<partial\><rsub|1>h<around*|(|1,1|)>/x>,
  which has a unique solution that <math|h<around*|(|x,1|)>=\<partial\><rsub|1>h<around*|(|1,1|)>
  ln<around*|(|x|)>+C>, where <math|C> is a constant. Combined with
  <math|h<around*|(|x,y|)>=h<around*|(|x/y,1|)>>, we finally arrive at
  <math|h<around*|(|x,y|)>=\<partial\><rsub|1>h<around*|(|1,1|)>
  ln<around*|(|x/y|)>+C>. To determine the
  <math|\<partial\><rsub|1>h<around*|(|1,1|)>> and <math|C>, we use the
  second condition <math|\<partial\><rsub|1>h<around*|(|1,1|)>
  <big|int>\<mathd\>x p<around*|(|x|)> ln<around*|(|p<around*|(|x|)>/q<around*|(|x|)>|)>+C\<gtr\>0>
  when <math|p\<neq\>q> and <math|\<partial\><rsub|1>h<around*|(|1,1|)>
  <big|int>\<mathd\>x p<around*|(|x|)> ln<around*|(|p<around*|(|x|)>/p<around*|(|x|)>|)>+C=0>.
  The second equation results in <math|C=0>. By <hlink|Jensen's
  inequality|https://en.wikipedia.org/wiki/Jensen%27s_inequality>, the
  integral <math| <big|int>\<mathd\>x p<around*|(|x|)>
  ln<around*|(|p<around*|(|x|)>/q<around*|(|x|)>|)>> is non-negative, thus
  from the first equation, <math|\<partial\><rsub|1>h<around*|(|1,1|)>\<gtr\>0>.
  Up to now, all things about <math|h> have been settled. We conclude that
  there is a unique expression that satisfies all the three conditions, which
  is

  <\equation*>
    H<around*|(|P,Q|)>=k <big|int><rsub|\<cal-X\>>\<mathd\>x p<around*|(|x|)>
    ln<frac|p<around*|(|x|)>|q<around*|(|x|)>>,
  </equation*>

  where <math|k\<gtr\>0>. This was first derived by <hlink|Solomon
  Kullback|https://en.wikipedia.org/wiki/Solomon_Kullback> and <hlink|Richard
  Leibler|https://en.wikipedia.org/wiki/Richard_Leibler> in 1951, so it is
  called <with|font-series|bold|Kullback\ULeibler divergence>
  (<with|font-series|bold|KL-divergence> for short), denoted by
  <math|D<rsub|KL><around*|(|P\<\|\|\>Q|)>>. Since it characterizes the
  relative surprise, it is also called <with|font-series|bold|relative
  entropy> (entropy for surprise).

  The locality is essential for relative entropy to arise. For example, Renyi
  divergence, defined by

  <\equation*>
    H<rsub|\<alpha\>><around*|(|P,Q|)>=<frac|1|\<alpha\>-1>
    ln<around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    <frac|p<rsup|\<alpha\>><around*|(|x|)>|q<rsup|\<alpha\>-1><around*|(|x|)>>|)>,
  </equation*>

  also satisfies the three conditions when locality is absent.

  In the end, we examine the two issues appeared in Shannon entropy (section
  <reference|section: Shannon Entropy Fails for Continuous Random Variable>).
  In <math|H<around*|(|P,Q|)>>, the logarithm is <math|ln<around*|(|p/q|)>>
  which is dimensionless. And a coordinate transformation
  <math|X\<rightarrow\>Y\<assign\>\<varphi\><around*|(|X|)>> makes
  <math|<big|int>\<mathd\>x p<around*|(|x|)>=<big|int>\<mathd\>y
  <around*|\||det<around*|(|\<partial\>\<varphi\><rsup|-1>|)><around*|(|y|)>|\|>
  p<around*|(|\<varphi\><rsup|-1><around*|(|y|)>|)>\<backassign\><big|int>\<mathd\>y
  <wide|p|~><around*|(|y|)>>, thus <math|p\<rightarrow\><wide|p|~>\<assign\><around*|\||det<around*|(|\<partial\>\<varphi\><rsup|-1>|)>|\|>
  p\<circ\>\<varphi\><rsup|-1>>. The same for
  <math|q\<rightarrow\><wide|q|~>\<assign\><around*|\||det<around*|(|\<partial\>\<varphi\><rsup|-1>|)>|\|>
  q\<circ\>\<varphi\><rsup|-1>>. The common factor
  <math|<around*|\||det<around*|(|\<partial\>\<varphi\><rsup|-1>|)>|\|>> will
  be eliminated in <math|ln<around*|(|p/q|)>>, leaving
  <math|H<around*|(|P,Q|)>> invariant (since <math|<big|int>\<mathd\>x p
  ln<around*|(|p/q|)>\<rightarrow\><big|int>\<mathd\>y <wide|p|~>
  ln<around*|(|<wide|p|~>/<wide|q|~>|)>>, which equals to
  <math|<big|int>\<mathd\>x p ln<around*|(|p/q|)>>). So, the two issues of
  Shannon entropy cease in relative entropy.
</body>

<\initial>
  <\collection>
    <associate|bg-color|#c7edcc>
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
    <associate|auto-5|<tuple|1.4|2>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|1>>
    <associate|footnote-3|<tuple|3|1>>
    <associate|footnote-4|<tuple|4|1>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|1>>
    <associate|footnr-3|<tuple|3|1>>
    <associate|footnr-4|<tuple|4|1>>
    <associate|section: A Brief Review of Probability|<tuple|1.1|1>>
    <associate|section: Relative Entropy|<tuple|1|1>>
    <associate|section: Shannon Entropy Fails for Continuous Random
    Variable|<tuple|1.3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Relative Entropy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>A Brief Review of
      Probability <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Shannon Entropy Is Plausible
      for Discrete Variable <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Shannon Entropy Fails for
      Continuous Random Variable <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Relative Entropy is the
      Unique Solution to the Conditions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>