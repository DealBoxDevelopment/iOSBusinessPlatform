# iOS Business Platform
## Table of Contents
 * [App Design](#app-design)
   * [Objective](#objective)
   * [Audience](#audience)
   * [Experience](#experience)
   * [App Flow](#deal_infomation_flow)
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
#### Links 
https://dribbble.com/shots/2850386-Mobile-App-Flow

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

#### App Flow
1. business fill out original price, percentage of discount. We show them customer pays $ and they receive $
2. Select Deal main image or choose one from pictures we provided.
3. Describe your business in 115 characters.
4. What services does your business offer and what makes your business stand out from the competition?(<300 words)
5. Set your fine print ( condition for redeem the deals )
eg: limit n person, maybe repurced 3 times per month, appointment required, subject to weather/festivals/time frame...
6. redemption location: use default business address / provide another address
7. set lunch date
8. sign agreement
--- redirect to next page: 
1. set up bank infomation
2. set up tax details 
3. look out for merchant login info to keep track of the deals
4. download / print contract

#### Nice to have (V2)
1. business can scan QRcode of the deal once user show up.
2. business can check feed back from customers.
2. business can have bundle sale (combo deal).

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
2. put request to db to update redeem of deal to be true once user showed up
3. login route (once registered on website)

#### Views, View Controllers, and other Classes
* Views
 
* View Controllers
 
* Other Classes


#### Data models
Mongodb 
__ User:
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

__ Catagory:
* Restaurants: [dealID]
* Concerts: [dealID]
* Movies: [dealID]
* Beauty: [dealID]
<!-- * Products: [dealID]
 -->
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
