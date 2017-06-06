//
//  PaymentGateway.m
//  Payments2
//
//  Created by swcl on 2017-06-06.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "PaymentGateway.h"




@implementation PaymentGateway

-(void)processPaymentAmount:(NSString*)amount{
    NSLog(@"Payment Processing Request Recieved");
    if ([self.delegate canProcessPayment]){
    [self.delegate processPaymentAmount:(NSString*)amount];
    }else{
    NSLog(@"Sorry, we are unable to process you payment at this time");
    }

}


@end
