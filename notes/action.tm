<TeXmacs|2.1>

<style|book>

<\body>
  <section|Least-Action Principle>

  In this section, we are to find a way of extracting dynamics (action or
  Lagrangian) from any raw data of any entity.

  <subsection|Conventions in This Section>

  Follow the conventions in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>. In addition, we use
  <math|P<around*|(|\<theta\>|)>> for a parameterized distribution, where
  <math|\<theta\>> is the collection of parameters. Its density function is
  <math|p<around*|(|x,\<theta\>|)>>, where random variable <math|X> takes the
  value <math|x>.

  <subsection|Data Fitting Is Equivalent to Least-Action
  Principle><label|section: Data Fitting Is Equivalent to Least-Action
  Principle>

  Let <math|P<around*|(|\<theta\>|)>> represent a parametrized distribution
  of <math|X>, and <math|<wide|P|^>> a distribution of <math|X> that
  represents prior knowledge as in the case of maximum-entropy principle. Let
  <math|S<around*|(|x,\<theta\>|)>\<assign\>-ln
  <around*|(|p<around*|(|x,\<theta\>|)>/<wide|p|^><around*|(|x|)>|)>-ln
  Z<around*|(|\<theta\>|)>> with <math|Z<around*|(|\<theta\>|)>> to be
  determined. Density <math|<wide|p|^>> is essential for defining <math|S>,
  since <math|ln p<around*|(|x,\<theta\>|)>> is not well-defined (section
  <reference|section: Shannon Entropy Fails for Continuous Random Variable>).
  Then, we can re-formulate <math|p<around*|(|x,\<theta\>|)>> as

  <\equation>
    p<around*|(|x,\<theta\>|)>=<wide|p|^><around*|(|x|)>
    exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>/Z<around*|(|\<theta\>|)>,<label|equation:Generic
    Density>
  </equation>

  and since <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,\<theta\>|)>=1>,

  <\equation>
    Z<around*|(|\<theta\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    <wide|p|^><around*|(|x|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>.<label|equation:Partition
    Function>
  </equation>

  \;

  As a generic form of a parameterized distribution, it can be used to fit
  raw data that obeys an empirical distribution <math|Q>, by adjusting
  parameter <math|\<theta\>>. To do so, we minimize the relative entropy
  between <math|Q> and <math|P<around*|(|\<theta\>|)>>, which is defined as
  <math|H<around*|(|Q,P<around*|(|\<theta\>|)>|)>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  q<around*|(|x|)> ln <around*|(|q<around*|(|x|)>/p<around*|(|x,\<theta\>|)>|)>>.
  Plugging equation (<reference|equation:Generic Density>) into
  <math|H<around*|(|Q,P<around*|(|\<theta\>|)>|)>>, we have

  <\equation*>
    H<around*|(|Q,P<around*|(|\<theta\>|)>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> ln q<around*|(|x|)>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> <wide|p|^><around*|(|x|)>+<big|int><rsub|\<cal-X\>>\<mathd\>x
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
    <wide|p|^><around*|(|x|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>,
    we find

    <\equation*>
      <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=-<big|int>\<mathd\>x
      <wide|p|^><around*|(|x|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>
      <frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>,
    </equation*>

    thus

    <\equation*>
      Z<rsup|-1><around*|(|\<theta\>|)> <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=-<big|int>\<mathd\>x
      <with|color|blue|<wide|p|^><around*|(|x|)>
      exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>
      Z<rsup|-1><around*|(|\<theta\>|)>> <frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>=-<big|int>\<mathd\>x
      p<around*|(|x,\<theta\>|)> \ <frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>,
    </equation*>

    where in the last equality, we used the definition of
    <math|p<around*|(|x,\<theta\>|)>> (the blue parts). This final expression
    is just the <math|-\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|<around*|(|\<partial\>S/\<partial\>\<theta\><rsup|\<alpha\>>|)><around*|(|\<cdummy\>,\<theta\>|)>|]>>.
  </footnote> we find

  <\equation>
    <frac|\<partial\>L|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=\<bbb-E\><rsub|Q><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>.<label|equation:Iteration>
  </equation>

  At the minimum, we shall have <math|\<partial\>L/\<partial\>\<theta\>=0>.
  Then, we find that <math|\<theta\><rsub|\<star\>>> obeys

  <\equation>
    \<bbb-E\><rsub|P<around*|(|\<theta\><rsub|\<star\>>|)>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]>=\<bbb-E\><rsub|Q><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]>.<label|equation:Restriction>
  </equation>

  Notice that <math|L> is equivalent to another loss <math|L<rsub|LA>> where

  <\equation>
    L<rsub|LA><around*|(|\<theta\>|)>\<assign\>\<bbb-E\><rsub|Q><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>.<label|equation:Equivalent
    Loss>
  </equation>

  The expectation <math|\<bbb-E\><rsub|P<around*|(|\<theta\>|)>>> is computed
  by Monte-Carlo method. We sample data points from
  <math|P<around*|(|\<theta\>|)>> with fixed <math|\<theta\>>, and compute
  the mean value of <math|S<around*|(|\<cdummy\>,\<theta\>|)>> on these data
  points. <with|font-shape|italic|The derivative of <math|\<theta\>> on this
  expectation is taken on the <math|S<around*|(|\<cdummy\>,\<theta\>|)>>
  instead of on the data points.> In this way, <math|L<rsub|LA>> is
  equivalent to <math|L>.

  It can be read from this equation that minimizing <math|L<rsub|LA>> is to
  decrease the <math|S<around*|(|\<cdummy\>,\<theta\>|)>> at data points (the
  first term) while increase it at the points away from data (the second
  term). As figure <reference|figure: Least-Action> illustrates, this way of
  optimization will site a real world datum onto a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>, in statistical sense. In this
  way, the <math|S<around*|(|\<cdummy\>,\<theta\>|)>> is recognized as a
  parameterized action. It thus describes the dynamics of an entity. This
  entity may be of physics, like particles. But it can also be words, genes,
  flock of birds, and so on. For example, we can find out how words
  \Pinteract\Q with each other.

  <big-figure|<with|gr-mode|<tuple|edit|spline>|gr-frame|<tuple|scale|1.00001cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|10|10|center>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-line-width|0.5ln|gr-dash-style|11100|gr-color|blue|<graphics||<with|arrow-end|\|\<gtr\>|<line|<point|-6|-3>|<point|-6.0|3.0>>>|<with|arrow-end|\|\<gtr\>|<line|<point|-6|-3>|<point|6.0|-3.0>>>|<math-at|S<around*|(|x,\<theta\>|)>|<point|-6.40049278190267|3.30061515056306>>|<math-at|x|<point|6.20000992178327|-3.1>>|<with|line-width|5ln|arrow-end|\<gtr\>|opacity|50%|color|red|<line|<point|-1.3|3.2>|<point|-1.3|1.7>>>|<with|line-width|5ln|color|blue|opacity|50%|arrow-begin|\<less\>|<line|<point|0.8|-0.83096059724234>|<point|0.8|-2.33096059724234>>>|<with|dash-style|11100|line-width|0.5ln|color|red|<line|<point|-1.3|1.4>|<point|-1.3|-3.0>>>|<with|color|red|<point|-1.3|1.41877>>|<with|color|red|<math-at|x<rsub|1>|<point|-1.4|-3.3>>>|<with|color|blue|<math-at|x<rsub|2>|<point|0.7|-3.3>>>|<with|dash-style|11100|line-width|0.5ln|color|blue|<line|<point|0.8|0.5>|<point|0.8|-3.0>>>|<with|color|blue|<point|0.8|-0.6>>|<with|color|dark
  cyan|dash-style|11100|<spline|<point|-5|1>|<point|-2.3|-0.7>|<point|0.8|0.5>|<point|3.04196914325401|2.48975575876838>|<point|4.2|2.2>>>|<with|color|dark
  cyan|<spline|<point|-5.04362277379988|-0.0748763911166967>|<point|-2.85798620872125|2.07284242554528>|<point|0.666826517619433|-0.580225885932565>|<point|3.38308005225473|1.9970400013229>|<point|4.21690671870091|2.62872686984274>>>>>|<label|figure:
  Least-Action> This figure illustrate how
  <math|min<rsub|\<theta\>>L<rsub|LA><around*|(|\<theta\>|)>> will site a
  real world datum onto a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>. The green curve represents the
  current not-yet-optimized <math|S<around*|(|\<cdummy\>,\<theta\>|)>>. The
  <math|x<rsub|1>> (red point) is a real world datum while <math|x<rsub|2>>
  (blue point), which is currently a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>, is not. Minimizing
  <math|L<rsub|LA>> by tuning <math|\<theta\>> pushes the
  <math|\<bbb-E\><rsub|Q><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
  down to lower value, corresponding to the red downward double-arrow on
  <math|x<rsub|1>>. Also, since <math|x<rsub|2>> is a local minimum, the data
  points sampled from <math|p<around*|(|x,\<theta\>|)>\<propto\>exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>
  will accumulate around <math|x<rsub|2>>. So, minimizing <math|L<rsub|LA>>
  also pulls the <math|\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
  up to greater value, corresponding to the blue upward double-arrow on
  <math|x<rsub|2>>. Altogether, it makes <math|x<rsub|1>> a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>> and
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>> is optimized to be the dashed
  green curve.>

  <subsection|Example: Extract Dynamics from Raw Data>

  We are to apply the previous discussion to extract dynamics from the raw
  data of a physical system. To describe the system, we need a configuration
  like <math|x<around*|(|t|)>>. So, the raw data is a set
  <math|<around*|{|<around*|(|x<rsub|k><around*|(|1|)>,\<ldots\>,x<rsub|k><around*|(|T|)>|)>\|k=1,\<ldots\>,D|}>>
  where time is discretized as <math|<around*|(|1,\<ldots\>,T|)>> and the
  data size is <math|D>. Thus, each datum is a movie of the physical system,
  frame by frame. These raw data are obtained by experiments and measurements
  (with measurement errors).

  As a physical system, the <math|<wide|p|^>> that represents free theory
  shall be Gaussian. It may be

  <\equation*>
    <wide|p|^><around*|(|x|)>\<propto\>exp<around*|{|-<frac|1|2><big|sum><rsub|t=1><rsup|T-1>
    <around*|[|x<around*|(|t+1|)>-x<around*|(|t|)>|]><rsup|2>|}>,
  </equation*>

  indicating a kinetic term.

  The action <math|S<around*|(|x,\<theta\>|)>> is given by some ansatz.
  First, we may suppose that the action is local. That is, there is a
  Lagrangian <math|L<around*|(|x,t,\<theta\>|)>> such that
  <math|S<around*|(|x,\<theta\>|)>=<big|sum><rsub|t=1><rsup|T>L<around*|(|x<around*|(|t|)>,t,\<theta\>|)>>.
  Next, we may suppose that there exist some symmetries about the physical
  system, such as autonomous and parity symmetry, which means
  <math|L<around*|(|x,t,\<theta\>|)>=<big|sum><rsub|n=1><rsup|+\<infty\>>\<theta\><rsub|n>
  x<rsup|2n>> when <math|x> is <math|1>-dimensional. These symmetries will
  further restrict the possible form of the action. Finally, we can write
  down a most generic form of action that satisfies all the ansatz. Neural
  network and symbolic regression may help you write down this most generic
  form. Then, we find the best fit <math|\<theta\><rsub|\<star\>>> by
  equation <reference|equation:Iteration>. The action
  <math|S<around*|(|x,\<theta\><rsub|\<star\>>|)>> describes the dynamics
  extracted from the raw data.<\footnote>
    An experiment on general oscillators can be found in the
    <samp|oscillators/Oscillator.ipynb>.
  </footnote>

  <subsection|Is There an Action for a Dynamical System?>

  The local minima of <math|L<rsub|LA>> (the loss function used for finding
  action) can be realized as the patterns in the dataset. So,
  <with|font-shape|italic|we can find an action for a physical system if and
  only if there are a finite number of patterns in the system> (that is, in
  the raw data). When a physical system is chaotic, there will be an infinite
  number of patterns in it. In fact, a chaotic system can be seen as an
  advanced generator of pseudo-random numbers, being avoid of any pattern.
  TODO

  Consider the one-dimensional hamonic oscillator

  <\equation*>
    <frac|\<mathd\><rsup|2>x|\<mathd\>t<rsup|2>><around*|(|t|)>+\<omega\><rsup|2>
    x<around*|(|t|)>=0.
  </equation*>

  The <math|L<around*|(|x,t|)>=<around*|(|1/2|)> \<omega\><rsup|2>
  x<rsup|2>>. The general solution is a linear combination of two bases
  <math|sin<around*|(|\<omega\> t|)>> and <math|cos<around*|(|\<omega\>
  t|)>>, thus

  <\equation*>
    x<around*|(|t|)>=A sin<around*|(|w t|)>+B cos<around*|(|\<omega\> t|)>.
  </equation*>

  For simplicity, let us first consider <math|x<around*|(|t|)>=A
  sin<around*|(|\<omega\> t|)>>, thus <math|x<around*|(|0|)>=0> and
  <math|<wide|x|\<dot\>><around*|(|0|)>=A \<omega\>> It has one pattern which
  is <math|sin<around*|(|\<omega\> t|)>> but gauged by <math|A>. It gives

  <\equation*>
    S<around*|(|x|)>=<frac|\<omega\><rsup|2> A<rsup|2>|2>
    cos<rsup|2><around*|(|\<omega\> t|)>-<frac|\<omega\><rsup|2>
    A<rsup|2>|2>sin<rsup|2><around*|(|\<omega\>
    t|)>=<frac|<wide|x|\<dot\>><rsup|2><around*|(|0|)>|2> cos<around*|(|2
    \<omega\> t|)>.
  </equation*>

  <subsection|Example: Actions in Machine Learning (TODO)>

  In section <reference|section: Data Fitting Is Equivalent to Least-Action
  Principle>, we have shown that any density function can be re-formulated by
  action. Usually, the goal of a supervised machine learning task is to fit a
  density function that predicts the target. For example, given an image, we
  are to compute the conditional density function for the class of the image
  such as being a cat or a dog. Let <math|x> denote the input (like images)
  and <math|y> the target, which can be discrete (like classes) or continuous
  (like person's height), then the conditional density function is usually
  given by a model <math|f<around*|(|x,\<theta\>|)>> parameterized by
  <math|\<theta\>>, as

  <\equation*>
    p<around*|(|y\|x,\<theta\>|)>=\<cal-P\><around*|(|y,f<around*|(|x,\<theta\>|)>|)>.
  </equation*>

  For a categorical classification task, <math|y\<in\><around*|{|1,\<ldots\>,M|}>>
  and <math|z\<in\>\<bbb-R\><rsup|M>> for some <math|M>, and <math|\<cal-P\>>
  is defined by

  <\equation*>
    \<cal-P\><rsub|clf><around*|(|y,z|)>\<assign\><frac|exp<around*|(|z<rsup|y>|)>|<big|sum><rsub|\<alpha\>=1><rsup|M>exp<around*|(|z<rsup|\<alpha\>>|)>>.
  </equation*>

  And for regression task, <math|y,z\<in\>\<bbb-R\><rsup|M>> for some
  <math|M>, and <math|\<cal-P\>> is defined by

  <\equation*>
    \<cal-P\><rsub|rg><around*|(|y,z|)>\<assign\>exp<around*|(|-<big|sum><rsub|\<alpha\>=1><rsup|M><frac|<around*|(|y<rsup|\<alpha\>>-z<rsup|\<alpha\>>|)><rsup|2>|2>|)>.
  </equation*>

  Thus, we have an action

  <\equation*>
    S<around*|(|y<with|color|red|;>x,\<theta\>|)>\<assign\>-ln
    p<around*|(|y\|x,\<theta\>|)>=-ln \<cal-P\><around*|(|y,f<around*|(|x,\<theta\>|)>|)>,
  </equation*>

  which is the loss per sample in machine learning.<\footnote>
    So, machine learning models can be seen as a complicated version of Ising
    model, where the <math|y> in machine learning corresponding to the spins
    in Ising model and <math|\<theta\>> to the temperature.
  </footnote> Remark that input <math|x> serves as a parameter of action
  <math|S>, and <math|y> is unique the argument of action (so we use
  semicolon instead of comma).

  Assume that datum <math|<around*|(|x,y|)>> is sampled from a dataset
  described by distribution <math|Q>, thus the total loss of least-action
  becomes (<math|Q<rsub|X>> for the marginal distribution of <math|X>, and
  <math|P<around*|(|x,\<theta\>|)>> for the conditional distribution of
  <math|p<around*|(|y\|x,\<theta\>|)>>, thus we can sample from it)

  <\equation*>
    L<rsub|LA><around*|(|\<theta\>|)>=\<bbb-E\><rsub|x\<sim\>Q<rsub|X>,y\<sim\>P<around*|(|x,\<theta\>|)>><around*|[|ln
    \<cal-P\><around*|(|y,f<around*|(|x,\<theta\>|)>|)>|]>-\<bbb-E\><rsub|<around*|(|x,y|)>\<sim\>Q><around*|[|ln
    \<cal-P\><around*|(|y,f<around*|(|x,\<theta\>|)>|)>|]>.
  </equation*>

  The last term is the usual loss function in machine learning. For example,
  in the classification task, it is cross-entropy, and in regression task, it
  is usually the mean squared error.

  The first term is new for machine learning. To compute it, we first sample
  a datum <math|<around*|(|x,y<rsub|0>|)>> from <math|Q> and only keep the
  <math|x>, which indicates the <math|x\<sim\>Q<rsub|X>>. Then, compute
  <math|f<around*|(|x,\<theta\>|)>> and sample a new <math|y> from
  <math|P<around*|(|x,\<theta\>|)>>. For classification task, <math|y> is
  sampled from the categorical distribution with probability
  <math|exp<around*|(|f<rsup|y><around*|(|x;\<theta\>|)>|)>/<big|sum><rsub|\<alpha\>=1><rsup|M>exp<around*|(|f<rsup|\<alpha\>><around*|(|x,\<theta\>|)>|)>>,
  and for regression task, from a normal distribution with mean
  <math|f<around*|(|x,\<theta\>|)>> and unit variance. Using this <math|y>,
  together with the <math|x>, <math|ln \<cal-P\><around*|(|y,f<around*|(|x,\<theta\>|)>|)>>
  is calculated. For classification task, it is
  <math|f<rsup|y><around*|(|x,\<theta\>|)>-lnSumExp<around*|(|f<around*|(|x,\<theta\>|)>|)>>,
  where <math|lnSumExp<around*|(|x|)>\<assign\>ln<around*|(|<big|sum><rsub|\<alpha\>>exp<around*|(|x<rsup|\<alpha\>>|)>|)>>;
  and for regression task, it is <math|-<big|sum><rsub|\<alpha\>=1><rsup|M><around*|(|y<rsup|\<alpha\>>-f<rsup|\<alpha\>><around*|(|x,\<theta\>|)>|)><rsup|2>/2>.

  When we use deep neural network to express the model
  <math|f<around*|(|x,\<theta\>|)>>, TODO

  There is also unsupervised learning tasks. For example, mask some part of
  the input image and predict what has been masked, or embedding the input
  image into a latent space. TODO

  <subsection|Maximum-Entropy and Least-Action Are Saddle Point of a
  Functional>

  In fact, equations (<reference|equation:Generic Density>),
  (<reference|equation:Partition Function>), and
  (<reference|equation:Restriction>) can be regarded as an extremum of the
  functional (recall that <math|<wide|P|^>> is the distribution of prior
  knowledge and <math|Q> of dataset)

  <\equation*>
    V<around*|(|p,\<theta\>,\<mu\>|)>\<assign\>H<around*|[|P,<wide|P|^>|]>+<around*|(|\<bbb-E\><rsub|P><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|Q><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>|)>+\<mu\><around*|(|\<bbb-E\><rsub|P><around*|[|1|]>-1|)>,
  </equation*>

  or explicitly

  <\equation>
    V<around*|(|p,\<theta\>,\<mu\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>ln<frac|p<around*|(|x|)>|<wide|p|^><around*|(|x|)>>+<around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>S<around*|(|x,\<theta\>|)>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)>S<around*|(|x,\<theta\>|)>|)>+\<mu\><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>-1|)>.<label|equation:functional V>
  </equation>

  Indeed, variance on <math|p> gives equation (<reference|equation:Generic
  Density>).<\footnote>
    Explicitly, we have

    <\equation*>
      <frac|\<delta\>V|\<delta\>p<around*|(|x|)>><around*|(|p,\<theta\>,\<mu\>|)>=ln
      p<around*|(|x|)>+1-ln <wide|p|^><around*|(|x|)>+S<around*|(|x,\<theta\>|)>+\<mu\>=0,
    </equation*>

    which has solution

    <\equation*>
      p<around*|(|x|)>\<propto\><wide|p|^><around*|(|x|)>
      exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>.
    </equation*>
  </footnote> Together with the partial derivative on <math|\<mu\>>, we get
  equation (<reference|equation:Partition Function>). Finally, partial
  derivative on <math|\<theta\>> directly gives equation
  (<reference|equation:Restriction>). Interestingly, the second term is just
  the <math|-L<rsub|LA><around*|(|\<theta\>|)>> in equation
  (<reference|equation:Equivalent Loss>). So, the extremum is in fact a
  saddle point, as

  <\equation>
    <around*|(|p<rsub|\<star\>>,\<theta\><rsub|\<star\>>,\<mu\><rsub|\<star\>>|)>=min<rsub|p,\<mu\>>
    max<rsub|\<theta\>>V<around*|(|p,\<theta\>,\<mu\>|)>.<label|equation:V
    extremum>
  </equation>

  \;

  By tuning <math|p>, the <math|min<rsub|p,\<mu\>>> minimizes the relative
  entropy between <math|P> and <math|Q> and the expectation of action
  <math|\<bbb-E\><rsub|P><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>,
  which in turn relates the density function <math|p> with the action
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>. And by tuning <math|\<theta\>>,
  the <math|max<rsub|\<theta\>>> sites real data onto the action's local
  minima. So, we find that maximum-entropy principle and least-action
  principle are saddle point of a functional <math|V>.

  <subsection|Structures in Nature Arise from Maximum-Entropy (TODO)>

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
  condition. This transition rate minics the evolution. <with|color|red|The
  disconnectivity of transition rate may reflect gene isolation.>
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
    <associate|auto-4|<tuple|1|2>>
    <associate|auto-5|<tuple|1.3|2>>
    <associate|auto-6|<tuple|1.4|3>>
    <associate|auto-7|<tuple|1.5|3>>
    <associate|auto-8|<tuple|1.6|4>>
    <associate|auto-9|<tuple|1.7|?>>
    <associate|equation:Equivalent Loss|<tuple|5|2>>
    <associate|equation:Generic Density|<tuple|1|1>>
    <associate|equation:Iteration|<tuple|3|1>>
    <associate|equation:Partition Function|<tuple|2|1>>
    <associate|equation:Restriction|<tuple|4|1>>
    <associate|equation:V extremum|<tuple|7|?>>
    <associate|equation:full functional|<tuple|6|?>>
    <associate|equation:functional V|<tuple|6|?>>
    <associate|figure: Least-Action|<tuple|1|2>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|3>>
    <associate|footnote-3|<tuple|3|3>>
    <associate|footnote-4|<tuple|4|4>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|3>>
    <associate|footnr-3|<tuple|3|3>>
    <associate|footnr-4|<tuple|4|4>>
    <associate|section: Data Fitting Is Equivalent to Least-Action
    Principle|<tuple|1.2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>|| This figure
      illustrate how <with|mode|<quote|math>|min<rsub|\<theta\>>L<rsub|LA><around*|(|\<theta\>|)>>
      will site a real world datum onto a local minimum of
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>. The green
      curve represents the current not-yet-optimized
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>. The
      <with|mode|<quote|math>|x<rsub|1>> (red point) is a real world datum
      while <with|mode|<quote|math>|x<rsub|2>> (blue point), which is
      currently a local minimum of <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>,
      is not. Minimizing <with|mode|<quote|math>|L<rsub|LA>> by tuning
      <with|mode|<quote|math>|\<theta\>> pushes the
      <with|mode|<quote|math>|\<bbb-E\><rsub|Q><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
      down to lower value, corresponding to the red downward double-arrow on
      <with|mode|<quote|math>|x<rsub|1>>. Also, since
      <with|mode|<quote|math>|x<rsub|2>> is a local minimum, the data points
      sampled from <with|mode|<quote|math>|p<around*|(|x,\<theta\>|)>\<propto\>exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>
      will accumulate around <with|mode|<quote|math>|x<rsub|2>>. So,
      minimizing <with|mode|<quote|math>|L<rsub|LA>> also pulls the
      <with|mode|<quote|math>|\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
      up to greater value, corresponding to the blue upward double-arrow on
      <with|mode|<quote|math>|x<rsub|2>>. Altogether, it makes
      <with|mode|<quote|math>|x<rsub|1>> a local minimum of
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>> and
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>> is
      optimized to be the dashed green curve.>|<pageref|auto-4>>
    </associate>
    <\associate|toc>
      1<space|2spc>Least-Action Principle
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Data Fitting Is Equivalent
      to Least-Action Principle <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Example: Extract Dynamics
      from Raw Data <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Is There an Action for a
      Dynamical System? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Example: Actions in Machine
      Learning (TODO) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Maximum-Entropy and
      Least-Action Are Saddle Point of a Functional
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>
    </associate>
  </collection>
</auxiliary>