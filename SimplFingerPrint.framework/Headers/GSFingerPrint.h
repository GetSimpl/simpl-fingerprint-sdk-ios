//
//  FingerPrint.h
//  FingerPrint
//
//  Created by Alok Jha on 08/09/17.
//  Copyright © 2017 Simpl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GSUser.h"

@interface GSFingerPrint : NSObject

/**
 Initilaze the fingerprint class .
 
 @param merchantID Your merchantID
 @param user GSUser object
 */

-(instancetype _Nonnull ) initWithMerchantId:(NSString * __nonnull) merchantID andUser:(GSUser * __nonnull)user ;

/**
  Get the encrypted fingerprint data.
 */
-(void) generateEncryptedPayloadWithCallback:(void(^)(NSString* __nullable)) callback;

@end
