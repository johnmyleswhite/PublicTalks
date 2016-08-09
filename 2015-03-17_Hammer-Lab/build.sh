#!/bin/bash

pandoc -t beamer -o slides.pdf slides.md

open slides.pdf
