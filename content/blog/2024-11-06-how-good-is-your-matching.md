+++ 
title = "How Good Is Your Matching?" 
date = "2024-11-06T20:21:55-05:00"
draft = false 
tags = ["Cross-post", "Matching", "Metadata", ] 
categories = ["Explainers"] 
archives = ["2024"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/matching-how-good/string-id-matching-crown.png" 
images = ['/img/blog/matching-how-good/string-id-matching-crown.png']
author = "Dominika Tkaczyk and Adam Buttrick" 
description = "TKTKTK"
+++ 


{{< figure src="/img/blog/matching-how-good/string-id-matching-crown.png" alt="" class="featured-figure" >}}

The fourth blog post about metadata matching by ROR’s Adam Buttrick and Crossref’s Dominika Tkaczyk explains how to measure the quality of different matching strategies with an evaluation dataset and metrics. 


{{% callout color="green" icon="no-icon" %}}

The below is cross-posted from the Crossref blog. [Read the original post.](https://www.crossref.org/blog/how-good-is-your-matching/) 

{{% /callout %}} 


In our [previous blog post](/blog/2024-08-28-the-myth-of-perfect-metadata-matching/) in this [series](/tags/matching), we explained why no metadata matching strategy can return perfect results. Thankfully, however, this does not mean that it's impossible to know anything about the quality of matching. Indeed, we can (and should!) measure how close (or far) we are from achieving perfection with our matching. Read on to learn how this can be done!

How about we start with a quiz? Imagine a database of scholarly metadata that needs to be enriched with identifiers, such as ORCIDs or ROR IDs. Hopefully, by this point in our series this is recognizable as a classic matching problem. In searching for a solution, you identify an externally-developed matching tool that makes one of the below claims. Which of the following would demonstrate satisfactory performance?

1. It is a cutting-edge, state-of-the-art, intelligent-as-they-come, bullet-proof technology! All the big players are using it. You won't find anything better!
2. The tool was tested on the metadata of 10 articles we authored, and many identifiers were matched.
3. The quality of our matching is 98%.

Okay, okay, trick question. The correct answer here is to opt for secret answer #4: "I wouldn't be satisfied by any of these claims!" Let's dig in a bit more to why this is the correct response.

## The importance of the evaluation

Before we decide to integrate a matching strategy, it is important to understand as much as possible about how it will perform. Whether it is used in a semi or fully automated fashion, metadata matching will result in the creation of new relationships between things like works, authors, funding sources, and institutions. Those relationships will then, in turn, be used by the consumers of this metadata to guide their understanding and perhaps even to make important decisions about those same entities. As organisations providing scholarly infrastructure, we must therefore take it as our paramount responsibility to understand any caveats or shortcomings of the scholarly metadata we make available, including that resulting from matching.

Proper evaluation is what allows us to do this, as it is impossible to know how well a given matching strategy will perform in its absence. This is true no matter how simple or complex a matching strategy may seem. Complex methods can be tailored to data with specific characteristics and might fail when faced with something different from this. Simple methods might be only appropriate for clean metadata or a narrow set of use cases.

Beyond complexity, matching strategies themselves vary widely in character, inheriting biases from their design, training data, or how a problem has been formulated. Some prioritise avoiding false negatives, while others focus on minimising false positives. Even a generally high-performing strategy might not be perfectly aligned with your specific needs or data. In some cases, the task also itself might be too challenging, or the available metadata too noisy, for any matching strategy to perform adequately.

Evaluation is, again, how we understand these nuances and make informed decisions about whether to implement matching or avoid it altogether. By now, it should also be clear that the notion "we don't need to evaluate" is far from ideal! Given its importance, let's explore how evaluation is actually done.

## Evaluation process 

In general, a proper evaluation procedure should follow the following steps:

1. Preparation of an evaluation dataset containing many examples of matching inputs and the corresponding expected outputs.
2. Applying the strategy to all inputs from the dataset and recording the responses.
3. Comparing the expected outputs with the outputs from the strategy.
4. Converting the results of the above comparison into evaluation metrics.

From this accounting, we can see that there are two primary components for the evaluation process: an evaluation dataset and metrics.

### Evaluation dataset

It's useful to conceive an evaluation dataset as the specification for an ideal matching strategy, describing what would be returned from our forever-elusive perfect matching. When creating such a dataset, what this means in practice is that it should contain a number of real-world, example inputs, along with the corresponding ideal or expected outputs, and that all data should be in the same format as the strategy is expected to process. The outputs should themselves also confirm the strategy's overall requirements, for example, by being consistent with its cardinality, meaning whether zero, one, or multiple matches should be returned and under what circumstances. In terms of size, it's generally useful to calculate the ideal number of evaluation examples using a sample size calculator or using [standardised measures](https://doi.org/10.1520/E0122-17R22), but as a quick rule of thumb: less than 100 examples is probably insufficient, more than 1,000 or 2,000 is generally acceptable.

It is also important that the evaluation dataset be representative of the data to be matched in order to ensure reliable results. Using unrepresentative data, even if convenient, can lead to biassed or misleading evaluations. For example, if matching affiliations from various journals, building an evaluation dataset solely from one journal that already assigns ROR IDs to authors' affiliations might be tempting. The data, having been already annotated, allow us to avoid the tedious work of labelling, and we might even know that it is produced by a high-quality source.  This is still, unfortunately, a flawed approach. In practice, such datasets are unlikely to represent the entire range of affiliations to be matched, potentially leading to a significant discrepancy between the evaluated quality and the actual performance of the matching strategy, when applied to the full dataset. To assess a matching strategy's effectiveness, we have to resist shortcuts and instead do our best to create truly representative evaluation datasets to be confident that we've accurately measured their performance.

### Evaluation metrics

Evaluation metrics are what allow us to summarise the results of the evaluation into a single number. Metrics give us a quick way to get an estimation of how close the strategy was to achieving perfect results. They are also useful if we want to compare different strategies with each other or decide whether the strategy is sufficient for our use case, removing the need to compare countless evaluation examples from different strategies against one another.

The simplest metric is [accuracy](https://en.wikipedia.org/wiki/Accuracy_and_precision), which can be calculated as the fraction of the dataset examples that were matched correctly. While a commonsense benchmark, accuracy can be misleading, and we generally do not recommend using it. To understand why, let's consider the following small dataset and the responses from two strategies:

| Input    | Expected output | Strategy 1   | Strategy 2   |
| -------  | --------------- | ------------ | ------------ |
| string 1 | ID 1            | ID 1         | ID 1         |
| string 2 | ID 2            | ID 3         | Empty output |
| string 3 | Empty output    | Empty output | Empty output |

Both strategies achieved the same accuracy, 0.67, making one mistake each on the second affiliation string. However, a closer examination reveals that these error types are distinct. The first strategy matched to an incorrect identifier, while the second refused to return any value illustrating the limitation of accuracy as a measure: it generally fails to capture important nuances in strategy behaviour. In our example, the first strategy appears more permissive, returning matches even in unclear circumstances, while the second is more conservative, withholding them when uncertain. Although using such a small dataset would preclude drawing any definitive conclusions, it highlights how relying on accuracy alone can obscure differences in performance.

For evaluating matching strategies, we instead recommend using two metrics: [precision and recall](https://en.wikipedia.org/wiki/Precision_and_recall). To recap from our previous blog post:

* Precision is calculated as the number of correctly matched relationships resulting from a strategy, divided by the total number of matched relationships. It can also be interpreted as the probability that a match is correct. Low precision indicates a high rate of false positives, which are incorrect relationships created by the strategy.
* Recall is calculated as the number of correctly matched relationships resulting from a strategy, divided by the number of true (expected) relationships. It can also be interpreted as the probability that a true (correct) relationship will be created by the strategy. Low recall means a high rate of false negatives, which are relationships that should have been created by the strategy but were not made.

Applying these measures to our prior example, the strategies achieved the following results:

* Strategy 1: accuracy 0.67, precision 0.5, recall 0.5
* Strategy 2: accuracy 0.67, precision 1.0, recall 0.5

As we can see, while both strategies have the same accuracy, using precision and recall better describes the difference between the two sets of results. Strategy 1's lower precision indicates it made false positive matches, while Strategy 2's perfect precision shows that it made none. The identical recall scores show both identified half of the possible matches. 

Of course, results calculated using such a small dataset are not very meaningful. If we obtained these scores from a large, representative evaluation dataset, it would indicate to us that Strategy 1 risks introducing many incorrect relationships, while Strategy 2 would be unlikely to do so. In both cases, we would still expect approximately half of the possible relationships to be missing from the strategies' outputs.

Which one is more important to prioritise, precision or recall? It depends on the use case. As a general rule, if you want to use the strategy in a fully automated way, without any form of manual review or correction of the results, we recommend paying more attention to precision. Privileging precision will allow you to better control the number of incorrect relationships added to your data. If you want to use the strategy in a semi-automated fashion, where there is a manual examination of and a chance to correct the results, pay more attention to recall. Doing so will guarantee that enough options are presented during the manual review stage and fewer relationships will be missed as a result.

To get a more balanced estimation of performance, we can also consider both precision and recall at the same time using a measure called [F-score](https://en.wikipedia.org/wiki/F-score). F-score combines precision and recall into a single number, with variable weight given to either aspect. There are three commonly used types, each calculated as the weighted [harmonic mean](https://en.wikipedia.org/wiki/Harmonic_mean) of precision and recall:

* F0.5: Precision is weighted more heavily. It can be understood as a score that is 50% more sensitive to precision than recall. A high F0.5 score indicates a measure of performance that minimises false positives.
* F1: Equal weight is given to both precision and recall. It can be interpreted as the most balanced score in this set. High F1 indicates good overall performance, with both false positives and false negatives being minimised equally.
* F2: Recall is weighted more heavily. It can be understood as a score that is 50% more sensitive to recall than precision. A high F2 score indicates a measure of performance where false negatives are minimised.

Each of these variants allows for fine-tuning the evaluation metric to align with your expectations for a specific matching task. Choose whichever reflects the relative importance of precision versus recall for your use case.

To summarise, to avoid falling prey to misleading sales pitches or silly quizzes, it is important to have a good understanding of the performance of any strategies you are building or integrating. With thorough evaluation, including a representative dataset and carefully considered metrics, we can estimate the quality of matching and, by extension, its resulting relationships.

Now that we've covered how to evaluate effectively, we can move on to some other aspects of metadata matching. Our next blog post will take a final, more holistic view of matching, exploring some complementary considerations to all of the preceding. Stay tuned for more!

{{% callout icon="fa-envelope" %}}

Questions? Contact adam@ror.org. 

{{% /callout %}} 