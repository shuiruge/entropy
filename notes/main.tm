<TeXmacs|2.1>

<style|book>

<\body>
  <include|relent.tm>

  <include|master.tm>

  <include|maxent.tm>

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|relent.tm>>
    <associate|auto-10|<tuple|2.5|5|master.tm>>
    <associate|auto-11|<tuple|3|5|master.tm>>
    <associate|auto-12|<tuple|3.1|5|master.tm>>
    <associate|auto-13|<tuple|3.2|6|master.tm>>
    <associate|auto-14|<tuple|4|7|maxent.tm>>
    <associate|auto-15|<tuple|4.1|7|maxent.tm>>
    <associate|auto-16|<tuple|4.2|7|maxent.tm>>
    <associate|auto-17|<tuple|4.3|8|maxent.tm>>
    <associate|auto-18|<tuple|4.4|8|maxent.tm>>
    <associate|auto-19|<tuple|4.5|9|maxent.tm>>
    <associate|auto-2|<tuple|1.1|1|relent.tm>>
    <associate|auto-20|<tuple|4.6|9|maxent.tm>>
    <associate|auto-3|<tuple|1.2|1|relent.tm>>
    <associate|auto-4|<tuple|1.3|1|relent.tm>>
    <associate|auto-5|<tuple|2|2|master.tm>>
    <associate|auto-6|<tuple|2.1|2|master.tm>>
    <associate|auto-7|<tuple|2.2|2|master.tm>>
    <associate|auto-8|<tuple|2.3|3|master.tm>>
    <associate|auto-9|<tuple|2.4|3|master.tm>>
    <associate|equation:Detailed Balance|<tuple|3|3|master.tm>>
    <associate|equation:Kramers-Moyal expansion|<tuple|6|6|master.tm>>
    <associate|equation:Master Equation|<tuple|1|2|master.tm>>
    <associate|equation:Master Equation V2|<tuple|2|3|master.tm>>
    <associate|equation:maxent eq1|<tuple|10|8|maxent.tm>>
    <associate|equation:maxent eq2|<tuple|12|8|maxent.tm>>
    <associate|equation:maxent iteration|<tuple|19|9|maxent.tm>>
    <associate|equation:maxent partition function|<tuple|11|8|maxent.tm>>
    <associate|equation:relative entropy derivative|<tuple|5|4|master.tm>>
    <associate|equation:weak maxent eq1|<tuple|15|9|maxent.tm>>
    <associate|equation:weak maxent eq2|<tuple|17|9|maxent.tm>>
    <associate|equation:weak maxent iteration|<tuple|18|9|maxent.tm>>
    <associate|equation:weak maxent partition
    function|<tuple|16|9|maxent.tm>>
    <associate|footnote-1|<tuple|1|1|relent.tm>>
    <associate|footnote-10|<tuple|10|7|master.tm>>
    <associate|footnote-11|<tuple|11|9|maxent.tm>>
    <associate|footnote-12|<tuple|12|9|maxent.tm>>
    <associate|footnote-2|<tuple|2|1|relent.tm>>
    <associate|footnote-3|<tuple|3|2|master.tm>>
    <associate|footnote-4|<tuple|4|2|master.tm>>
    <associate|footnote-5|<tuple|5|3|master.tm>>
    <associate|footnote-6|<tuple|6|3|master.tm>>
    <associate|footnote-7|<tuple|7|4|master.tm>>
    <associate|footnote-8|<tuple|8|5|master.tm>>
    <associate|footnote-9|<tuple|9|5|master.tm>>
    <associate|footnr-1|<tuple|1|1|relent.tm>>
    <associate|footnr-10|<tuple|7|7|master.tm>>
    <associate|footnr-11|<tuple|11|9|maxent.tm>>
    <associate|footnr-12|<tuple|12|9|maxent.tm>>
    <associate|footnr-2|<tuple|2|1|relent.tm>>
    <associate|footnr-3|<tuple|3|2|master.tm>>
    <associate|footnr-4|<tuple|4|2|master.tm>>
    <associate|footnr-5|<tuple|2|3|master.tm>>
    <associate|footnr-6|<tuple|6|3|master.tm>>
    <associate|footnr-7|<tuple|7|4|master.tm>>
    <associate|footnr-8|<tuple|8|5|master.tm>>
    <associate|footnr-9|<tuple|9|5|master.tm>>
    <associate|part:master.tm|<tuple|1.3|2>>
    <associate|part:maxent.tm|<tuple|8|7>>
    <associate|part:relent.tm|<tuple|?|1>>
    <associate|section: Conservative Langevin Dynamics Satisfies Detailed
    Balance|<tuple|3.2|6|master.tm>>
    <associate|section: Detailed Balance with Ergodicity Monotonically
    Reduces Relative Entropy|<tuple|2.4|3|master.tm>>
    <associate|section: Master Equation, Detailed Balance, and Relative
    Entropy|<tuple|2|2|master.tm>>
    <associate|section: Relative Entropy|<tuple|1|1|relent.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|parts>
      <tuple|relent.tm|chapter-nr|0|section-nr|0|subsection-nr|0>

      <tuple|master.tm|chapter-nr|0|section-nr|1|subsection-nr|3>

      <tuple|maxent.tm|chapter-nr|0|section-nr|3|subsection-nr|2>
    </associate>
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

      2<space|2spc>Master Equation, Detailed Balance, and Relative Entropy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Master Equation Describes
      Generic Dynamics of Markov Chain <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Detailed Balance Provides a
      Stationary Distribution <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Detailed Balance with
      Ergodicity Monotonically Reduces Relative Entropy
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Temporal Smoothness of
      Transition Probability Is Necessary to Ensure Relaxation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      3<space|2spc>Kramers-Moyal Expansion and Langevin Dynamics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Spatial Expansion of Master
      Equation Gives Kramers-Moyal Expansion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Langevin Dynamics that
      Satisfies Detailed Balance Is Conservative
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      4<space|2spc>Maximum-Entropy Principle
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Maximum-Entropy Principle
      Shall Minimize Relative Entropy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Prior Knowledge Furnishes
      Free Theory or Regulator <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|4.4<space|2spc>Weak Maximum-Entropy
      Principle Furnishes Observables <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|4.5<space|2spc>Extremum Can Be Found by
      Iteration Method <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|4.6<space|2spc>When
      <with|mode|<quote|math>|\<lambda\><rsub|\<star\>>> is solvable?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>
    </associate>
  </collection>
</auxiliary>