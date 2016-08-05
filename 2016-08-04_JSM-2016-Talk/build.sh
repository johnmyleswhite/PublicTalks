#!/bin/bash

pandoc -t beamer -o talk.pdf talk.md

open talk.pdf
