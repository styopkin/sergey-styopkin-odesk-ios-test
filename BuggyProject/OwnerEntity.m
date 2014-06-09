//
//  OwnerEntity.m
//  BuggyProject
//  Copyright (c) 2014 oDesk Corporation. All rights reserved.
//

#import "OwnerEntity.h"
#import "ModelsEntity.h"


@implementation OwnerEntity

@dynamic ownerName;
@dynamic models;

- (NSString *)description {
    return [self.ownerName copy];
}

- (NSComparisonResult) compare:(OwnerEntity *)otherEntity {
    return [self.ownerName compare:otherEntity.ownerName];
}

@end
