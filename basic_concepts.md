# Basic concepts of quasispecies simulation





## Simple first simulation


Table: Called sim_pop with the following arguments.

<table class="table table-condensed">
 <thead>
  <tr>
   <th style="text-align:right;"> Argument </th>
   <th style="text-align:right;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> Number of Ancestors </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> Sequence Length </td>
   <td style="text-align:right;"> 500 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> r0 </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> Number of Generations </td>
   <td style="text-align:right;"> 9 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> Minimum Population Size </td>
   <td style="text-align:right;"> Inf </td>
  </tr>
  <tr>
   <td style="text-align:right;"> Mutator Function </td>
   <td style="text-align:right;"> mutator_uniform_fun </td>
  </tr>
  <tr>
   <td style="text-align:right;"> Mutator: mu </td>
   <td style="text-align:right;"> 0.1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> Fitness Evaluator </td>
   <td style="text-align:right;"> fitness_evaluator_uniform_fun </td>
  </tr>
  <tr>
   <td style="text-align:right;"> Additional Fitness Evaluator Arguments </td>
   <td style="text-align:right;"> None </td>
  </tr>
</tbody>
</table>



Table: Individuals per generation and the average distance to the original ancestor for the generation.

<table class="table table-condensed">
 <thead>
  <tr>
   <th style="text-align:right;"> Gen. Num. </th>
   <th style="text-align:right;"> n </th>
   <th style="text-align:right;"> Dist. to Ances. </th>
   <th style="text-align:right;"> Normalized Dist. </th>
   <th style="text-align:right;"> Fitness Score </th>
   <th style="text-align:right;"> Min. Fitness Score </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0.0000 </td>
   <td style="text-align:right;"> 0.0000000 </td>
   <td style="text-align:right;"> 0.8208171 </td>
   <td style="text-align:right;"> 0.8208171 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 53.0000 </td>
   <td style="text-align:right;"> 0.1060000 </td>
   <td style="text-align:right;"> 0.2811197 </td>
   <td style="text-align:right;"> 0.2811197 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 96.0000 </td>
   <td style="text-align:right;"> 0.1920000 </td>
   <td style="text-align:right;"> 0.2149706 </td>
   <td style="text-align:right;"> 0.2149706 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 131.8750 </td>
   <td style="text-align:right;"> 0.2637500 </td>
   <td style="text-align:right;"> 0.3748594 </td>
   <td style="text-align:right;"> 0.3748594 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 164.2500 </td>
   <td style="text-align:right;"> 0.3285000 </td>
   <td style="text-align:right;"> 0.5254503 </td>
   <td style="text-align:right;"> 0.5254503 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 32 </td>
   <td style="text-align:right;"> 191.8438 </td>
   <td style="text-align:right;"> 0.3836875 </td>
   <td style="text-align:right;"> 0.5152376 </td>
   <td style="text-align:right;"> 0.5152376 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 64 </td>
   <td style="text-align:right;"> 214.1719 </td>
   <td style="text-align:right;"> 0.4283438 </td>
   <td style="text-align:right;"> 0.5458824 </td>
   <td style="text-align:right;"> 0.5458824 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 128 </td>
   <td style="text-align:right;"> 235.8359 </td>
   <td style="text-align:right;"> 0.4716719 </td>
   <td style="text-align:right;"> 0.5175725 </td>
   <td style="text-align:right;"> 0.5175725 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 256 </td>
   <td style="text-align:right;"> 254.2500 </td>
   <td style="text-align:right;"> 0.5085000 </td>
   <td style="text-align:right;"> 0.4867660 </td>
   <td style="text-align:right;"> 0.4867660 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 512 </td>
   <td style="text-align:right;"> 270.3906 </td>
   <td style="text-align:right;"> 0.5407812 </td>
   <td style="text-align:right;"> 0.4776772 </td>
   <td style="text-align:right;"> 0.4776772 </td>
  </tr>
</tbody>
</table>



Table: Individuals per generation and the average distance to the original ancestor for the generation.

<table class="table table-condensed">
 <thead>
  <tr>
   <th style="text-align:center;"> Gen. Num. </th>
   <th style="text-align:center;"> n </th>
   <th style="text-align:center;"> Dist. to Ances. </th>
   <th style="text-align:center;"> Normalized Dist. </th>
   <th style="text-align:center;"> Fitness Score </th>
   <th style="text-align:center;"> Min. Fitness Score </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">1</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.0000</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.0000000</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.8208171</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.8208171</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">1</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">2</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">53.0000</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.1060000</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.2811197</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.2811197</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">2</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">4</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">96.0000</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.1920000</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.2149706</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.2149706</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">3</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">8</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">131.8750</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.2637500</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.3748594</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.3748594</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">4</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">16</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">164.2500</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.3285000</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5254503</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5254503</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">5</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">32</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">191.8438</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.3836875</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5152376</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5152376</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">6</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">64</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">214.1719</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4283438</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5458824</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5458824</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">7</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">128</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">235.8359</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4716719</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5175725</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5175725</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">8</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">256</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">254.2500</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5085000</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4867660</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4867660</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">9</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">512</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">270.3906</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5407812</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4776772</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4776772</span> </td>
  </tr>
</tbody>
</table>



Table: Individuals per generation and the average distance to the original ancestor for the generation.

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3-1.png)

### Looking at only the last generation now



The average pairwise HD is 333.1 and normalized by the length of the sequence it is 0.666.

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5-1.png)

Figure: Density plot of the pariwise distances in the last generation.



Table: The Deciles of the pairwise HDs.

<table class="table table-condensed">
 <thead>
  <tr>
   <th style="text-align:center;"> Decile </th>
   <th style="text-align:center;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0%  </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.136</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">10% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.614</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">20% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.646</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">30% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.660</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">40% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.670</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">50% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.678</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">60% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.686</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">70% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.692</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">80% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.700</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">90% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.712</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">100%</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.778</span> </td>
  </tr>
</tbody>
</table>
