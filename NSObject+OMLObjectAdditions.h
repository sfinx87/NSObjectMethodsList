//
//  NSObject+OMLObjectAdditions.h
//  NSObjectMethodsList
//
//  Created by Alex on 1/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (OMLObjectAdditions)

- (NSArray *)objectSelectors;
- (void)addSelector:(SEL)selector withImplementation:(IMP)implementation andTypes:(const char *)types;
- (NSArray *)objectIvars;
- (NSArray *)objectProperties;
- (NSArray *)objectProtocols;
+ (NSArray *)classes;

@end
