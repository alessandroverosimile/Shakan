# Shakan

Shakan is a framework for the training and inference of **Oblique Decision Trees (ODTs)**, with a focus on efficient and scalable execution.

## Overview

This repository contains implementations and tooling for working with **Oblique Random Forests (ORFs)**, an extension of traditional Random Forests where decision nodes use **hyperplane-based splits** instead of axis-aligned thresholds.

The project includes:

* Training methodologies for oblique decision trees
* Inference mechanisms optimized for performance
* Architectural components designed to efficiently evaluate tree ensembles

## Repository Contents

The repository is organized around the following components:

* **Training pipeline** (software_host/oblique_training)
  Code and utilities for constructing and training oblique decision trees with controlled complexity and generalization.

* **Hardware-oriented modules** (chisel_project)
  Chisel-based components designed for hardware execution, including pipelined and parallel processing structures, with the related chisel code for simulation tests.

* **Experimental code** (automation)
  Prototypes and evaluation scripts for testing different configurations of tree depth, feature space transformations, and performance trade-offs.

## Status

This is an active research/development repository. The codebase may include experimental features, partially optimized modules, and evolving interfaces.

## Notes

* The repository focuses on **algorithmic and architectural aspects** of oblique tree-based models.
* Some modules are designed to be integrated into larger systems or hardware flows.

## License

To be defined.
