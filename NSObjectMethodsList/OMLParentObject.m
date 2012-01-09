//
//  OMLParentObject.m
//  NSObjectMethodsList
//
//  Created by Alex on 1/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OMLParentObject.h"

@implementation OMLParentObject

@synthesize someParentObject;
@synthesize someParentNumber;
@synthesize someParentIvar = _someParentIvar;

- (void)dealloc {
    [someParentObject release];
    [super dealloc];
}

@end
