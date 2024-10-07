<TeXmacs|2.1>

<style|book>

<\body>
  <section|Gibbs Sampling and Neuron Network>

  In this section, we apply the discussions of section <reference|section:
  Master Equation, Detailed Balance, and Relative Entropy> to discrete random
  variables. We start at Gibbs sampling which gives a Markov chain of
  discrete random variables. We are to show that the transition probability
  of Gibbs sampling satisfies detailed balance. Then, inspired by spiking
  neuron network, we furnish a way of constructing continuous-time stochastic
  dynamics for discrete random variables.

  <subsection|Conventions in This Section>

  Let <math|X> be an <math|n>-dimensional discrete random variable, with
  alphabet <math|\<cal-X\>> and probability <math|P>. Principally, any
  discrete value can be encoded by binaries. So, we can simply suppose that
  <math|\<cal-X\>=<around*|{|0,1|}><rsup|n>>.

  <subsection|Gibbs Sampling Satisfies Detailed Balance>

  Given an arbitrary time interval <math|\<Delta\>t>, Gibbs sampling is a
  Markov chain with transition probability

  <\equation*>
    q<rsub|\<Delta\>t><rsup|\<alpha\>><around*|(|x<rprime|'>\|x|)>=p<around*|(|x<rprime|'><rsup|\<alpha\>>\|x<rsup|\\\<alpha\>>|)>
    \<delta\><around*|(|x<rprime|'><rsup|\\\<alpha\>>-x<rsup|\\\<alpha\>>|)>
  </equation*>

  for each <math|\<alpha\>=1,\<ldots\>,n>, where
  <math|x<rsup|\\\<alpha\>>\<assign\><around*|(|x<rsup|1>,\<ldots\>,x<rsup|\<alpha\>-1>,x<rsup|\<alpha\>+1>,\<ldots\>,x<rsup|n>|)>\<in\><around*|{|0,1|}><rsup|n-1>>.
  It updates the <math|\<alpha\>>-component stochastically while leaving
  other components invariant.

  It satisfies detailed balance with <math|p<around*|(|x|)>> as the
  stationary distribution. Indeed, we have

  <\align>
    <tformat|<table|<row|<cell|>|<cell|q<rsub|\<Delta\>t><rsup|\<alpha\>><around*|(|x<rprime|'>\|x|)>
    p<around*|(|x|)>>>|<row|<cell|<around*|{|definition|}>=>|<cell|p<around*|(|x<rprime|'><rsup|\<alpha\>>\|x<rsup|\\\<alpha\>>|)>
    \<delta\><around*|(|x<rprime|'><rsup|\\\<alpha\>>-x<rsup|\\\<alpha\>>|)>
    p<around*|(|x|)>>>|<row|<cell|<around*|{|conditional
    probability|}>=>|<cell|<frac|p<around*|(|x<rprime|'><rsup|\<alpha\>>,x<rsup|\\\<alpha\>>|)>|p<around*|(|x<rsup|\\\<alpha\>>|)>>
    \<delta\><around*|(|x<rprime|'><rsup|\\\<alpha\>>-x<rsup|\\\<alpha\>>|)>
    p<around*|(|x|)>>>|<row|<cell|=>|<cell|<around*|[|<frac|p<around*|(|x|)>|p<around*|(|x<rsup|\\\<alpha\>>|)>>\<delta\><around*|(|x<rprime|'><rsup|\\\<alpha\>>-x<rsup|\\\<alpha\>>|)>|]>
    p<around*|(|x<rprime|'><rsup|\<alpha\>>,x<rsup|\\\<alpha\>>|)>>>|<row|<cell|<around*|{|property
    of \<delta\>|}>=>|<cell|<around*|[|p<around*|(|x<rsup|\<alpha\>>\|x<rprime|'><rsup|\\\<alpha\>>|)>\<delta\><around*|(|x<rprime|'><rsup|\\\<alpha\>>-x<rsup|\\\<alpha\>>|)>|]>
    p<around*|(|x<rprime|'><rsup|\<alpha\>>,x<rprime|'><rsup|\\\<alpha\>>|)>>>|<row|<cell|<around*|{|definition|}>=>|<cell|q<rsup|\<alpha\>><rsub|\<Delta\>t><around*|(|x\|x<rprime|'>|)>
    p<around*|(|x<rprime|'>|)>.>>>>
  </align>

  \;

  We can then apply <math|q<rsup|\<alpha\>><rsub|\<Delta\>t><around*|(|x<rprime|'>\|x|)>>
  for each <math|\<alpha\>=1,\<ldots\>,n> iteratively, which gives a complete
  update. This complete update, however, does not satisfy detailed
  balance.<\footnote>
    Details are left to readers.
  </footnote>

  <subsection|Spiking Neuron Network Is a Stochastic Model of Brain>

  Brain is complicated, even thought it is not human's. But, we can deal with
  a simplified mathematical model of brain. It is modeled by a network of
  neurons, with each neuron characterized by two components: membrane
  potential and spiking.

  Let <math|u<around*|(|t|)>:\<bbb-R\>\<rightarrow\>\<bbb-R\><rsup|n>>
  denotes the time-dependent membrane potentials of <math|n> neurons, and
  <math|x<around*|(|t|)>:\<bbb-R\>\<rightarrow\><around*|{|0,1|}><rsup|n>>
  their spikes. The membrane potentials <math|U> of a spiking neuron network
  evolve, for <math|\<alpha\>> neuron, as <\footnote>
    See <hlink|section 17.3|https://neuronaldynamics.epfl.ch/online/Ch17.S3.html>
    of <with|font-shape|italic|Neuronal Dynamics> and the section II.A in
    <hlink|this paper|https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10242251>.
  </footnote>

  <\equation>
    \<tau\> <frac|\<mathd\>u<rsub|\<alpha\>>|\<mathd\>t><around*|(|t|)>=-u<rsub|\<alpha\>><around*|(|t|)>+<big|sum><rsub|\<beta\>=1><rsup|n>W<rsub|\<alpha\>\<beta\>>
    x<rsup|\<beta\>><around*|(|t|)>-\<theta\><rsub|\<alpha\>>
    x<rsup|\<alpha\>><around*|(|t|)><label|equation:Spiking Neuron Network
    1>,
  </equation>

  where the matrix <math|W> vanishes on diagonal. On the right hand side, the
  first term corresponds to the decay of <math|x>; the second term
  corresponds to the collection of spikes from other connected neurons,
  weighted by <math|W>; and the third term is for reset, where
  <math|\<theta\>> represents the threshold. The relation between membrane
  potentials <math|u> and spikes <math|x>, or <math|X> which denotes the
  random spikes <\footnote>
    As usual, we use capital character for random variable, and its lowercase
    for its concrete value.
  </footnote>, is given by a stochastic equation

  <\equation>
    X<rsup|\<alpha\>>\<sim\>Bernoulli<around*|(|\<sigma\><around*|(|u<rsub|\<alpha\>>|)>|)><label|equation:Spiking
    Neuron Network 2>.
  </equation>

  \;

  Given a time-difference <math|\<Delta\>t>, equation
  <reference|equation:Spiking Neuron Network 1> comes to be

  <\equation*>
    u<rsub|\<alpha\>><around*|(|t+\<Delta\>t|)>=<around*|(|1-<frac|\<Delta\>t|\<tau\>>|)>u<rsub|\<alpha\>><around*|(|t|)>+<frac|\<Delta\>t|\<tau\>><around*|(|
    <big|sum><rsub|\<beta\>=1><rsup|n>W<rsub|\<alpha\>\<beta\>>
    x<rsup|\<beta\>><around*|(|t|)>-\<theta\><rsub|\<alpha\>>
    x<rsup|\<alpha\>><around*|(|t|)>|)>.
  </equation*>

  Replacing <math|1-\<Delta\>t/\<tau\>> by
  <math|\<beta\><rsub|\<Delta\>t>\<assign\>exp<around*|(|-\<Delta\>t/\<tau\>|)>>,
  the <with|font-series|bold|decay factor>, we have

  <\equation>
    u<rsub|\<alpha\>><around*|(|t+\<Delta\>t|)>=\<beta\><rsub|\<Delta\>t>
    \ u<rsub|\<alpha\>><around*|(|t|)>+<around*|(|1-\<beta\><rsub|\<Delta\>t>|)>
    <around*|(| <big|sum><rsub|\<beta\>=1><rsup|n>W<rsub|\<alpha\>\<beta\>>
    x<rsup|\<beta\>><around*|(|t|)>-\<theta\><rsub|\<alpha\>>
    x<rsup|\<alpha\>><around*|(|t|)>|)><label|equation:Difference Spiking
    Neuron Network>.
  </equation>

  This is the difference version of equation <reference|equation:Spiking
  Neuron Network 1>.

  <subsection|Continuous-Time Dynamics for Discrete Random Variables>

  Inspired by spiking neuron network, we can assign a continuous-time
  dynamics for discrete random variables. Given a action
  <math|S<around*|(|x|)>>, consider the auxiliary action

  <\equation*>
    S<rsub|aux><around*|(|x,u|)>\<assign\>-\<beta\>
    <big|sum><rsub|\<alpha\>=1><rsup|n>u<rsub|\<alpha\>>
    x<rsup|\<alpha\>>+<around*|(|1-\<beta\>|)> S<around*|(|x|)>,
  </equation*>

  where <math|\<beta\>> is a constant to be replaced by
  <math|exp<around*|(|-\<Delta\>t/\<tau\>|)>> later. If regard <math|x> as
  the value of a random variable, while <math|u> as a real number, we have
  the probability <math|p<around*|(|x;u|)>> which is proportional to
  <math|exp<around*|(|-S<rsub|aux><around*|(|x,u|)>|)>>. The conditional
  probability <math|p<around*|(|x<rsup|\<alpha\>>\|x<rsup|\\\<alpha\>>;u|)>>,
  where <math|x<rsup|\\\<alpha\>>> denotes the
  <math|<around*|(|n-1|)>>-dimensional vector in which
  <math|x<rsup|\<alpha\>>> is excluded, can be obtained directly, as

  <\equation*>
    <frac|p<around*|(|x<rsup|\<alpha\>>=1\|x<rsup|\\\<alpha\>>;u|)>|p<around*|(|x<rsup|\<alpha\>>=0\|x<rsup|\\\<alpha\>>;u|)>>=exp<around*|(|\<beta\>
    u<rsub|\<alpha\>>-<around*|(|1-\<beta\>|)>
    \<delta\><rsub|\<alpha\>>S<around*|(|x|)>|)>,
  </equation*>

  where <math|\<delta\><rsub|\<alpha\>>S<around*|(|x|)>\<assign\>S<around*|(|x<rsup|\<alpha\>>=1,x<rsup|\\\<alpha\>>|)>-S<around*|(|x<rsup|\<alpha\>>=0,x<rsup|\\\<alpha\>>|)>>.
  Thus,

  <\equation*>
    p<around*|(|x<rsup|\<alpha\>>=1\|x<rsup|\\\<alpha\>>;u|)>=\<sigma\><around*|(|\<beta\>
    u<rsub|\<alpha\>>-<around*|(|1-\<beta\>|)>\<delta\><rsub|\<alpha\>>S<around*|(|x|)>|)>.
  </equation*>

  Then, by regarding Gibbs sampling as an update rule, we have, after
  updating from time <math|t> to <math|t+\<Delta\>t>,

  <\equation>
    X<rsup|\<alpha\>><around*|(|t+\<Delta\>t|)>\<sim\>Bernoulli<around*|(|\<sigma\><around*|(|u<rsub|\<alpha\>><around*|(|t+\<Delta\>t|)>|)>|)>
  </equation>

  with

  <\equation>
    u<rsub|\<alpha\>><around*|(|t+\<Delta\>t|)>\<assign\>\<beta\>
    u<rsub|\<alpha\>><around*|(|t|)>-<around*|(|1-\<beta\>|)>\<delta\><rsub|\<alpha\>>S<around*|(|x<around*|(|t|)>|)>.
  </equation>

  In fact, this is a continuous-time dynamics of discrete random variable
  <math|X>. Indeed, we can convert the difference equation to differential
  equation by letting <math|\<Delta\>t\<rightarrow\>0>. Recalling
  <math|\<beta\>=exp<around*|(|-\<Delta\>t/\<tau\>|)>>, it turns out to be

  <\equation>
    \<tau\><frac|\<mathd\>u<rsub|\<alpha\>>|\<mathd\>t><around*|(|t|)>+u<rsub|\<alpha\>><around*|(|t|)>+\<delta\><rsub|\<alpha\>>S<around*|(|x<around*|(|t|)>|)>=0.
  </equation>

  This dynamics satisfies detailed balance, since it is Gibbs sampling. Also,
  it satisfies ergodicity.<\footnote>
    Proof is left to readers.
  </footnote> <with|color|red|Altogether, this dynamics will finally relax a
  distribution to <math|p<around*|(|x;u|)>>. If <math|u> is initially zero,
  then the stationary distribution comes to be proportional to
  <math|exp<around*|(|-S<around*|(|x|)>|)>>.>

  As an example, let <math|S<around*|(|x|)>=-<around*|(|1/2|)><big|sum><rsub|\<alpha\>,\<beta\>=1><rsup|n>W<rsub|\<alpha\>\<beta\>>
  x<rsup|\<alpha\>> x<rsup|\<beta\>>-<big|sum><rsub|\<alpha\>=1><rsup|n>b<rsub|\<alpha\>>
  x<rsup|\<alpha\>>>, where <math|W> is symmetric and vanishing on diagonal.
  Directly, we have <math|\<delta\><rsub|\<alpha\>>S<around*|(|x|)>=-<big|sum><rsub|\<beta\>=1><rsup|n>W<rsub|\<alpha\>\<beta\>>
  x<rsup|\<beta\>>-b<rsub|\<alpha\>>>. Thus

  <\equation*>
    \<tau\><frac|\<mathd\>u<rsub|\<alpha\>>|\<mathd\>t><around*|(|t|)>+u<rsub|\<alpha\>><around*|(|t|)>=<big|sum><rsub|\<beta\>=1><rsup|n>W<rsub|\<alpha\>\<beta\>>
    x<rsup|\<beta\>>+b<rsub|\<alpha\>>,
  </equation*>

  which is the stochastic version of continuous-time Hopfield network.

  Comparing this equation with equation <reference|equation:Spiking Neuron
  Network 1>, we find that the stochastic version of continuous-time Hopfield
  network is almost the same as the spiking neuron network except that the
  reset term <math|-\<theta\><rsub|\<alpha\>> x<rsup|\<alpha\>>> is replaced
  by a constant bias <math|b<rsup|\<alpha\>>>. This exception is natural,
  since the transition probability of Gibbs sampling,
  <math|p<around*|(|x<rsup|\<alpha\>>=1\|x<rsup|\\\<alpha\>>;u|)>>, cannot
  depend on <math|x<rsup|\<alpha\>>> itself.
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
    <associate|auto-5|<tuple|1.4|2>>
    <associate|equation:Difference Spiking Neuron Network|<tuple|3|2>>
    <associate|equation:Spiking Neuron Network 1|<tuple|1|1>>
    <associate|equation:Spiking Neuron Network 2|<tuple|2|1>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|1>>
    <associate|footnote-3|<tuple|3|1>>
    <associate|footnote-4|<tuple|4|2>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|1>>
    <associate|footnr-3|<tuple|3|1>>
    <associate|footnr-4|<tuple|4|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Gibbs Sampling and Neuron Network
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Gibbs Sampling Satisfies
      Detailed Balance <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Spiking Neuron Network Is a
      Stochastic Model of Brain <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Continuous-Time Dynamics for
      Discrete Random Variables <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>