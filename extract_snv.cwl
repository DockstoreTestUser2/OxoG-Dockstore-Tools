#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
id: "extract_snvs"
label: "extract_snvs"

description: |
    This tool will extract SNVs from INDEL VCFs

dct:creator:
    foaf:name: "Solomon Shorser"
    foaf:mbox: "solomon.shorser@oicr.on.ca"

requirements:
  - class: DockerRequirement
    dockerPull: pancancer/pcawg-oxog-tools:1.0.0

inputs:
    - id: "#vcf"
      type: File
      inputBinding:
        position: 1

outputs:
    extracted_snvs:
      type: File
      outputBinding:
        glob: "*.extracted-SNVs.vcf.gz"

baseCommand: /opt/oxog_scripts/extract_snvs_from_indels.sh
