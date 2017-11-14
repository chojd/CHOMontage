//
//  CHOMontageAnnotation.m
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOMontageAnnotation.h"

#import "CHOTableDirector.h"
#import "CHOCollectionDirector.h"

@implementation CHOMontageAnnotation

+ (instancetype)sharedAnnotation {
    static CHOMontageAnnotation *_instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

- (BOOL)registerCell:(Class)aClass montageID:(CHOMontageID)montageID {
    BOOL result = NO;
    if ([aClass isSubclassOfClass:[UITableViewCell class]]) {
        result = [[CHOTableDirector sharedDirector] registerCell:aClass montageID:montageID];
    } else if ([aClass isSubclassOfClass:[UICollectionViewCell class]]) {
        result = [[CHOCollectionDirector sharedDirector] registerCell:aClass montageID:montageID];
    }
    return result;
}

- (BOOL)registerTableItem:(Class)aClass montageID:(CHOMontageID)montageID {
    return [[CHOTableDirector sharedDirector] registerItem:aClass montageID:montageID];
}

- (BOOL)registerTableLayout:(Class)aClass montageID:(CHOMontageID)montageID {
    return [[CHOTableDirector sharedDirector] registerLayout:aClass montageID:montageID];
}

- (BOOL)registerCollectionItem:(Class)aClass montageID:(CHOMontageID)montageID {
    return [[CHOCollectionDirector sharedDirector] registerItem:aClass montageID:montageID];
}

- (BOOL)registerCollectionLayout:(Class)aClass montageID:(CHOMontageID)montageID {
    return [[CHOCollectionDirector sharedDirector] registerLayout:aClass montageID:montageID];
}

@end
