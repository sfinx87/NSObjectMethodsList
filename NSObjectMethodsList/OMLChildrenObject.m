//
//  OMLChildrenObject.m
//  NSObjectMethodsList
//
//  Created by Alex on 1/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OMLChildrenObject.h"

@interface OMLChildrenObject (Private)

- (void)someChildrenPrivateMethod:(id)someObject;
- (void)someChildrenPrivateMethod;

@end

@implementation OMLChildrenObject

@synthesize someChilrenObject;
@synthesize someChildrenNumber;

- (void)someChildrenPrivateMethod:(id)someObject {
}

- (void)someChildrenUndeclaredMethod {
}

- (void)dealloc {
    [someChilrenObject release];
    [super dealloc];
}

@end
