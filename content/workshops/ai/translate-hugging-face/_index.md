+++
date = "2025-03-15T12:00:00Z"
lastmod = "2025-03-15T12:00:00Z"
publishdate = "2025-03-15T12:00:00Z"

title = "Hugging Face AI Translator Workshop"
description = ""
author = "Cengiz Gunay"

weight = -5

outputs = ["Reveal"]

[reveal_hugo]
custom_css = "css/docker.css"
margin = 0.1
+++

{{< reveal-titlepage figure="/softdev2-resources/images/ai/huggingface-logo.svg" width="100px" >}}

---

{{% section %}}

### What is Hugging Face?

One stop shop for all AI tasks simplified: https://huggingface.co

{{% figure src="/softdev2-resources/images/ai/hugging-face-home-screenshot_20250315.png" height="500" 
    style="" %}}

**Create an account now!**

---

Crowd-sourced resources:

- **Models**: AI models ready to download and use.
- **Datasets**: Download training/testing datasets for building models.
- **Spaces**: Cloud-hosted AI apps, ready to use.

{{% figure src="/softdev2-resources/images/ai/hugging-face-home-screenshot_20250315.png" height="500" 
    style="" %}}

{{% /section %}}

---

{{% section %}}

### A English-to-Spanish Translator App on HF

https://huggingface.co/spaces/gradio-tests/english_to_spanish

## Try it!

<iframe
	src="https://gradio-tests-old-english-to-spanish.hf.space"
	frameborder="0"
	width="850"
	height="450"
></iframe>

---

### Use this app from a new Python program!

Click on "Use via API" to get Python code.

{{% figure src="/softdev2-resources/images/ai/hugging-face-translate-api-screenshot_20250315.png" height="500" 
    style="" %}}
    
---

### Or create a new Javascript program!

Select Javascript.

{{% figure src="/softdev2-resources/images/ai/hugging-face-translate-api-javascript.png" height="500" 
    style="" %}}


{{% /section %}}

---

{{% section %}}

### How does it work?

{{% figure src="/softdev2-resources/images/ai/hugging-face-translate-space-gradio.png" height="600" 
    class="" %}}

---

### Connects to a model

{{% figure src="/softdev2-resources/images/ai/hugging-face-translate-space-linked-model.png" 
    height="300" class="" %}}

Model page:
https://huggingface.co/Helsinki-NLP/opus-mt-en-es

---

### Under Helsinki-NLP

https://huggingface.co/Helsinki-NLP

Select any model and we can build a new translator!

{{% /section %}}

---

### Build your own space

- select a model (such as the translate models)
- click Deploy and select Spaces 

<div class="side-by-side">
{{% figure src="/softdev2-resources/images/ai/hugging-face-model-menu-space.png" 
    height="350" class="" %}}
{{% figure src="/softdev2-resources/images/ai/hugging-face-model-deploy-modal.png" 
    height="350" class="" %}}
</div>

- or select an existing space and duplicate it



---

### Javascript call to the API

```js
$ cat index.js 
import { client } from "@gradio/client";

const app = await client("https://gradio-tests-english-to-spanish.hf.space/");
const result = await app.predict("/predict", [
                                "Howdy!", // string  in 'text' Textbox component
        ]);

console.log(result.data);
```

```bash
$ npm i -D @gradio/client
$ node index.js 
[ '¡Hola!' ]
```

See code here: https://github.com/grizzlyhacks/workshop-hugging-face-translate

---

### Running it locally

<div class="side-by-side">
{{% figure src="/softdev2-resources/images/ai/hugging-face-translate-space-local.png" 
    height="350" class="" %}}
{{% fragment %}}
{{% figure src="/softdev2-resources/images/ai/hugging-face-translate-space-local-options.png" 
    height="350" style="" %}}
{{% /fragment %}}
</div>

{{% fragment %}}
Takes much longer and requires resources on your machine!
{{% /fragment %}}

