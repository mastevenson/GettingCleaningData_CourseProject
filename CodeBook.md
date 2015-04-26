---
title: "CodeBook.md"
author: "Mark Stevenson"
date: "Sunday, April 26, 2015"
output: html_document
---

**Purpose:**

- Provide definitions of columns/variables from output of 'run_Analysis.R' script entitled 'tidy_data_set.txt'
- __*Note there are four columns. The fourth column is at the bottom of the page below the third column variable/value explanations.*__

__*Definitions*__

1- participant_id

        The identification # of the participant performing the activity 
        
2- activity
        
        The activity performed by the participant. There are six approved activities including WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING
        
3- variable

        The variable measured. There are 79 permissible observations in this field as the data set is long form (as opposed to wide). 
        
        Note the Time domain signals were captured at a constant rate of 50 Hz, were subsequently filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the Acceleration signal was then separated into Body and Gravity Acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
        
        Subsequently, the Body linear acceleration and angular Velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm denoted by Magnitude. 

        Fast Fourier Transform (FFT) was applied to some signals which are denoted by Frequency.
        
        Note the features are normalized and bounded by [-1,1].
        
        The following are the definitions for each:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_mean_x_dimension**: Time domain signal from accelerometer measuring mean of body movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_mean_y_dimension**: Time domain signal from accelerometer measuring mean of body movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_mean_z_dimension**: Time domain signal from accelerometer measuring mean of body movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_gravity_acceleration_mean_x_dimension**: Time domain signal from accelerometer measuring mean of gravity in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_gravity_acceleration_mean_y_dimension**: Time domain signal from accelerometer measuring mean of gravity  in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_gravity_acceleration_mean_z_dimension**: Time domain signal from accelerometer measuring mean of gravity in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_jerk_mean_x_dimension**: Time domain signal from accelerometer measuring mean of body movement jerk in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_jerk_mean_y_dimension**: Time domain signal from accelerometer measuring mean of body movement jerk in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_jerk_mean_z_dimension**: Time domain signal from accelerometer measuring mean of body movement jerk in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_mean_x_dimension**: Time domain signal from gyroscope measuring mean of body movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_mean_y_dimension**: Time domain signal from gyroscope measuring mean of body movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_mean_z_dimension**: Time domain signal from gyroscope measuring mean of body movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_jerk_mean_x_dimension**: Time domain signal from gyroscope measuring mean of body movement jerk in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_jerk_mean_y_dimension**: Time domain signal from gyroscope measuring mean of body movement jerk in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_jerk_mean_z_dimension**: Time domain signal from gyroscope measuring mean of body movement jerk in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_magnitude_mean**: Time domain signal from accelerometer measuring mean of body acceleration magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_gravity_acceleration_magnitude_mean**: Time domain signal from accelerometer measuring mean of gravity movement magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_jerk_magnitude_mean**: Time domain signal from accelerometer measuring mean of body jerk movement magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_magnitude_mean**: Time domain signal from gyroscope measuring mean of body movement magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_jerk_magnitude_mean**: Time domain signal from gyroscope measuring mean of body jerk movement magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_mean_x_dimension**: Frequency domain signal from accelerometer measuring mean of body movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_mean_y_dimension**: Frequency domain signal from accelerometer measuring mean of body movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_mean_z_dimension**: Frequency domain signal from accelerometer measuring mean of body movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_mean_frequency_x_dimension**: Frequency domain signal from accelerometer measuring mean of body frequency movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_mean_frequency_y_dimension**: Frequency domain signal from accelerometer measuring mean of body frequency movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_mean_frequency_z_dimension**: Frequency domain signal from accelerometer measuring mean of body frequency movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_jerk_mean_x_dimension**: Frequency domain signal from accelerometer measuring mean of body jerk movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_jerk_mean_y_dimension**: Frequency domain signal from accelerometer measuring mean of body jerk movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_jerk_mean_z_dimension**: Frequency domain signal from accelerometer measuring mean of body jerk movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_jerk_mean_frequency_x_dimension**: Frequency domain signal from accelerometer measuring mean of body jerk frequency movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_jerk_mean_frequency_y_dimension**: Frequency domain signal from accelerometer measuring mean of body jerk frequency movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_jerk_mean_frequency_z_dimension**: Frequency domain signal from accelerometer measuring mean of body jerk frequency movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_mean_x_dimension**: Frequency domain signal from gyroscope measuring mean of body movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_mean_y_dimension**: Frequency domain signal from gyroscope measuring mean of body movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_mean_z_dimension**: Frequency domain signal from gyroscope measuring mean of body movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_mean_frequency_x_dimension**: Frequency domain signal from gyroscope measuring mean of body frequency movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_mean_frequency_y_dimension**: Frequency domain signal from gyroscope measuring mean of body frequency movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_mean_frequency_z_dimension**: Frequency domain signal from gyroscope measuring mean of body frequency movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_magnitude_mean**: Frequency domain signal from accelerometer measuring mean of magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_magnitude_mean_frequency**: Frequency domain signal from accelerometer measuring mean of frequency magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_jerk_magnitude_mean**: Frequency domain signal from accelerometer measuring mean of of body movement jerk magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_jerk_magnitude_mean_frequency**: Frequency domain signal from accelerometer measuring mean of frequency of body jerk movement magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_magnitude_mean**: Frequency domain signal from gyroscope measuring mean of body movement magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_magnitude_mean_frequency**: Frequency domain signal from gyroscope measuring mean of frequency body movement magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_jerk_magnitude_mean**: Frequency domain signal from gyroscope measuring mean of body jerk magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_jerk_magnitude_mean_frequency**: Frequency domain signal from gyroscope measuring mean of body jerk frequency magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_standard_deviation_x_dimension**: Time domain signal from accelerometer measuring mean of body movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_standard_deviation_y_dimension**: Time domain signal from accelerometer measuring standard deviation of body movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_standard_deviation_z_dimension**: Time domain signal from accelerometer measuring standard deviation of body movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_gravity_acceleration_standard_deviation_x_dimension**: Time domain signal from accelerometer measuring standard deviation of gravity in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_gravity_acceleration_standard_deviation_y_dimension**: Time domain signal from accelerometer measuring standard deviation of gravity in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_gravity_acceleration_standard_deviation_z_dimension**: Time domain signal from accelerometer measuring standard deviation of gravity in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_jerk_standard_deviation_x_dimension**: Time domain signal from accelerometer measuring standard deviation of body jerk in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_jerk_standard_deviation_y_dimension**: Time domain signal from accelerometer measuring standard deviation of body jerk in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_jerk_standard_deviation_z_dimension**: Time domain signal from accelerometer measuring standard deviation of body jerk in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_standard_deviation_x_dimension**: Time domain signal from gyroscope measuring standard deviation of body movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_standard_deviation_y_dimension**: Time domain signal from gyroscope measuring standard deviation of body movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_standard_deviation_z_dimension**: Time domain signal from gyroscope measuring standard deviation of body movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_jerk_standard_deviation_x_dimension**: Time domain signal from gyroscope measuring standard deviation of body movement jerk in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_jerk_standard_deviation_y_dimension**: Time domain signal from gyroscope measuring standard deviation of body movement jerk in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_jerk_standard_deviation_z_dimension**: Time domain signal from gyroscope measuring standard deviation of body movement jerk in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_magnitude_standard_deviation**: Time domain signal from accelerometer measuring standard deviation of body movement magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_gravity_acceleration_magnitude_standard_deviation**: Time domain signal from accelerometer measuring standard deviation of gravity movement magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_acceleration_jerk_magnitude_standard_deviation**: Time domain signal from accelerometer measuring standard deviation of body movement jerk magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_magnitude_standard_deviation**: Time domain signal from gyroscope measuring standard deviation of body magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**time_body_gyroscopic_jerk_magnitude_standard_deviation**: Time domain signal from gyroscope measuring standard deviation of body jerk magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_standard_deviation_x_dimension**: Frequency domain signal from accelerometer measuring standard deviation of body movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_standard_deviation_y_dimension**: Frequency domain signal from accelerometer measuring standard deviation of body movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_standard_deviation_z_dimension**: Frequency domain signal from accelerometer measuring standard deviation of body movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_jerk_standard_deviation_x_dimension**: Frequency domain signal from accelerometer measuring standard deviation of body jerk movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_jerk_standard_deviation_y_dimension**: Frequency domain signal from accelerometer measuring standard deviation of body jerk movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_jerk_standard_deviation_z_dimension**: Frequency domain signal from accelerometer measuring standard deviation of body jerk movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_standard_deviation_x_dimension**: Frequency domain signal from gyroscope measuring standard deviation of body movement in x dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_standard_deviation_y_dimension**: Frequency domain signal from gyroscope measuring standard deviation of body movement in y dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_standard_deviation_z_dimension**: Frequency domain signal from gyroscope measuring standard deviation of body movement in z dimension

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_magnitude_standard_deviation**: Frequency domain signal from accelerometer measuring standard deviation of body movement magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_acceleration_jerk_magnitude_standard_deviation**: Frequency domain signal from accelerometer measuring standard deviation of body acceleration jerk magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_magnitude_standard_deviation**: Frequency domain signal from gyroscope measuring standard deviation of body movement magnitude

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**frequency_body_gyroscopic_jerk_magnitude_standard_deviation**: Frequency domain signal from gyroscope measuring standard deviation of body jerk movement magnitude


4- mean

        The mean measurement of the associated variable.