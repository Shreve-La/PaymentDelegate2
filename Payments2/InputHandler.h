//
//  InputHandler.h
//  Maths
//
//  Created by swcl on 2017-05-02.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

@property (nonatomic) NSString *question1;
@property (nonatomic) NSString *inputStr;

- (NSString *) getInput;

@end

