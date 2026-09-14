---
layout: post
title:  "July '26 - Everything I Learned" 
date:   2025-07-30 10:00:00
categories: EIL
---

Previously:
- [EIL June '26](https://hasantayyar.net/eil/2026/07/01/everything-i-learned-june/)

#### AWS Cert Manager updates

AWS Cert Manager (ACM) supports ACME protocol now. I will be fine with Lets Encrypt but good to know.

https://aws.amazon.com/blogs/aws/automate-public-tls-certificate-issuance-with-acme-support-in-aws-certificate-manager/

Until now, ACM public certificates were designed to be used almost exclusively with integrated AWS resources (like ALBs, CloudFront, or API Gateway) because AWS managed the private key. If you needed public certificates for customer-managed or non-integrated infrastructure, you had to either mess with complex custom lambda/export scripts or look outside AWS entirely. Let's Encrypt was almost the most preferred approach.

The new AWS cert manager ACME support includes:
1. Standard tools: Use Certbot, cert-manager, or acme.sh; private keys stay locally.
2. Centralized controls: Administrators pre-approve domains and restrict certificate scope and key types, without giving application teams DNS credentials.
3. Unified visibility: Certificates appear in ACM, with monitoring and audit trails through CloudWatch and CloudTrail.
4. Automatic renewal: Reduces operational work as certificate lifetimes become shorter.

Basically what ACME provides.

#### Money sellers

My two-year-old nephew called the people at the bank “money sellers.” Technically, he was right. Too obviously right?

At his age, a place where you get bread is a bread shop. A place where you get money must follow the same logic. We laughed, of course. Then I thought about all the correctness of this statement and found it slightly less funny. This is exactly how modern modey works. Private banks sells money to create new money.

**Private banks create money when they issue loans. But that fact isn’t the same thing as [Modern Monetary Theory (MMT)](https://en.wikipedia.org/wiki/Modern_Monetary_Theory).** It is an established feature of banking, explained by the [Bank of England](https://www.bankofengland.co.uk/quarterly-bulletin/2014/q1/money-creation-in-the-modern-economy).

Suppose a bank lends you €10,000:

| What it records                               |  Amount |
| --------------------------------------------- | ------: |
| New money in your account, available to spend | €10,000 |
| Your debt to the bank                         | €10,000 |

The bank creates the deposit **alongside your promise to repay**. It doesn’t need to transfer €10,000 from another customer’s savings account first. Money has been created, but you haven’t gained €10,000 in net wealth—you also owe €10,000. Repaying the principal reverses that creation. Banks remain constrained by capital, liquidity, regulation and lending risks. [Bank of England](https://www.bankofengland.co.uk/quarterly-bulletin/2014/q1/money-creation-in-the-modern-economy)

**MMT makes a broader argument about governments that issue their own currency:** their spending capacity is fundamentally constrained by real resources and inflation, rather than by needing to collect money first like a household. It incorporates bank money creation, but its policy conclusions go much further and are disputed.

### Neo-Nazi Symbolism

[https://de.wikipedia.org/wiki/Fourteen_Words](https://de.wikipedia.org/wiki/Fourteen_Words)

Just learned a new numeric symbolism around neo nazis. “Fourteen Words” is a white supremacist slogan first used by American neo-Nazi David Lane. It frames racist ideology as protecting white people and their children. Neo-Nazis use the number **14** as shorthand, often combined into **14/88**, where **88** can stand for “Heil Hitler.”
