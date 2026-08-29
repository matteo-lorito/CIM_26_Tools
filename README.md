# CIM 26 Tools — Sound Corpus Preparation and Descriptor Preprocessing

Two self-contained Max tools for preparing audio corpora and descriptor
datasets for corpus-based composition and improvisation. They bring standard
data-science preprocessing practices into Max, so that a musician can inspect,
homogenise, slice, and condition corpus material without leaving the patcher
environment or writing any Python.

These tools accompany the paper *A Collection of Tools for Sound Corpus
Preparation and Descriptor Preprocessing* (XXV Colloquium on Musical
Informatics, L'Aquila, 2026). See [Citation](#citation) below.

## The two tools

**Tool 1 — Audio Corpus Preparation.** Inspects a folder of audio files and
reports the sample rate, channel count, and duration of each, with quartile
statistics and a duration histogram. Filters the corpus by file property,
homogenises sample rate and channel count (via EARS), and slices material into
analysis units — either interactively, with FluCoMa novelty detection and
per-segment audition for short material, or automatically at a fixed length for
long material. All derivative output is written to named subfolders; the
originals are never altered.

**Tool 2 — Descriptor Preprocessing and Dataset Construction.** Extracts
descriptors from a prepared corpus, then runs a four-step pipeline — imputation
of missing values, correlation-based feature pruning, a signed log1p transform,
and percentile-based winsorisation — each with Off / Auto / Manual control and a
preview-and-commit workflow. Diagnostics are shown both in-patch and as an
external HTML report. A data-selection stage lets a query result be split,
exported, or re-injected into extraction. Final scaling (normalisation,
standardisation, or robust scaling) is applied through FluCoMa.

## Requirements


- **Max 9.1.0** or later (the pipeline uses the V8 JavaScript engine, available
  from Max 9).
- **FluCoMa 1.0.8** — installable through the Max Package Manager.
- **Bach 0.8.1** and **EARS 0.1.0** — installable through the Max Package Manager.

## Installation

1. Clone or download this repository:
   ```
   git clone https://github.com/matteo-lorito/CIM_26_Tools.git
   ```
2. Install the FluCoMa and Bach/EARS packages from the Max Package Manager if
   they are not already present.
3. Open the Max project 
   apps, and say which patch to open first for each tool. -->

## Quick start

1. **Tool 1.** Open Tool 1, load the sample corpus folder, and inspect its
   duration and format properties. Slice it into analysis units and load the
   result back into the inspector.
2. **Tool 2.** Open Tool 2, drop the sliced corpus, choose the descriptors, and
   run *Analysis* to build the dataset. Configure the pipeline, *preview* to see
   the diagnostics, then *commit* and export the processed dataset.

The interactive tutorials in the project walk through these steps in detail,
including how to read each panel of the diagnostics report.

## Repository structure

```
CIM_26_Tools/
├── Tool1_CorpusPreparation/     # Tool 1 Maxproject patch(es), use cases
├── Tool2_Preprocessing/         # Tool 2 Maxproject patch(es), preprocess.js, report.html, diagnostics panel, use cases
├── docs/                        # user manual (PDF)
├── tutorials                    # A tutorial on Tool 2 use
└── README.md
```

## Sample data


A small example corpus is provided so the tools can be run immediately, together
with a pre-extracted descriptor dataset (JSON) so Tool 2's preprocessing can be
tried without re-running extraction. A user manual describing the role of the parameters and how to change them.
An extensive tutorial and some use-cases

**Licence note:** all sample audio here is [fill in: CC0 / public domain / your
own recordings] and may be redistributed freely. Do not add copyrighted audio to
this repository.

## Documentation

- **User manual:** [Manuals] (docs/)
- **Interactive tutorials:** 
- **Use cases:** included in the Max project.

## Citation

If you use these tools, please cite:

```bibtex
@inproceedings{lorito2026corpus,
  author    = {Matteo Lorito},
  title     = {A Collection of Tools for Sound Corpus Preparation and
               Descriptor Preprocessing},
  booktitle = {Proceedings of the XXV Colloquium on Musical Informatics (CIM)},
  address   = {L'Aquila, Italy},
  year      = {2026}
}
```

## License

The code in this repository (Max patches, JavaScript, and HTML) is released
under the [MIT License](LICENSE).

The accompanying paper is distributed under
[CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/).
