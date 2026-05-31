# Instagram User Behavior Analysis
## Project Overview

This project simulates an Instagram-like social media platform and performs end-to-end user behavior analysis using Python, MySQL, and Tableau.
The objective is to analyze platform growth, user engagement, social relationships, and content popularity through a complete data analytics workflow.

## Technology Stack

Python
MySQL
Tableau

# Project Workflow
## Step 1: Data Generation

Python was used to generate simulated social media data, including:
Users
Photos
Likes
Follows
Comments
The generated dataset contains approximately 10,000 users and related behavioral records.

## Step 2: Data Cleaning

Python was used to identify and process:
Missing values
Duplicate records
Invalid user interactions
Abnormal user behaviors
Data quality checks were performed before importing the data into MySQL.

## Step 3: Database Construction

The cleaned data was imported into MySQL.
Main tables:
users
photos
likes
follows
comments

## Step 4: SQL Analysis Layer

Business-oriented analytical tables were created:
user_growth
user_like_activity
user_follow_activity
user_behavior_relation
photo_hot
user_segment
These tables were designed to simplify analysis and reduce the amount of processing required in Tableau

## Step 5: Tableau Dashboard

A dashboard was created to visualize:
User Growth Trend
User Like Activity Distribution
User Follow Distribution
Follow vs Like Relationship
Popular Photos Ranking
User Segmentation Analysis
The dashboard provides an overview of platform growth, engagement, social behavior, and content popularity.

# Project Limitations

Although the project successfully demonstrates a complete analytics workflow, several simplifications were made during data generation.

## 1. Geographic Information Is Missing

The current dataset does not contain:
Country
Region
City
As a result, geographical behavior analysis cannot be performed.

## 2. Social Network Structure Is Too Uniform

In reality, social networks usually follow a power-law distribution:
Most users have few followers. And a small number of influencers have very large audiences. The current dataset does not fully capture this phenomenon.

## 3. No Influencer (KOL) Layer

All users currently have similar behavioral characteristics.
Real-world platforms contain:
Ordinary users
Active users
Content creators
Influencers (KOLs)
Future versions should simulate multiple user types.

## 4. Content Categories Are Missing

Photos currently have no content labels.

## 5. Limited Temporal Dynamics

User behavior is generated without considering:
Seasonal effects
Viral events
Platform campaigns
Future datasets could simulate more realistic activity patterns over time.

# Future Improvements

Planned upgrades include:

## Data Layer
Add country and region information
Add user demographics
Add content categories
Add hashtag data
## Social Network Layer
Simulate influencer-centered networks
Introduce follower hierarchy
Create more realistic social graph structures
## Analytics Layer
Retention analysis
Cohort analysis
User lifecycle analysis
KOL identification
Community detection
## Dashboard Layer
Interactive filters
Geographic maps
Time-series drill-down
KPI monitoring dashboard
## Conclusion

This project demonstrates a complete analytics workflow from data generation and cleaning to database modeling and business intelligence visualization.

The project also serves as a foundation for future upgrades toward more realistic social network analysis and large-scale user behavior modeling.
