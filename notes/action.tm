<TeXmacs|2.1.4>

<style|book>

<\body>
  <section|Least-Action Principle>

  In this section, we are to find a way of extracting dynamics (action or
  Lagrangian) from any raw data of any entity.

  <subsection|Conventions in This Section>

  Follow the conventions in section <reference|section: Kramers-Moyal
  Expansion and Langevin Process>. In addition, we use
  <math|P<around*|(|\<theta\>|)>> for a parameterized distribution, where
  <math|\<theta\>> is the collection of parameters. Its density function is
  <math|p<around*|(|x,\<theta\>|)>>, where random variable <math|X> takes the
  value <math|x>.

  <subsection|A Brief Review of Least-Action Principle in Classical
  Mechanics><label|section: A Brief Review of Least-Action Principle in
  Classical Mechamics>

  In physics, least-action principle gives the dynamics of the state of an
  evolutionary system, determining how it evolves with time. The state of an
  evolutionary system is called a <strong|configuration>. As the state
  changes with time, the evolution of configuration can be seen as a path in
  a space, like a contrail in the sky, indicating the movement of an
  airplane. This space is called <strong|configuration space>, which is
  generally Euclidean, <math|\<bbb-R\><rsup|n>> for some <math|n>. A
  <strong|path> is a function with single parameter
  <math|x:<around*|[|t<rsub|i>,t<rsub|f>|]>\<rightarrow\>\<bbb-R\><rsup|n>>,
  where <math|t<rsub|i>> and <math|t<rsub|f>> denote the initial and final
  time respectively. Without losing generality, we standardize the time
  interval from <math|<around*|[|t<rsub|i>,t<rsub|f>|]>> to
  <math|<around*|[|0,1|]>>. To introduce the least-action principle, consider
  the collection of paths with fixed boundaries, that is,
  <math|\<cal-P\><around*|(|x<rsub|0>,x<rsub|1>|)>\<assign\><around*|{|x:<around*|[|0,1|]>\<rightarrow\>\<bbb-R\><rsup|n>\|x<around*|(|0|)>=x<rsub|0>,x<around*|(|1|)>=x<rsub|1>|}>>
  given the boundaries <math|<around*|(|x<rsub|0>,x<rsub|1>|)>>. An
  <strong|action> is a scalar functional of path with fixed boundaries, thus
  an action <math|S<around*|(|\<cdummy\>\|x<rsub|0>,x<rsub|1>|)>:\<cal-P\><around*|(|x<rsub|0>,x<rsub|1>|)>\<rightarrow\>\<bbb-R\>>,
  where we use a vertical line to separate variables and those that are given
  as constants (the boundaries <math|<around*|(|x<rsub|0>,x<rsub|1>|)>>),
  which should not be confused with the vertical line in conditional
  probability, like <math|p<around*|(|x\|y|)>>. For example, the
  configuration space of an (one-dimensional) harmonic oscillator is
  <math|\<bbb-R\>>, and the evolution is characterized by a path
  <math|x:<around*|[|0,1|]>\<rightarrow\>\<bbb-R\>>. The action of harmonic
  oscillator is given by the functional

  <\equation>
    S<rsub|HO><around*|(|x\|x<rsub|0>,x<rsub|1>|)>=<frac|1|2><big|int><rsub|0><rsup|1>\<mathd\>t
    <around*|[|<wide|x|\<dot\>><rsup|2><around*|(|t|)>-\<omega\><rsup|2>
    x<rsup|2><around*|(|t|)>|]>,<label|equation:harmonic oscillator action>
  </equation>

  where <math|<wide|x|\<dot\>>\<assign\>\<mathd\>x/\<mathd\>t>,
  <math|\<omega\>\<in\>\<bbb-R\>>, and <math|x<around*|(|0|)>=x<rsub|0>>,
  <math|x<around*|(|1|)>=x<rsub|1>>.

  Roughly, least-action principle states that, in the real world, the paths
  with the fixed boundaries are those that minimize the action. To
  quantitatively declare the least-action principle, we have to describe the
  minimum of an action mathematically. Recall that a local minimum, or
  generally an extremum, <math|x<rsub|\<star\>>> of a function <math|f> is
  characterized by <math|<around*|(|\<partial\>f/\<partial\>x<rsup|\<alpha\>>|)><around*|(|x<rsub|\<star\>>|)>=0>
  for each component <math|\<alpha\>>. How can we generalize this from
  function to functional (action is a functional)? The trick is discretizing
  the time. Precisely, we uniformly separate the time interval
  <math|<around*|[|0,1|]>> into <math|T> fragments. Thus, the path <math|x>
  is discretized as a vector <math|<around*|(|x<around*|(|0|)>,x<around*|(|1/T|)>,\<ldots\>,x<around*|(|<around*|(|T-1|)>/T|)>,x<around*|(|1|)>|)>>,
  each component is an endpoint of a fragment. Since the boundaries are fixed
  in least-action principle, <math|x<around*|(|0|)>> and
  <math|x<around*|(|1|)>> are constant rather than variables. Hence, the true
  degree of freedom is <math|<around*|(|x<around*|(|1/T|)>,\<ldots\>,x<around*|(|<around*|(|T-1|)>/T|)>|)>>.
  <strong|Least-action principle in classical mechanics> then states that,
  given the (discretized) action <math|S> and the boundaries
  <math|<around*|(|x<rsub|0>,x<rsub|1>|)>>, there is at most one path
  <math|x<rsub|\<star\>>\<in\>\<cal-P\><around*|(|x<rsub|0>,x<rsub|1>|)>>
  such that

  <\equation>
    <frac|\<partial\>S|\<partial\>x<around*|(|i/T|)>><around*|(|x<rsub|\<star\>>\|x<rsub|0>,x<rsub|1>|)>=0,<label|equation:least-action
    principle v0>
  </equation>

  for each <math|i=1,\<ldots\>,T-1> and any <math|T\<gtr\>1>, and that
  <math|x<rsub|\<star\>>> is the path in real world.

  Take harmonic oscillator as example. To discretize its action (equation
  <reference|equation:harmonic oscillator action>), we replace the integral
  <math|<big|int><rsub|0><rsup|1>\<mathd\>t> by mean <math|<around*|(|1/T|)>
  <big|sum><rsub|i=0><rsup|T>> and <math|x<around*|(|t|)>> by
  <math|x<around*|(|i/T|)>>. Thus the second term becomes
  <math|<around*|(|\<omega\><rsup|2>/2T|)>
  <big|sum><rsub|i=0><rsup|T>x<rsup|2><around*|(|i/T|)>>. For the first term,
  the derivative <math|<wide|x|\<dot\>><around*|(|t|)>> is replaced by its
  difference <math|T <around*|[|x<around*|(|<around*|(|i+1|)>/T|)>-x<around*|(|i/T|)>|]>>,
  hence the summation shall terminated at <math|T-1> instead of <math|T>.
  Altogether, the action <reference|equation:harmonic oscillator action> is
  discretized as

  <\equation*>
    S<rsub|HO><around*|(|x\|x<rsub|0>,x<rsub|1>|)>=<frac|T|2><big|sum><rsub|i=0><rsup|T-1><around*|[|x<around*|(|<around*|(|i+1|)>/T|)>-x<around*|(|i/T|)>|]><rsup|2>-<frac|\<omega\><rsup|2>|2T><big|sum><rsub|i=0><rsup|T>x<rsup|2><around*|(|i/T|)>,
  </equation*>

  Given <math|i>, <math|x<around*|(|i/T|)>> appears in two terms in
  <math|S<rsub|HO>>, the <math|i> and <math|i+1> terms in the summation. They
  have derivatives <math|T <around*|[|-x<around*|(|<around*|(|i+1|)>/T|)>+x<around*|(|i/T|)>|]>-<around*|(|\<omega\><rsup|2>/T|)>
  x<around*|(|i/T|)>> and <math|T<around*|[|x<around*|(|i/T|)>-x<around*|(|<around*|(|i-1|)>/T|)>|]>>
  respectively. So, we find

  <\equation*>
    T <frac|\<partial\>S<rsub|HO>|\<partial\>x<around*|(|i/T|)>><around*|(|x<rsub|\<star\>>\|x<rsub|0>,x<rsub|1>|)>=T<rsup|2>
    <around*|[|x<rsub|\<star\>><around*|(|<around*|(|i+1|)>/T|)>-2
    x<rsub|\<star\>><around*|(|i/T|)>+x<rsub|\<star\>><around*|(|<around*|(|i-1|)>/T|)>|]>+\<omega\><rsup|2>
    x<rsub|\<star\>><around*|(|i/T|)>,
  </equation*>

  for <math|i=1,\<ldots\>,T-1>. The right hand side is the discretized
  <math|<wide|x|\<ddot\>><rsub|\<star\>><around*|(|t|)>+\<omega\><rsup|2>
  x<rsub|\<star\>><around*|(|t|)>>, for <math|t\<in\><around*|(|0,1|)>>
  (notice we have excluded the <math|t=0,1>, corresponding to <math|i=0,T>
  respectively). So, least-action principle,
  <math|\<partial\>S<rsub|HO>/\<partial\>x<around*|(|i/T|)><around*|(|x<rsub|\<star\>>\|x<rsub|0>,x<rsub|1>|)>=0>,
  implies the correct dynamics of harmonic oscillator in textbooks, which is
  <math|<wide|x|\<ddot\>><rsub|\<star\>><around*|(|t|)>+\<omega\><rsup|2>
  x<rsub|\<star\>><around*|(|t|)>=0>.<\footnote>
    The dynamics with fixed boundaries is called <strong|boundary value
    problem>. But in physics, the dynamics we obtained from the least-action
    principle is applied to <strong|initial value problem>, where the initial
    \Pphase\Q (for physical system, it involves initial position and
    velocity), instead of boundaries, is fixed. This mysterious application
    leads to some interesting results. For an <math|m>th-order dynamics (for
    example, harmonic oscillator is a second order dynamics since it involves
    at most the second derivative of path), an initial value problem has
    <math|<around*|(|T+1-m|)>> variables (there are <math|T+1> endpoints on
    the path), since the <math|m> degree of freedom has been assigned to the
    initial values. On the other hand, the boundary value problem has
    <math|<around*|(|T+1-2|)>> degree of freedom, since there are always two
    boundaries (<math|t=0> and <math|t=1>). So, for the success of this
    mysterious application, we must have <math|m=2>. That is, the initial
    value problem has to be second order.
  </footnote>

  We can generalize the least-action principle to any system, evolutionary or
  not, where variables locate in a high-dimensional Euclidean space and,
  given some conditions, action is a scalar function on it. It states that
  the real world datum locates in the minimum of the action. Precisely, given
  the conditioned action <math|S> (we may hide the condition <math|y> into
  <math|S> instead of explicitly writing it out), there is a at most one
  <math|x<rsub|\<star\>>> such that

  <\equation>
    <frac|\<partial\>S|\<partial\>x<rsup|\<alpha\>>><around*|(|x<rsub|\<star\>>|)>=0,<label|equation:least-action
    principle v1>
  </equation>

  and that <math|x<rsub|\<star\>>> is the real world datum.

  There are, however, redundant degrees of freedom in action <math|S>. We may
  construct multiple actions all satisfying equation
  <reference|equation:least-action principle v1>. Knowing the extremum of a
  function cannot imply the shape of the function. The action has much more
  degrees of freedom than that is needed for revealing the real world datum
  in classical mechanics. But, in statistical mechanics, as we will see in
  section TODO, the action is completely determined by the real world
  distribution (the correspondence of real world datum in statistical
  mechanics), with nothing redundant.

  <subsection|Least-Action Principle of Distribution Has No Redundancy>

  Dynamics in classical mechanics are always deterministic. That is, once the
  initial conditions (for initial value problem) or the boundaries (for
  boundary value problem) are fixed, then the path is fully determined, in
  which randomness is forbidden. There are, however, many phenomena in nature
  that have <em|intrinsic> randomness. For example, Langevin process
  <math|\<mathd\>X=\<mu\><around*|(|x|)> \<mathd\>t+\<mathd\>W>, which was
  originally used to describe molecular movement, has a stochastic term
  <math|\<mathd\>W> obeying a normal distribution with variance proportional
  to <math|\<mathd\>t>. The dynamics of starling flocks also has intrinsic
  randomness, which is the \Pfree will\Q of each bird, so is ant colony,
  human society, and any interactive system in which each element has some
  level of intrinsic uncertainty. For these cases, the real world datum is
  not simply a path, but a distribution of path. Precisely, we use a
  distribution <math|Q> to describe real world phenomenon that has intrinsic
  randomness.

  For any density function <math|q<around*|(|x|)>> and any
  <math|\<beta\>\<gtr\>0>, we can always define

  <\equation*>
    S<around*|(|x|)>\<assign\>-*<around*|(|1/\<beta\>|)> ln
    q<around*|(|x|)>+const,
  </equation*>

  up to an arbitrary constant. Thus, <math|q<around*|(|x|)>=exp<around*|(|-\<beta\>
  S<around*|(|x|)>|)>/Z> where <math|Z\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  exp<around*|(|-\<beta\> S<around*|(|x|)>|)>>. This <math|S> has some
  properties that can be analog to the action in classical mechanics. First,
  if <math|\<cal-X\>=\<bbb-R\><rsup|n>>, then we find, by plugging in the
  definition of <math|S>,

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x q<around*|(|x|)>
    <frac|\<partial\>S|\<partial\>x<rsup|\<alpha\>>><around*|(|x|)>=-\<beta\><rsup|-1>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x q<around*|(|x|)>
    <frac|\<partial\>|\<partial\>x<rsup|\<alpha\>>>ln
    q<around*|(|x|)>=-\<beta\><rsup|-1> <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    <frac|\<partial\>|\<partial\>x<rsup|\<alpha\>>>q<around*|(|x|)>.
  </equation*>

  The integrand of the right most expression is a divergence, so it results
  in a boundary integral. But since <math|q>, as a density function, is
  normalized, the boundary integral shall vanish. So, we conclude that

  <\equation*>
    \<bbb-E\><rsub|Q><around*|[|<frac|\<partial\>S|\<partial\>x<rsup|\<alpha\>>>|]>=0.
  </equation*>

  This is analog to equation <reference|equation:least-action principle v1>,
  where the minimum <math|x<rsub|\<star\>>> is replaced by the expectation
  <math|\<bbb-E\><rsub|Q>>. Secondly, in the limit
  <math|\<beta\>\<rightarrow\>+\<infty\>> while fixing <math|S>, the
  distribution <math|Q> becomes so sharp that it only samples the
  <math|x<rsub|\<star\>>> (recall section <reference|section: A Brief Review
  of Probability> that distribution has a sampler) that maximizes <math|q>,
  thus minimizes <math|S>. For these reasons, we illustrate the <math|S>
  defined by <math|q> as the action of <math|Q>. Contrary to the action in
  classical mechanics, the <math|S> here is completely determined by the real
  world distribution <math|Q> (because it is defined by its density function
  <math|q>), without any redundancy. This is the direct implication that
  distribution involves more information than its most likely datum.

  <subsection|Example: a Very Simple Stochastic Model>

  We are to construct a stochastic model that is sufficiently simple to make
  analytical calculation. Consider the density function

  <\equation*>
    q<around*|(|x|)>\<propto\>exp<around*|(|-<frac|\<beta\>|2>
    <big|int><rsub|\<bbb-R\>>\<mathd\>t <around*|[|<wide|x|\<dot\>><rsup|2><around*|(|t|)>-\<omega\><rsup|2>
    x<rsup|2><around*|(|t|)>|]>|)>.
  </equation*>

  This action is not that of harmonic oscillator since the boundaries are not
  completely fixed (this is the key of simplification) and the time runs over
  <math|\<bbb-R\>>.

  We follow the general strategy of dealing with integral that has
  derivatives in integrand: Fourier transform. By Fourier transform, we can
  decompose the interaction caused by derivative
  <math|<wide|x|\<dot\>><around*|(|t|)>> into independent variables. By
  denoting <math|<wide|x|^><around*|(|\<zeta\>|)>\<in\>\<bbb-C\>> the Fourier
  coefficient of <math|x>,

  <\equation*>
    <big|int><rsub|\<bbb-R\>>\<mathd\>t <wide|x|\<dot\>><rsup|2><around*|(|t|)>=<big|int><rsub|\<bbb-R\>>\<mathd\>t
    <big|int><rsub|\<bbb-R\>>\<mathd\>\<zeta\>
    <big|int><rsub|\<bbb-R\>>\<mathd\>\<zeta\><rprime|'> <around*|(|-\<zeta\>
    \<zeta\><rprime|'>|)>exp<around*|(|\<mathi\>
    <around*|(|\<zeta\>+\<zeta\><rprime|'>|)> t|)>
    <wide|x|^><around*|(|\<zeta\>|)> <wide|x|^><around*|(|\<zeta\><rprime|'>|)>=<big|int><rsub|\<bbb-R\>>\<mathd\>\<zeta\>
    \ \<zeta\><rsup|2> <wide|x|^><around*|(|\<zeta\>|)>
    <wide|x|^><around*|(|-\<zeta\>|)>,
  </equation*>

  where we have used <math|<big|int><rsub|\<bbb-R\>>\<mathd\>t
  exp<around*|(|i k t|)>=\<delta\><around*|(|k|)>>. Since
  <math|x<around*|(|t|)>> is real, we have
  <math|<wide|x|^><around*|(|-\<zeta\>|)>=<wide|<wide|x|^><around*|(|\<zeta\>|)>|\<bar\>>>,
  thus

  <\equation*>
    <big|int><rsub|\<bbb-R\>>\<mathd\>t <wide|x|\<dot\>><rsup|2><around*|(|t|)>=<big|int><rsub|\<bbb-R\>>\<mathd\>\<zeta\>
    \<zeta\><rsup|2> <around*|\||<wide|x|^><around*|(|\<zeta\>|)>|\|><rsup|2>=2
    <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\> \<zeta\><rsup|2>
    <around*|\||<wide|x|^><around*|(|\<zeta\>|)>|\|><rsup|2>.
  </equation*>

  The same, we have <math|<big|int><rsub|0><rsup|1>\<mathd\>t
  x<rsup|2><around*|(|t|)>=2 <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\>
  <around*|\||<wide|x|^><around*|(|\<zeta\>|)>|\|><rsup|2>>. In addition, we
  decompose the complex number <math|<wide|x|^><around*|(|\<zeta\>|)>=a<around*|(|\<zeta\>|)>+\<mathi\>
  b<around*|(|\<zeta\>|)>> with <math|a<around*|(|\<zeta\>|)>,b<around*|(|\<zeta\>|)>\<in\>\<bbb-R\>>.
  Altogether, we find

  <\equation*>
    q<around*|(|a,b|)>\<propto\>exp<around*|(|-\<beta\>
    <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\>
    <around*|(|\<zeta\><rsup|2>+\<omega\><rsup|2>|)>
    <around*|[|a<rsup|2><around*|(|\<zeta\>|)>+b<rsup|2><around*|(|\<zeta\>|)>|]>|)>.
  </equation*>

  Now, we get discrete (but infinitely many) variables that do not interact
  with each other.

  After decomposing the variables, we are to compute how far will the
  information propagate along the time-axis. Pearson coefficient between
  <math|x<around*|(|t|)>> and <math|x<around*|(|t<rprime|'>|)>> for
  <math|t,t<rprime|'>\<in\><around*|(|0,1|)>> is one quantity that
  characterizes our purpose. It is defined as
  <math|Cov<rsub|Q><around*|(|x<around*|(|t|)>,x<around*|(|t<rprime|'>|)>|)>/<sqrt|Var<rsub|Q><around*|[|x<around*|(|t|)>|]>
  Var<rsub|Q><around*|[|x<around*|(|t<rprime|'>|)>|]>>>. Since
  <math|Var<rsub|Q><around*|[|x<around*|(|t|)>|]>=Cov<rsub|Q><around*|(|x<around*|(|t|)>,x<around*|(|t|)>|)>>,
  all we need to do is calculating the covariance. Inserting the Fourier
  transform of <math|x<around*|(|t|)>>, the bi-linearity of covariance gives

  <\equation*>
    Cov<rsub|Q><around*|(|x<around*|(|t|)>,x<around*|(|t<rprime|'>|)>|)>=<big|int><rsub|\<bbb-R\>>\<mathd\>\<zeta\>
    <big|int><rsub|\<bbb-R\>>\<mathd\>\<zeta\><rprime|'>
    exp<around*|(|\<mathi\> \<zeta\> t|)> exp<around*|(|\<mathi\>
    \<zeta\><rprime|'> t<rprime|'>|)> Cov<rsub|Q><around*|(|<wide|x|^><around*|(|\<zeta\>|)>,<wide|x|^><around*|(|\<zeta\><rprime|'>|)>|)>.
  </equation*>

  Then, we use the real variables <math|a<around*|(|\<zeta\>|)>> and
  <math|b<around*|(|\<zeta\>|)>> for which
  <math|\<zeta\>\<in\><around*|[|0,+\<infty\>|)>>. This will separate the
  integral into four parts:

  <\small>
    <\align>
      <tformat|<table|<row|<cell|>|<cell|Cov<rsub|Q><around*|(|x<around*|(|t|)>,x<around*|(|t<rprime|'>|)>|)>>>|<row|<cell|=>|<cell|<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\>
      <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\><rprime|'>
      exp<around*|(|\<mathi\> \<zeta\> t|)> exp<around*|(|\<mathi\>
      \<zeta\><rprime|'> t<rprime|'>|)> Cov<rsub|Q><around*|(|<wide|x|^><around*|(|\<zeta\>|)>,<wide|x|^><around*|(|\<zeta\><rprime|'>|)>|)>>>|<row|<cell|+>|<cell|<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\>
      <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\><rprime|'>
      exp<around*|(|-\<mathi\> \<zeta\> t|)> exp<around*|(|\<mathi\>
      \<zeta\><rprime|'> t<rprime|'>|)> Cov<rsub|Q><around*|(|<wide|x|^><around*|(|-\<zeta\>|)>,<wide|x|^><around*|(|\<zeta\><rprime|'>|)>|)>>>|<row|<cell|+>|<cell|<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\>
      <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\><rprime|'>
      exp<around*|(|\<mathi\> \<zeta\> t|)> exp<around*|(|-\<mathi\>
      \<zeta\><rprime|'> t<rprime|'>|)> Cov<rsub|Q><around*|(|<wide|x|^><around*|(|\<zeta\>|)>,<wide|x|^><around*|(|-\<zeta\><rprime|'>|)>|)>>>|<row|<cell|+>|<cell|<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\>
      <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\><rprime|'>
      exp<around*|(|-\<mathi\> \<zeta\> t|)> exp<around*|(|-\<mathi\>
      \<zeta\><rprime|'> t<rprime|'>|)> Cov<rsub|Q><around*|(|<wide|x|^><around*|(|-\<zeta\>|)>,<wide|x|^><around*|(|-\<zeta\><rprime|'>|)>|)>.>>>>
    </align>
  </small>

  Before replacing <math|<wide|x|^><around*|(|\<zeta\>|)>> by
  <math|a<around*|(|\<zeta\>|)>+\<mathi\>b<around*|(|\<zeta\>|)>>, notice
  that <math|a<around*|(|-\<zeta\>|)>=a<around*|(|\<zeta\>|)>> and
  <math|b<around*|(|-\<zeta\>|)>=-b<around*|(|\<zeta\>|)>>, as a result of
  <math|<wide|x|^><around*|(|-\<zeta\>|)>=<wide|<wide|x|^><around*|(|\<zeta\>|)>|\<bar\>>>.
  Then we have, for example, <math|Cov<rsub|Q><around*|(|<wide|x|^><around*|(|-\<zeta\>|)>,<wide|x|^><around*|(|\<zeta\><rprime|'>|)>|)>=Cov<rsub|Q><around*|(|a<around*|(|\<zeta\>|)>-\<mathi\>
  b<around*|(|\<zeta\>|)>,a<around*|(|\<zeta\><rprime|'>|)>+\<mathi\>
  b<around*|(|\<zeta\><rprime|'>|)>|)>=Cov<rsub|Q><around*|(|a<around*|(|\<zeta\>|)>,a<around*|(|\<zeta\><rprime|'>|)>|)>-\<mathi\>Cov<rsub|Q><around*|(|b<around*|(|\<zeta\>|)>,a<around*|(|\<zeta\><rprime|'>|)>|)>+\<mathi\>Cov<rsub|Q><around*|(|a<around*|(|\<zeta\>|)>,b<around*|(|\<zeta\><rprime|'>|)>|)>+Cov<rsub|Q><around*|(|b<around*|(|\<zeta\>|)>,b<around*|(|\<zeta\><rprime|'>|)>|)>>.
  But since <math|a> and <math|b> are independent, we get
  <math|Cov<rsub|Q><around*|(|b<around*|(|\<zeta\>|)>,a<around*|(|\<zeta\><rprime|'>|)>|)>=Cov<rsub|Q><around*|(|a<around*|(|\<zeta\>|)>,b<around*|(|\<zeta\><rprime|'>|)>|)>=0>,
  and then <math|Cov<rsub|Q><around*|(|<wide|x|^><around*|(|-\<zeta\>|)>,<wide|x|^><around*|(|\<zeta\><rprime|'>|)>|)>=Cov<rsub|Q><around*|(|a<around*|(|\<zeta\>|)>,a<around*|(|\<zeta\><rprime|'>|)>|)>+Cov<rsub|Q><around*|(|b<around*|(|\<zeta\>|)>,b<around*|(|\<zeta\><rprime|'>|)>|)>>.
  The same derivations for the rest three terms, and we find

  <\small>
    <\align>
      <tformat|<table|<row|<cell|>|<cell|Cov<rsub|Q><around*|(|x<around*|(|t|)>,x<around*|(|t<rprime|'>|)>|)>>>|<row|<cell|=>|<cell|<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\>
      <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\><rprime|'>
      exp<around*|(|\<mathi\> \<zeta\> t|)> exp<around*|(|\<mathi\>
      \<zeta\><rprime|'> t<rprime|'>|)> <around*|[|Cov<rsub|Q><around*|(|a<around*|(|\<zeta\>|)>,a<around*|(|\<zeta\><rprime|'>|)>|)>-Cov<rsub|Q><around*|(|b<around*|(|\<zeta\>|)>,b<around*|(|\<zeta\><rprime|'>|)>|)>|]>>>|<row|<cell|+>|<cell|<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\>
      <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\><rprime|'>
      exp<around*|(|-\<mathi\> \<zeta\> t|)> exp<around*|(|\<mathi\>
      \<zeta\><rprime|'> t<rprime|'>|)> <around*|[|Cov<rsub|Q><around*|(|a<around*|(|\<zeta\>|)>,a<around*|(|\<zeta\><rprime|'>|)>|)>+Cov<rsub|Q><around*|(|b<around*|(|\<zeta\>|)>,b<around*|(|\<zeta\><rprime|'>|)>|)>|]>>>|<row|<cell|+>|<cell|<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\>
      <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\><rprime|'>
      exp<around*|(|\<mathi\> \<zeta\> t|)> exp<around*|(|-\<mathi\>
      \<zeta\><rprime|'> t<rprime|'>|)> <around*|[|Cov<rsub|Q><around*|(|a<around*|(|\<zeta\>|)>,a<around*|(|\<zeta\><rprime|'>|)>|)>+Cov<rsub|Q><around*|(|b<around*|(|\<zeta\>|)>,b<around*|(|\<zeta\><rprime|'>|)>|)>|]>>>|<row|<cell|+>|<cell|<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\>
      <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\><rprime|'>
      exp<around*|(|-\<mathi\> \<zeta\> t|)> exp<around*|(|-\<mathi\>
      \<zeta\><rprime|'> t<rprime|'>|)><around*|[|Cov<rsub|Q><around*|(|a<around*|(|\<zeta\>|)>,a<around*|(|\<zeta\><rprime|'>|)>|)>-Cov<rsub|Q><around*|(|b<around*|(|\<zeta\>|)>,b<around*|(|\<zeta\><rprime|'>|)>|)>|]>.>>>>
    </align>
  </small>

  The covariances can be read from <math|p<around*|(|x|)>>, as
  <math|Cov<rsub|Q><around*|(|a<around*|(|\<zeta\>|)>,a<around*|(|\<zeta\><rprime|'>|)>|)>=\<delta\><around*|(|\<zeta\>-\<zeta\><rprime|'>|)>/<around*|[|2\<beta\>
  <around*|(|\<zeta\><rsup|2>+\<omega\><rsup|2>|)>|]>>. The same for
  <math|Cov<rsub|Q><around*|(|b<around*|(|\<zeta\>|)>,b<around*|(|\<zeta\><rprime|'>|)>|)>>.
  So, we arrive at

  <\equation*>
    Cov<rsub|Q><around*|(|x<around*|(|t|)>,x<around*|(|t<rprime|'>|)>|)>=<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\>
    <frac|exp<around*|(|\<mathi\> \<zeta\>
    <around*|(|t-t<rprime|'>|)>|)>|\<beta\>
    <around*|(|\<zeta\><rsup|2>+\<omega\><rsup|2>|)>>+<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>\<zeta\><frac|exp<around*|(|-\<mathi\>
    \<zeta\> <around*|(|t-t<rprime|'>|)>|)>|\<beta\>
    <around*|(|\<zeta\><rsup|2>+\<omega\><rsup|2>|)>>=<big|int><rsub|\<bbb-R\>>\<mathd\>\<zeta\>
    <frac|exp<around*|(|\<mathi\> \<zeta\>
    <around*|(|t-t<rprime|'>|)>|)>|\<beta\>
    <around*|(|\<zeta\><rsup|2>+\<omega\><rsup|2>|)>>.
  </equation*>

  This integral, which results in the Yukawa potential, is very tricky. The
  key is noticing the following integral

  <\equation*>
    <big|int><rsub|0><rsup|x>\<mathd\>u exp<around*|(|-<around*|(|\<omega\>\<pm\>\<mathi\>\<zeta\>|)>
    u|)>=<frac|1-exp<around*|(|-<around*|(|\<omega\>\<pm\>\<mathi\>\<zeta\>|)>
    x|)>|\<omega\>\<pm\>\<mathi\>\<zeta\>>.
  </equation*>

  When <math|\<omega\>\<gtr\>0>, let <math|x\<rightarrow\>+\<infty\>>, we
  find

  <\equation*>
    <big|int><rsub|0><rsup|+\<infty\>>\<mathd\>u
    exp<around*|(|-<around*|(|\<omega\>\<pm\>\<mathi\>\<zeta\>|)>
    u|)>=<frac|1|\<omega\>\<pm\>\<mathi\>\<zeta\>><around*|[|1-lim<rsub|u\<rightarrow\>+\<infty\>>exp<around*|(|-<around*|(|\<omega\>\<pm\>\<mathi\>\<zeta\>|)>
    u|)>|]>=<frac|1|\<omega\>\<pm\>\<mathi\>\<zeta\>>.
  </equation*>

  This relation helps convert the denominator in the covariance to
  exponential, as

  <\equation*>
    <frac|1|\<zeta\><rsup|2>+\<omega\><rsup|2>>=<frac|1|2\<omega\>>
    <around*|[|<frac|1|\<omega\>+\<mathi\>\<zeta\>>+<frac|1|\<omega\>-\<mathi\>\<zeta\>>|]>=<frac|1|2\<omega\>><around*|[|<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>u
    exp<around*|(|-<around*|(|\<omega\>+\<mathi\>\<zeta\>|)>
    u|)>+<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>u
    exp<around*|(|-<around*|(|\<omega\>-\<mathi\>\<zeta\>|)> u|)>|]>.
  </equation*>

  Plugging into the covariance, and exchanging the integrals
  <math|<big|int><rsub|\<bbb-R\>>\<mathd\>\<zeta\>> and
  <math|<big|int><rsub|0><rsup|+\<infty\>>\<mathd\>u>, we get

  \;

  <\equation*>
    <big|int><rsub|\<bbb-R\>>\<mathd\>\<zeta\> <frac|exp<around*|(|\<mathi\>
    \<zeta\> <around*|(|t-t<rprime|'>|)>|)>|\<zeta\><rsup|2>+\<omega\><rsup|2>>=<frac|1|2\<omega\>><big|int><rsub|0><rsup|+\<infty\>>\<mathd\>u
    exp<around*|(|-\<omega\>u|)> <around*|[|<big|int><rsub|\<bbb-R\>>\<mathd\>\<zeta\>
    exp<around*|(|\<mathi\> \<zeta\> <around*|(|t-t<rprime|'>-u|)>|)>+<big|int><rsub|\<bbb-R\>>\<mathd\>\<zeta\>
    exp<around*|(|\<mathi\> \<zeta\> <around*|(|t-t<rprime|'>+u|)>|)>|]>.
  </equation*>

  Integration of <math|\<zeta\>> turns to be Dirac's delta functions, which
  result in <math|<around*|(|1/2\<omega\>|)> exp<around*|(|-\<omega\>
  <around*|\||t-t<rprime|'>|\|>|)>>. So, <math|Cov<rsub|Q><around*|(|x<around*|(|t|)>,x<around*|(|t<rprime|'>|)>|)>=<around*|(|2\<beta\>
  \<omega\>|)><rsup|-1><rsub|> exp<around*|(|-\<omega\>
  <around*|\||t-t<rprime|'>|\|>|)>> with <math|\<omega\>\<gtr\>0>, from which
  the Pearson coefficient reads

  <\equation*>
    Pearson<rsub|Q><around*|(|x<around*|(|t|)>,x<around*|(|t<rprime|'>|)>|)>=exp<around*|(|-\<omega\>
    <around*|\||t-t<rprime|'>|\|>|)>,
  </equation*>

  which decreases exponentially with <math|<around*|\||t-t<rprime|'>|\|>>.
  The decay rate is <math|1/\<omega\>>.

  Only in the limit <math|\<omega\>\<rightarrow\>0> is the system scale-free,
  which means the decay rate is infinity. (Notice that the trick does not
  hold for <math|\<omega\>=0>, so we cannot say <math|\<omega\>=0>, but
  <math|\<omega\>\<rightarrow\>0>.) This is plausible, since the action
  becomes scale-invariant in and only in the same limit, where there is no
  dimensional constant (<math|\<omega\>> has dimension
  <math|<around*|[|t|]><rsup|-1>>). So, an educated guess is that a system is
  scale-free if and only if the action is scale-invariant.

  <\equation*>
    .
  </equation*>

  \ <subsection|Data Fitting Is Equivalent to Least-Action Principle of
  Distribution><label|section: Data Fitting Is Equivalent to Least-Action
  Principle of Distribution>

  We are to figure out method to fit the real world distribution
  <math|Q<around*|(|y|)>>, given some samples of <math|Q<around*|(|y|)>>. For
  simplicity, we omit the condition <math|y> throughout this section.

  Let <math|S<around*|(|x,\<theta\>|)>> represent a parametrized function. We
  have a density function

  <\equation>
    p<around*|(|x,\<theta\>|)>\<assign\>exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>/Z<around*|(|\<theta\>|)>,<label|equation:generic
    density>
  </equation>

  where

  <\equation>
    Z<around*|(|\<theta\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<rsub|0><around*|(|x|)> exp<around*|(|-V<around*|(|x,\<theta\>|)>|)><label|equation:partition
    function>
  </equation>

  for ensuring the normalization <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,\<theta\>|)>=1>. What we have is an empirical distribution
  <math|Q>.<\footnote>
    The empirical distribution <math|Q> can be represented by either a
    collection of datum <math|<around*|{|x<rsub|k>\|k=1,\<ldots\>,N|}>>, or a
    distribution a the density function approximated by the Gaussian mixture
    density <math|q<around*|(|x|)>\<assign\><around*|(|1/N|)>
    <big|sum><rsub|x\<in\>Q>G<rsub|\<sigma\>><around*|(|x|)>>, where
    <math|G<rsub|\<sigma\>><around*|(|x|)>> is Gaussian with zero mean and
    variance <math|\<sigma\><rsup|2>>, and <math|0\<less\>\<sigma\>\<ll\>1>.
  </footnote> And we are to adjust the parameters <math|\<theta\>> so that
  <math|P<around*|(|\<theta\>|)>> (the distribution of the density function
  <math|p<around*|(|\<cdummy\>,\<theta\>|)>>) mimics the empirical
  distribution <math|Q>. To do so, we minimize the relative entropy between
  <math|Q> and <math|P<around*|(|\<theta\>|)>>, which is defined as
  <math|H<around*|(|Q,P<around*|(|\<theta\>|)>|)>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  q<around*|(|x|)> ln <around*|(|q<around*|(|x|)>/p<around*|(|x,\<theta\>|)>|)>>.
  Plugging equation <reference|equation:generic density> into
  <math|H<around*|(|Q,P<around*|(|\<theta\>|)>|)>>, we have

  <\equation*>
    H<around*|(|Q,P<around*|(|\<theta\>|)>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> ln q<around*|(|x|)>+<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> S<around*|(|x,\<theta\>|)>+<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> ln Z<around*|(|\<theta\>|)>.
  </equation*>

  By omitting the <math|\<theta\>>-independent terms, we get the loss
  function

  <\equation*>
    L<around*|(|\<theta\>|)>\<assign\>\<bbb-E\><rsub|Q><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>+ln
    Z<around*|(|\<theta\>|)>.
  </equation*>

  We can find the <math|\<theta\><rsub|\<star\>>\<assign\>argmin L> by
  iteratively updating <math|\<theta\>> along the direction
  <math|-\<partial\>L/\<partial\>\<theta\>>. With a series of direct
  calculus,<\footnote>
    Directly, we have

    <\equation*>
      <frac|\<partial\>L|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=\<bbb-E\><rsub|Q><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>+Z<rsup|-1><around*|(|\<theta\>|)>
      <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>.
    </equation*>

    Since <math|Z<around*|(|\<theta\>|)>\<assign\><big|int>\<mathd\>x
    p<rsub|0><around*|(|x|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>,
    we find

    <\equation*>
      <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=-<big|int>\<mathd\>x
      p<rsub|0><around*|(|x|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>
      <frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>,
    </equation*>

    thus

    <\equation*>
      Z<rsup|-1><around*|(|\<theta\>|)> <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=-<big|int>\<mathd\>x
      <around*|[|p<rsub|0><around*|(|x|)>
      exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>
      Z<rsup|-1><around*|(|\<theta\>|)>|]>
      <frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>=-<big|int>\<mathd\>x
      p<around*|(|x,\<theta\>|)> \ <frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>,
    </equation*>

    where in the last equality, we used the definition of
    <math|p<around*|(|x,\<theta\>|)>> (the blue parts). This final expression
    is just the <math|-\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|<around*|(|\<partial\>S/\<partial\>\<theta\><rsup|\<alpha\>>|)><around*|(|\<cdummy\>,\<theta\>|)>|]>>.
  </footnote> we find

  <\equation>
    -<frac|\<partial\>L|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|Q><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>.<label|equation:data-fitting
    iteration>
  </equation>

  At the minimum, we shall have <math|\<partial\>L/\<partial\>\<theta\>=0>.
  Then, we find that <math|\<theta\><rsub|\<star\>>> obeys

  <\equation>
    \<bbb-E\><rsub|P<around*|(|\<theta\><rsub|\<star\>>|)>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]>=\<bbb-E\><rsub|Q><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]>.<label|equation:data-fitting
    result>
  </equation>

  It can be read from equation <reference|equation:data-fitting iteration>
  that minimizing <math|L> is to increase
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>> on the sampled points (the first
  term) while decrease it on data points (the second term). As figure
  <reference|figure: Least-Action> illustrates, this way of optimization will
  site real world data onto local minima of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>, <em|in statistical sense>.

  <big-figure|<with|gr-mode|<tuple|edit|spline>|gr-frame|<tuple|scale|1.00001cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|10|10|center>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-line-width|0.5ln|gr-dash-style|11100|gr-color|blue|<graphics||<with|arrow-end|\|\<gtr\>|<line|<point|-6|-3>|<point|-6.0|3.0>>>|<with|arrow-end|\|\<gtr\>|<line|<point|-6|-3>|<point|6.0|-3.0>>>|<math-at|S<around*|(|x,\<theta\>|)>|<point|-6.40049278190267|3.30061515056306>>|<math-at|x|<point|6.20000992178327|-3.1>>|<with|line-width|5ln|arrow-end|\<gtr\>|opacity|50%|color|red|<line|<point|-1.3|3.2>|<point|-1.3|1.7>>>|<with|line-width|5ln|color|blue|opacity|50%|arrow-begin|\<less\>|<line|<point|0.8|-0.83096059724234>|<point|0.8|-2.33096059724234>>>|<with|dash-style|11100|line-width|0.5ln|color|red|<line|<point|-1.3|1.4>|<point|-1.3|-3.0>>>|<with|color|red|<point|-1.3|1.41877>>|<with|color|red|<math-at|x<rsub|1>|<point|-1.4|-3.3>>>|<with|color|blue|<math-at|x<rsub|2>|<point|0.7|-3.3>>>|<with|dash-style|11100|line-width|0.5ln|color|blue|<line|<point|0.8|0.5>|<point|0.8|-3.0>>>|<with|color|blue|<point|0.8|-0.6>>|<with|color|dark
  cyan|dash-style|11100|<spline|<point|-5|1>|<point|-2.3|-0.7>|<point|0.8|0.5>|<point|3.04196914325401|2.48975575876838>|<point|4.2|2.2>>>|<with|color|dark
  cyan|<spline|<point|-5.04362277379988|-0.0748763911166967>|<point|-2.85798620872125|2.07284242554528>|<point|0.666826517619433|-0.580225885932565>|<point|3.38308005225473|1.9970400013229>|<point|4.21690671870091|2.62872686984274>>>>>|<label|figure:
  Least-Action> This figure illustrate how
  <math|min<rsub|\<theta\>>L<around*|(|\<theta\>|)>> will site a real world
  datum onto a local minimum of <math|S<around*|(|\<cdummy\>,\<theta\>|)>>.
  The green curve represents the current not-yet-optimized
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>. The <math|x<rsub|1>> (red
  point) is a real world datum while <math|x<rsub|2>> (blue point), which is
  currently a local minimum of <math|S<around*|(|\<cdummy\>,\<theta\>|)>>, is
  not. Minimizing <math|L> by tuning <math|\<theta\>> pushes the
  <math|\<bbb-E\><rsub|Q><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
  down to lower value, corresponding to the red downward double-arrow on
  <math|x<rsub|1>>. Also, since <math|x<rsub|2>> is a local minimum, the data
  points sampled from <math|p<around*|(|x,\<theta\>|)>\<propto\>exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>
  will accumulate around <math|x<rsub|2>>. So, minimizing <math|L> also pulls
  the <math|\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
  up to greater value, corresponding to the blue upward double-arrow on
  <math|x<rsub|2>>. Altogether, it makes <math|x<rsub|1>> a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>, and
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>> is optimized to be the dashed
  green curve.>

  In this way, we find an analytical distribution
  <math|P<around*|(|\<theta\>|)>> that approximates the empirical
  distribution <math|Q>. The <math|S<around*|(|\<cdummy\>,\<theta\>|)>> that
  defines <math|P<around*|(|\<theta\>|)>> describes the interaction between
  the different components of an entity. This entity may be of physics, like
  a collection of particles. But it can also be words, genes, flock of birds,
  and so on. For example, we can find out how words \Pinteract\Q with each
  other.

  <section|Drafts>

  <subsection|Stochastic Harmonic Oscillator>

  We use <math|S<rsub|HO>> as the action in
  <math|q<around*|(|x\|y|)>=exp<around*|(|-\<beta\> S<around*|(|x\|y|)>|)>>,
  and conditions <math|y=<around*|(|x<rsub|0>,x<rsub|1>|)>>, the fixed
  boundaries. Then, we have

  <\small>
    <\equation*>
      q<around*|(|x\|x<rsub|0>,x<rsub|1>|)>\<propto\>exp<around*|(|-\<beta\>
      S<rsub|HO><around*|(|x\|x<rsub|0>,x<rsub|1>|)>|)>=exp<around*|(|-<frac|\<beta\>
      T|2><big|sum><rsub|i=0><rsup|T-1><around*|[|x<around*|(|<around*|(|i+1|)>/T|)>-x<around*|(|i/T|)>|]><rsup|2>+<frac|\<beta\>
      \<omega\><rsup|2>|2T><big|sum><rsub|i=0><rsup|T>x<rsup|2><around*|(|i/T|)>|)>.
    </equation*>
  </small>

  Denoting <math|x<around*|(|i/T|)>> by <math|z<rsup|i>>, then, by omitting
  the term involving only constant <math|z<rsup|0>>, we find the first term
  in the summation is <math|<around*|(|z<rsup|1>|)><rsup|2>-2z<rsup|0>
  z<rsup|1>>. The second term is <math|<around*|(|z<rsup|2>|)><rsup|2>+<around*|(|1-<around*|(|\<omega\>/T|)><rsup|2>|)><around*|(|z<rsup|1>|)><rsup|2>-2z<rsup|2>
  z<rsup|1>>. We add the <math|<around*|(|z<rsup|1>|)><rsup|2>> terms
  together, resulting in <math|<around*|(|2-<around*|(|\<omega\>/T|)><rsup|2>|)>
  <around*|(|z<rsup|1>|)><rsup|2>>, leaving <math|-2z<rsup|0> z<rsup|1>> in
  the first term. The same for the rest terms in the summation, until the
  last two, which are <math|<around*|(|z<rsup|T-1>|)><rsup|2>+<around*|(|1-<around*|(|\<omega\>/T|)><rsup|2>|)><around*|(|z<rsup|T-1>|)><rsup|2>-2z<rsup|T-2>
  z<rsup|T-1>> and, by omitting the constant term
  <math|<around*|(|z<rsup|T>|)><rsup|2>>,
  <math|<around*|(|1-<around*|(|\<omega\>/T|)><rsup|2>|)><around*|(|z<rsup|T-1>|)><rsup|2>-2z<rsup|T-1>
  z<rsup|T>>. Again, we add the <math|<around*|(|z<rsup|T-1>|)><rsup|2>>
  terms together, resulting in <math|<around*|(|2-<around*|(|\<omega\>/T|)><rsup|2>|)>
  <around*|(|z<rsup|T-1>|)><rsup|2>>, leaving <math|-2z<rsup|T-1> z<rsup|T>>
  in the last term. So, we find the summation has the following matrix form:

  <\small>
    <\equation*>
      <matrix|<tformat|<table|<row|<cell|z<rsup|1>>>|<row|<cell|z<rsup|2>>>|<row|<cell|\<vdots\>>>|<row|<cell|z<rsup|T-2>>>|<row|<cell|z<rsup|T-1>>>>>><rsup|t>
      <around*|[|<matrix|<tformat|<table|<row|<cell|2-<around*|(|\<omega\>/T|)><rsup|2>>|<cell|-1>|<cell|>|<cell|>|<cell|>>|<row|<cell|-1>|<cell|2-<around*|(|\<omega\>/T|)><rsup|2>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|\<ddots\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|2-<around*|(|\<omega\>/T|)><rsup|2>>|<cell|-1>>|<row|<cell|>|<cell|>|<cell|>|<cell|-1>|<cell|2-<around*|(|\<omega\>/T|)><rsup|2>>>>>>
      <matrix|<tformat|<table|<row|<cell|z<rsup|1>>>|<row|<cell|z<rsup|2>>>|<row|<cell|\<vdots\>>>|<row|<cell|z<rsup|T-2>>>|<row|<cell|z<rsup|T-1>>>>>>-2
      <matrix|<tformat|<table|<row|<cell|z<rsup|0>>>|<row|<cell|0>>|<row|<cell|\<vdots\>>>|<row|<cell|0>>|<row|<cell|z<rsup|T>>>>>>|]>.
    </equation*>
  </small>

  Taking into account the factor <math|-\<beta\> T/2> in front of the
  summation, we arrive at

  <\equation*>
    p<around*|(|z\|z<rsup|0>,z<rsup|T>|)>\<propto\>exp<around*|(|-<frac|\<beta\>|T><around*|[|<frac|1|2>z<rsup|t>
    K z-z<rsup|t> b|]>|)>,
  </equation*>

  where <math|K> is the tridiagonal matrix

  <\small>
    <\equation*>
      K\<assign\><matrix|<tformat|<table|<row|<cell|2-<around*|(|\<omega\>/T|)><rsup|2>>|<cell|-1>|<cell|>|<cell|>|<cell|>>|<row|<cell|-1>|<cell|2-<around*|(|\<omega\>/T|)><rsup|2>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|\<ddots\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|2-<around*|(|\<omega\>/T|)><rsup|2>>|<cell|-1>>|<row|<cell|>|<cell|>|<cell|>|<cell|-1>|<cell|2-<around*|(|\<omega\>/T|)><rsup|2>>>>>>
    </equation*>
  </small>

  and

  <\equation*>
    b\<assign\><matrix|<tformat|<table|<row|<cell|z<rsup|0>>|<cell|0>|<cell|\<cdots\>>|<cell|0>|<cell|z<rsup|T>>>>>><rsup|t>.
  </equation*>

  To compute the correlation <math|\<bbb-E\><rsub|Q<around*|(|z<rsup|0>,z<rsup|T>|)>><around*|[|z<rsup|1>
  z<rsup|3>|]>>, we have to integrate out the <math|z<rsup|2>> that interacts
  with both <math|z<rsup|1>> and <math|z<rsup|3>>. Notice that there is not
  interaction between <math|z<rsup|1>> and <math|z<rsup|3>>. That is, we are
  to calculate

  <\equation*>
    exp<around*|(|<frac|1|2><around*|[|<frac|\<beta\>|T>
    <around*|(|2-<around*|(|\<omega\>/T|)><rsup|2>|)>|]>
    <around*|(|z<rsup|2>|)><rsup|2>+<around*|[|<frac|\<beta\>|T><around*|(|z<rsup|1>+z<rsup|3>|)>|]>
    z<rsup|2>|)>\<propto\>exp<around*|(|<frac|\<beta\>|2T><around*|(|2-<around*|(|\<omega\>/T|)><rsup|2>|)><rsup|-1>
    <around*|[|<around*|(|z<rsup|1>|)><rsup|2>+<around*|(|z<rsup|3>|)><rsup|2>+2z<rsup|1>
    z<rsup|3>|]>|)>.
  </equation*>

  Now, the <math|z<rsup|1>> and <math|z<rsup|3>> has an interactive term

  <\equation*>
    -<frac|z<rsup|1> z<rsup|3>|<around*|(|1-<around*|(|\<omega\>/T|)><rsup|2>/2|)>>.
  </equation*>

  <subsection|Maximum-Entropy and Least-Action Are Saddle Point of a
  Functional (TODO)>

  In fact, equations <reference|equation:generic density>,
  <reference|equation:partition function>, and
  <reference|equation:data-fitting result> can be regarded as an extremum of
  the functional (recall that <math|P<rsub|0>> is the distribution of prior
  knowledge and <math|Q> of dataset)

  <\equation*>
    L<rsub|tot><around*|(|p,\<theta\>,\<mu\>|)>\<assign\>H<around*|[|P,P<rsub|0>|]>+<around*|(|\<bbb-E\><rsub|P><around*|[|V<around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|Q><around*|[|V<around*|(|\<cdummy\>,\<theta\>|)>|]>|)>+\<mu\><around*|(|\<bbb-E\><rsub|P><around*|[|1|]>-1|)>,
  </equation*>

  or explicitly

  <\small>
    <\equation>
      L<rsub|tot><around*|(|p,\<theta\>,\<mu\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x|)>ln<frac|p<around*|(|x|)>|p<rsub|0><around*|(|x|)>>+<around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x|)>V<around*|(|x,\<theta\>|)>-<big|int><rsub|\<cal-X\>>\<mathd\>x
      q<around*|(|x|)>V<around*|(|x,\<theta\>|)>|)>+\<mu\><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x|)>-1|)>.<label|equation:Ltot>
    </equation>
  </small>

  Indeed, variance on <math|p> gives equation <reference|equation:generic
  density>.<\footnote>
    Explicitly, we have

    <\equation*>
      <frac|\<delta\>|\<delta\>p<around*|(|x|)>>L<rsub|tot><around*|(|p,\<theta\>,\<mu\>|)>=ln
      p<around*|(|x|)>+1-ln p<rsub|0><around*|(|x|)>+V<around*|(|x,\<theta\>|)>+\<mu\>=0,
    </equation*>

    which has solution

    <\equation*>
      p<around*|(|x|)>\<propto\>p<rsub|0><around*|(|x|)>
      exp<around*|(|-V<around*|(|x,\<theta\>|)>|)>.
    </equation*>
  </footnote> Together with the partial derivative on <math|\<mu\>>, we get
  equation <reference|equation:partition function>. Finally, partial
  derivative on <math|\<theta\>> directly gives equation
  <reference|equation:data-fitting result>. In addition, decreasing the
  <math|L<around*|(|\<theta\>|)>> by iteration
  <reference|equation:data-fitting iteration> is increasing the second term
  in equation <reference|equation:Ltot>. So, the extremum is in fact a saddle
  point, as

  <\equation>
    <around*|(|p<rsub|\<star\>>,\<theta\><rsub|\<star\>>,\<mu\><rsub|\<star\>>|)>=min<rsub|p,\<mu\>>
    max<rsub|\<theta\>>L<rsub|tot><around*|(|p,\<theta\>,\<mu\>|)>.<label|equation:V
    extremum>
  </equation>

  \;

  By tuning <math|p>, the <math|min<rsub|p,\<mu\>>> minimizes the relative
  entropy between <math|P> and <math|Q> and the expectation
  <math|\<bbb-E\><rsub|P><around*|[|V<around*|(|\<cdummy\>,\<theta\>|)>|]>>,
  which in turn relates the density function <math|p> with the interactive
  action <math|V<around*|(|\<cdummy\>,\<theta\>|)>>. And by tuning
  <math|\<theta\>>, the <math|max<rsub|\<theta\>>> sites real data onto the
  local minima of interactive action. So, we find that maximum-entropy
  principle and least-action principle are saddle point of a functional
  <math|L<rsub|tot>> (the subscript is short for totality).

  <subsection|Example: Extract Dynamics from Raw Data><label|section:
  Example: Extract Dynamics from Raw Data>

  We are to apply the previous discussion to extract dynamics from the raw
  data of an evolutionary system. Precisely, we are to fit the interactive
  part of action (the <math|V> in section <reference|section: Data Fitting Is
  Equivalent to Least-Action Principle>) from the raw data of a system that
  evolves with time.

  The raw data is obtained in the following way. Generally, an evolutionary
  system is described by its dynamics in configuration space. Let
  <math|\<cal-C\>> a configuration space (such as <math|\<bbb-R\><rsup|3>>
  for a particle, <math|\<bbb-R\><rsup|3\<times\>n>> for <math|n> particles,
  or <math|<around*|{|<text|<samp|A>>,<text|<samp|C>>,<text|<samp|G>>,<text|<samp|T>>|}><rsup|<around*|\||<text|<math|DNA>>|\|>>>
  for gene) in which the system evolves. Without losing generality, we
  standardize the time period of evolution to <math|<around*|[|0,1|]>>. Thus,
  the dynamics is characterized by a path in configuration space,
  <math|x<around*|(|s|)>\<in\>\<cal-C\>> with
  <math|s\<in\><around*|[|0,1|]>>. To obtain the raw data of the system, we
  first uniformly separate the standardized time period
  <math|<around*|[|0,1|]>> into <math|T> frames. At each frame, we use tools
  to measure the configuration of the system. Of course, measurement error
  cannot be avoided. What we get is a movie of the system, like
  \ <math|<around*|(|x<around*|(|1|)>,\<ldots\>,x<around*|(|T|)>|)>> with
  each <math|x<around*|(|t|)>\<in\>\<cal-C\>>. We repeat this process many
  times, with different initial conditions. In this way, we obtain the raw
  data of the evolutionary system, as a set
  \ <math|<around*|{|<around*|(|x<rsub|k><around*|(|1|)>,\<ldots\>,x<rsub|k><around*|(|T|)>|)>\|k=1,\<ldots\>,D|}>>
  where <math|D> is the repetitions.

  The prior distribution <math|P<rsub|0>> is given before data-fitting. For
  example, for a physical system, <math|P<rsub|0>> represents the free
  theory, which does not involve interactive parameter. In this case, we have

  <\equation*>
    p<rsub|0><around*|(|x|)>\<propto\>exp<around*|{|-<frac|T|2><big|sum><rsub|t=1><rsup|T-1>
    <around*|[|x<around*|(|t+1|)>-x<around*|(|t|)>|]><rsup|2>|}>,
  </equation*>

  corresponding to the kinetic term <math|<around*|(|1/2|)><big|int><rsub|0><rsup|1>\<mathd\>t
  <wide|x|\<dot\>><rsup|2><around*|(|t|)>>.

  Corresponding to this free term, the interactive term <math|V> described in
  section <reference|section: Data Fitting Is Equivalent to Least-Action
  Principle of Distribution> is given by some ansatz. For example, we may
  suppose <math|V> to be local. That is, there is a function
  <math|<with|font|cal|L><around*|(|x,t,\<theta\>|)>> such that
  <math|V<around*|(|x,\<theta\>|)>=<around*|(|1/T|)><big|sum><rsub|t=1><rsup|T><with|font|cal|L><around*|(|x<around*|(|t|)>,t,\<theta\>|)>>.
  Or, we may suppose that there exist some symmetries about the system, such
  as autonomous and parity symmetry, which indicates
  <math|<with|font|cal|L><around*|(|x,t,\<theta\>|)>=<big|sum><rsub|n=1><rsup|+\<infty\>>\<theta\><rsub|n>
  x<rsup|2n>> when <math|x> is <math|1>-dimensional. All we need to do is
  constructing a most generic form of <math|<with|font|cal|L>> that satisfies
  all the ansatz. Neural network and symbolic regression may help you write
  down this most generic form. Then, we find the best fit
  <math|\<theta\><rsub|\<star\>>> by iteratively applying equation
  <reference|equation:data-fitting iteration>. The
  <math|V<around*|(|x,\<theta\><rsub|\<star\>>|)>>, together with the free
  term provided by <math|P<rsub|0>>, describes the dynamics of the
  evolutionary system.

  As an example, consider an one-dimensional harmonic oscillator. The
  configuration space is <math|\<bbb-R\>>. Given the parameter
  <math|\<omega\>\<in\>\<bbb-R\>>, we can obtain the raw data by numerically
  simulating the equation of motion (discrete version)

  <\equation*>
    x<around*|(|t+1|)>-2x<around*|(|t|)>+x<around*|(|t-1|)>+<around*|(|<frac|\<omega\>|T>|)><rsup|2>
    x<around*|(|t|)>=0,
  </equation*>

  for <math|t=2,\<ldots\>,T-1>. The <math|x<around*|(|0|)>> and
  <math|x<around*|(|1|)>> are randomly generated in each simulation as
  initial conditions. In the end, remember to add noise to the simulated
  data. Once obtained the raw data, we can use a parameterized function to
  fit the interactive term . For example, a function with parameters
  <math|<around*|(|\<theta\><rsub|1>,\<ldots\>,\<theta\><rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>,
  <math|<with|font|cal|L><around*|(|x,t,\<theta\>|)>\<assign\>\<theta\><rsub|1>
  x<rsup|2>+\<theta\><rsub|2> x<rsup|4>+\<cdots\>+\<theta\><rsub|n>
  x<rsup|2n>>.<\footnote>
    An experiment on general oscillators can be found in the
    <samp|oscillators/Oscillator.ipynb>.
  </footnote>

  <subsection|Example: Feed-Forward Neural Network>

  Feed-forward neural network is built on a collection of neurons. For each
  neuron, the action potential is described by a real number, and the state
  by a binary. If the time period has been uniformly separated into <math|T>
  frames, then the action potential at frame <math|t> is given by a
  <math|n>-dimensional vector <math|<around*|(|x<rsup|1><around*|(|t|)>,\<ldots\>,x<rsup|n><around*|(|t|)>|)>\<in\>\<bbb-R\><rsup|n>>
  where <math|n> represents the number of neurons. The corresponding
  activated state <math|<around*|(|A<rsup|1><around*|(|t|)>,\<ldots\>,A<rsup|n><around*|(|t|)>|)>>
  is a random vector, with each component <math|A<rsup|i><around*|(|t|)>>
  obeys the Bernoulli distribution with probability determined by
  <math|x<around*|(|t|)>>. \ By saying feed-forward, we mean that the action
  potential at frame <math|t+1> only depends on that at <math|t>. The
  dynamics of a feed-forward neural network is given by the
  <math|p<around*|(|x,a|)>=p<rsub|0><around*|(|x|)>
  exp<around*|(|-V<around*|(|x,a,U|)>|)>/Z<around*|(|U|)>> where the free
  term

  <\equation*>
    p<rsub|0><around*|(|x|)>\<propto\>exp<around*|(|-<big|sum><rsub|t=1><rsup|T-1><around*|[|<frac|1|2>\<delta\><rsub|\<alpha\>\<beta\>>
    <around*|(|x<rsup|\<alpha\>><around*|(|t+1|)>-x<rsup|\<alpha\>><around*|(|t|)>|)>
    <around*|(|x<rsup|\<beta\>><around*|(|t+1|)>-x<rsup|\<beta\>><around*|(|t|)>|)>|]>|)>,
  </equation*>

  and the interactive term is

  <\equation*>
    V<around*|(|x,a,U|)>=-<big|sum><rsub|t=1><rsup|T>U<rsub|\<alpha\>\<beta\>>
    x<rsup|\<alpha\>><around*|(|t|)> a<rsup|\<beta\>><around*|(|t|)>.
  </equation*>

  Altogether, the action <math|S> is the combination of the free and
  interactive terms. Thus, for <math|t=2,\<ldots\>,T-1>, we have

  <\equation*>
    <frac|\<partial\>S|\<partial\>x<rsup|\<alpha\>><around*|(|t|)>><around*|(|x,a,U|)>=<around*|[|x<rsup|\<alpha\>><around*|(|t+1|)>-2x<rsup|\<alpha\>><around*|(|t|)>+x<rsup|\<alpha\>><around*|(|t-1|)>|]>-\<omega\><rsup|2>
    x<rsup|\<alpha\>><around*|(|t|)>-U<rsub|\<alpha\>\<beta\>>
    a<rsup|\<beta\>><around*|(|t|)>.
  </equation*>

  The equation of motion <math|\<partial\>S/\<partial\>x<rsup|\<alpha\>><around*|(|t|)>=0>
  is recognized as a harmonic oscillator driven by the interactive term
  <math|U<rsub|\<alpha\>\<beta\>> a<rsup|\<beta\>><around*|(|t|)>>. To
  determine the value of <math|a<around*|(|t|)>>, we have

  <\equation*>
    <frac|p<around*|(|a<rsup|\<alpha\>><around*|(|t|)>=1\|x,a<rsup|\\a,t>,U|)>|p<around*|(|a<rsup|\<alpha\>><around*|(|t|)>=0\|x,a<rsup|\\a,t>,U|)>>=<frac|p<around*|(|x,a,U|)>\|<rsub|a<rsup|\<alpha\>><around*|(|t|)>=1>|p<around*|(|x,a,U|)>\|<rsub|a<rsup|\<alpha\>><around*|(|t|)>=0>>=exp<around*|(|U<rsub|\<alpha\>\<beta\>>
    x<rsup|\<alpha\>><around*|(|t|)>|)>,
  </equation*>

  where <math|a<rsup|\\a,t>> denotes the <math|a> with the
  <math|<around*|(|\<alpha\>,t|)>> component excluded, we find

  <\equation*>
    p<around*|(|a<rsup|\<alpha\>><around*|(|t|)>=1\|x,a<rsup|\\a,t>,U|)>=<frac|exp<around*|(|U<rsub|\<alpha\>\<beta\>>
    x<rsup|\<beta\>><around*|(|t|)>|)>|1+exp<around*|(|U<rsub|\<alpha\>\<beta\>>
    x<rsup|\<beta\>><around*|(|t|)>|)>>=\<sigma\><around*|(|U<rsub|\<alpha\>\<beta\>>
    x<rsup|\<beta\>><around*|(|t|)>|)>,
  </equation*>

  where <math|\<sigma\><around*|(|x|)>\<assign\>1/<around*|(|1-exp<around*|(|-x|)>|)>>
  is called <strong|sigmoid function>. The conditional probability
  <math|p<around*|(|A<rsup|\<alpha\>><around*|(|t|)>\|x,a<rsup|\\a,t>,U|)>>
  is recognized as a Bernoulli distribution with parameter
  <math|\<sigma\><around*|(|U<rsub|\<alpha\>\<beta\>>
  x<rsup|\<beta\>><around*|(|t|)>|)>>. Thus,
  <math|a<rsup|\<alpha\>><around*|(|t|)>> is <math|>sampled from this
  Bernoulli distribution, for each component <math|\<alpha\>> and frame
  <math|t>.

  <subsection|TODO: Structures in Nature Arise from Maximum-Entropy>

  There are many structures in nature. The structure of vascular system is a
  simple instance. A more complicated structure appears in the bases along
  chromosome. Why does these structures arise in nature?

  The vascular system is fine-tuned so as to minimize the frictional loss.
  The chromosome that determines the phenotype of an organism is also
  fine-tuned such that the probability of survival is maximal. These examples
  indicate that structure appears in optimizing an objective.

  So, let random variable <math|X> characterize the configuration, such as
  the sequence of bases along chromosome. There is an action that reflects
  the interaction of bases and the environment. The one that survives has the
  most \Pcoherent\Q chromosome that minimizes the action. The \Psurvival\Q
  distribution is given by the action. This distribution has many local
  maxima. The maximal local maxima represents the creature that has the
  highest adaptation, maybe human.

  The action would be very complex. But, inversely, given the real world data
  of chromosome, the action can be revealed by parameterized function and
  least-action principle. To do so, we first travel to a closed island, such
  as Galápagos Islands, which forms a closed system. Then, we collect the
  chromosomes of all creatures living on the island. Since different
  creatures have different lengths of chromosome, we have to unify the coding
  of chromosomes. This furnishes the alphabet <math|\<cal-X\>>, and the
  collection of chromosomes characterizes the distribution of real world
  data, <math|Q>. Let <math|S<around*|(|x,\<theta\>|)>> a parameterized
  function, with parameters <math|\<theta\>>. The least-action principle
  gives the best fit <math|\<theta\><rsub|\<star\>>> by minimizing the
  <math|L<rsub|LA>>. During the minimization, we have to sample from
  <math|P<around*|(|\<theta\>|)>>, where the density function
  <math|p<around*|(|x,\<theta\>|)>\<propto\>exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>.
  The strategy is using a transition rate that satisfies the detailed balance
  condition. This transition rate mimics the evolution. <with|color|red|The
  disconnectivity of transition rate may reflect gene isolation.>

  <subsection|TODO: Is There an Action for a Dynamical System?>

  Configuration can be represented by a high-dimensional vector. As discussed
  in section <reference|section: Example: Extract Dynamics from Raw Data>,
  the configuration of physical system should be a function
  <math|x<around*|(|t|)>:<around*|[|0,1|]>\<rightarrow\>\<bbb-R\><rsup|m>>,
  but discretized to a vector <math|<around*|(|x<around*|(|1|)>,\<ldots\>,x<around*|(|T|)>|)>\<in\>\<bbb-R\><rsup|m\<times\>T>>
  where <math|T> represents the number of frames. Thus, an action, including
  the free part (given by prior distribution <math|P<rsub|0>>) and
  interactive part (the parametrized function <math|V>), can be represented
  as <math|S<around*|(|x|)>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>>, where
  <math|n\<assign\>m\<times\>T>. This discrete perspective greatly simplifies
  the situation. For example, the variation of action is simply <math|-T
  \<nabla\>S<around*|(|x|)>>.

  In the example of harmonic oscillator (equation
  <reference|equation:harmonic oscillator action>), we have

  <\equation>
    S<rsub|HO><around*|(|x|)>=<frac|T|2> <big|sum><rsub|t=1><rsup|T-1><around*|[|x<around*|(|t+1|)>-x<around*|(|t|)>|]><rsup|2>-<frac|\<omega\><rsup|2>|2T>
    <big|sum><rsub|t=1><rsup|T>x<rsup|2><around*|(|t|)>,
  </equation>

  where we have included both the free term and interactive term in the
  action <math|S<rsub|HO>>. We have<\footnote>
    Given <math|t>, <math|x<around*|(|t|)>> appears in two terms in
    <math|S<rsub|HO><around*|(|x|)>>, the <math|t> and <math|t+1> terms in
    the summation. They have derivatives <math|T
    <around*|[|-x<around*|(|t+1|)>+x<around*|(|t|)>|]>-<around*|(|\<omega\><rsup|2>/T|)>
    x<around*|(|t|)>> and <math|T<around*|[|x<around*|(|t|)>-x<around*|(|t-1|)>|]>>
    respectively. Altogether, we find <math|-\<partial\>S<rsub|HO>/\<partial\>x<around*|(|t|)>=T
    <around*|[|x<around*|(|t+1|)>-2x<around*|(|t|)>+x<around*|(|t-1|)>|]>+<around*|(|\<omega\><rsup|2>/T|)>
    x<around*|(|t|)>>.
  </footnote>

  <\equation*>
    -T <frac|\<partial\>S<rsub|HO>|\<partial\>x<around*|(|t|)>>=T<rsup|2>
    <around*|[|x<around*|(|t+1|)>-2x<around*|(|t|)>+x<around*|(|t-1|)>|]>+\<omega\><rsup|2>
    x<around*|(|t|)>
  </equation*>

  for each <math|t=2,\<ldots\>,T-1>. Recalling that
  <math|<wide|x|\<ddot\>><around*|(|t|)>> is discretized to <math|T<rsup|2>
  <around*|[|x<around*|(|t+1|)>-2x<around*|(|t|)>+x<around*|(|t-1|)>|]>>, we
  find <math|-T \<partial\>S<rsub|HO>/\<partial\>x<around*|(|t|)>> tends to
  <math|<wide|x|\<ddot\>><around*|(|t|)>+\<omega\><rsup|2> x<around*|(|t|)>>
  as <math|T\<rightarrow\>+\<infty\>>. For the boundaries <math|t=1> and
  <math|t=T>, we have <math|-T \<partial\>S<rsub|HO>/\<partial\>x<around*|(|1|)>=-T<rsup|2>
  <around*|[|x<around*|(|2|)>-x<around*|(|1|)>|]>-\<omega\><rsup|2>
  x<around*|(|1|)>>, and <math|-T \<partial\>S<rsub|HO>/\<partial\>x<around*|(|T|)>=T<rsup|2>
  <around*|[|x<around*|(|T|)>-x<around*|(|T-1|)>|]>-\<omega\><rsup|2>
  x<around*|(|T|)>>. Both are meaningless in continuous perspective. Thus,
  there are <math|T-2> equations for one-dimensional harmonic oscillator
  obtained by variation.

  On the other hand, equation of motion can be represented by
  <math|f<around*|(|x|)>=0> where <math|f:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n-m>>
  where <math|m> represents the order of the equation of motion. In the case
  of one-dimensional harmonic oscillator, the equation of motion is second
  order. In the discrete perspective, there are <math|T-2> constraints,
  implying <math|m=2>. The two extra degree of freedom are assigned to the
  initial position and velocity of oscillator.

  If we want to represent the equation of motion by the variation of action
  (in the continuous perspective it is <math|f<around*|(|t,x<around*|(|t|)>,<wide|x|\<dot\>><around*|(|t|)>,\<ldots\>|)>=\<delta\>S/\<delta\>x<around*|(|t|)>>),
  we can write <math|f<rsub|\<alpha\>><around*|(|x|)>=-\<partial\><rsub|\<alpha\>>S<around*|(|x|)>>
  for each <math|\<alpha\>=1,\<ldots\>,n-m>. This cannot be true for all
  <math|f> since <math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>S<around*|(|x|)>\<equiv\>\<partial\><rsub|\<beta\>>\<partial\><rsub|\<alpha\>>S<around*|(|x|)>>
  while generally we do not have <math|\<partial\><rsub|\<alpha\>>f<rsub|\<beta\>><around*|(|x|)>=\<partial\><rsub|\<beta\>>
  f<rsub|\<alpha\>><around*|(|x|)>>. From another aspect, <math|f> has
  <math|n-m> degree of freedom, but <math|\<varphi\>> has only one. So, it is
  hard to equal <math|f> and <math|\<nabla\>\<varphi\>>. The extra degree of
  freedom of <math|f> comes from <math|\<nu\>> which has <math|n-m-1> degree
  of freedom, where the <math|-1> is caused by the restriction
  <math|\<nabla\>\<cdot\>\<nu\>=0>.)

  But, if <math|f<around*|(|x|)>=0> is an equation of motion, so will be
  <math|A<rsub|\<alpha\>\<beta\>><around*|(|x|)>
  f<rsup|\<beta\>><around*|(|x|)>=0> for any smooth and invertible
  matrix-valued field <math|A:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n\<times\>n>>.
  The <math|A f=0> is an equation of motion that is equivalent to <math|f=0>.
  So, we may expect

  <\equation>
    A<rsub|\<alpha\>\<beta\>><around*|(|x|)>
    f<rsup|\<beta\>><around*|(|x|)>=-\<partial\><rsub|\<alpha\>>S<around*|(|x|)><label|equation:eom
    and action>
  </equation>

  holds for a general class of equation of motion <math|f> as long as we can
  find the corresponding <math|A>. We wonder, <with|color|red|given <math|f>,
  if there is such an <math|A> and an <math|S> that this relation holds?> And
  <with|color|red|if they do exist, can we construct the <math|A> and
  <math|S> by an algorithm?>

  In the case of damped oscillator, where the equation of motion is modified
  by adding a friction term to that of harmonic oscillator, we have the
  <math|t>-component

  <\equation*>
    f<rsub|t><around*|(|x|)>=T<rsup|2> <around*|[|x<around*|(|t+1|)>-2x<around*|(|t|)>+x<around*|(|t-1|)>|]><with|color|dark
    cyan|+\<gamma\> <around*|[|x<around*|(|t+1|)>-x<around*|(|t|)>|]>>+T\<omega\><rsup|2>
    x<around*|(|t|)>.
  </equation*>

  It is found that the action

  <\equation*>
    S<rsub|DO><around*|(|x|)>=<frac|T|2> <big|sum><rsub|t=1><rsup|T-1>exp<around*|(|<frac|\<gamma\>
    t|T>|)> <around*|[|x<around*|(|t+1|)>-x<around*|(|t|)>|]><rsup|2>-<frac|\<omega\><rsup|2>|2T>
    <big|sum><rsub|t=1><rsup|T>exp<around*|(|<frac|\<gamma\> t|T>|)>
    x<rsup|2><around*|(|t|)>
  </equation*>

  has partial derivative<\footnote>
    Again, given <math|t>, there are two terms in
    <math|S<rsub|DO><around*|(|x|)>> that contains <math|x<around*|(|t|)>>,
    the <math|t> and <math|t-1> terms in the summation. They have derivatives

    <\equation*>
      exp<around*|(|<frac|\<gamma\> t|T>|)> T
      <around*|[|-x<around*|(|t+1|)>+x<around*|(|t|)>|]>-exp<around*|(|<frac|\<gamma\>
      t|T>|)> <around*|(|<frac|\<omega\><rsup|2>|T>|)> x<around*|(|t|)>
    </equation*>

    and

    <\equation*>
      exp<around*|(|<frac|\<gamma\> <around*|(|t-1|)>|T>|)> T
      <around*|[|x<around*|(|t|)>-x<around*|(|t-1|)>|]>=exp<around*|(|<frac|\<gamma\>
      t|T>|)> T <around*|[|x<around*|(|t|)>-x<around*|(|t-1|)>|]>-<around*|(|1-exp<around*|(|-<frac|\<gamma\>
      |T>|)>|)> exp<around*|(|<frac|\<gamma\> t|T>|)> T
      <around*|[|x<around*|(|t|)>-x<around*|(|t-1|)>|]>
    </equation*>

    respectively. The factor <math|1-exp<around*|(|-\<gamma\>/T|)>=\<gamma\>/T+\<omicron\><around*|(|1/T|)>>.
    Thus, altogether, <math|-\<partial\>S<rsub|DO>/\<partial\>x<around*|(|t|)>=exp<around*|(|\<gamma\>
    t/T|)><around*|{| T <around*|[|x<around*|(|t+1|)>-2x<around*|(|t|)>+x<around*|(|t-1|)>|]>+\<gamma\>
    <around*|[|x<around*|(|t|)>-x<around*|(|t-1|)>|]>+<around*|(|\<omega\><rsup|2>/T|)>
    x<around*|(|t|)>|}>>.
  </footnote>

  <\equation*>
    -T<frac|\<partial\>S<rsub|DO>|\<partial\>x<around*|(|t|)>>=exp<around*|(|<frac|\<gamma\>
    t|T>|)> <around*|{|T<rsup|2> <around*|[|x<around*|(|t+1|)>-2x<around*|(|t|)>+x<around*|(|t-1|)>|]>+\<gamma\>
    <around*|[|x<around*|(|t+1|)>-x<around*|(|t|)>|]>+T\<omega\><rsup|2>
    x<around*|(|t|)>|}>
  </equation*>

  for each for <math|t=2,\<ldots\>,T-1>. It is exactly the equation of motion
  of damped oscillator multiplied by the factor <math|exp<around*|(|\<gamma\>
  t/T|)>>. In this example, the matrix-valued field <math|A> is diagonal and
  constant (that is, independent of <math|x>), <math|A<rsup|t
  t<rprime|'>>=\<delta\><rsup|t t<rprime|'>> exp<around*|(|\<gamma\> t/T|)>>
  (index is the frame number <math|t>, see section <reference|section:
  Example: Extract Dynamics from Raw Data>).

  <subsection|>

  Consider the Euler-Lagrange equation

  <\equation*>
    <frac|\<mathd\>|\<mathd\>t><frac|\<partial\>L|\<partial\><wide|x|\<dot\>>><around*|(|x,<wide|x|\<dot\>>,t|)>-<frac|\<partial\>L|\<partial\>x><around*|(|x,<wide|x|\<dot\>>,t|)>=0.
  </equation*>

  Then, we have

  <\equation*>
    <frac|\<partial\><rsup|2>L|\<partial\><wide|x|\<dot\>>\<partial\><wide|x|\<dot\>>><wide|x|\<ddot\>>+<frac|\<partial\><rsup|2>L|\<partial\>x\<partial\><wide|x|\<dot\>>><wide|x|\<dot\>>+<frac|\<partial\><rsup|2>L|\<partial\><wide|x|\<dot\>>\<partial\>t>-<frac|\<partial\>L|\<partial\>x>=0.
  </equation*>

  To make <math|<wide|x|\<ddot\>>> disappear, we must have
  <math|\<partial\><rsup|2>L/\<partial\><wide|x|\<dot\>><rsup|2>=0>, this
  implies <math|L<around*|(|x,<wide|x|\<dot\>>,t|)>=<wide|x|\<dot\>>
  f<around*|(|x,t|)>+g<around*|(|x,t|)>>. But then,

  <\equation*>
    \<partial\><rsub|x>f<around*|(|x,t|)>
    <wide|x|\<dot\>>+\<partial\><rsub|t>f<around*|(|x,t|)>-\<partial\><rsub|x>f<around*|(|x,t|)>
    <wide|x|\<dot\>>-\<partial\><rsub|x>g<around*|(|x,t|)>=\<partial\><rsub|t>f<around*|(|x,t|)>-\<partial\><rsub|x>g<around*|(|x,t|)>=0.
  </equation*>

  The <math|<wide|x|\<dot\>>> disappears also.
</body>

<\initial>
  <\collection>
    <associate|bg-color|#c7edcc>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.2|6>>
    <associate|auto-11|<tuple|2.3|7>>
    <associate|auto-12|<tuple|2.4|8>>
    <associate|auto-13|<tuple|2.5|8>>
    <associate|auto-14|<tuple|2.6|9>>
    <associate|auto-15|<tuple|2.7|?>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|3>>
    <associate|auto-6|<tuple|1.5|4>>
    <associate|auto-7|<tuple|1|5>>
    <associate|auto-8|<tuple|2|6>>
    <associate|auto-9|<tuple|2.1|6>>
    <associate|equation:Ltot|<tuple|8|7>>
    <associate|equation:V extremum|<tuple|9|7>>
    <associate|equation:data-fitting iteration|<tuple|6|5>>
    <associate|equation:data-fitting result|<tuple|7|5>>
    <associate|equation:eom and action|<tuple|11|9>>
    <associate|equation:generic density|<tuple|4|4>>
    <associate|equation:harmonic oscillator action|<tuple|1|1>>
    <associate|equation:least-action principle v0|<tuple|2|1>>
    <associate|equation:least-action principle v1|<tuple|3|2>>
    <associate|equation:partition function|<tuple|5|4>>
    <associate|figure: Least-Action|<tuple|1|5>>
    <associate|footnote-1|<tuple|1|2>>
    <associate|footnote-2|<tuple|2|4>>
    <associate|footnote-3|<tuple|3|5>>
    <associate|footnote-4|<tuple|4|7>>
    <associate|footnote-5|<tuple|5|8>>
    <associate|footnote-6|<tuple|6|9>>
    <associate|footnote-7|<tuple|7|10>>
    <associate|footnr-1|<tuple|1|2>>
    <associate|footnr-2|<tuple|2|4>>
    <associate|footnr-3|<tuple|3|5>>
    <associate|footnr-4|<tuple|4|7>>
    <associate|footnr-5|<tuple|5|8>>
    <associate|footnr-6|<tuple|6|9>>
    <associate|footnr-7|<tuple|7|10>>
    <associate|section: A Brief Review of Least-Action Principle in Classical
    Mechamics|<tuple|1.2|1>>
    <associate|section: Data Fitting Is Equivalent to Least-Action Principle
    of Distribution|<tuple|1.5|4>>
    <associate|section: Example: Extract Dynamics from Raw
    Data|<tuple|2.3|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>|| This figure
      illustrate how <with|mode|<quote|math>|min<rsub|\<theta\>>L<around*|(|\<theta\>|)>>
      will site a real world datum onto a local minimum of
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>. The green
      curve represents the current not-yet-optimized
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>. The
      <with|mode|<quote|math>|x<rsub|1>> (red point) is a real world datum
      while <with|mode|<quote|math>|x<rsub|2>> (blue point), which is
      currently a local minimum of <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>,
      is not. Minimizing <with|mode|<quote|math>|L> by tuning
      <with|mode|<quote|math>|\<theta\>> pushes the
      <with|mode|<quote|math>|\<bbb-E\><rsub|Q><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
      down to lower value, corresponding to the red downward double-arrow on
      <with|mode|<quote|math>|x<rsub|1>>. Also, since
      <with|mode|<quote|math>|x<rsub|2>> is a local minimum, the data points
      sampled from <with|mode|<quote|math>|p<around*|(|x,\<theta\>|)>\<propto\>exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>
      will accumulate around <with|mode|<quote|math>|x<rsub|2>>. So,
      minimizing <with|mode|<quote|math>|L> also pulls the
      <with|mode|<quote|math>|\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
      up to greater value, corresponding to the blue upward double-arrow on
      <with|mode|<quote|math>|x<rsub|2>>. Altogether, it makes
      <with|mode|<quote|math>|x<rsub|1>> a local minimum of
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>, and
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>> is
      optimized to be the dashed green curve.>|<pageref|auto-7>>
    </associate>
    <\associate|toc>
      1<space|2spc>Least-Action Principle
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>A Brief Review of
      Least-Action Principle in Classical Mechanics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Least-Action Principle of
      Distribution Has No Redundancy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Example: a Very Simple
      Stochastic Model <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Data Fitting Is Equivalent
      to Least-Action Principle of Distribution
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      2<space|2spc>Drafts <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Stochastic Harmonic
      Oscillator <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Maximum-Entropy and
      Least-Action Are Saddle Point of a Functional (TODO)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Example: Extract Dynamics
      from Raw Data <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Example: Feed-Forward Neural
      Network <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>TODO: Structures in Nature
      Arise from Maximum-Entropy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>TODO: Is There an Action for
      a Dynamical System? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>
    </associate>
  </collection>
</auxiliary>