//
//  InputHandler.m
//  Maths
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *)getInput
{
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputStr = [[NSString alloc] initWithUTF8String:inputChars];
    inputStr = [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return inputStr;
}


    @end

