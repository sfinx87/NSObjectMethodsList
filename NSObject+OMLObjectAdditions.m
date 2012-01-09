//
//  NSObject+OMLObjectAdditions.m
//  NSObjectMethodsList
//
//  Created by Alex on 1/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSObject+OMLObjectAdditions.h"
#import <objc/runtime.h>

@implementation NSObject (OMLObjectAdditions)

- (NSArray *)objectSelectors {
    NSMutableArray *selectors = [NSMutableArray array];
    unsigned int methodCount = 0;
    Method *methodList = class_copyMethodList(object_getClass(self), &methodCount);
    for(unsigned int i = 0; i < methodCount; i++) {
        const char *selectorName = sel_getName(method_getName(methodList[i]));
        NSString *selector = [NSString stringWithCString:selectorName encoding:NSUTF8StringEncoding];
        [selectors addObject:selector];
    }
    return selectors;
}

@end
