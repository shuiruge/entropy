<TeXmacs|2.1.4>

<style|book>

<\body>
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

  But, if consider a real Lagrangian with complex coordinates, for example,

  <\equation*>
    L<around*|(|z,<wide|z|\<bar\>>,<wide|z|\<dot\>>,<wide|<wide|z|\<bar\>>|\<dot\>>,t|)>=<frac|\<mathi\>|2><around*|(|<wide|z|\<bar\>>
    <wide|z|\<dot\>>-<wide|<wide|z|\<bar\>>|\<dot\>>
    z|)>-f<around*|(|z,<wide|z|\<bar\>>|)>,
  </equation*>

  for some <math|a\<in\>\<bbb-R\>>. Then, we have

  <\equation*>
    <frac|\<partial\>L|\<partial\><wide|z|\<dot\>>>=<frac|\<mathi\>
    <wide|z|\<bar\>>|2>
  </equation*>

  and

  <\equation*>
    <frac|\<partial\>L|\<partial\>z>=-<frac|\<mathi\>
    <wide|<wide|z|\<bar\>>|\<dot\>>|2>-\<partial\>f<around*|(|z,<wide|z|\<bar\>>|)>,
  </equation*>

  thus Euler-Lagrange equation

  <\equation*>
    <frac|\<mathd\>|\<mathd\>t><frac|\<partial\>L|\<partial\><wide|z|\<dot\>>>-<frac|\<partial\>L|\<partial\>z>=\<mathi\>
    <wide|<wide|z|\<bar\>>|\<dot\>>+\<partial\><rsub|>f<around*|(|z,<wide|z|\<bar\>>|)>.
  </equation*>

  The same for variation on <math|<wide|z|\<bar\>>>, which gives

  <\equation*>
    <frac|\<mathd\>|\<mathd\>t><frac|\<partial\>L|\<partial\><wide|<wide|z|\<bar\>>|\<dot\>>>-<frac|\<partial\>L|\<partial\><wide|z|\<bar\>>>=-\<mathi\>
    <wide|z|\<dot\>>+<wide|\<partial\>|\<bar\>>f<around*|(|z,<wide|z|\<bar\>>|)>.
  </equation*>

  Then, for making them equal, demand that
  <math|<wide|\<partial\>|\<bar\>>f<around*|(|z,<wide|z|\<bar\>>|)>> is a
  real function of <math|z>. This calls for a symmetry between <math|z> and
  <math|<wide|z|\<bar\>>> in <math|f>, such as
  <math|f<around*|(|z,<wide|z|\<bar\>>|)>=g<around*|(|z|)>
  g<around*|(|<wide|z|\<bar\>>|)>> that gives
  <math|<wide|g<rprime|'><around*|(|z|)>|\<bar\>>=g<rprime|'><around*|(|<wide|z|\<bar\>>|)>>.
  If <math|g<rprime|'>> is a real polynomial, then this relation holds. In
  this case, the two equations conjugate to each other, and we get only one
  restriction to the variables.

  Interestingly, since <math|g<rprime|'>> is a real polynomial,
  <math|\<mathi\> <wide|z|\<dot\>>=g<rprime|'><around*|(|<wide|z|\<bar\>>|)>>

  Going back to real variables, consider multiple variables, for example,

  <\equation*>
    L<around*|(|x,y,<wide|x|\<dot\>>,<wide|y|\<dot\>>,t|)>=<wide|x|\<dot\>>
    f<around*|(|y,t|)>+<wide|y|\<dot\>> g<around*|(|x,t|)>+h<around*|(|x,y,t|)>.
  </equation*>

  We have,

  <\equation*>
    <frac|\<mathd\>|\<mathd\>t><frac|\<partial\>L|\<partial\><wide|x|\<dot\>>>-<frac|\<partial\>L|\<partial\>x>=<around*|[|\<partial\><rsub|y>f<around*|(|y,t|)>-\<partial\><rsub|x>g<around*|(|x,t|)>|]>
    <wide|y|\<dot\>>+\<partial\><rsub|t>f<around*|(|y,t|)>-\<partial\><rsub|x>h<around*|(|x,y,t|)>=0
  </equation*>

  and

  <\equation*>
    <frac|\<mathd\>|\<mathd\>t><frac|\<partial\>L|\<partial\><wide|y|\<dot\>>>-<frac|\<partial\>L|\<partial\>y>=<around*|[|\<partial\><rsub|x>g<around*|(|x,t|)>-\<partial\><rsub|y>f<around*|(|y,t|)>|]>
    <wide|x|\<dot\>>+\<partial\><rsub|t>g<around*|(|x,t|)>-\<partial\><rsub|y>h<around*|(|x,y,t|)>=0.
  </equation*>

  The first order terms <math|<wide|x|\<dot\>>> and <math|<wide|y|\<dot\>>>
  survive as long as <math|\<partial\><rsub|x>g<around*|(|x,t|)>\<neq\>\<partial\><rsub|y>f<around*|(|y,t|)>>.
  The only possibility that <math|\<partial\><rsub|x>g<around*|(|x,t|)>\<equiv\>\<partial\><rsub|y>f<around*|(|y,t|)>>
  is that <math|g<around*|(|x,t|)>=a<around*|(|t|)> x+b<around*|(|t|)>> and
  <math|f<around*|(|y,t|)>=a<around*|(|t|)> x+c<around*|(|t|)>>.

  <subsection|Feed-forward Neural Network>

  The deterministic feed-forward neural network satisfies the iterative
  relation

  <\equation*>
    h<rsub|l+1>=f<around*|(|h<rsub|l>,\<theta\><rsub|l+1>|)>,
  </equation*>

  where <math|f<around*|(|\<cdummy\>,\<theta\><rsub|l>|)>:\<bbb-R\><rsup|n<rsub|l-1>>\<rightarrow\>\<bbb-R\><rsup|n<rsub|l>>>
  with <math|\<theta\><rsub|l>\<assign\><around*|(|W<rsub|l>,b<rsub|l>|)>>.
  The initial value <math|h<rsub|0>=x> is the input.

  To investigate feed-forward neural network under probabilistic perspective,
  we have to construct the distribution of random variables
  <math|<around*|(|H<rsub|0>,\<ldots\>,H<rsub|L>|)>> where <math|H<rsub|l>>
  denotes the output of <math|l>-th layer, <math|H<rsub|0>> is the input, and
  <math|H<rsub|L>> is the output. Based on the deterministic iteration, we
  can construct a probabilistic version by assuming that <math|H<rsub|l+1>>
  obeys the normal distribution with mean given by the deterministic
  iteration and a fixed variance <math|\<epsilon\>> (shared for all
  components of <math|H<rsub|l+1>>)

  <\equation*>
    H<rsub|l+1>\<sim\><with|font|cal|N><around*|(|f<around*|(|H<rsub|l>,\<theta\><rsub|l+1>|)>,\<epsilon\>|)>.
  </equation*>

  So, the conditional density function

  <\equation*>
    q<around*|(|h<rsub|l+1>\|h<rsub|l>|)>=<around*|(|<frac|1|<sqrt|<around*|(|2\<mathpi\>|)>
    \<epsilon\>><rsup|>>|)><rsup|n<rsub|l+1>>\<times\>exp<around*|(|-<frac|<around*|(|h<rsub|l+1>-f<around*|(|h<rsub|l>,\<theta\><rsub|l+1>|)>|)><rsup|2>|2
    \<epsilon\>>|)>.
  </equation*>

  To obtain the whole density function, we first notice that
  <math|q<around*|(|h<rsub|1>\|h<rsub|0>|)>
  q<around*|(|h<rsub|0>|)>=q<around*|(|h<rsub|0>,h<rsub|1>|)>>. Since
  <math|q<around*|(|h<rsub|2>\|h<rsub|1>|)>> is not explicitly dependent on
  <math|h<rsub|0>>, <math|q<around*|(|h<rsub|2>\|h<rsub|1>|)>\<equiv\>q<around*|(|h<rsub|2>\|h<rsub|0>,h<rsub|1>|)>>
  holds for any <math|h<rsub|0>>. Then,

  <\equation*>
    q<around*|(|h<rsub|2>\|h<rsub|1>|)>q<around*|(|h<rsub|1>\|h<rsub|0>|)>
    q<around*|(|h<rsub|0>|)>=q<around*|(|h<rsub|2>\|h<rsub|0>,h<rsub|1>|)>
    q<around*|(|h<rsub|0>,h<rsub|1>|)>=q<around*|(|h<rsub|0>,h<rsub|1>,h<rsub|2>|)>.
  </equation*>

  Repeating this step, we will find

  <\equation*>
    q<around*|(|h<rsub|0>,\<ldots\>,h<rsub|L>|)>=q<around*|(|h<rsub|L>\|h<rsub|L-1>|)>\<cdots\>q<around*|(|h<rsub|1>\|h<rsub|0>|)>
    q<around*|(|h<rsub|0>|)>.
  </equation*>

  Plugging in <math|q<around*|(|h<rsub|l+1>\|h<rsub|l>|)>> and add
  <math|\<theta\>> to <math|q<around*|(|h<rsub|0>,\<ldots\>,h<rsub|L>|)>>, we
  arrive at

  <\equation*>
    -ln q<around*|(|h<rsub|0>,\<ldots\>,h<rsub|L>,\<theta\>|)>=<frac|1|2
    \<epsilon\>><big|sum><rsub|l=0><rsup|L-1><around*|(|h<rsub|l+1>-f<around*|(|h<rsub|l>,\<theta\><rsub|l+1>|)>|)><rsup|2>.
  </equation*>

  If the feed-forward neural network has a residual structure defined as
  <math|h<rsub|l+1>=h<rsub|l>+\<epsilon\>
  g<around*|(|h<rsub|l>,\<theta\><rsub|l+1>|)>>, that is,
  <math|g<around*|(|x,\<theta\>|)>\<assign\><around*|(|f<around*|(|x,\<theta\>|)>-x|)>/\<epsilon\>>,
  then we have

  <\equation*>
    -ln q<around*|(|h<rsub|0>,\<ldots\>,h<rsub|L>,\<theta\>|)>=<frac|\<epsilon\>|2><big|sum><rsub|l=0><rsup|L-1><around*|(|<frac|h<rsub|l+1>-h<rsub|l>|\<epsilon\>>-g<around*|(|h<rsub|l>,\<theta\><rsub|l+1>|)>|)><rsup|2>,
  </equation*>

  where <math|<around*|(|h<rsub|l+1>-h<rsub|l>|)>/\<epsilon\>> can be
  explained as \Pvelocity\Q with <math|\<epsilon\>> a tiny time interval. The
  continuous version would be

  <\equation*>
    -ln q<around*|(|h,t|)>=<frac|1|2><big|int><rsub|0><rsup|1>\<mathd\>t
    <around*|[|<wide|h|\<dot\>><around*|(|t|)>-g<around*|(|h<around*|(|t|)>,t|)>|]><rsup|2>,
  </equation*>

  where we have absorbed <math|\<theta\><around*|(|t|)>> to <math|g> for
  making it comparable with an action in classical mechanics. Expanding the
  integrand, we find <math|-ln q<around*|(|h,t|)>=<big|int><rsub|0><rsup|1>\<mathd\>t
  L<around*|(|h<around*|(|t|)>,<wide|h|\<dot\>><around*|(|t|)>,t|)>> with

  <\equation*>
    L<around*|(|h,<wide|h|\<dot\>>,t|)>=<frac|1|2><wide|h|\<dot\>><rsup|2>-<wide|h|\<dot\>>
    g<around*|(|h,t|)>+<frac|1|2>g<rsup|2><around*|(|h,t|)>.
  </equation*>

  The Euler-Lagrange equation is

  <\equation*>
    <wide|h|\<ddot\>>=g<around*|(|h,t|)>+\<partial\><rsub|t>g<around*|(|h,t|)>.
  </equation*>

  When the feed-forward neural network shares weights crossing layers, then
  <math|g<around*|(|h,t|)>> is independent of <math|t>, resulting in

  <\equation*>
    <wide|h|\<ddot\>>=g<around*|(|h|)>.
  </equation*>

  \;
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
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|3>>
    <associate|auto-6|<tuple|1.5|3>>
    <associate|auto-7|<tuple|1.6|4>>
    <associate|auto-8|<tuple|1.7|5>>
    <associate|auto-9|<tuple|1.8|6>>
    <associate|equation:Ltot|<tuple|1|1>>
    <associate|equation:V extremum|<tuple|2|2>>
    <associate|equation:eom and action|<tuple|4|4>>
    <associate|footnote-1|<tuple|1|2>>
    <associate|footnote-2|<tuple|2|3>>
    <associate|footnote-3|<tuple|3|4>>
    <associate|footnote-4|<tuple|4|5>>
    <associate|footnr-1|<tuple|1|2>>
    <associate|footnr-2|<tuple|2|3>>
    <associate|footnr-3|<tuple|3|4>>
    <associate|footnr-4|<tuple|4|5>>
    <associate|section: Example: Extract Dynamics from Raw
    Data|<tuple|1.3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Drafts <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Stochastic Harmonic
      Oscillator <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Maximum-Entropy and
      Least-Action Are Saddle Point of a Functional (TODO)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Example: Extract Dynamics
      from Raw Data <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Example: Feed-Forward Neural
      Network <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>TODO: Structures in Nature
      Arise from Maximum-Entropy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>TODO: Is There an Action for
      a Dynamical System? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Feed-forward Neural Network
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>