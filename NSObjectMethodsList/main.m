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

void someMethodIMP(id self, SEL _cmd);

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        OMLParentObject *parentObject = [[OMLParentObject alloc] init];
        const char *someMethodTypes = [[NSString stringWithFormat: @"%s%s%s%s", @encode(void), @encode(id), @encode(SEL)] UTF8String];
        [parentObject addSelector:@selector(someParentDynamicSelector) withImplementation:(IMP)someMethodIMP andTypes:someMethodTypes];
        NSLog(@"Parent object selectors:%@", [parentObject objectSelectors]);
        NSLog(@"Parent object ivars:%@", [parentObject objectIvars]);
        NSLog(@"Parent object protocols:%@", [parentObject objectProtocols]);
        [parentObject release];
        OMLChildrenObject *childrenObject = [[OMLChildrenObject alloc] init];
        NSLog(@"Children object selectors:%@", [childrenObject objectSelectors]);
        [childrenObject release];
    }
    return 0;
}

// an Objective-C method is simply a C function that take at least two arguments — self and _cmd
void someMethodIMP(id self, SEL _cmd) {
    // implementation ...
}

