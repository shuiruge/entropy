<TeXmacs|2.1>

<style|book>

<\body>
  <section|Neuron Network>

  <subsection|Spiking Neuron Network Is a Stochastic Model of Brain>

  Let <math|u<around*|(|t|)>:\<bbb-R\>\<rightarrow\>\<bbb-R\><rsup|n>>
  denotes the time-dependent membrane potentials of <math|n> neurons, and
  <math|s<around*|(|t|)>:\<bbb-R\>\<rightarrow\><around*|{|0,1|}><rsup|n>>
  their spikes. The membrane potentials <math|U> of a spiking neuron network
  evolve, for <math|\<alpha\>> neuron, as <\footnote>
    See <hlink|section 17.3|https://neuronaldynamics.epfl.ch/online/Ch17.S3.html>
    of <with|font-shape|italic|Neuronal Dynamics> and the section II.A in
    <hlink|this paper|https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10242251>.
  </footnote>

  <\equation*>
    \<tau\> <frac|\<mathd\>u<rsup|\<alpha\>>|\<mathd\>t><around*|(|t|)>=-u<rsup|\<alpha\>><around*|(|t|)>+<big|sum><rsub|\<beta\>=1><rsup|n>W<rsub|\<alpha\>\<beta\>>
    s<rsup|\<beta\>><around*|(|t|)>-\<theta\><rsub|\<alpha\>>
    s<rsup|\<alpha\>><around*|(|t|)>,
  </equation*>

  where the matrix <math|W> vanishes on diagonal. On the right hand side, the
  first term corresponds to the decay of <math|s>; the second term
  corresponds to the collection of spikes from other connected neurons,
  weighted by <math|W>; and the third term is for reset, where
  <math|\<theta\>> represents the threshold. We can re-write this formula in
  a more compact form as

  <\equation>
    \<tau\> <frac|\<mathd\>u|\<mathd\>t><around*|(|t|)>+u<around*|(|t|)>=W\<cdot\>s<around*|(|t|)>-\<theta\>\<odot\>s<around*|(|t|)><label|equation:Spiking
    Neuron Network 1>,
  </equation>

  where <math|\<odot\>> denotes element-wise product. The relation between
  membrane potentials <math|u> and spikes <math|s>, or <math|S> which denotes
  the random spikes <\footnote>
    As usual, we use capital character for random variable, and its lowercase
    for its concrete value.
  </footnote>, is given by a stochastic equation

  <\equation>
    S\<sim\>Bernoulli<around*|(|\<sigma\><around*|(|u|)>|)><label|equation:Spiking
    Neuron Network 2>
  </equation>

  for each neuron, where <math|\<sigma\>> is the sigmoid function, and the
  <math|Bernoulli> and <math|\<sigma\>> on the right hand side are
  element-wise applications.

  So, the random variable is <math|S> and the probability of <math|S> is
  parameterized by <math|u>. The probability of <math|S> is given by

  <\align>
    <tformat|<table|<row|<cell|p<around*|(|s=1,t|)>=>|<cell|\<sigma\><around*|(|u<around*|(|t|)>|)>;>>|<row|<cell|p<around*|(|s=0,t|)>=>|<cell|1-\<sigma\><around*|(|u<around*|(|t|)>|)>.>>>>
  </align>

  Since <math|u> depends on time <math|t> smoothly, <math|p<around*|(|s,t|)>>
  is also smooth on <math|t>, even though <math|S> is discrete.

  Given a time-difference <math|\<Delta\>t>, equation
  <reference|equation:Spiking Neuron Network 1> comes to be

  <\equation*>
    u<around*|(|t+\<Delta\>t|)>=<around*|(|1-<frac|\<Delta\>t|\<tau\>>|)>u<around*|(|t|)>+<frac|\<Delta\>t|\<tau\>><around*|(|
    W\<cdot\>s<around*|(|t|)>-\<theta\>\<odot\>s<around*|(|t|)>|)>.
  </equation*>

  Replacing <math|1-\<Delta\>t/\<tau\>> by
  <math|\<beta\><rsub|\<Delta\>t>\<assign\>exp<around*|(|-\<Delta\>t/\<tau\>|)>>,
  the <with|font-series|bold|decay factor>, we have

  <\equation>
    u<around*|(|t+\<Delta\>t|)>=\<beta\><rsub|\<Delta\>t>
    \ u<around*|(|t|)>+<around*|(|1-\<beta\><rsub|\<Delta\>t>|)>
    <around*|(|W\<cdot\>s<around*|(|t|)>-\<theta\>\<odot\>s<around*|(|t|)>|)>.<label|equation:Difference
    Spiking Neuron Network>
  </equation>

  This is the difference version of equation <reference|equation:Spiking
  Neuron Network 1>.

  <subsection|Continuous-Time Hopfield Network as Spiking Neuron Network>

  When the network is undirected, <math|W> is symmetric. In this situation,
  you can regard spiking neuron network as a continuous-time Hopfield
  network. Indeed, Hopfield employed almost the same equation in <hlink|a
  paper|https://www.ncbi.nlm.nih.gov/pmc/articles/PMC345226/pdf/pnas00611-0151.pdf>
  published in 1984, wherein the <math|V> is recognized as spikes and the
  <math|I> as threshold, except that his model is deterministic and there is
  no reset.

  Inspired by spiking neuron network, we can generalize continuous-time
  Hopfield network to stochastic version. In fact, if regard <math|u> as an
  intermediate latent variable and define action of <math|s> as

  <\equation*>
    S<around*|(|s,u|)>\<assign\>-\<beta\>
    <big|sum><rsub|\<alpha\>=1><rsup|n>s<rsup|\<alpha\>>
    u<rsup|\<alpha\>>-<around*|(|1-\<beta\>|)>
    <big|sum><rsub|\<alpha\>=1><rsup|n><around*|(|<big|sum><rsub|\<beta\>=1><rsup|n><frac|1|2>W<rsub|\<alpha\>\<beta\>>
    s<rsup|\<alpha\>> s<rsup|\<beta\>>+b<rsub|\<alpha\>>
    s<rsup|\<alpha\>>|)>,
  </equation*>

  where <math|W> is symmetric with diagonal vanished, <math|b> is bias, and
  <math|\<beta\>> is a constant to be replaced by
  <math|exp<around*|(|-\<Delta\>t/\<tau\>|)>> later. If regard <math|s> as
  the value of a random variable, while <math|u> as a real number, we have
  the probability <math|p<around*|(|s;u|)>>, with
  <math|p<around*|(|s;u|)>\<propto\>exp<around*|(|-S<around*|(|s,u|)>|)>>.
  The conditional probability <math|p<around*|(|s<rsup|\<alpha\>>\|s<rsup|\\\<alpha\>>;u|)>>,
  where <math|s<rsup|\\\<alpha\>>> denotes the
  <math|<around*|(|n-1|)>>-dimensional vector in which
  <math|s<rsup|\<alpha\>>> is excluded, can be obtained directly, as

  <\equation*>
    <frac|p<around*|(|s<rsup|\<alpha\>>=1\|s<rsup|\\\<alpha\>>;u|)>|p<around*|(|s<rsup|\<alpha\>>=0\|s<rsup|\\\<alpha\>>;u|)>>=exp<around*|(|\<beta\>
    u<rsup|\<alpha\>>+<around*|(|1-\<beta\>|)><around*|(|<big|sum><rsub|\<beta\>=1><rsup|n>W<rsub|\<alpha\>\<beta\>>
    s<rsup|\<beta\>>+b<rsub|\<alpha\>>|)>|)>,
  </equation*>

  where we have employed <math|W<rsub|\<alpha\>\<beta\>>=W<rsub|\<beta\>\<alpha\>>>
  and <math|W<rsub|\<alpha\>\<alpha\>>=0>. Thus,

  <\equation*>
    p<around*|(|s<rsup|\<alpha\>>=1\|s<rsup|\\\<alpha\>>;u|)>=\<sigma\><around*|(|\<beta\>
    u<rsup|\<alpha\>>+<around*|(|1-\<beta\>|)><around*|(|<big|sum><rsub|\<beta\>=1><rsup|n>W<rsub|\<alpha\>\<beta\>>
    s<rsup|\<beta\>>+b<rsub|\<alpha\>>|)>|)>,
  </equation*>

  Then, by regarding this as the update rule (Gibbs sampling), we have, after
  update <math|t\<rightarrow\>t+\<Delta\>t>,

  <\equation>
    S<around*|(|t+\<Delta\>t|)>\<sim\>Bernoulli<around*|(|\<sigma\><around*|(|u<around*|(|t+\<Delta\>t|)>|)>|)>
  </equation>

  with

  <\equation>
    u<around*|(|t+\<Delta\>t|)>\<assign\>\<beta\>
    u<around*|(|t|)>+<around*|(|1-\<beta\>|)><around*|(|W\<cdot\>
    s<around*|(|t|)>+b|)>,
  </equation>

  where <math|W> is symmetric and vanishing on diagonal. We can convert the
  difference equation to differential equation by letting
  <math|\<Delta\>t\<rightarrow\>0>. Recalling
  <math|\<beta\>=exp<around*|(|-\<Delta\>t/\<tau\>|)>>, it turns out to be

  <\equation>
    \<tau\><frac|\<mathd\>u|\<mathd\>t><around*|(|t|)>+u<around*|(|t|)>=W\<cdot\>s<around*|(|t|)>+b.
  </equation>

  \;

  Comparing these equations with equations <reference|equation:Spiking Neuron
  Network 1> and <reference|equation:Spiking Neuron Network 2>, we find that
  the stochastic version of continuous-time Hopfield network is the
  difference version of spiking neuron network except that the reset term
  <math|-\<theta\>\<odot\>s> is replaced by a constant bias <math|b>. This
  exception is natural, since Gibbs sampling
  <math|p<around*|(|s<rsup|\<alpha\>>=1\|s<rsup|\\\<alpha\>>;u|)>> cannot
  depend on <math|s<rsup|\<alpha\>>> itself.

  So, the stochastic version of continuous-time Hopfield network further
  simplifies the toy model of brain, that is the spiking neuron network. It
  keeps many important properties of the later, such as the smoothness on
  time, and brings another important property that is hard to see in the
  later: the update rule, as a Gibbs sampling, satisfies detailed balance.
  Also, it is easy to see that it also satisfies ergodicity. Altogether, it
  indicates that the dynamics of Hopfield network will finally relax to a
  stationary distribution, which is the <math|p<around*|(|s;u|)>>. If
  <math|u> is initially zero, then the stationary distribution comes to be
  proportional to <math|exp<around*|(|-<around*|(|1-\<beta\>|)>
  <big|sum><rsub|\<alpha\>=1><rsup|n><around*|(|<big|sum><rsub|\<beta\>=1><rsup|n><frac|1|2>W<rsub|\<alpha\>\<beta\>>
  s<rsup|\<alpha\>> s<rsup|\<beta\>>+b<rsub|\<alpha\>>
  s<rsup|\<alpha\>>|)>|)>>. Interestingly, based on maximum-entropy
  principle, this distribution characterizes the first and the second moments
  of <math|S>.
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
    <associate|equation:Difference Spiking Neuron Network|<tuple|3|1>>
    <associate|equation:Spiking Neuron Network 1|<tuple|1|1>>
    <associate|equation:Spiking Neuron Network 2|<tuple|2|1>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|1>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Neuron Network <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Spiking Neuron Network Is a
      Stochastic Model of Brain <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Continuous-Time Hopfield
      Network as Spiking Neuron Network <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>