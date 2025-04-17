# USER
## ID & Password
### Password Change & Find
> **Solution. Reset Password & Change Password At Personal Page**
> 1. Reset Password
> 2. Send Password to Personal Email
> 3. Login With Password
> 4. Change at Personal Page
### Id Find
> **Solution. Find With Email**
> 1. Enter Email
> 2. Send ID to Email
### Id Change
> **Solution. Change At Personal Page**
> 1. Check Password
> 2. Change ID at Personal Page (DB User_id not change)
### Login With Other Site
> **Solution. Provider Table**
> 1. OAuth Make Unique ID for User
> 2. Save Unique ID & Provider Site At DB
> 3. Connect DB with User Data (FK)

## User Acitivity Data
To Analyze User Activity & Website Usage
> **Solution. User Connect Table**
> 1. Last Connect DateTime
> 2. User Created Time
> 3. Average Active Time
> 4. User Connect Count (Week, Month)

> **Solution. User Posting & Comment**
> 1. Post & Comment Data Connect with User Data

## User Management
### Delete User
> **Solution. Lazy Update At DB**
> 1. Delete User Data not Immedietly -> User can Cancle Delete ID
> 2. User Data Include Delete or Not
> 
Manage Post & Comment when Writing ID Delete
> **Solution. Change Writer to Non-Registered User**
> 1. Insert Non-Registered User Data at User Table
> 2. When User Delete, Change Post & Comment's Writer to Non-Registered User Data

### BlackList User
> **Solution. Save User Data at BlackList Table**
> 1. Save Email & Provider Data
> 2. Prevent Re-Register at System (Check When Singup at Page)
### Authority
Restrictions on Authority Under Section
> **Solution. Authority Data Table**
> 1. Check Authority When User Login
> 2. Limit Behavior (Read, Write, Comment, Sale, Buy..)

# POST
## Content
### Image & Video
How to Load Image & Video at Client
> **Solution.Save at DB**
> 1. Use BLOB Data type 

> **Solution. Save at External Storage & Save Path at DB**
> 1. Save at Server Storage (Save when file uploaded)
> 2. Save Storage Path of File on DB
## Tag
How to Save
> **Solution. Save by String**
> 1. Save Tag by input String


> **Solution. Save with Tag Table & Relation**
> 1. Use Tag Table with tagId & tagName
> 2. Create Tag Category when new Tag inserted
> 3. Post & Tag connect

## Comment
### Reply Comment
> **Solution. Self Join**
> 1. Save Parent Comment Id and Comment Order
> 2. Show Order by Comment Order

## Modify & Delete Post & Comment
### Save Prev Data
> **Solution. Check Version**
> 1. Save Modify Date & Version
> 2. Dont Show Prev Data to Client

> **Solution. Save At Other Table**
> 1. Transfer Data at Log Table
> 2. Link With Origin Data


# SPECIES
## Habit Region Data
### Temperature & Humidity
## ICUN Data
## Species Group
