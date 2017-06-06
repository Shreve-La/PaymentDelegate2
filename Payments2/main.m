//
//  main.m
//  Payments2
//
//  Created by swcl on 2017-06-06.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Class Instances setup
        InputHandler *inputhandler = [[InputHandler alloc]init];
        PaymentGateway *paymentGateway = [[PaymentGateway alloc]init];
        StripePaymentService *stripePaymentService = [[StripePaymentService alloc] init];
        PaypalPaymentService *payPalPaymentService = [[PaypalPaymentService alloc] init];
        AmazonPaymentService *amazonPaymentService = [[AmazonPaymentService alloc] init];
        
        //Amount Generator & Price Formatter
        NSNumber *randomNum = [NSNumber numberWithInt:(arc4random_uniform(1000000)+1)];
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
        NSString *dollarAmount = [formatter stringFromNumber:randomNum];
        
        //User Output
        NSLog(@"Your total is: %@ \n Would you like to pay with:\n 1: Paypal 2: Stripe 3: Amazon", dollarAmount);
        //Request User Input
        NSString *chosenGateway = [inputhandler getInput];
        paymentGateway.delegate = stripePaymentService;
        [paymentGateway processPaymentAmount:randomNum];

        
        
        
        
        
        
        
        
        
    }
    return 0;
}
