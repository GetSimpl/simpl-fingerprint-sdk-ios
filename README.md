# simpl-fingerprint-sdk-ios


## How to install

### CocoaPods :
[CocoaPods](https://cocoapods.org/) is a dependency manager for Cocoa projects. You can install it with the following command:

 ````
 $ gem install cocoapods
 ````
To integrate GetSimpl into your Xcode project using CocoaPods, specify it in your Podfile: 

 ````
 pod 'SimplFingerPrint'
 ````

Then, run the following command:

 ````
 $ pod install
 ````

## Usage

* Import the Library :

   Obj-C 
   
	````
	#import <SimplFingerPrint/SimplFingerPrint.h> 
	````
  Swift 
	
	````
	import SimplFingerPrint
	````
	
* Create a GSUser Object :

   Obj-C 
    
    ````
    GSUser *user = [[GSUser alloc] initWithPhoneNumber:@"user mobile number" email:@"user email"]
    ````
   Swift
   
   ````
   let user = GSUser(phoneNumber: "user mobile number" , email: "user email" )
   ````
   
* If you want to pass extra params , create a dictionary with params and pass it to GSUser object created above :

  Obj-C
   
   ````
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
 params[@"user_location"] = @"18.9750,72.8258"
 params[@"transaction_amount_in_paise"] = @"123344"
 user.headerParams = parms
 ````
 Swift
 
 ````
 var params : [String : Any] = [:]
 params["user_location"] = "18.9750,72.8258"
 params["transaction_amount_in_paise"] = "123344"
 user.headerParams = parms
 ````
* Collect the encrypted fingerprint : 
   
   Obj-C
   
   ````
   GSFingerPrint *fp = [[GSFingerPrint alloc] initWithMerchantId:@"Your merchant id" andUser:user];
  NSString *payload = [fp generateEncryptedPayload];
   ````
   Swift
   
   ````
   let fp = GSFingerPrint(merchantId: "Your merchant id", andUser: user)
   let payload = fp.generateEncryptedPayload()    
   ````
 
 Note that the payload will be AES (AES/CBC/PKCS7Padding) encrypted.