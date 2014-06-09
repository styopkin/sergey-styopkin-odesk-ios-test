//
//  ModelsEntity.m
//  BuggyProject
//  Copyright (c) 2014 oDesk Corporation. All rights reserved.
//

#import "ModelsEntity.h"
#import "OwnerEntity.h"


@implementation ModelsEntity

@dynamic modelName;
@dynamic modelId;
@dynamic owner;

- (NSString *)description {
    return [NSString stringWithFormat: @"%@; %@", self.modelName, self.owner];
}

- (NSComparisonResult) compare:(ModelsEntity *)otherEntity {
    NSComparisonResult result = [self.modelName compare:otherEntity.modelName];
    return (result == NSOrderedSame ? [self.owner compare:otherEntity.owner] : result);
}

@end
