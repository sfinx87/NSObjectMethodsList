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
    unsigned int methodCount = 0;
    Method *methodList = class_copyMethodList(object_getClass(self), &methodCount);
    NSMutableArray *selectors = [NSMutableArray arrayWithCapacity:methodCount];
    for(unsigned int i = 0; i < methodCount; i++) {
        const char *selectorName = sel_getName(method_getName(methodList[i]));
        NSString *selector = [NSString stringWithCString:selectorName encoding:NSUTF8StringEncoding];
        [selectors addObject:selector];
    }
    free(methodList);
    return selectors;
}

- (void)addSelector:(SEL)selector withImplementation:(IMP)implementation andTypes:(const char *)types {
    Class objectClass = object_getClass(self);
    // method_getTypeEncoding(method);
    class_addMethod(objectClass, selector, implementation, types);
}

- (NSArray *)objectProtocols {
    unsigned int protocolCount = 0;
    Protocol **protocolList = class_copyProtocolList(object_getClass(self), &protocolCount);
    NSMutableArray *protocols = [NSMutableArray arrayWithCapacity: protocolCount]; 
    for (unsigned int i = 0; i < protocolCount; i++) { 
        [protocols addObject:NSStringFromProtocol(protocolList[i])]; 
    }
    free(protocolList);
    return protocols;
}

@end
