# Rackham Dissertation Format

A Quarto template for U-M Rackham dissertations. 
Based on the unofficial [thesis-umich](https://github.com/umangv/thesis-umich) LaTeX template.

Rackham has stringent [formatting guidelines](https://rackham.umich.edu/navigating-your-degree/formatting-guidelines/), 
yet refuses to provide a template 🧐.
Using this unofficial template does not guarantee that you will meet their 
formatting guidelines.

## Installing

### For a new document

You can use this as a template to create a new dissertation. 
To do this, use the following command:

```bash
quarto use template kelly-sovacool/rackham
```

This will install the extension and create an example qmd file that you can use as a starting place for your article.

### For an existing document

You may also use this format with an existing Quarto project or document.
From the project or document directory, run this command:

```bash
quarto install extension kelly-sovacool/rackham
```

## Using

To use the format, specify the format name `rackham-pdf` in your document yaml:

```yaml
format:
  rackham-pdf:
    keep-tex: true
```

You can preview the rendered template at <http://sovacool.dev/rackham/>

<!--
## Format Options

*TODO*: If your format has options that can be set via document metadata, describe them.

## Example

Here is the source code for a minimal sample document: [template.qmd](template.qmd).
-->
