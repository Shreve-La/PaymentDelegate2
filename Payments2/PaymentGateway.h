//
//  PaymentGateway.h
//  Payments2
//
//  Created by swcl on 2017-06-06.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentProtocol <NSObject>

-(void)processPaymentAmount:(NSString*)amount;

-(BOOL)canProcessPayment;

@end


@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentProtocol> delegate;

-(void)processPaymentAmount:(NSString*)amount;

@end
