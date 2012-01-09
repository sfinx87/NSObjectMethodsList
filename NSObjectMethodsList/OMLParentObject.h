//
//  OMLParentObject.h
//  NSObjectMethodsList
//
//  Created by Alex on 1/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OMLObjectProtocol.h"

@interface OMLParentObject : NSObject <OMLObjectProtocol> {
    NSInteger _someParentIvar;
}

@property (nonatomic, retain) id someParentObject;
@property (nonatomic, assign) NSInteger someParentNumber;
@property (nonatomic, assign) NSInteger someParentIvar;

@end
