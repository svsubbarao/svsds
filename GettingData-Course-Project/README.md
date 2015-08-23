

<p>This is the course project for the Getting and Cleaning Data Coursera course.
The R script, <code>run_analysis.R</code>, does the following:</p>

<ol>
<li>Download the dataset if it does not already exist in the working directory</li>
<li>Load the activity and feature info</li>
<li>Loads both the training and test datasets, keeping only those columns which
reflect a mean or standard deviation</li>
<li>Loads the activity and subject data for each dataset, and merges those
columns with the dataset</li>
<li>Merges the two datasets</li>
<li>Converts the <code>activity</code> and <code>subject</code> columns into factors</li>
<li>Creates a tidy dataset that consists of the average (mean) value of each
variable for each subject and activity pair.</li>
</ol>

<p>The end result is shown in the file <code>tidy_data.txt</code>.</p>
