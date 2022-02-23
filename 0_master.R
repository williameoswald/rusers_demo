# Master script

# ------------------------------------------------------------
# SET UP 
# ------------------------------------------------------------

# Clear the workspace 
rm(list = ls())

# Change directory to source folder 
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Load required packages
if (!require("pacman")) install.packages("pacman")
pkgs = c("sf", "tidyverse", "readxl", "psych", "ltm", "kableExtra", "here", "flextable", "diagram", "irr", "patchwork", "binom","officer") # package names
pacman::p_load(pkgs, character.only = TRUE)

# ------------------------------------------------------------
# Run cleaning, library loading, and defining functions 
# ------------------------------------------------------------    

source("functions.R")
source("1_assemble_data.R")

# ------------------------------------------------------------  
# Run the analysis and build the tables and figures
# ------------------------------------------------------------

source("2_tables_and_figures.R")  

