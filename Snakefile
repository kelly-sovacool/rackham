
SUBMOD_DIR = '_extensions/rackham/UMich_Dissertation_template'
EXT_DIR = '_extensions/rackham'

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
        cp {input.tex_cls} {params.ext_dir}
        cp {input.pkgs} {params.ext_dir}
        """