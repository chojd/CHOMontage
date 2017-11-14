//
//  CHOTableDirector.m
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOTableDirector.h"

@implementation CHOTableDirector

+ (instancetype)sharedDirector {
    static CHOTableDirector *_director;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _director = [[self alloc] init];
    });
    return _director;
}

@end
