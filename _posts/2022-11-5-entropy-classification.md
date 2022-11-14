---
layout: distill
title: Aleatoric and epistemic uncertainty in classification problems
description: Discuss how categorical entropy can be used to quantify the aleatoric and epistemic uncertainty in Bayesian modeling.
date: 2022-11-05
tags: IPML
category: IPML

authors:
  - name: Vasilis Gkolemis
    affiliations:
      name: Harokopio University Athens

bibliography: categorical-uncertainty.bib

toc:
  - name: Uncertainty Types
    # if a section has subsections, you can add them as follows:
    # subsections:
    #   - name: Example Child Subsection 1
    #   - name: Example Child Subsection 2
  - name: Mathematical Formulation
  - name: Entropy
  - name: Entropy for Uncertainty
  - name: Entropy to split in Aleatoric and Epistemic

# Below is an example of injecting additional post-specific styles.
# If you use this post as a template, delete this _styles block.
_styles: >
  .fake-img {
    background: #bbb;
    border: 1px solid rgba(0, 0, 0, 0.1);
    box-shadow: 0 0px 4px rgba(0, 0, 0, 0.1);
    margin-bottom: 12px;
  }
  .fake-img p {
    font-family: monospace;
    color: white;
    text-align: left;
    margin: 12px 0;
    text-align: center;
    font-size: 16px;
  }

---

## Uncertainty Types

Machine Learning models may mispredict due to a variety of reasons. It
is a nice feature for a model to know what it does not know, to
express its uncertainty when it is vulnerable to a poor
prediction. Two specific types of uncertainty, aleatoric and
epistemic, have attracted more attention since they cover two
fundamental sources of mispredictions.

**Aleatoric uncertainty** (or model uncertainty) describes the
variability that is implicit in the data generating process, mainly
due to unaccounted factors. Imagine we want to predict whether a
student will pass or fail in the MSc degree, but we posses limited
attributes; the BSc grade $(x_1)$, the grade of the first MSc test
$(x_2)$ and years passed from the BSc graduation $(x_3)$. With only
these factors we are far from a perfect prediction. Numerous other
causes play an important role; some of them are simply not available,
like his/her degree in each course of the BSc, some others is
difficult to be extracted, like the mental health, and some others is
impossible to know in advance (unpredictable accident). All of them
make the prediction feasible up to a specific level of (aleatoric)
uncertainty.

**Epistemic uncertainty** (or data uncertainty) quantifies the
uncertainty due to an input that is different from the instances of
the training set. Therefore, we are not certain what happens in this
case. In the example above, lets say we want to evaluate a student
with a high BSc grade that completely failed in the first MSc test,
and, unfortunately, not many similar (or none) existed in the training
set. Model has learned to generalize, but as we move away from
concrete examples, predictions must be more uncertain. Epistemic
uncertainty mostly happens due to lack of diversity in the training
data.

Ideally, apart from quantifying the total uncertainty of a prediction,
we would like to furtherly split it in the aleatoric and the epistemic
component:

\begin{equation}
U(x) = U_a(x) + U_e(x)
\end{equation}

***

## Mathematical Formulation

Let's quickly set up some notation. In this post, we cover the
classification case, so we want to predict the correct class $c$ that
belongs to a set of $\mathcal{C}$ possible classes. We fit a
parametric model $f_{\theta}: \mathbf{x} \rightarrow y$ to the
training set $\mathcal{D}$. For example, if $f_{\theta}$ is a neural
network, the parameters $\theta$ are the weights of the
network. Often, the parameter configuration that fit the data best is
denoted with $\hat{\theta}$. The output $y = 1, 2, \ldots, |\mathcal{C}|$
is the index of the predicted class. For modeling the aleatoric and
the epistemic uncertainty we need two extra ingredients.

For quantifying the **aleatoric uncertainty (model uncertainty)**, we
need a trained model $\hat{\theta} $ that outputs distribution
$p(\mathbf{y}|\mathbf{x}, \hat{\theta} )$ over all possible classes,
instead of a single class prediction $y$. This means we need a
probability vector $\mathbf{y}$, whose elements sum to $1$ and the
$c$-th element $y_c$ defines the probability the input belongs to
class $c$, i.e., $p(y=c|\mathbf{x}, \hat{\theta} )$. In function
notation, we denote the $y_c$ as $f_{\hat{\theta} }^c
(\mathbf{x})$. The probability vector $\mathbf{y}$ is the minimum
requirement for quantifying the aleatoric uncertainty.

For quantifying the **epistemic uncertainty (data uncertainty)**, we
need many models. Instead of a single model $\hat{\theta}$, we need
the distribution over the parameter configurations that describe the
data well; the so-called posterior distribution
$p(\theta|\mathcal{D})$. Sometimes instead of accessing the PDF of the
posterior, we just need a way to sample models from it: $\theta_k \sim
p(\theta|\mathcal{D})$. We denote with $\tilde{\mathbf{y}}$ or
$\tilde{p}(\mathbf{y}| \mathbf{x}, \mathcal{D})$ the expected
prediction over the posterior distribtuion:


$$ \tilde{\mathbf{y}} = \mathbb{E}_{ \theta | \mathcal{D} } [f_{\theta}(\mathbf{x})] \approx \frac{1}{K} f_{\theta_k}(\mathbf{x}) $$


Access to the posterior or to a population of
models is the minimum-requirement for quantifying the epistemic
uncertainty.

Now that we know the requirements for modelling the aleatoric and the
epistemic uncertainty, let's see how entropy can be used to measure
them.

## Entropy

If we draw a sample $x_i$ from a discrete random variable $X$, the
value $-\log p(x_i)$ quantifies our *level of surprise* or
*information gain*. The level of surprise means how unexpected we
considered the outcome. The information gain describes how much we
learnt after observing $x_i$. Imagine papers with written rules in a
bowl. Player A draws a paper, reads the rules and designs how to
offend. The other players desing their defense without knowing what
the paper writes. They only known that the bowl has $n_1$ papers with
$\mathtt{rules_1}$, $n_2$ with $\mathtt{rules_2}$ etc. In other words
they know $p(x)$. If player A selects a rare paper ($p(x_i)$ is low),
the information gain is big ($-\log p(x)$), because the other players
have prepared their defense for the more probable scenarios. In this
case, player A has a big advantage. In the extremes, if the bowl
contains only one set of rules, the gain is zero; the other players
perfectly know what to expect.

I prefer the intuition behing the information gain because it helps me
understand why we use $-\log p(x_i)$. For example, with the **level of
surprise** you may wonder why not simply using $1 - p(x_i)$, which
nicely maps the surprise into an intuitive linear scale of $[0,
1]$. In general, any function $f: [0,1] \rigtharrow \mathbb{R}$ that
is continuously decreasing in its domain could play this role, so, why
choosing $-\log$? The information gain dictates that if we observe two
**independent** random samples, $x_i \sim X$ with information gain
$H(x_i)$ and $y_i \sim Y$ with information gain $H(y_i)$, we want the
total gain to equal the sum of the two. It makes sense. The logarithm
family is the only one supporting $H(p(x_i, y_i)) = H(p(x_i)p(y_i)) =
H(x_i) + H(y_i)$.

With this in mind, we can describe the entropy of a descrete
distribution as the **expected level of surprise** or the **expected
information gain** we will get after observing a sample:

\begin{equation}
\mathbb{H}(X) = \mathbb{E}_{X} [\texttt{information gain}] = - \sum p(x) \log p(x)
\end{equation}

Entropy has its origins in Information Theory. For anyone interested,
there are noumerous excellent resources with interpretations about
entropy <d-cite key="pml1Book,bishop2006pattern"></d-cite>. 

***

## Entropy for Uncertainty

Here we focus, on understanding how entropy can be used to measure the
uncertainty of a distribution. Surprise or information gain relate to
uncertainty. The more uncertain, the more surprised I will get by the
outcome. The more uncertain, the bigger my information
gain. Therefore, we can use entropy as a measure of the uncertainty of
a discrete predictive distribution:

$$ \mathbb{H}( \mathbf{y}|\mathbf{x}, \theta) = \sum_{c \in C} p(y_c|x, \theta) \log p(y_c|x, \theta) $$

Be careful with the log-nature of entropy, it can be tricky. For
example, in a binary classification problem, where the predictive
distribution is $\mathbf{p} = (p_1, 1-p_1)$, the entropy is shown in
the next figure:

<div class="row mt-3">
    <div class="col-sm-8 mx-auto mt-5 mt-md-0">
        {% include figure.html path="assets/img/IPML-images/entropy_binary_distribution/im_1.png" class="img-fluid rounded z-depth-1" zoomable=true %}
    </div>
</div>

As we can see, entropy runs fastly in the beginning and slows down
later. When the model predicts that the student will pass the MSc with
$70\%$, we can instantly interpret that the prediction is 30% away
from being absolutely certain. Another model that predicts $85\%$ pass
can be directly compared to the first, because what these $15$ units
are; they are 15 more units of belief (out of 100) if you are Bayesian
and $15/100$ more succeeds if you are a Frequentist and you can repeat
the experiment many times. Entropy makes such comparisons
difficult. In the example above with maximum uncertainty equal to
$H_{max} = log|\mathcal{C}|= 1$, the first prediction has $H_1=0.88$
and the second $H_2=0.61$. We know that the first prediction is more
uncertain, but how much? We cannot (directly) interpret how much more
certain the second model is.

***
## Split into Aleatoric and Epistemic component

Above, we used entropy to measure the uncertainty of a single model
(aleatoric uncertainty). In the Bayesian case, we have many models
$\theta_k$ drawn from the posterior. Entropy gives a convenient way to
first compute the total uncertainty and then split in into the
aleatoric and the epistemic component. The **total uncerainty is
entropy of the expected prediction**:

$$
H(\mathbf{y} | \mathbf{x}, \mathcal{D}) = - \sum_{c \in \mathcal{C}}
\tilde{p}(y_c | \mathbf{x}, \mathcal{D}) \log \tilde{p}(y_c |
\mathbf{x}, \mathcal{D})
$$

We remind you that the expected prediction is
$\tilde{\mathbf{y}} = \tilde{p}(\mathbf{y} | \mathbf{x}, \mathcal{D}) = \mathbb{E}_{\theta|\mathcal{D}} [f(\mathbf{x})] \approx
\frac{1}{K} \sum_k f(\mathbf{x}) $.

The aleatoric uncertainty is the expected entropy over the
$\mathbb{E}_{\theta|\mathcal{D}}[H(\mathbf{y}|\mathbf{x}, \theta)]$:

$$H_a(\mathbf{y} | \mathbf{x}, \mathcal{D}) = \mathbb{E}_{\theta|\mathcal{D}}[H(\mathbf{y}|\mathbf{x}, \theta)] \approx \frac{1}{K} \sum_k H(\mathbf{y}| \mathbf{x}, \theta_k)$$

It always true that $H(\mathbf{y} | \mathbf{x}, \mathcal{D}) >
H_a(\mathbf{y} | \mathbf{x}, \mathcal{D})$. The epistemic component is
the remainder, $H_e(\mathbf{y} | \mathbf{x}, \mathcal{D}) =
H(\mathbf{y} | \mathbf{x}, \mathcal{D}) - H_a(\mathbf{y} | \mathbf{x},
\mathcal{D})$. And, voila, we finally reached the very convenient form:

$$H = H_a + H_e $$


Let's dive into the above equations with a simple binary
classification example with two models sampled from the posterior. We
freeze the expected prediction to $\mathbf{p} = (p_1, p_2)$, coming
from $\mathtt{model 1}: \mathbf{p}^{(1)} = (p_1 - \Delta p, p_2 +
\Delta p)$ and $\mathtt{model 2}: \mathbf{p}^{(2)} = (p_1 + \Delta p,
p_2 - \Delta p)$. We change the value of $\Delta p$ to see how
aleatoric and epistemic uncertainty behave. The figure below
illustrates the evolution for $\mathbf{p} = (p_1=0.3, p_2=0.7)$.

<div class="row mt-3">
    <div class="col-sm-8 mx-auto mt-5 mt-md-0">
        {% include figure.html path="assets/img/IPML-images/entropy_binary_ensemble/gif_1.gif" class="img-fluid rounded z-depth-1" zoomable=true %}
    </div>
</div>

The same figure for an average prediction of $\mathbf{p} = (p_1=0.5, p_2=0.5)$.

<div class="row mt-3">
    <div class="col-sm-8 mx-auto mt-5 mt-md-0">
        {% include figure.html path="assets/img/IPML-images/entropy_binary_ensemble/gif_2.gif" class="img-fluid rounded z-depth-1" zoomable=true %}
    </div>
</div>

And some representative numbers in a table for $\mathbf{p} = (p_1=0.8, p_2=0.2)$.


| $\mathbf{p^{(1)}}$| $H_1$ | $\mathbf{p^{(2)}}$| $H_2$  | $\mathbf{p}$| $H$ | $H_a$ | $H_e$
| :------------:    | :----:| :----:            | :----: |:----:        | :---:| :--: | :--: | 
| $(0.8, 0.2)$ | $0.72$ | $(0.8, 0.2)$ | $0.72$ | $(0.8, 0.2)$ | $0.72$ | $0.72 \; (100\%)$ | $0 \; (0\%)$ |
| $(0.85, 0.15)$ | $0.61$ | $(0.75, 0.15)$ | $0.81$ | $(0.8, 0.2)$ | $0.72$ | $0.71 \; (98.43\%)$ | $0.01\; (1.57\%)$ |
| $(0.9, 0.1)$ | $0.47$ | $(0.7, 0.3)$ | $0.88$ | $(0.8, 0.2)$ | $0.72$ | $0.68\; (93.52\%)$ | $0.05\; (6.48\%)$ |
| $(0.95, 0.05)$ | $0.29$ | $(0.65, 0.35)$ | $0.93$ | $(0.8, 0.2)$ | $0.72$ | $0.61 \; (84.53\%)$ | $0.11\; (15.47\%)$ |
| $(1, 0)$ | $0$ | $(0.6, 0.4)$ | $0.97$ | $(0.8, 0.2)$ | $0.72$ | $0.49 \; (67.2\%)$ | $0.24 \; (32.75\%)$ |


We observe that due to the log-nature of entropy, it is difficult to
interpret aleatoric and epistemic uncertainties as absolute values or
as percentages of the total uncertainty. If somebody tells you the
total uncertainty in a binary classification problem is $H = 0.72$
with maximum being $1$, you don't get how uncertain the final
prediction is. If (s)he continues, that out of $H=0.72$, the aleatoric
uncertainty is $H_a=0.61$ ($84.53\% of H$) and the epistemic
$H_e=0.11$ ($15.47\% of H$), you can understand that roughly speaking
the models aggree in the prediction and most of the uncertainty comes
from the model-side. All of these would be much clearer, if you simply
knew that there were two models with predictions $p^{(1)} = (0.95,
0.05)$ and $p^{(2)} = (0.65, 0.35)$; You could then understand that
even though they both vote for option 1, they significantly disagree
on how certain they are, an information that is lost behind $H_e$ is
$15.47\%$ of $H$. But, this inspection of all different model
predictions is not that easy if you have many models or just the
posterior distribution. In these cases, entropy provides convenient
summary statistics that respect $H = H_e + H_a$.

***

## Conclusion

### Advantages 

Entropy maps any categorical distribution to three summary statistics;
the aleatoric $H_a$, the epistemic $H_e$ and the total uncertainty $H
= H_a + H_e$. It simply requires a way to draw samples $\theta_k \sim
p(\theta | \mathcal{D})$ and access to the model $f_\theta(\mathbf{x})$.

The range of uncertainties is $[0, H_{max}]$. $H = 0$ means zero
uncertainty, $H = H_{max}$<d-footnote>$H_{max}$ is easily computed by
$\log |\mathcal{C}|$, where $|\mathcal{C}|$ is the number of classes
in the classification problem.</d-footnote> means maximum uncertainty,
with appropriate internal sorting, i.e. if $H_1 > H_2$ then prediction
$1$ is more uncertain than prediction $2$.

Choosing to trust or not the prediction, can be easily decided based
on the **epistemic entropy**. Check the following table:

| $H_a$| $H_e$ | Take-away | Probable Interpretation |
|:---- |:----- | :-------: | :------------: |
| low  | low   | Trust the prediction | All models provide the same certain prediction |
| high | low   | Trust the uncertain prediction | For this input, we known that we can predict with some uncertainty. |
| low  | high  | Don't trust the prediction | The specific input is probably out of the data manifold. |
| high | high  | Don't trust the prediction | The specific input is probably out of the data manifold. |

If $H_e$ is small, models aggree. Trust their outcome. If they are all
certain, follow the prediction. If they are all uncertain, probably
the features are not enough to separate the classes. If $H_e$ is big,
you cannot trust the prediction, because the models have not been
trained on similar points.

### Disadvantages

The table above is very helpful. But what is low and what is high? It
is difficult to specify a specific number. As we discussed in the
examples, the log-scale of entropy makes their interpretation as
asbolute values difficult. We can choose to interpret them as
percentages of the maximum entropy. Even in this case, it is not that
straightforawrd. For example, roughly speaking, for binary problems
and $\log_2$ computations, if $0 \leq H \leq 0.2 * H_{max}$, the
prediction is very certain (close to $95\% - 5\%$). Unfortunately, It
is even more difficult to say up to which limit $H_e$ is high or low,
because it is impacted by the absolute value of $H_a$. We discussed it
extensively in the Example. I think that this is the big
disadvantage. For this reason, most of the times, we need further
investigation, e.g. what pcg of models agree on the most probable
class, what is the difference in minimum?

