Associate editor synthetic comments:
- the idea of integrating the low-level and energy reg. model is considered to be interesting.
- exp results not convincing, particularly in the proof of energy regeneration during landing.
- more in depth explanation on how to conduct energy reg, on the hardware.
- unclear motivations: challenges in extending such a scheme to a whole legged system.
- overclaimed/marginal contributions: more clear outline required.

R2: 
- 1) :x: two stage opt. interesting, but more experimental results
- 2) :heavy_check_mark: explain how en. rec. is performed at the hardware level (do we mention energy recovery as a contribution?!?!?!)
- 3) :heavy_check_mark: more non opt. setpoints closer to the optimal to be added in Fig.11
- 4) :heavy_check_mark: concerns of accuracy of power models during high speed maneuvers (retrive data from exps to address this?)
- 5) :x: comparison with gradient/learning methods for jumping in Intro/Framing/SoA section
- 6) :heavy_check_mark: eq (7)- (35) look like each cost has same weight (specify this explicitly in the revision)
- 7) :x: more mathematical form for eqs (21) and (44) 
- 8) :heavy_check_mark: typo in Fig. 4: remove v and iq or change title
- 9) :heavy_check_mark: Fig. 9 - 10: error apparently not small (more clear comparison? more in depth justification of mismatches?)
- 10) :heavy_check_mark: request of tajeoff/landing optimization convergence curves (cost VS iterations?)
- 11) :x: video: more videos of the experiments
- 12) :heavy_check_mark: video: regeneration power relatively small compared to takeoff power. Does it make sense to optimize for landing?

R6: 
- 1) :heavy_check_mark: do not claim as a driving reason the generalization to full quadruped but only a single-leg jump study.
- 2) :grey_question: remove contribution 1 since it's standard (single leg TO for jumping is not new).
- 3) :grey_question: make contribution 2 the core idea of the paper.
- 4) :heavy_check_mark: /Lambda not defined in (32) (already fixed).
- 5) :heavy_check_mark: since the "impact ratio" only depends on the leg configuration, why not simply select a good one? (we need to underline here that not all configurations good for landing are best for energy regeneration).
- 6) :x: "agile" is overclaimed, not reference to agile metric in the paper and not clear what authors mean by agile (not true, it is explicitly stated, also in the takeoff opt problem). The review highlight how in agile_bots::hawkes2022engineered "agile" in interpreted as achieving the max jump height (we could think of citing this paper and underlying what we mean by agile more in the first sections)

R9: 
- 1) :x: easy to follow paper, but marginal contribution.
- 2) :x: Salto much better; single leg setup sucks and already widely used by ETH. 
- 3) :x: adding the energy flow model to landing TO to consider
energy regeneration is novel, but this may not lead to robotic systems with novel behaviors of improved performance.
- 4) :heavy_check_mark: no TO solver specified (maybe here we could add some details)
- 5) :x: difficult extension to multilegged systems: solution time not reconcilable with online replanning
- 6) :x: suggests reformulation in whole body landing setting and comparison with "Real-time Optimal Landing Control of the MIT Mini Cheetah" 
- 7) :x: more detailed discussion on TO techniques and use of more advances TO techniques, pointing to ALTRO solver
- 8) :heavy_check_mark: some minor typos (already fixed)
- 9) :heavy_check_mark: slide 6, video: the reviewer is confused by the fact that the description says "optimal take-off trajectory replay", while the leg also lands (here maybe it'd be better to cut the landing part, in order to avoid tricking the viewer into thinking we are actually optimiing the landing) 

R11: 
- 1) :x: idea of the paper interesting, but results not enough to support it. 
- 2) :heavy_check_mark: more details on how to harvest energy in hardware
- 3) :heavy_check_mark: no mention of maxim jump height and energy cost associated with it (we could explicitly mention these data either in the paper of the video. better directly in the paper. Some results on the jumping height at least from the optimization would be useful)
- 4) :x: reviewer thinks the issue in inverse dynamics simulation is caused by simple kinematic singularity and not by the formulation (makes no sense, we have shown that with the right formulation we have no problems when the leg is straight)
- 5) :x: not acceptable to use simulation results to verify energy regeneration, arguing that, due to transmission losses at high gear ratio, the regenerated energy might be very low (we could stress more that we validated our power model experimentally, so we can expect small disagreements between the simulation, which already accounts for transmissio losses, and the real robot). He want an experiment on the real leg to be put in section 4 of the paper.
- 6) :heavy_check_mark: more non opt. setpoints closer to the optimal to be added in Fig.11 (this can be done no prb, even if it is unessential in principle)
- 7) :x: video: more experiments

R13: 
- 1) :x: most review suggestions on the results 
- 2) :x: the reviewer wonders if the use of better models allow to achieve better apex wrt some lit. references like agile_bots::ding2017design, agile_bots::shen2020optimized and agile_bots::chignoli2021online (most of these papers use relatively light platforms, expecially the first two. Our leg is instead quite heavy: 12 Kg.)
- 3) :heavy_check_mark: more baselines in the reg energy result figure (already the second reviewer to point this out)
- 4) :x: knee reversion might not be feasible in pratice when considering an actual robot (might be true, however not really an issue in the context of the paper)
- 5) :heavy_check_mark: video: at about 42sec plots are confusing due to "lacking legend" (adding explicit title with "regenerated energy" and "regenerative power" might help on this)

What's possible to improve with relatively low effort: 
- [] To address points R2.2/R11.2 on energy reg. description: we could add some details on the actual hardware used for measuring reg power and also (maybe) highlight more the references in the problem framing section. 
- [] To address points R2.3/R11.6/R13.3/: we generate more data in sim and add it to Fig.11; easy peasy.
- [] To address point R2.4: use jump_generation_24-02-2023-12_13_45 data to add plots of iq and reg pow tracking showing that during the takeoff we still have good tracking. This can be either added to the video (but there's no time available)
- :heavy_check_mark: To address point R2.6: add a sentence making explicit we are using different weights for each term
- :heavy_check_mark: To address point R2.8: remove wrong title from picture (regenerate or edit them by hand)
- [] To address point R2.9: more in depth justification of mismatches in replay results.
- [] To address point R2.10: add convergence plots for both optimizations. How easy is it to retrieve this information from the .mat files? If not possible, is it reasonable to solve again the opt problems?
- [] To address point R2a.11: we could argue that, even is on a single jump the regenerative power is comparatively small wrt the takeoff, over multiple execution can become relevant
- [] To address point R3.1: remove claims of heavy duty quadruped development as a driving reason. This probably removes the temptation for the reviewer to underline the difficulties in generalizing to whole robots. This concerns can be highlighted however in the conclusions and future work section.
- [] To address R6.2/.3: this is possible, but do we want to do it really? 
- [] To address R6.5: we have to highlight that not all configurations good for landing are best for energy regeneration more
- [] To address R9.4: add details on the employed solver 
- [] To address R9.9: remove landing part rom video
- [] To address R11.3: add info on optimal jump height and associated cost
- [] To address R13.5: add explicit titles to the pictures in the videos might help

Additional improvs:make
- [] Add also a link to the employed data to the article (on IIT OneDrive e.g.)
- [] :heavy_check_mark: Improve TO problem formulation description
- [] add extensive README.md file to humanoids submission branch  