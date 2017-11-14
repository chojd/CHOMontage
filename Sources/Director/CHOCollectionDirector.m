//
//  CHOCollectionDirector.m
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOCollectionDirector.h"

@implementation CHOCollectionDirector

+ (instancetype)sharedDirector {
    static CHOCollectionDirector *_director;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _director = [[self alloc] init];
    });
    return _director;
}

@end
