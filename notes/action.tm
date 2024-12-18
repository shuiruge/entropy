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
  Classical Mechanics>

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
  in classical mechanics. But combined with uncertainty, as we will see in
  section <reference|section: Least-Action Principle of Distribution Has No
  Redundancy>, action is completely determined by the real world distribution
  (the correspondence of real world datum), with nothing redundant.

  <subsection|Least-Action Principle of Distribution Has No
  Redundancy><label|section: Least-Action Principle of Distribution Has No
  Redundancy>

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

  <\equation>
    S<around*|(|x|)>\<assign\>-*<around*|(|1/\<beta\>|)> ln
    q<around*|(|x|)>+const,<label|equation:action of distribution>
  </equation>

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
  world distribution <math|Q> (because it is defined by the density function
  <math|q>), without any redundancy. This is the direct implication that
  distribution involves more information than its most likely datum.

  <subsection|Data Fitting Is Equivalent to Least-Action Principle of
  Distribution><label|section: Data Fitting Is Equivalent to Least-Action
  Principle of Distribution>

  Given a collection of real world data, we are to find a distribution that
  fits the data. These data can be seen as samples from an unknown
  distribution which characterizes the real world. We are to figure out a
  method to fit the real world distribution by given some samples of it.

  Let <math|P<around*|(|\<theta\>|)>> represent a parametrized distribution
  with parameters <math|\<theta\>>. From its density function,
  <math|p<around*|(|\<cdummy\>,\<theta\>|)>>, we get a parameterized action
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>> such that

  <\equation>
    p<around*|(|x,\<theta\>|)>=exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>/Z<around*|(|\<theta\>|)>,<label|equation:generic
    density>
  </equation>

  where <math|Z<around*|(|\<theta\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
  exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>> for ensuring the
  normalization <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,\<theta\>|)>=1>. This is consistent with the action defined
  by equation <reference|equation:action of distribution>, except that the
  action here is parameterized, and that we omit the constant <math|\<beta\>>
  since it is irrelevant throughout this section.

  What we have is a collection of data, sampled from an unknown distribution
  <math|Q>. And we are to adjust the parameters <math|\<theta\>> so that
  <math|P<around*|(|\<theta\>|)>> approximates <math|Q>. To do so, we
  minimize the relative entropy between <math|Q> and
  <math|P<around*|(|\<theta\>|)>>, which is defined as
  <math|H<around*|(|Q,P<around*|(|\<theta\>|)>|)>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  q<around*|(|x|)> ln <around*|(|q<around*|(|x|)>/p<around*|(|x,\<theta\>|)>|)>>.
  This expression is formal. Since we do not know the density function of
  <math|Q>, all that we can do with <math|Q> is computing the expectation
  <math|\<bbb-E\><rsub|Q><around*|[|f|]>=<around*|(|1/<around*|\||Q|\|>|)><big|sum><rsub|x\<in\>Q>f<around*|(|x|)>>
  for any function <math|f>, where we use <math|Q> as a set of data. With
  this realization, we have, after plugging equation
  <reference|equation:generic density> into
  <math|H<around*|(|Q,P<around*|(|\<theta\>|)>|)>>,

  <\equation*>
    H<around*|(|Q,P<around*|(|\<theta\>|)>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> ln q<around*|(|x|)>+<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> S<around*|(|x,\<theta\>|)>+<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> ln Z<around*|(|\<theta\>|)>.
  </equation*>

  By omitting the <math|\<theta\>>-independent terms, we get the loss
  function

  <\equation*>
    L<around*|(|\<theta\>|)>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> S<around*|(|x,\<theta\>|)>+ln Z<around*|(|\<theta\>|)>.
  </equation*>

  The parameters that minimize <math|L<around*|(|\<theta\>|)>> also minimize
  <math|H<around*|(|Q,P<around*|(|\<theta\>|)>|)>>, and vice versa. We can
  find the <math|\<theta\><rsub|\<star\>>\<assign\>argmin L> by iteratively
  updating <math|\<theta\>> along the direction
  <math|-\<partial\>L/\<partial\>\<theta\>>. To calculate
  <math|-\<partial\>L/\<partial\>\<theta\>>, we start at

  <\equation*>
    -<frac|\<partial\>L|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=-<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> <frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>-<frac|1|Z<around*|(|\<theta\>|)>>
    <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>.
  </equation*>

  The first term is recognized as <math|-\<bbb-E\><rsub|Q><around*|[|\<partial\>S/\<partial\>\<theta\><rsup|\<alpha\>>|]>>.
  For the second term, since <math|Z<around*|(|\<theta\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
  exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>, we have

  <\equation*>
    -<frac|1|Z<around*|(|\<theta\>|)>> <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    <with|color|dark cyan|<frac|exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>|Z<around*|(|\<theta\>|)>>>
    <frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x,\<theta\>|)> <frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>,
  </equation*>

  where in the last equality, we used the definition of
  <math|p<around*|(|x,\<theta\>|)>> (the green factor). This final expression
  is just the <math|\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|\<partial\>S/\<partial\>\<theta\><rsup|\<alpha\>>|]>>.
  Altogether, we arrive at

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

  \;

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
  and so on.

  As an example, if we want to get the action that characterizes the
  stochastic dynamics of starling flocks, we take movies for many flocks.
  Each movie is a series of frames that log the positions of each bird at
  each time instant. These movies provide the real world data. The
  parameterized action <math|S> can be expressed by a neural network. Then,
  iterating by equation <reference|equation:data-fitting iteration> until
  <math|<around*|\<\|\|\>|\<partial\>L/\<partial\>\<theta\>|\<\|\|\>>> has
  been small enough gives an <math|S<around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>>
  that mimics the stochastic dynamics of starling flocks. To compute the
  expectation <math|\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|\<ldots\>|]>>
  in equation <reference|equation:data-fitting iteration>, we can employ
  Monte-Carlo simulation with the transition rate satisfying detailed balance
  condition with <math|P<around*|(|\<theta\>|)>> as the stationary
  distribution. For continuous random variables, Monte-Carlo simulation with
  Langevin dynamics (section <reference|section: Detailed Balance Condition
  for Langevin Process Lacks Source-Free Degree of Freedom>) is efficient;
  and for discrete random variables, Metropolis-Hastings (section
  <reference|section: Example: Metropolis-Hastings Algorithm>) is available.

  <subsection|Iterative Equation With Normal Distribution Gives an
  Action><label|section: Iterative Equation With Normal Distribution Gives an
  Action>

  We are to build a probabilistic model for the series of variables that
  obeying iterative equation. The most generic form of iterative equation is

  <\equation>
    x<rsub|i+1>=f<rsub|i><around*|(|x<rsub|i>|)>,<label|equation:generic
    iterative equation>
  </equation>

  where <math|i\<in\><around*|{|0,\<ldots\>,N|}>> and
  <math|f<rsub|i>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>. Notice
  that the domain and codomain (target) of <math|f<rsub|i>> is the same.
  Thus, the equation iteratively maps from <math|\<bbb-R\><rsup|n>> to
  itself.

  To generalize this to probability theory, we regard the iterative series
  <math|<around*|(|x<rsub|0>,\<ldots\>,x<rsub|N>|)>> as random variables
  <math|<around*|(|X<rsub|0>,\<ldots\>,X<rsub|N>|)>>. Since the iterative
  equation computes <math|x<rsub|i+1>> from <math|x<rsub|i>>, we are to
  construct a conditional distribution that samples <math|x<rsub|i+1>> from
  <math|x<rsub|i>> which uses <math|f<rsub|i><around*|(|x<rsub|i>|)>> as
  parameter. What is the distribution? In practice, any distribution is
  possible. But we have to limit our vision for being explicit. Because
  normal distribution is most common in nature, we use normal distribution
  for our purpose so as to <em|make our discussion most generic>. Namely, we
  assume that <math|X<rsub|i+1>> obeys the normal distribution with the mean
  given by the iterative equation <reference|equation:generic iterative
  equation> and covariance <math|\<Sigma\><rsub|i>>, that is,

  <\equation>
    X<rsub|i+1>\<sim\><with|font|cal|N><around*|(|f<rsub|i><around*|(|X<rsub|i>|)>,\<Sigma\><rsub|i>|)>,<label|equation:gaussianity>
  </equation>

  It has the conditional density function

  <\equation*>
    q<around*|(|x<rsub|i+1>\|x<rsub|i>|)>=<frac|1|<sqrt|<around*|(|2\<mathpi\>|)><rsup|n>
    det<around*|(|\<Sigma\><rsub|i>|)>><rsup|>>
    exp<around*|(|-<frac|1|2><around*|(|\<Sigma\><rsub|i><rsup|-1>|)><rsub|\<alpha\>\<beta\>>
    <around*|(|x<rsup|\<alpha\>><rsub|i+1>-f<rsup|\<alpha\>><rsub|i><around*|(|x<rsub|i>|)>|)>
    <around*|(|x<rsup|\<beta\>><rsub|i+1>-f<rsup|\<beta\>><rsub|i><around*|(|x<rsub|i>|)>|)>|)>.
  </equation*>

  To obtain the whole density function, we first notice that, since
  <math|q<around*|(|x<rsub|2>\|x<rsub|1>|)>> is not explicitly dependent on
  <math|x<rsub|0>>, <math|q<around*|(|x<rsub|2>\|x<rsub|1>|)>=q<around*|(|x<rsub|2>\|x<rsub|0>,x<rsub|1>|)>>
  holds for any <math|x<rsub|0>>. Then, <math|q<around*|(|x<rsub|2>\|x<rsub|1>|)>q<around*|(|x<rsub|1>\|x<rsub|0>|)>
  q<around*|(|x<rsub|0>|)>=q<around*|(|x<rsub|2>\|x<rsub|0>,x<rsub|1>|)>
  q<around*|(|x<rsub|0>,x<rsub|1>|)>=q<around*|(|x<rsub|0>,x<rsub|1>,x<rsub|2>|)>>.
  Dividing <math|q<around*|(|x<rsub|0>|)>> on both sides, we get
  <math|q<around*|(|x<rsub|1>,x<rsub|2>\|x<rsub|0>|)>=q<around*|(|x<rsub|2>\|x<rsub|1>|)>q<around*|(|x<rsub|1>\|x<rsub|0>|)>>.
  Repeating this step, we will find

  <\equation*>
    q<around*|(|x<rsub|1>,\<ldots\>,x<rsub|N>\|x<rsub|0>|)>=q<around*|(|x<rsub|N>\|x<rsub|N-1>|)>\<cdots\>q<around*|(|x<rsub|1>\|x<rsub|0>|)>.
  </equation*>

  Plugging in <math|q<around*|(|x<rsub|i+1>\|x<rsub|i>|)>>, we arrive at

  <\equation*>
    -ln q<around*|(|x<rsub|1>,\<ldots\>,x<rsub|N>\|x<rsub|0>|)>=<frac|1|2><big|sum><rsub|i=0><rsup|N-1><around*|(|\<Sigma\><rsub|i><rsup|-1>|)><rsub|\<alpha\>\<beta\>>
    <around*|(|x<rsup|\<alpha\>><rsub|i+1>-f<rsup|\<alpha\>><rsub|i><around*|(|x<rsub|i>|)>|)>
    <around*|(|x<rsup|\<beta\>><rsub|i+1>-f<rsup|\<beta\>><rsub|i><around*|(|x<rsub|i>|)>|)>+const.
  </equation*>

  If regard <math|x<rsub|0>> as the condition, then equation
  <reference|equation:action of distribution> (setting <math|\<beta\>=1>)
  defines the action

  <\equation>
    S<around*|(|x\|x<rsub|0>|)>=<frac|1|2><big|sum><rsub|i=0><rsup|N-1><around*|(|\<Sigma\><rsub|i><rsup|-1>|)><rsub|\<alpha\>\<beta\>>
    <around*|(|x<rsup|\<alpha\>><rsub|i+1>-f<rsup|\<alpha\>><rsub|i><around*|(|x<rsub|i>|)>|)>
    <around*|(|x<rsup|\<beta\>><rsub|i+1>-f<rsup|\<beta\>><rsub|i><around*|(|x<rsub|i>|)>|)>.<label|equation:action
    of iterative equation>
  </equation>

  There are, however, gauges in the action. We can choose a \Pbetter\Q
  coordinates so that the covariance <math|\<Sigma\><rsub|i>> becomes an
  identity matrix. To do so, we decompose
  <math|\<Sigma\><rsub|i>=E<rsub|i><rsup|T> \<Lambda\><rsub|i> E<rsub|i>>,
  where the matrix <math|E<rsub|i>> is orthogonal and
  <math|\<Lambda\><rsub|i>> diagonal. Since <math|\<Sigma\><rsub|i>> is
  positive definite, the diagonal elements of <math|\<Lambda\><rsub|i>> are
  all positive. Then, we transform <math|x<rsub|i+1>> to
  <math|<wide|x|~><rsub|i+1>\<assign\><sqrt|\<Lambda\><rsub|i>> E<rsub|i>
  x<rsub|i+1>>, so does <math|<wide|f|~><rsub|i><around*|(|<wide|x|~><rsub|i>|)>\<assign\><sqrt|\<Lambda\><rsub|i>>
  E<rsub|i> f<rsub|i><around*|(|x<rsub|i>|)>>. This gives (we employ matrix
  notations for simplicity)

  <\align>
    <tformat|<table|<row|<cell|S<around*|(|x\|x<rsub|0>|)>=>|<cell|<frac|1|2><big|sum><rsub|i=0><rsup|N-1><around*|[|<sqrt|\<Lambda\><rsub|i>>
    E<rsub|i> <around*|(|<wide|x|~><rsub|i+1>-<wide|f|~><rsub|i><around*|(|<wide|x|~><rsub|i>|)>|)>|]><rsup|T>
    <around*|[|E<rsub|i> \<Lambda\><rsup|-1><rsub|i> E<rsup|T><rsub|i>|]>
    <around*|[|<sqrt|\<Lambda\><rsub|i>> E<rsub|i>
    <around*|(|<wide|x|~><rsub|i+1>-<wide|f|~><rsub|i><around*|(|<wide|x|~><rsub|i>|)>|)>|]>>>|<row|<cell|=>|<cell|<frac|1|2><big|sum><rsub|i=0><rsup|N-1><around*|(|<wide|x|~><rsub|i+1>-<wide|f|~><rsub|i><around*|(|<wide|x|~><rsub|i>|)>|)><rsup|T>
    <around*|(|<wide|x|~><rsub|i+1>-<wide|f|~><rsub|i><around*|(|<wide|x|~><rsub|i>|)>|)>,>>>>
  </align>

  which is an action of <math|x<rprime|'>> with an identity covariance, that
  is,

  <\equation*>
    S<around*|(|<wide|x|~>\|<wide|x|~><rsub|0>|)>=<frac|1|2><big|sum><rsub|i=0><rsup|N-1><big|sum><rsub|\<alpha\>=1><rsup|n><around*|(|<wide|x|~><rsub|i+1><rsup|\<alpha\>>-<wide|f|~><rsup|\<alpha\>><rsub|i><around*|(|<wide|x|~><rsub|i>|)>|)><rsup|2>.
  </equation*>

  Remark that we cannot use non-linear coordinate transformation, such as
  <math|<wide|x|~><rsub|i>\<assign\>\<varphi\><rsub|i><around*|(|x<rsub|i>|)>>
  where <math|\<varphi\>> is a non-linear diffeomorphism, since this will
  introduce <math|x>-dependent factors <math|det<around*|(|\<partial\>\<varphi\><rsub|i>/\<partial\>x<rsub|i>|)>>
  in the integral <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\><wide|x|~><rsub|i>>
  which in turn contributes to <math|q<around*|(|<wide|x|~>\|<wide|x|~><rsub|0>|)>>
  an extra non-constant factor, then modifies the formation of action.

  <subsection|Action of Iterative Equation Has Friction><label|section:
  Action of Iterative Equation Has Friction>

  We are to compare action <reference|equation:action of iterative equation>
  with that appearing in classical mechanics. To do so, we define
  <math|g<rsup|\<alpha\>><rsub|i><around*|(|x|)>\<assign\><around*|(|f<rsub|i><rsup|\<alpha\>><around*|(|x|)>-x<rsup|\<alpha\>>|)>/\<Delta\>t<rsub|i>>
  for some <math|\<Delta\>t<rsub|i>\<gtr\>0>. thus
  <math|x<rsup|\<alpha\>><rsub|i+1>=x<rsup|\<alpha\>><rsub|i>+\<Delta\>t<rsub|i>
  g<rsub|i><rsup|\<alpha\>><around*|(|x<rsub|i>|)>>. We assume that
  <math|g<rsub|i>> is independent of <math|\<Delta\>t<rsub|i>>. This is the
  case for solving differential equation <math|\<mathd\>x/\<mathd\>t=g<around*|(|x,t|)>>
  using Euler's iterative method. We further assume that the covariance
  matrix <math|<around*|(|\<Sigma\><rsub|i>|)><rsup|\<alpha\>\<beta\>>=\<delta\><rsup|\<alpha\>\<beta\>>
  \<Delta\>t<rsub|i>>. Remind that this is a Wiener process (defined in
  section TODO). \ In this situation, the action <reference|equation:action
  of iterative equation> becomes

  <\equation>
    S<around*|(|x\|x<rsub|0>|)>=<big|sum><rsub|i=0><rsup|N-1><big|sum><rsub|\<alpha\>=1><rsup|n><frac|\<Delta\>t<rsub|i>|2><around*|[|<frac|x<rsup|\<alpha\>><rsub|i+1>-x<rsup|\<alpha\>><rsub|i>|\<Delta\>t<rsub|i>>-g<rsub|i><rsup|\<alpha\>><around*|(|x<rsub|i>|)>|]><rsup|2>.<label|equation:action
    of iterative equation v2>
  </equation>

  Comparing with classical mechanics, we can interpret
  <math|\<Delta\>t<rsub|i>> as a tiny time interval and
  <math|<around*|(|x<rsub|i+1>-x<rsub|i>|)>/\<Delta\>t<rsub|i>> as
  \Pvelocity\Q. It motives us to consider its continuous version. To do so,
  we assume that the <math|\<Delta\>t<rsub|i>>s are all very small and
  <math|N> is sufficiently large, so that
  <math|<big|sum><rsub|i=0><rsup|N-1>\<Delta\>t<rsub|i>\<sim\>1>. Then, we
  simply replace <math|\<Delta\>t<rsub|i>> by <math|\<mathd\>t>, and the
  series <math|<around*|(|x<rsub|0>,\<ldots\>,x<rsub|N>|)>> becomes
  <math|x<around*|(|t|)>> with <math|t\<in\><around*|[|0,t<rsub|f>|]>>, where
  <math|t<rsub|f>\<assign\><big|sum><rsub|i=0><rsup|N-1>\<Delta\>t<rsub|i>>,
  and <math|x<rsub|0>> becomes <math|x<around*|(|0|)>>. Accordingly,
  <math|g<rsub|i><around*|(|x<rsub|i>|)>> becomes
  <math|g<around*|(|x<around*|(|t|)>,t|)>>. So, we get the continuous version
  of equation <reference|equation:action of iterative equation v2>, as

  <\equation*>
    S<around*|(|x\|x<around*|(|0|)>|)>=<frac|1|2><big|int><rsub|0><rsup|t<rsub|f>>\<mathd\>t
    <big|sum><rsub|\<alpha\>=1><rsup|n><around*|[|<wide|x|\<dot\>><rsup|\<alpha\>><around*|(|t|)>-g<rsup|\<alpha\>><around*|(|x<around*|(|t|)>,t|)>|]><rsup|2>.
  </equation*>

  To get the Lagrange <math|L>, which is defined by
  <math|S<around*|(|x\|x<around*|(|0|)>|)>=<big|int>\<mathd\>t
  L<around*|(|x<around*|(|t|)>,<wide|x|\<dot\>><around*|(|t|)>,t|)>>, we
  expand the integrand and find

  <\equation>
    L<around*|(|x,<wide|x|\<dot\>>,t|)>=<big|sum><rsub|\<alpha\>=1><rsup|n><around*|[|<frac|1|2><around*|(|<wide|x|\<dot\>><rsup|\<alpha\>>|)><rsup|2>-<wide|x|\<dot\>><rsup|\<alpha\>>
    g<rsup|\<alpha\>><around*|(|x,t|)>+<frac|1|2><around*|(|g<rsup|\<alpha\>><around*|(|x,t|)>|)><rsup|2>|]>.<label|equation:lagrangian
    of iterative equation>
  </equation>

  \;

  For evaluating Euler-Lagrange equation, we have to fix the boundary
  <math|x<around*|(|t<rsub|f>|)>> (recall <math|x<around*|(|0|)>> has been
  fixed), since Euler-Lagrange equation is derived by fixing boundaries on
  both <math|t=0> and <math|t=t<rsub|f>>. It suggests us to consider the
  expectation <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x<around*|(|t<rsub|f>|)>
  q<around*|(|x<around*|(|t|)>\|x<rsub|0>|)>
  \<delta\><around*|(|x<rsub|f>-x<around*|(|t<rsub|f>|)>|)>> for any
  <math|x<rsub|f>\<in\>\<bbb-R\><rsup|n>>. Given the boundary values at
  <math|t=0> and <math|t=t<rsub|f>>, variation on <math|x<around*|(|t|)>>
  gives the Euler-Lagrange equation <math|<around*|(|\<mathd\>/\<mathd\>t|)>\<partial\>L/\<partial\><wide|x|\<dot\>><rsup|\<alpha\>>=\<partial\>L/\<partial\>x<rsup|\<alpha\>>>.
  We have <math|\<partial\>L/\<partial\><wide|x|\<dot\>><rsup|\<alpha\>>=<wide|x|\<dot\>><rsup|\<alpha\>>-g<rsup|\<alpha\>><around*|(|x,t|)>>
  and <math|\<partial\>L/\<partial\>x<rsup|\<alpha\>>=<big|sum><rsub|\<beta\>=1><rsup|n><around*|[|-<wide|x|\<dot\>><rsup|\<beta\>>+g<rsup|\<beta\>><around*|(|x,t|)>|]>
  \<partial\><rsub|\<alpha\>>g<rsup|\<beta\>><around*|(|x,t|)>>, where we
  have denoted <math|\<partial\><rsub|\<alpha\>>g<rsup|\<beta\>>\<assign\>\<partial\>g<rsup|\<beta\>>/\<partial\>x<rsup|\<alpha\>>>,
  and will employ <math|\<partial\><rsub|t>g> for
  <math|\<partial\>g/\<partial\>t>. Thus, Euler-Lagrange equation becomes

  <\equation*>
    <wide|x|\<ddot\>><rsup|\<alpha\>>=<big|sum><rsub|\<beta\>=1><rsup|n><around*|[|\<partial\><rsub|\<beta\>>g<rsup|\<alpha\>><around*|(|x,t|)>-\<partial\><rsub|\<alpha\>>g<rsup|\<beta\>><around*|(|x,t|)>|]>
    <wide|x|\<dot\>><rsup|\<beta\>>+<big|sum><rsub|\<beta\>=1><rsup|n>g<rsup|\<beta\>><around*|(|x,t|)>
    \<partial\><rsub|\<alpha\>>g<rsup|\<beta\>><around*|(|x,t|)>+\<partial\><rsub|t>g<rsup|\<alpha\>><around*|(|x,t|)>.
  </equation*>

  The first term in the right hand side is recognized as <em|friction,
  proportional to the curl of <math|g>>. The rest are driving force.

  <subsection|How Far Will Information Propagate in Stochastic Iterative
  Equation?><label|section: How Far Will Information Propagate in Stochastic
  Iterative Equation?>

  We are to determine how far information will propagate during the iteration
  of a stochastic iterative equation (see section <reference|section:
  Iterative Equation With Normal Distribution Gives an Action>). For this
  kind of problem, physicists have invented a technique called
  renormalization group. This technique was first proposed by Murray
  Gell-Mann and Francis Low in 1954, applied to quantum field theory of
  fundamental particles. Following this research, Kenneth Wilson, who was a
  PhD student of Gell-Mann, started his malathion in 1961. He published his
  first paper on renormalization group eight years later, in 1969. This
  technique was then further developed and applied to many areas in and even
  out of physics, such as neural science.

  To show how it works, we start with an action that is generalized from
  action <reference|equation:action of iterative equation v2>, which is

  <\equation>
    S<around*|(|x|)>=<big|sum><rsub|i=-\<infty\>><rsup|+\<infty\>><big|sum><rsub|\<alpha\>=1><rsup|n><around*|[|<frac|<around*|(|x<rsup|\<alpha\>><rsub|i+1>-x<rsup|\<alpha\>><rsub|i>|)><rsup|2>|2\<epsilon\>>-<around*|(|x<rsup|\<alpha\>><rsub|i+1>-x<rsup|\<alpha\>><rsub|i>|)>
    \<varphi\><rsup|\<alpha\>><rsub|i><around*|(|x<rsub|i+1>,x<rsub|i>|)>+\<epsilon\>
    \<xi\><rsub|i><rsup|\<alpha\>><around*|(|x<rsub|i+1>,x<rsub|i>|)>|]>,<label|equation:rg
    action>
  </equation>

  where <math|\<varphi\><rsub|i>,\<xi\><rsub|i>:\<bbb-R\><rsup|n>\<times\>\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>.
  Comparing with action <reference|equation:action of iterative equation v2>,
  <math|\<epsilon\>=\<Delta\>t<rsub|i>>, <math|\<varphi\><rsub|i><around*|(|x<rsub|i+1>,x<rsub|i>|)>=g<rsub|i><around*|(|x<rsub|i>|)>>,
  and <math|\<xi\><rsub|i><around*|(|x<rsub|i+1>,x<rsub|i>|)>=g<rsup|2><rsub|i><around*|(|x<rsub|i>|)>/2>.
  There are another two differences between them. Here, we do not fix
  boundary (namely, the condition <math|x<rsub|0>> in
  <math|S<around*|(|x\|x<rsub|0>|)>>), and let the index <math|i> run from
  <math|-\<infty\>> to <math|+\<infty\>> rather than from <math|0> to
  <math|N>. As we will see later in this section, these differences are
  crucial for renormalization group. In the end of this section, we will show
  how to add the condition back and restrict the range of index <math|i>.

  Renormalization group technique bases on the fact that there are as many
  even numbers as integers. This is a famous result that was first claimed by
  George Cantor. For our purpose, we marginalize all the variable
  <math|x<rsub|i>> in <math|q<around*|(|x|)>> where <math|i> is odd. Namely,
  we are to compute an \Peffective action\Q <math|S<rprime|'>> defined by

  <\equation>
    S<rprime|'><around*|(|x|)>\<assign\>-ln<around*|[|<big|prod><rsub|i\<in\>\<bbb-Z\>><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x<rsub|2i+1>
    exp<around*|(|-S<around*|(|x|)>|)>|]>,<label|equation:rg integral>
  </equation>

  where <math|S<rprime|'><around*|(|\<ldots\>,x<rsub|-4>,x<rsub|-2>,x<rsub|0>,x<rsub|2>,x<rsub|4>,\<ldots\>|)>>
  contains only the variables with even index. Interestingly, it is to be
  revealed that, by a proper re-scaling of <math|x>, <math|S<rprime|'>> has
  exactly the same format as <math|S>.

  Given <math|i>, we are to show how to marginalize <math|x<rsub|2i+1>>. This
  variables appear in two terms in action <reference|equation:rg action>,
  with indices <math|2i+1> and <math|2i>. So, we are to integrate
  <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x<rsub|2i+1>exp<around*|(|<big|sum><rsub|\<alpha\>=1><rsup|n>J<rsup|\<alpha\>>|)>>
  where

  <\align>
    <tformat|<table|<row|<cell|J<rsup|\<alpha\>>\<assign\>>|<cell|-<frac|<around*|(|x<rsup|\<alpha\>><rsub|2i+1>-x<rsup|\<alpha\>><rsub|2i>|)><rsup|2>|2\<epsilon\>>-<frac|<around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i+1>|)><rsup|2>|2\<epsilon\>>>>|<row|<cell|>|<cell|+<around*|(|x<rsup|\<alpha\>><rsub|2i+1>-x<rsup|\<alpha\>><rsub|2i>|)>
    \<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|x<rsub|2i+1>,x<rsub|2i>|)>+<around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i+1>|)>
    \<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,x<rsub|2i+1>|)>>>|<row|<cell|>|<cell|-\<epsilon\>
    \<xi\><rsub|2i><rsup|\<alpha\>><around*|(|x<rsub|2i+1>,x<rsub|2i>|)>-\<epsilon\>
    \<xi\><rsub|2i+1><rsup|\<alpha\>><around*|(|x<rsub|2i+2>,x<rsub|2i+1>|)>.>>>>
  </align>

  This integral is hard to calculate. A general strategy is using
  perturbative method. In our situation, <math|\<epsilon\>> serves as the
  small quantity for perburbation.

  First, we have an algebraic identity<\footnote>
    Directly, expand <math|<around*|(|x-y|)><rsup|2>+<around*|(|y-z|)><rsup|2>=x<rsup|2>-2x
    y+y<rsup|2>+y<rsup|2>-2y z+z<rsup|2>>. Then, collect the <math|y> terms
    together, as <math|2<around*|(|y<rsup|2>-<around*|(|x+z|)>
    y|)>=2<around*|(|y-<around*|(|x+z|)> y+<around*|(|x+z|)><rsup|2>/4|)>-<around*|(|x+z|)><rsup|2>/2=2<around*|(|y-<around*|(|x+z|)>/2|)><rsup|2>-<around*|(|x+z|)><rsup|2>/2>,
    in which the last term can be further combined with the rest terms
    <math|x<rsup|2>+z<rsup|2>>, as <math|-<around*|(|x+z|)><rsup|2>/2+x<rsup|2>+z<rsup|2>=<around*|(|x-z|)><rsup|2>/2>.
    Altogether, we find

    <\equation*>
      <around*|(|x-y|)><rsup|2>+<around*|(|y-z|)><rsup|2>=2<around*|(|y-<frac|x+z|2>|)><rsup|2>+<frac|1|2><around*|(|x-z|)><rsup|2>.
    </equation*>

    If replace <math|x\<rightarrow\>x<rsup|\<alpha\>><rsub|2i>>,
    <math|y\<rightarrow\>x<rsup|\<alpha\>><rsub|2i+1>>, and
    <math|z\<rightarrow\>x<rsup|\<alpha\>><rsub|2i+2>>, then we get what we
    need.
  </footnote>

  <\equation*>
    <frac|<around*|(|x<rsup|\<alpha\>><rsub|2i+1>-x<rsup|\<alpha\>><rsub|2i>|)><rsup|2>|2\<epsilon\>>+<frac|<around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i+1>|)><rsup|2>|2\<epsilon\>>=<frac|1|\<epsilon\>><around*|[|x<rsup|\<alpha\>><rsub|2i+1>-<frac|x<rsup|\<alpha\>><rsub|2i>+
    x<rsup|\<alpha\>><rsub|2i+2>|2>|]><rsup|2>+<frac|1|4\<epsilon\>><around*|(|x<rsup|\<alpha\>><rsub|2i>-
    x<rsup|\<alpha\>><rsub|2i+2>|)><rsup|2>.
  </equation*>

  Remark that the second term looks like the first term in action
  <reference|equation:rg action>, except for an <math|1/2> factor. Then,
  <math|J<rsup|\<alpha\>>> becomes

  <\align>
    <tformat|<table|<row|<cell|J<rsup|\<alpha\>>=>|<cell|-<frac|1|\<epsilon\>><around*|[|x<rsup|\<alpha\>><rsub|2i+1>-<frac|x<rsup|\<alpha\>><rsub|2i>+
    x<rsup|\<alpha\>><rsub|2i+2>|2>|]><rsup|2>-<frac|1|4\<epsilon\>><around*|(|x<rsup|\<alpha\>><rsub|2i>-
    x<rsup|\<alpha\>><rsub|2i+2>|)><rsup|2>>>|<row|<cell|>|<cell|+<around*|(|x<rsup|\<alpha\>><rsub|2i+1>-x<rsup|\<alpha\>><rsub|2i>|)>
    \<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|x<rsub|2i+1>,x<rsub|2i>|)>+<around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i+1>|)>
    \<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,x<rsub|2i+1>|)>>>|<row|<cell|>|<cell|-\<epsilon\>
    \<xi\><rsub|2i><rsup|\<alpha\>><around*|(|x<rsub|2i+1>,x<rsub|2i>|)>-\<epsilon\>
    \<xi\><rsub|2i+1><rsup|\<alpha\>><around*|(|x<rsub|2i+2>,x<rsub|2i+1>|)>.>>>>
  </align>

  The first term is a quadratic form of <math|x<rsub|2i+1>>. It suggests that
  we shall treat the integral as a perturbation to the Gaussian integral, and
  use perturbative method to integrate it out. Following this strategy, we
  define <math|<wide|y|\<bar\>>\<assign\><around*|(|x<rsub|2i+2>+
  x<rsub|2i>|)>/2> and <math|y\<assign\>x<rsub|2i+1>-<wide|y|\<bar\>>>.
  <math|>And the integral becomes

  <\small>
    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x<rsub|2i+1>exp<around*|(|<big|sum><rsub|\<alpha\>=1><rsup|n>J<rsup|\<alpha\>>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
      exp<around*|(|-<frac|1|2><big|sum><rsub|\<alpha\>=1><rsup|n><around*|(|<frac|y<rsup|\<alpha\>>|<sqrt|\<epsilon\>/2>>|)><rsup|2>+\<cdots\>|)>.
    </equation*>
  </small>

  It means the <math|y> obeys a normal distribution with zero mean and
  diagonal covariance <math|\<Sigma\><rsub|\<alpha\>\<beta\>>=<around*|(|\<epsilon\>/2|)>
  \<delta\><rsub|\<alpha\>\<beta\>>>. We have a rough estimation
  <math|y=<with|font|cal|O><around*|(|<sqrt|\<epsilon\>>|)>>.

  Next, we process the other lines in <math|J<rsup|\<alpha\>>>. Using
  <math|x<rsub|2i+1>=y+<wide|y|\<bar\>>> and
  <math|<wide|y|\<bar\>>-x<rsub|2i>=x<rsub|2i+2>-<wide|y|\<bar\>>=<around*|(|x<rsub|2i+2>-x<rsub|2i>|)>/2>,
  the second line can be expanded, up to <math|<with|font|cal|O><around*|(|\<epsilon\><rsup|3/2>|)>>,
  as

  <\small>
    <\align>
      <tformat|<table|<row|<cell|>|<cell|<around*|(|y<rsup|\<alpha\>>+<wide|y|\<bar\>><rsup|\<alpha\>>-x<rsup|\<alpha\>><rsub|2i>|)>
      \<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|y+<wide|y|\<bar\>>,x<rsub|2i>|)>+<around*|(|x<rsup|\<alpha\>><rsub|2i+2>-y<rsup|\<alpha\>>-<wide|y|\<bar\>><rsup|\<alpha\>>|)>
      \<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,y+<wide|y|\<bar\>>|)>>>|<row|<cell|=>|<cell|<frac|1|2><around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>>>|<row|<cell|+>|<cell|y<rsup|\<alpha\>>
      <around*|[|\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>+<frac|1|2>y<rsup|\<beta\>>
      <around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<partial\><rsub|\<beta\>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<beta\>><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>>>|<row|<cell|+>|<cell|y<rsup|\<alpha\>>
      y<rsup|\<beta\>> <around*|[|\<partial\><rsub|\<beta\>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<partial\><rsub|\<beta\>><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>+<frac|1|4>y<rsup|\<beta\>>
      y<rsup|\<gamma\>> <around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<partial\><rsub|\<beta\>>\<partial\><rsub|\<gamma\>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<beta\>><rprime|'>\<partial\><rprime|'><rsub|\<gamma\>>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>,>>>>
    </align>
  </small>

  where we have denoted <math|\<partial\>\<varphi\>> as the partial
  derivative taken on the first argument, and
  <math|\<partial\><rprime|'>\<varphi\>> on the second. Notice that we have
  used Einstein convention in this expansion (see the conventions in section
  <reference|section: Kramers-Moyal Expansion and Langevin Process>), hiding
  the summations of indices <math|\<beta\>> and <math|\<gamma\>>. Also up to
  <math|<with|font|cal|O><around*|(|\<epsilon\><rsup|3/2>|)>>, the third line
  simply becomes <math|-\<epsilon\> \<xi\><rsub|2i><rsup|\<alpha\>><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<epsilon\>
  \<xi\><rsub|2i+1><rsup|\<alpha\>><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>>.
  Altogether, the integral becomes

  <\small>
    <\equation*>
      exp<around*|(|<big|sum><rsub|\<alpha\>=1><rsup|n>I<rsup|\<alpha\>>|)>\<times\><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
      exp<around*|(|-<frac|1|2><big|sum><rsub|\<alpha\>=1><rsup|n><around*|(|<frac|y<rsup|\<alpha\>>|<sqrt|\<epsilon\>/2>>|)><rsup|2>+<big|sum><rsub|\<alpha\>=1><rsup|n>V<rsup|\<alpha\>><around*|(|y|)>+<with|font|cal|O><around*|(|\<epsilon\><rsup|3/2>|)>|)>,
    </equation*>
  </small>

  with the \Pinteractive part\Q

  <\small>
    <\align>
      <tformat|<table|<row|<cell|V<rsup|\<alpha\>><around*|(|y|)>\<assign\>>|<cell|y<rsup|\<alpha\>>
      <around*|[|\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>+<frac|1|2>y<rsup|\<beta\>>
      <around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<partial\><rsub|\<beta\>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<beta\>><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>>>|<row|<cell|+>|<cell|y<rsup|\<alpha\>>
      y<rsup|\<beta\>> <around*|[|\<partial\><rsub|\<beta\>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<partial\><rsub|\<beta\>><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>+<frac|1|4>y<rsup|\<beta\>>
      y<rsup|\<gamma\>> <around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<partial\><rsub|\<beta\>>\<partial\><rsub|\<gamma\>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<beta\>><rprime|'>\<partial\><rprime|'><rsub|\<gamma\>>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>,>>>>
    </align>
  </small>

  which depends on <math|y> and is <math|<with|font|cal|O><around*|(|<sqrt|\<epsilon\>>|)>>,
  and the \Pindependent part\Q (the color is for later usage)

  <\small>
    <\equation*>
      I<rsup|\<alpha\>>\<assign\>-<frac|1|4\<epsilon\>><around*|(|x<rsup|\<alpha\>><rsub|2i>-
      x<rsup|\<alpha\>><rsub|2i+2>|)><rsup|2>+<frac|1|2><around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]><with|color|red|-\<epsilon\>
      \<xi\><rsub|2i><rsup|\<alpha\>><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<epsilon\>
      \<xi\><rsub|2i+1><rsup|\<alpha\>><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>>,
    </equation*>
  </small>

  which is independent of <math|y>. We Taylor expands the second factor as

  <\small>
    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
      exp<around*|(|-<frac|1|2><big|sum><rsub|\<alpha\>=1><rsup|n><around*|(|<frac|y<rsup|\<alpha\>>|<sqrt|\<epsilon\>/2>>|)><rsup|2>+<big|sum><rsub|\<alpha\>=1><rsup|n>V<rsup|\<alpha\>><around*|(|y|)>+<with|font|cal|O><around*|(|\<epsilon\><rsup|3/2>|)>|)>=\<bbb-E\><rsub|Y><around*|[|1+<big|sum><rsub|\<alpha\>=1><rsup|n>V<rsup|\<alpha\>><around*|(|y|)>+<frac|1|2><around*|(|<big|sum><rsub|\<alpha\>=1><rsup|n>V<rsup|\<alpha\>><around*|(|y|)>|)><rsup|2>+<with|font|cal|O><around*|(|\<epsilon\><rsup|3/2>|)>|]>,
    </equation*>
  </small>

  where <math|\<bbb-E\><rsub|Y><around*|[|\<ldots\>|]>> is defined by the
  Gaussian integral of <math|y>. We will neglect the constant factor
  <math|<around*|(|\<mathpi\> \<epsilon\>|)><rsup|-n/2>>, so that
  <math|\<bbb-E\><rsub|Y><around*|[|1|]>=1>. This constant factor can be
  absorbed into the action as an irrelevant constant term. Plugging in the
  definition of <math|V<rsup|\<alpha\>><around*|(|y|)>> with
  <math|\<bbb-E\><rsub|Y><around*|[|y<rsup|\<alpha\>>|]>=0> and
  <math|\<bbb-E\><rsub|Y><around*|[|y<rsup|\<alpha\>>
  y<rsup|\<beta\>>|]>=\<delta\><rsub|\<alpha\>\<beta\>> \<epsilon\>/2>, we
  get (color for later usage)

  <\small>
    <with|color|dark green|<\equation*>
      <big|sum><rsub|\<alpha\>=1><rsup|n>\<bbb-E\><around*|[|V<rsup|\<alpha\>><around*|(|y|)>|]>=<frac|\<epsilon\>|2><big|sum><rsub|\<alpha\>=1><rsup|n><around*|[|\<partial\><rsub|\<alpha\>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<partial\><rsub|\<alpha\>><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>+<frac|1|4>
      <around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<Delta\>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<Delta\><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>|]>,
    </equation*>>
  </small>

  where the Laplacian <math|\<Delta\><rprime|'>\<assign\><big|sum><rsub|\<alpha\>=1><rsup|n>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<alpha\>>>,
  and the same <math|\<Delta\><rprime|'>\<assign\><big|sum><rsub|\<alpha\>=1><rsup|n>\<partial\><rprime|'><rsub|\<alpha\>>\<partial\><rprime|'><rsub|\<alpha\>>>.
  Also, we have (color for later usage)<\footnote>
    We have <math|\<bbb-E\><rsub|Y><around*|[|<around*|(|1/2|)><around*|(|<big|sum><rsub|\<alpha\>=1><rsup|n>V<rsup|\<alpha\>><around*|(|y|)>|)><rsup|2>|]>=<around*|(|1/2|)><big|sum><rsub|\<alpha\>,\<alpha\><rprime|'>=1><rsup|n>\<bbb-E\><rsub|Y><around*|[|V<rsup|\<alpha\>><around*|(|y|)>
    V<rsup|\<alpha\><rprime|'>><around*|(|y|)>|]>>, where

    <\align>
      <tformat|<table|<row|<cell|>|<cell|\<bbb-E\><rsub|Y><around*|[|V<rsup|\<alpha\>><around*|(|y|)>V<rsup|\<alpha\><rprime|'>><around*|(|y|)>|]>>>|<row|<cell|=>|<cell|<frac|\<delta\><rsub|\<alpha\>\<alpha\><rprime|'>>
      \<epsilon\>|2> <around*|[|\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]><rsup|2>>>|<row|<cell|+>|<cell|<frac|\<epsilon\>|4>
      <around*|(|x<rsup|\<alpha\><rprime|'>><rsub|2i+2>-x<rsup|\<alpha\><rprime|'>><rsub|2i>|)>
      <around*|[|\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>
      <around*|[|\<partial\><rsub|\<alpha\>>\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<alpha\>><rprime|'>\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>>>|<row|<cell|+>|<cell|<frac|\<epsilon\>|4>
      <around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>
      <around*|[|\<partial\><rsub|\<alpha\><rprime|'>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<alpha\><rprime|'>><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>>>|<row|<cell|+>|<cell|<frac|\<epsilon\>|8>
      <around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|(|x<rsup|\<alpha\><rprime|'>><rsub|2i+2>-x<rsup|\<alpha\><rprime|'>><rsub|2i>|)>
      <big|sum><rsub|\<beta\>=1><rsup|n><around*|[|\<partial\><rsub|\<beta\>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<beta\>><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>
      <around*|[|\<partial\><rsub|\<beta\>>\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<beta\>><rprime|'>\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>.>>>>
    </align>

    \;
  </footnote>

  <with|color|dark blue|<\small>
    <\align>
      <tformat|<table|<row|<cell|>|<cell|\<bbb-E\><around*|[|<frac|1|2><around*|(|<big|sum><rsub|\<alpha\>=1><rsup|n>V<rsup|\<alpha\>><around*|(|y|)>|)><rsup|2>|]>>>|<row|<cell|=>|<cell|<frac|\<epsilon\>|4><big|sum><rsub|\<alpha\>=1><rsup|n><around*|[|\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]><rsup|2>>>|<row|<cell|+>|<cell|<frac|\<epsilon\>|4><big|sum><rsub|\<alpha\>,\<alpha\><rprime|'>=1><rsup|n><around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<partial\><rsub|\<alpha\><rprime|'>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<alpha\><rprime|'>><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>
      <around*|[|\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>>>|<row|<cell|+>|<cell|<frac|\<epsilon\>|16><big|sum><rsub|\<alpha\>,\<alpha\><rprime|'>,\<beta\>=1><rsup|n><around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<partial\><rsub|\<beta\>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<beta\>><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>
      <around*|(|x<rsup|\<alpha\><rprime|'>><rsub|2i+2>-x<rsup|\<alpha\><rprime|'>><rsub|2i>|)>
      <around*|[|\<partial\><rsub|\<beta\>>\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<beta\>><rprime|'>\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>>>>>
    </align>
  </small>>

  Plugging all these back to the integral, and defining
  <math|x<rprime|'><rsub|i>=x<rsub|2i>/<sqrt|2>> for all <math|i>, we find,
  (up to an irrelevant constant term),

  <\small>
    <\equation*>
      -ln<around*|[|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x<rsub|2i+1>exp<around*|(|<big|sum><rsub|\<alpha\>=1><rsup|n>J<rsup|\<alpha\>>|)>|]>=<big|sum><rsub|\<alpha\>=1><rsup|n><around*|[|<frac|1|2\<epsilon\>><around*|(|x<rprime|'><rsup|\<alpha\>><rsub|i+1>-
      x<rprime|'><rsup|\<alpha\>><rsub|i>|)><rsup|2>-<around*|(|x<rprime|'><rsup|\<alpha\>><rsub|i+1>-x<rsup|\<alpha\>><rsub|i>|)>
      \<varphi\><rprime|'><rsub|i><rsup|\<alpha\>><around*|(|x<rprime|'><rsub|i+1>,x<rprime|'><rsub|i>|)>+\<epsilon\>
      \<xi\><rprime|'><rsup|\<alpha\>><rsub|i><around*|(|x<rsub|i+1><rprime|'>,x<rsub|i><rprime|'>|)>|]>,
    </equation*>
  </small>

  where

  <\equation*>
    \<varphi\><rprime|'><rsub|i><rsup|\<alpha\>><around*|(|x<rprime|'><rsub|i+1>,x<rprime|'><rsub|i>|)>\<assign\><frac|1|<sqrt|2>><around*|[|\<varphi\><rsub|2i><rsup|\<alpha\>><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>
  </equation*>

  and

  <\small>
    <\equation*>
      \<xi\><rprime|'><rsup|\<alpha\>><rsub|i><around*|(|x<rsub|i+1><rprime|'>,x<rsub|i><rprime|'>|)>\<assign\><with|color|red|\<xi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+
      \<xi\><rsub|2i+1><rsup|\<alpha\>><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>><with|color|dark
      green|-<frac|1|2><around*|[|\<partial\><rsub|\<alpha\>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<partial\><rsub|\<alpha\>><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>><with|color|dark
      blue|-<frac|1|4><around*|[|\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]><rsup|2>><with|color|dark
      green|-<frac|1|8><around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<Delta\>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<Delta\><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>><with|color|dark
      blue|-<frac|1|4><big|sum><rsub|\<alpha\><rprime|'>=1><rsup|n><around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<partial\><rsub|\<alpha\><rprime|'>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<alpha\><rprime|'>><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>
      <around*|[|\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>-\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>-<frac|1|16><big|sum><rsub|\<alpha\><rprime|'>,\<beta\>=1><rsup|n><around*|(|x<rsup|\<alpha\>><rsub|2i+2>-x<rsup|\<alpha\>><rsub|2i>|)>
      <around*|[|\<partial\><rsub|\<beta\>>\<varphi\><rsup|\<alpha\>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<beta\>><rprime|'>\<varphi\><rsup|\<alpha\>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>
      <around*|(|x<rsup|\<alpha\><rprime|'>><rsub|2i+2>-x<rsup|\<alpha\><rprime|'>><rsub|2i>|)>
      <around*|[|\<partial\><rsub|\<beta\>>\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i><around*|(|<wide|y|\<bar\>>,x<rsub|2i>|)>+\<partial\><rsub|\<beta\>><rprime|'>\<varphi\><rsup|\<alpha\><rprime|'>><rsub|2i+1><around*|(|x<rsub|2i+2>,<wide|y|\<bar\>>|)>|]>>+<with|font|cal|O><around*|(|<sqrt|\<epsilon\>>|)>,
    </equation*>
  </small>

  where we have indicated the source of the terms by color. This is held for
  all <math|i>, thus we arrive at

  <\equation*>
    S<rprime|'><around*|(|x<rprime|'>|)>=<big|sum><rsub|i=-\<infty\>><rsup|+\<infty\>><big|sum><rsub|\<alpha\>=1><rsup|n><around*|[|<frac|1|2\<epsilon\>><around*|(|x<rprime|'><rsup|\<alpha\>><rsub|i+1>-
    x<rprime|'><rsup|\<alpha\>><rsub|i>|)><rsup|2>-<around*|(|x<rprime|'><rsup|\<alpha\>><rsub|i+1>-x<rprime|'><rsup|\<alpha\>><rsub|i>|)>
    \<varphi\><rprime|'><rsub|i><rsup|\<alpha\>><around*|(|x<rprime|'><rsub|i+1>,x<rprime|'><rsub|i>|)>+\<epsilon\>
    \<xi\><rprime|'><rsup|\<alpha\>><rsub|i><around*|(|x<rsub|i+1><rprime|'>,x<rsub|i><rprime|'>|)>|]>,
  </equation*>

  which has exactly the same format as <math|S> (equation
  <reference|equation:rg action>).

  <subsection|Example: Action in Deep Learning>

  In deep learning, a feed-forward network is a supervised model that
  computes the output <math|y\<in\>\<bbb-R\><rsup|n<rsub|L>>> from input
  <math|x\<in\>\<bbb-R\><rsup|n<rsub|0>>>. (In some cases, such as natural
  language process, <math|x> is the embedding vector; and for classification
  task, <math|y> is the logits, the input of softmax function.) It
  iteratively computes a series of intermediate quantities called hidden
  variables <math|<around*|(|h<rsub|1>,\<ldots\>,h<rsub|L-1>|)>> with
  <math|h<rsub|l>\<in\>\<bbb-R\><rsup|n<rsub|l>>> by

  <\equation*>
    h<rsup|\<alpha\>><rsub|l+1>=f<rsup|\<alpha\>><rsub|l><around*|(|h<rsub|l>|)>,
  </equation*>

  where <math|f<rsub|l>:\<bbb-R\><rsup|n<rsub|l>>\<rightarrow\>\<bbb-R\><rsup|n<rsub|l+1>>>.
  By denoting <math|h<rsub|0>\<assign\>x> and <math|h<rsub|L>\<assign\>y>, we
  have <math|l\<in\><around*|{|0,\<ldots\>,L|}>>. This naive structure
  suffers many issues caused by increasing the number of layers. In 2015,
  Kaiming He and others proposed a residual structure, in which all the
  <math|n<rsub|l>>s are equal, and <math|h<rsup|\<alpha\>><rsub|l+1>=h<rsub|l><rsup|\<alpha\>>+\<epsilon\>
  g<rsup|\<alpha\>><rsub|l><around*|(|h<rsub|l>|)>>. This is consistent with
  the discussion in section <reference|section: Action of Iterative Equation
  Has Friction>, thus the results obtained there also holds for deep
  learning. And we get an action of feed-forward network as equation
  <reference|equation:action of iterative equation v2>.

  For perceptrons, <math|g<rsup|\<alpha\>><rsub|l><around*|(|h<rsub|l>|)>=\<sigma\><around*|(|<around*|(|W<rsub|l>|)><rsup|\<alpha\>><rsub|\<beta\>>
  h<rsup|\<beta\>>+b<rsup|\<alpha\>><rsub|l>|)>> for some activation function
  <math|\<sigma\>:\<bbb-R\>\<rightarrow\>\<bbb-R\>>, such as sigmoid function
  <math|1/<around*|(|1+exp<around*|(|-x|)>|)>>. TODO

  If <math|W\<cdot\>h> is small enough, then we can safely Taylor expand
  <math|\<sigma\>> at zero, as

  <\equation*>
    \<sigma\><around*|(|x|)>=<frac|1|2>+<frac|x|4>-<frac|x<rsup|3>|48>+\<cdots\>.
  </equation*>

  <subsection|* History: Structures in Nature Arise from Least-Action
  Principle>

  There are many structures in nature. The structure of vascular system is a
  simple instance. A more complicated structure appears in the bases along
  chromosome. Why do these structures arise in nature?

  <subsubsection|WBE Theory and Universality>

  Early in 1997, physicist Geoffrey West, ecologist James Brown, and
  biologist Brian Enquist proposed a theory (now it is called WBE theory)
  that explains how the fractal structures arise in vascular system of
  mammals.<\footnote>
    <with|font-shape|italic|A General Model for the Origin of Allometric
    Scaling Laws in Biology>. DOI: 10.1126/SCIENCE.276.5309.122
  </footnote> To do so, they <em|derived> an objective that quantifies the
  cost of transporting blood. They found that the fractal structure of
  vascular appears naturally by minimizing this cost. Also arises the
  power-law relationship between the basal metabolic rate and the body size
  of mammal, which was first observed by Max Kleiber in 1930 and now named by
  <hlink|Kleiber's law|https://en.wikipedia.org/wiki/Kleiber%27s_law>. Later,
  they applied their theory to many areas that have no superficial
  relationship with biology, such as gross domestic product of city. They
  successfully predicted some observed quantities in these areas.

  Inspired by WBE theory, we regard the cost as an action. Instead of
  deriving a cost/action as WBE does, we can use the technique declared in
  section <reference|section: Data Fitting Is Equivalent to Least-Action
  Principle of Distribution> to reveal one if we have obtained sufficiently
  many observed data. In machine learning perspective, data fitting is also
  seen as pattern mining. It reveals the statistically significant patterns
  hidden in the data. These patterns are the structures frequently appear in
  nature, and they locate in the minima of an objective, as WBE theory
  claimed, an action.

  An interesting aspect of WBE theory is that the quantitative results
  obtained by minimizing the cost in one system are also held by a large
  variety of systems in nature. For example, different systems may share the
  same power-law index. This property is called <strong|universality>. Where
  does universality come from?

  <subsubsection|Renormalization Group and Criticality>

  In 1975, physicist Mitchell Feigenbaum computed two constants, now named as
  Feigenbaum constants, when he was studying the logistic map. Then in the
  late of 1970s, physicists found that Feigenbaum constants also appear in
  many other areas such as turbulence and Mandelbrot set: Feigenbaum
  constants are universal. Feigenbaum himself gave a \Pproof\Q of how this
  universality appears. The technique he used was invented by his collage in
  Cornell University, Kenneth Wilson, called renormalization group. With this
  technique, Feigenbaum constructed a functional iterative equation, and
  found his constants as the Taylor coefficients of the non-trivial fixed
  point of the functional iterative equation. But, Feigenbaum said little
  about where this functional iterative equation comes from. He neither gave
  a rigorous derivation of the equation, nor argued why this equation holds
  also for other systems.

  Generally, universality comes from a \Pcomplex\Q system, a system whose
  configuration (defined in section <reference|section: A Brief Review of
  Least-Action Principle in Classical Mechanics>) has a large number of
  components, such as starling flocks or ant colony. In such systems, each
  component can only interact with several \Pneighbors\Q. But, when a local
  perturbation (for example, caused by a predator) appears, its information
  soon propagates throughout the whole system, and the system reacts to the
  perturbation as a large complex organism, which is where the name
  \Pcomplex\Q emerges. Phenomenon that information propagates throughout the
  whole system without decay is called <strong|criticality>. This is
  important for starling flocks or ant colony to survive, and the cost will
  be strongly related to the appearance of criticality.

  TODO
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
    <associate|auto-10|<tuple|1.8|6>>
    <associate|auto-11|<tuple|1.9|6>>
    <associate|auto-12|<tuple|1.9.1|7>>
    <associate|auto-13|<tuple|1.9.2|8>>
    <associate|auto-14|<tuple|1.10|10>>
    <associate|auto-15|<tuple|1.11|11>>
    <associate|auto-16|<tuple|1.11.1|11>>
    <associate|auto-17|<tuple|1.11.2|11>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|3>>
    <associate|auto-6|<tuple|1|4>>
    <associate|auto-7|<tuple|1.5|4>>
    <associate|auto-8|<tuple|1.6|5>>
    <associate|auto-9|<tuple|1.7|6>>
    <associate|equation:action of distribution|<tuple|4|2>>
    <associate|equation:action of iterative equation|<tuple|10|7>>
    <associate|equation:action of iterative equation v2|<tuple|11|7>>
    <associate|equation:data-fitting iteration|<tuple|6|3>>
    <associate|equation:data-fitting result|<tuple|7|3>>
    <associate|equation:gaussianity|<tuple|9|6>>
    <associate|equation:generic density|<tuple|5|3>>
    <associate|equation:generic iterative equation|<tuple|8|6>>
    <associate|equation:harmonic oscillator action|<tuple|1|1>>
    <associate|equation:lagrangian of iterative equation|<tuple|12|8>>
    <associate|equation:least-action principle v0|<tuple|2|1>>
    <associate|equation:least-action principle v1|<tuple|3|2>>
    <associate|equation:rg action|<tuple|13|8>>
    <associate|equation:rg integral|<tuple|14|8>>
    <associate|figure: Least-Action|<tuple|1|4>>
    <associate|footnote-1|<tuple|1|2>>
    <associate|footnote-2|<tuple|2|6>>
    <associate|footnote-3|<tuple|3|9>>
    <associate|footnote-4|<tuple|4|10>>
    <associate|footnote-5|<tuple|5|11>>
    <associate|footnr-1|<tuple|1|2>>
    <associate|footnr-2|<tuple|2|6>>
    <associate|footnr-3|<tuple|3|9>>
    <associate|footnr-4|<tuple|4|10>>
    <associate|footnr-5|<tuple|5|11>>
    <associate|section: * Wiener Process Is Almost Everywhere in
    Nature|<tuple|1.5|4>>
    <associate|section: A Brief Review of Least-Action Principle in Classical
    Mechanics|<tuple|1.2|1>>
    <associate|section: Action of Iterative Equation Has
    Friction|<tuple|1.6|7>>
    <associate|section: Data Fitting Is Equivalent to Least-Action Principle
    of Distribution|<tuple|1.4|3>>
    <associate|section: How Far Will Information Propagate in Stochastic
    Iterative Equation?|<tuple|1.7|8>>
    <associate|section: Iterative Equation With Normal Distribution Gives an
    Action|<tuple|1.5|6>>
    <associate|section: Least-Action Principle of Distribution Has No
    Redundancy|<tuple|1.3|2>>
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
      optimized to be the dashed green curve.>|<pageref|auto-6>>
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

      <with|par-left|<quote|1tab>|1.4<space|2spc>Data Fitting Is Equivalent
      to Least-Action Principle of Distribution
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Wiener Process Is Almost
      Everywhere in Nature (Drafts) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|1.5.1<space|2spc>Random Walk
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|2tab>|1.5.2<space|2spc>Drafts
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Difference Equation With
      Wiener Process Gives an Action <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Iterative Equation With
      Normal Distribution Gives an Action
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Action of Iterative Equation
      Has Friction <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|1.9<space|2spc>How Far Will Information
      Propagate in Stochastic Iterative Equation?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|1.10<space|2spc>Example: Action in Deep
      Learning <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|1.11<space|2spc>* History: Structures in
      Nature Arise from Least-Action Principle
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|2tab>|1.11.1<space|2spc>WBE Theory and
      Universality <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|2tab>|1.11.2<space|2spc>Renormalization Group and
      Criticality <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>
    </associate>
  </collection>
</auxiliary>