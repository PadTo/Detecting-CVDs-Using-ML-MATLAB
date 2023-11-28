# Detecting Cardiovascular Diseases Using Machine Learning in MATLAB

## Description:

This repository hosts the code for my project on detecting cardiovascular diseases (CVDs) using machine-learning techniques in MATLAB. The goal is to analyze heart sound recordings (Phonocardiograms - PCGs) and identify potential markers for various heart conditions. The project is structured into different modules for pre-processing, feature extraction, and classification using advanced machine-learning algorithms.

## Repository Structure:

- My_Code/ (Personal Work): Contains the main MATLAB Live Scripts (.mlx) used for data augmentation, feature extraction with Mel-frequency cepstral coefficients (MFCCs), and implementing machine learning models like LSTM
- My_Functions/ (Personal Work): Includes MATLAB functions and scripts for denoising signals, energy calculation (Shannon energy), and the main classification algorithm.
- Shock_Waveform_Decomposition_Method/ (Provided by the University of Manchester): Dedicated to analyzing shock waveforms within the heart sound signals for additional feature extraction.
- SpringerSegmentationCode/ (Provided by Springer): A folder with borrowed code from Springer for heart sound segmentation, alongside custom scripts for running the segmentation algorithm and preprocessing the data.

## Methods and Logic:

- Segmentation: The project starts with the SpringerSegmentationCode for initial PCG signal segmentation, establishing a clean and structured dataset.
- Feature Extraction: Multiple signal features are extracted, including time-domain, frequency-domain, and cepstral features (MFCCs), to encapsulate the complexity of PCG signals.
- Machine Learning Models: Implements diverse machine learning models like LSTM, ResNet50, and GoogleNet, chosen for their ability to capture temporal and spatial dependencies in sequential data.
- Data Augmentation: To combat overfitting and improve model robustness, data augmentation techniques are applied, increasing the variability and quantity of training data.

## Results:

- The project achieved a high classification accuracy, with precision in differentiating between normal and abnormal heart sounds, showcasing the potential for clinical application.
- Comparative analysis showed the effectiveness of combining different feature sets to train models, with wavelet energy features and MFCCs being particularly indicative of heart conditions.

## Highlight Features:

- Implementation of various machine learning models for pattern recognition in heart sound signals.
- Use of Springer's HSMM-based segmentation algorithm for initial signal processing.
- Custom function development for signal denoising and feature extraction.
- Exploration of multiple feature sets including time-domain, frequency-domain, and cepstral features to feed into machine learning models.

## Note:
- MATLAB will also be required to open the majority of the files as they were saved as ".mlx" files instead of ".m"
- The sample data shall not be provided in this repository due to space limitations, however, the training and testing samples were used from the "PhysioNet/CinC Challenge 2016: Training Sets"

## Disclaimer:
- This repository includes both developmental and final versions of scripts. It reflects the iterative nature of the research process and the evolution of the project over time
