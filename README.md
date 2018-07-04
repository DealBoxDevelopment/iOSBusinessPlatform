# iOS Business Platform
## Table of Contents
 * [App Design](#app-design)
   * [Objective](#objective)
   * [Audience](#audience)
   * [Experience](#experience)
   *  [Nice to have](#next-version)
 * [Technical](#technical)
   * [Screens](#Screens)
   * [External services](#external-services)
   * [Views, View Controllers, and other Classes](#Views-View-Controllers-and-other-Classes)
 * [MVP Milestones](#mvp-milestones)
   * [Week 1](#week-1)
   * [Week 2](#week-2)
   * [Week 3](#week-3)
   * [Week 4](#week-4)
   * [Week 5](#week-5)
   * [Week 6](#week-6)

---

### App Design

#### Objective
prescription based business model that provides business deals.

#### Audience
Business that are looking for platform to post deals

#### Experience
1. business can post deals title, description, address, prerequisite, main picture on the app.
2. business can create a business profile 
3. business can checkin the user once they redeem the deal
4. business can set how anytime can user buy the same deal
5. business can set timeframe for the deal

#### Nice to have (V2)
1. business can have bundle sale (combo deal)

---
[Back to top ^](#)

---

### Technical

#### Screens


#### External services
* [list which APIs or external services will your app use?]
1. Yelp api for pulling out the review for business 
2. stripe api for payment

#### Internal Apis
1. post request to db to post business information
2.  put request to db to update redeem of deal to be true once user showed up

#### Views, View Controllers, and other Classes
* Views
 
* View Controllers
 
* Other Classes


#### Data models
__ Mongodb 
* User:
* userId
* username
* email
* password
* savedDeals: [dealId]
* boughtDeals: [dealId]

__ Deal:
* dealId
* dealTitle
* dealBusinessID
* redeemed: Bool
* dealPrerequisite
* dealTimeFrame
* dealRedeemLimit: Int
* dealReview(if redeemed)

__ Business:
* businessId
* businessName
* businessAddress
* businessImgURL: [ImgString]
* businessReview(from yelp API)
* businessPostedDealsID: [dealID]

[Back to top ^](#)

---

### MVP Milestones

#### Week 1
_planning your app
* 1.  finish the basic wireframe 
* 2. finish feature discussion 

#### Week 2
1. setting up backend database, CRUD routes set up, internal API all tested on Paw/postman
2. 50% tested out stripe API
3. build out login/signup on iOS 

#### Week 3
* [goals for the week]

#### Week 4
* [goals for the week, should be finishing all core features]

#### Week 5
_starting the polish_
* [goals for the week]

#### Week 6
_submitting to the App Store_
