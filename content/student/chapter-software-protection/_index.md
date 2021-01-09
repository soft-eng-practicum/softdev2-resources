+++
title = "Software Protection"
outputs = ["Reveal"]
# chapter number
weight = 12
+++

{{% reveal-titlepage figure="/softdev2-resources/images/protection/softprotection.png" %}}

---

#### Your rights for protecting<br> your software creations

We are not here to teach details of the legal code, but these basics
will be relevant in the career of any sofware developer.

**Definitions:**
1. Intellectual property

**Establishing protection:**
1. Copyright
1. Patents

**Declaring terms for users:**
1. Licensing

---

#### Software is intellectual property (IP)

- Like any other artistic and intellectual creation
- Can be protected legally
- Several options to choose from

{{% fragment %}}

Two major forms of IP protection for software:

1. Copyright
2. Patent

{{% /fragment %}}

---

<section>

#### Copyright Law

Copyright is a form of IP protection that 
gives its owner the right to:
1. reproduce the copyrighted work
2. prepare derivative works based upon the work
3. distribute copies of the work to the public
4. perform the copyrighted work publicly 
5. display the copyrighted work publicly

{{% fragment %}}

- Copyright protects the expression of an 
idea, but not the idea itself
- Copyright protection extends to books, 
maps, charts, photographs, movies, audio 
recordings, etc. 

{{% /fragment %}}

---

#### Components of Software

- The Copyright Act of **1976** was amended in 
**1980** to extend copyright protection to 
computer software

{{% fragment %}}

- What is Software?
  - Literal Elements:
    - Source Code
    - Object Code
  - Non-Literal Elements: 
    - program architecture, structure, sequence, 
organization and computer-user interface 

{{% /fragment %}}

---

#### Source Code and Object Code Are Protected

{{< figure src="/softdev2-resources/images/protection/binary-code.png" >}}

---

#### But What About the GUI? 

{{< figure src="/softdev2-resources/images/protection/excel-gui.png" >}}

---

#### “Look and Feel” of Software

- Most courts that have examined this issue have sided with the
copyright protection of the graphical user interface

{{% fragment %}}

- **Rationale:** Copyright protection extends not only to the literal
elements of a program, i.e., its source and object codes, but also to
its protected "nonliteral" elements, such as the program architecture,
structure, sequence, organization and computer-user interface

> If non-literal element A in Software AA is **substantially similar** to
the non-literal element B in Software BB, then copyright infringement

{{% /fragment %}}

---

#### Non-Literal Elements of Software

- GUI, structure of the code, etc. 
- There are various tests for determining what non-literal elements of
  software are protected, but the most influential test is the
  _abstraction-filtration-comparison_ test.
  
---

### How to Apply for Copyright Protection?

{{% fragment %}}

- No need to apply
- Just show evidence that its your creation
- Records like Github or social media useful

{{% /fragment %}}

{{% fragment %}}

If you want official recognition:
- You can also noterize copies
- And apply at the US Copyright Office
- Learn more [here](https://ggc-sd.github.io/LegalSoftDevApps/paper_ch3.html)

{{% /fragment %}}

</section>

---

<section>

#### Patent Law

> Patent protection applies to **inventions**.

{{% fragment %}}

The Patent Act requires that an inventions satisfy four conditions:

1. **Eligible Subject Matter**
1. **Usefulness**
1. **Novelty** (=You have to be the first one to figure the invention out)
1. **Non-obviousness** (=Inventive Step)

{{% /fragment %}}

{{% fragment %}}

> Patent grants the owner exclusive rights to make, use, sell, and/or import the claimed invention 

{{% /fragment %}}

---

#### Patent vs Copyright

- Copyright needs to only be original and have a minimum degree of
  creativity, but patents should be new and non-obvious to a person of
  ordinary skill in a field
- Copyright exists upon creation of an expressive work, but a patent
  has to be granted by a government authority (USPTO) after filing an
  application and review
- There are exceptions to copyright protection, such as fair use and
  independent creation. There are no such exceptions to patent rights
- In short, patents grant stronger protection but are also harder to obtain

---

#### Software Patents Are Controversial

{{< figure src="/softdev2-resources/images/protection/software-patents-protest.png" >}}

---

#### 35 U.S.C. § 101

> Whoever invents or discovers any **new** and **useful** _process, machine,
> manufacture, or composition of matter_, or any new and useful
> _improvement_ thereof, may obtain a patent therefore, subject to the
> conditions and requirements of this title.

---

#### Patent #6,293,874 “User-operated amusement apparatus for kicking the user's buttocks” 

{{< figure src="/softdev2-resources/images/protection/patent-example-6,293,874.png" height="500px">}}

---

#### #4,022,227: A method of concealing partial baldness

{{< figure src="/softdev2-resources/images/protection/patent-example-4,022,227.png" height="500px">}}

---

#### #6,004,596

{{< figure src="/softdev2-resources/images/protection/patent-example-6,004,596.png" height="500px">}}

---

#### #5,711,094 

A method of swinging a golf club comprising the steps of: 

> wearing a first shoe on a rear foot as a golfer addresses a golf ball, the first shoe having a first sole and a first heel and a plurality of spikes extending downwardly from at least one of the first sole and the first heel, and a second shoe on a front foot as the golfer addresses a golf ball, the second shoe having a second sole and a second heel, the second sole and the second heel being smooth and spikeless; 
>executing a backswing as the first shoe holds the rear foot in position by engagement between the spikes and ground; 
>executing a downswing having translational and rotational components; and 
>rotating and sliding the front foot as the second shoe slides and rotates along the ground.

</section>

---
<section>

#### Software Patents

Patents are granted to limited categories:
1. processes
1. machines 
1. manufactures 
1. compositions of matter

{{% fragment %}}

- Software patents are **process** patents, because a software is essentially a process. 
- Software is essentially a method of doing something, with statements telling the computer to do XYZ
- Another common form of process patents are methods of doing business, or business methods

{{% /fragment %}}

---

#### Other possibilities?

- Tax preparation (i.e. evasion) patents
- Methods of doing business
- Methods of accounting, practicing law, practicing medicine, or other professions?
- Methods on pure math?
- Plot lines?

---

#### Jurisdictions Disagree

- Art 52(2)(c) of the European Patent Convention states that “programs for computers” “as such” are not inventions, and therefore are not patentable.
- Art. 27.1 TRIPS Agreement: “patents shall be available for any inventions, whether products or processes, in all fields of technology”.

---

#### Meanwhile in US…

{{< figure src="/softdev2-resources/images/protection/us-software-patents-chart.png" height="500px" 
    caption="Software Patents (USA, 1985-2005)">}}
    
---

#### Software Patents in US	

- In the United States, computer software is patentable subject matter, but the law in this area has been through many historical ups and downs and is arguably still evolving
- The question is when software are patentable processes and when they are unpatentable abstract ideas

---

#### Oh Well...

{{< figure src="/softdev2-resources/images/protection/us-software-patents-news-2013.png" height="500px" 
    alt="News article with the title 'Surprise! The Law of Subject Matter Eligibility Remains Unsettled'">}}

</section>

---
<section>

#### What is Patentable?

- A unique programmed computer
- Computer-readable medium with ordered data or data structure
- Process that manipulates physical objects (i.e., computer performs one step of a multi-step process)
- Process manipulates data representing physical objects or conditions to achieve a practical application
- Measure physical object
- Process data
- Display/analyze result

---

#### What is Not Patentable?

- Pure mathematical formula, or process of solving mathematical theorem
- “Functional” descriptive material per se (e.g., source code, data structure)
- “Non-functional” descriptive material on medium (e.g., music on a CD)
- Energy, magnetism _per se_
- Process that manipulates abstract ideas, concepts or pure numbers without any practical real world application

</section>

---

#### Resources

- Current software licensing and patent issues:
https://www.ipwatchdog.com/

<span></span>

#### Credits

- Pooya Shoghi helped with slide contents
- Dr Anca Doloc-Mihu supervised students Jamaima Endres and Zachary A Moore for constructing the resource website

{{% reveal-prevnext-links %}}

