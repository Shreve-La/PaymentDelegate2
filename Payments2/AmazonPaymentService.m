//
//  AmazonPaymentService.m
//  Payments2
//
//  Created by swcl on 2017-06-06.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void)processPaymentAmount:(NSString*)amount{
    NSLog(@"Amazon has processed a payment in the amount of: %@", amount);
}

-(BOOL)canProcessPayment{
    if (arc4random_uniform(2) == 1){return YES;}else{return NO;}
}



@end
