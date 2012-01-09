//
//  main.m
//  NSObjectMethodsList
//
//  Created by Alex on 1/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+OMLObjectAdditions.h"
#import "OMLParentObject.h"
#import "OMLChildrenObject.h"

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        OMLParentObject *parentObject = [[OMLParentObject alloc] init];
        NSLog(@"Parent object selectors:%@", [parentObject objectSelectors]);
        [parentObject release];
        OMLChildrenObject *childrenObject = [[OMLChildrenObject alloc] init];
        NSLog(@"Children object selectors:%@", [childrenObject objectSelectors]);
        [childrenObject release];
    }
    return 0;
}

