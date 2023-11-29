<TeXmacs|2.1>

<style|book>

<\body>
  <section|Network>

  <subsection|Spiking Neuron Network As Continuous-Time Hopfield Network>

  Let <math|U<around*|(|t|)>:\<bbb-R\>\<rightarrow\>\<bbb-R\><rsup|n>>
  denotes the time-dependent membrane potentials of <math|n> neurons, and
  <math|S<around*|(|t|)>:\<bbb-R\>\<rightarrow\><around*|{|0,1|}><rsup|n>>
  their spikes. The membrane potentials <math|U> of a spiking neuron network
  evolve, for <math|\<alpha\>> neuron, as <\footnote>
    See <hlink|section 17.3|https://neuronaldynamics.epfl.ch/online/Ch17.S3.html>
    of <with|font-shape|italic|Neuronal Dynamics> and the section II.A in
    <hlink|this paper|https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10242251>.
  </footnote>

  <\equation*>
    \<tau\> <frac|\<mathd\>U<rsup|\<alpha\>>|\<mathd\>t><around*|(|t|)>=-U<rsup|\<alpha\>><around*|(|t|)>+<big|sum><rsub|\<beta\>\<neq\>\<alpha\>><rsup|n>W<rsub|\<alpha\>\<beta\>>
    S<rsup|\<beta\>><around*|(|t|)>-\<theta\><rsub|\<alpha\>>
    S<rsup|\<alpha\>><around*|(|t|)>.
  </equation*>

  On the right hand side, the first term corresponds to the decay of
  <math|U>; the second term corresponds to the collection of spikes from
  other connected neurons, weighted by <math|W>; and the third term is for
  reset, where <math|\<theta\>> represents the threshold. We can absorb the
  <math|\<theta\>> into <math|W> as <math|W<rsub|\<alpha\>\<alpha\>>\<assign\>\<theta\><rsub|\<alpha\>>>,
  and re-write this formula as

  <\equation>
    \<tau\> <frac|\<mathd\>U<rsup|\<alpha\>>|\<mathd\>t><around*|(|t|)>=-U<rsup|\<alpha\>><around*|(|t|)>+W<rsub|\<alpha\>\<beta\>>
    S<rsup|\<beta\>><around*|(|t|)>
  </equation>

  for <math|\<alpha\>> neuron, where we have employed the Einstein summation
  convention. The relation between membrane potential <math|U> and spike
  <math|S> is given by a stochastic equation

  <\equation>
    S<rsup|\<alpha\>>\<sim\>Bernoulli<around*|(|\<sigma\><around*|(|U<rsup|\<alpha\>>|)>|)>,
  </equation>

  where <math|\<sigma\>> is the sigmoid function.

  When the network is undirected, <math|W> is symmetric. In this situation,
  you can regard spiking neuron network as a continuous-time Hopfield
  network. Indeed, Hopfield employed almost the same equation in <hlink|a
  paper|https://www.ncbi.nlm.nih.gov/pmc/articles/PMC345226/pdf/pnas00611-0151.pdf>
  published in 1984, wherein the <math|V> is recognized as spikes, the
  <math|u> as membrane potentials, and the <math|I> as threshold, except that
  his model is deterministic and spike is absent in reset.
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
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnr-1|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Network <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Spiking Neuron Network
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>
    </associate>
  </collection>
</auxiliary>