
SUBMOD_DIR = '_extensions/rackham/UMich_Dissertation_Template'
EXT_DIR = '_extensions/rackham'

wildcards = glob_wildcards('chapters/{file}.qmd')

rule render_pdf:
    input:
        yml = '_quarto.yml',
        qmd = expand('chapters/{file}.qmd', file = wildcards.file)
    output:
        pdf = '_book/dissertation.pdf'
    shell:
        """
        quarto render --to rackham-pdf
        """

rule copy_submod_files:
    input:
        tex_cls=f"{SUBMOD_DIR}/thesis-umich.cls",
        pkgs=f"{SUBMOD_DIR}/packages.tex"
    output:
        tex_cls=f"{EXT_DIR}/thesis-umich.cls",
        pkgs=f"{EXT_DIR}/packages.tex"
    params:
        ext_dir=EXT_DIR
    shell:
        """
        cp {input.tex_cls} {output.tex_cls}
        cp {input.pkgs} {output.pkgs}
        """