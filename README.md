**Table: Ablation study (pseudo labels evaluation) of threshold settings of the SRPL on the LEVIR-CD dataset.**

| $t_3$ | $t_4$ | $t_5$ | Pre ↑ | Rec ↑ | F1 ↑ | IoU ↑ | OA ↑ |
|------:|------:|------:|------:|------:|-----:|------:|-----:|
| 0.60  | 0.60  | 0.65  | 68.44 | 74.95 | 71.55 | 55.70 | 97.33 |
| 0.75  | 0.60  | 0.75  | 67.20 | 77.66 | 72.05 | 56.31 | 97.30 |
| 0.85  | 0.70  | 0.75  |   -   |   -   |   -   |   -   |   -   |
| 0.85  | 0.60  | 0.65  | 69.18 | 75.33 | 72.13 | 56.40 | 97.39 |


**<span style="color:blue">Response to Reviewer #1:</span>**  
**Point Query Quality Control.** Thank you for the comment. The quality of point queries is controlled by selecting local high-confidence CAM regions (e.g., score > 0.85). Their reliability is reflected in Table 2. Further analysis will be added in the final version if accepted.  

**Availability of Unchanged Building Samples.** The LEVIR-CD and WHU-CD datasets are cropped into 256 × 256 patches. Based on our statistics, **55.47%** of LEVIR-CD and **74.57%** of WHU-CD patches are unchanged. Many unchanged patches still contain buildings, providing enough training samples for the classifier on Stage 1.  

**Annotation Cost Comparison.** Image-level labels require a binary label for each sample, taking **5–10** seconds, compared to **5–8** minutes for the dense pixel-wise annotation cost of more than 95%.  

**Figure Clarity and Related Work.** We thank the reviewers for the helpful feedback. We acknowledge the issues in Figure 2 and the related work section. If the paper is accepted, we will revise Figure 2 for better readability and improve the coverage and representativeness of the related works.  

**<span style="color:blue">Response to Reviewer #2:</span>**  
**Technical Novelty.** We respectfully disagree. While our components build on existing ideas, their integration into a unified weakly supervised framework for CD is novel and effective. For example, LCF performs layer-wise CAM fusion tailored to RS, LPPM guides point queries for SAM to generate reliable pseudo labels, and SRPL refines these labels at the component level. Together, these modules significantly boost performance.  

**Dataset Diversity.** We agree that evaluating on diverse change types is important. However, most public datasets involving vegetation or seasonal changes lack image pairs without changes, making them unsuitable for image-level supervision. We will explore ways to validate generalization in such scenarios in future work.  

**<span style="color:blue">Response to Reviewer #3:</span>**  
**Formula Index.** The index starts from 2 because experimental observations show that the first scale introduces substantial noise, which may compromise the accuracy of the fused CAM.  

**Figure 1 Labeling Issue.** We apologize for the confusion in Figure 1. The “SPRM” label was mistakenly left unexplained—it refers to the SAM-refined Pseudo Labels (SRPL). We will clarify this in the final version if accepted.  

**Threshold Settings in SRPL.** These thresholds were chosen empirically to balance completeness and noise suppression. Condition (a) ensures the candidate component significantly overlaps with the mask, and (b) prevents including noisy or irrelevant regions. This combination yields stable performance.  

**<span style="color:blue">Response to Reviewer #4:</span>**  
**Methodological Novelty.** While multi-scale fusion and point prompt generation have been explored in segmentation tasks, our method tailors these techniques for weakly supervised change detection, which is a different and more challenging setting. The proposed components are carefully integrated to address specific issues in this domain, and their effectiveness is validated by significant performance gains in Tables 2 and 3.  

**Clarity of LPPM and SAM Integration.** Thanks for the comment. In LPPM, high-confidence regions in CAM are used to generate local positive points, which serve as point prompts for SAM. SAM then generates masks using its default inference pipeline. We will clarify this process and briefly introduce the mechanism of SAM in the final version if accepted.  

**LPPM Ablation and Justification.** Thanks for the comments. LPPM is not an independent module but a point generation strategy serving SRPL. Its effectiveness is reflected in the ablation of SRPL with and without LPPM, as shown in Table 3.  

**<span style="color:blue">Response to Reviewer #5:</span>**  
**Motivation for Using SAM.** Thanks for the comment. Most existing SAM-based WSSS methods are designed for single images and cannot be directly applied to bi-temporal change detection. To address this, we adopt SAM as a base and propose the Local Points Prompting Module (LPPM) to guide SAM with informative queries, improving pseudo-label quality for change regions.  

**SAM-based CD Comparisons.** We thank the reviewer for the suggestion. Of the listed references, [4] is included. Others lacked public code at submission, and time limits prevented re-implementation. We will consider them in the final version if accepted.  

**Efficiency Analysis of LCF.** Thanks. LCF differs from traditional multi-scale fusion by aggregating CAMs from distinct feature layers with separate classifiers, not from resized inputs. We acknowledge the suggestion and will include FLOPs, memory, and runtime comparisons in the final version if accepted.  

**Experimental Limitations.** Thanks for the comment. Most public datasets involving vegetation or other change types lack image pairs without changes, making them unsuitable for image-level supervision. Our comparisons include recent transformer-based weakly supervised CD methods like TransWCD and MSFormer. Hybrid methods are scarce. Ablation results in Section 4.5 and Table 3 verify the contributions of each proposed component.  
