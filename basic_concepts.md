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
   <td style="text-align:right;"> 0.1485410 </td>
   <td style="text-align:right;"> 0.1485410 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 56.5000 </td>
   <td style="text-align:right;"> 0.1130000 </td>
   <td style="text-align:right;"> 0.5723551 </td>
   <td style="text-align:right;"> 0.5723551 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 94.2500 </td>
   <td style="text-align:right;"> 0.1885000 </td>
   <td style="text-align:right;"> 0.5071357 </td>
   <td style="text-align:right;"> 0.5071357 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 132.3750 </td>
   <td style="text-align:right;"> 0.2647500 </td>
   <td style="text-align:right;"> 0.3538838 </td>
   <td style="text-align:right;"> 0.3538838 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 164.5625 </td>
   <td style="text-align:right;"> 0.3291250 </td>
   <td style="text-align:right;"> 0.6674369 </td>
   <td style="text-align:right;"> 0.6674369 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 32 </td>
   <td style="text-align:right;"> 191.6562 </td>
   <td style="text-align:right;"> 0.3833125 </td>
   <td style="text-align:right;"> 0.4189091 </td>
   <td style="text-align:right;"> 0.4189091 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 64 </td>
   <td style="text-align:right;"> 215.5781 </td>
   <td style="text-align:right;"> 0.4311563 </td>
   <td style="text-align:right;"> 0.5574057 </td>
   <td style="text-align:right;"> 0.5574057 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 128 </td>
   <td style="text-align:right;"> 236.7266 </td>
   <td style="text-align:right;"> 0.4734531 </td>
   <td style="text-align:right;"> 0.4878932 </td>
   <td style="text-align:right;"> 0.4878932 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 256 </td>
   <td style="text-align:right;"> 255.0820 </td>
   <td style="text-align:right;"> 0.5101641 </td>
   <td style="text-align:right;"> 0.4999781 </td>
   <td style="text-align:right;"> 0.4999781 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 512 </td>
   <td style="text-align:right;"> 271.1816 </td>
   <td style="text-align:right;"> 0.5423633 </td>
   <td style="text-align:right;"> 0.4975908 </td>
   <td style="text-align:right;"> 0.4975908 </td>
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
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.1485410</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.1485410</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">1</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">2</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">56.5000</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.1130000</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5723551</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5723551</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">2</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">4</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">94.2500</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.1885000</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5071357</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5071357</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">3</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">8</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">132.3750</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.2647500</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.3538838</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.3538838</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">4</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">16</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">164.5625</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.3291250</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.6674369</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.6674369</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">5</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">32</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">191.6562</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.3833125</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4189091</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4189091</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">6</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">64</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">215.5781</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4311563</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5574057</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5574057</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">7</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">128</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">236.7266</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4734531</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4878932</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4878932</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">8</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">256</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">255.0820</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5101641</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4999781</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4999781</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">9</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">512</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">271.1816</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.5423633</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4975908</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.4975908</span> </td>
  </tr>
</tbody>
</table>

### Looking at only the last generation now



The average pairwise HD is 333.19 and normalized by the length of the sequence it is 0.666.

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
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.616</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">20% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.642</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">30% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.658</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">40% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.668</span> </td>
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
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.694</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">80% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.702</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">90% </span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.714</span> </td>
  </tr>
  <tr>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">100%</span> </td>
   <td style="text-align:center;"> <span style="display: inline-block; direction: rtl; border-radius: 4px; padding-right: 15px; padding-left: 15px; background-color: white">0.778</span> </td>
  </tr>
</tbody>
</table>
