# Detecting Cardiovascular Diseases Using Machine Learning in MATLAB

## Description:

This repository hosts the code for my project on detecting cardiovascular diseases (CVDs) using machine-learning techniques in MATLAB. The goal is to analyze heart sound recordings (Phonocardiograms - PCGs) and identify potential markers for various heart conditions. The project is structured into different modules for pre-processing, feature extraction, and classification using advanced machine learning algorithms.

## Repository Structure:

- My_Code/: Contains the main MATLAB Live Scripts (.mlx) used for data augmentation, feature extraction with Mel-frequency cepstral coefficients (MFCCs), and implementing machine learning models like LSTM
- My_Functions/: Includes MATLAB functions and scripts for denoising signals, energy calculation (Shannon energy), and the main classification algorithm.
- Shock_Waveform_Decomposition_Method/: Dedicated to analyzing shock waveforms within the heart sound signals for additional feature extraction (Provided by the University of Manchester).
- SpringerSegmentationCode/: A folder with borrowed code from Springer for heart sound segmentation, alongside custom scripts for running the segmentation algorithm and preprocessing the data (Provided by Springer).

## Highlight Features:

- Implementation of various machine learning models for pattern recognition in heart sound signals.
- Use of Springer's HSMM-based segmentation algorithm for initial signal processing.
- Custom function development for signal denoising and feature extraction.
- Exploration of multiple feature sets including time-domain, frequency-domain, and cepstral features to feed into machine learning models.

## Note:
This project's codebase reflects the iterative and experimental nature of research. Some folders contain exploratory work and initial trials that contributed to the final methodology.

MATLAB will also be required to open the majority of the files as they were saved as ".mlx" files instead of ".m" 
