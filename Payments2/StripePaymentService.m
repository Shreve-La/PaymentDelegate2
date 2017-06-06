//
//  StripePaymentService.m
//  Payments2
//
//  Created by swcl on 2017-06-06.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)processPaymentAmount:(NSNumber*)amount{
    NSLog(@"Stripe has processed a payment in the amount of: %@", amount);

}


@end
