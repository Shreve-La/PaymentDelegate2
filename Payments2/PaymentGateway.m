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
    NSLog(@"Payment Processing Request Recieved, Sending to Delegate");
    [self.delegate processPaymentAmount:(NSString*)amount];

}


@end
