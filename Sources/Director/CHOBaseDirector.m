//
//  CHOBaseDirector.m
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import "CHOBaseDirector.h"

@interface CHOBaseDirector ()

@property (nonatomic, strong) NSMutableDictionary *itemTable;
@property (nonatomic, strong) NSMutableDictionary *cellTable;
@property (nonatomic, strong) NSMutableDictionary *layoutTable;

@end

@implementation CHOBaseDirector

- (instancetype)init {
    self = [super init];
    if (self) {
        self.itemTable = [NSMutableDictionary dictionaryWithCapacity:100];
        self.cellTable = [NSMutableDictionary dictionaryWithCapacity:100];
        self.layoutTable = [NSMutableDictionary dictionaryWithCapacity:100];
    }
    return self;
}

- (BOOL)registerItem:(Class)aClass montageID:(CHOMontageID)montageID {
    NSParameterAssert(aClass);
    if (!aClass) { return NO; }
    [self.itemTable setObject:NSStringFromClass(aClass) forKey:@(montageID).stringValue];
    return YES;
}

- (Class)itemClassForMontageID:(CHOMontageID)montageID {
    NSString *classname = [self.itemTable objectForKey:@(montageID).stringValue];
    NSParameterAssert(classname);
    return NSClassFromString(classname);
}

- (BOOL)registerCell:(Class)aClass montageID:(CHOMontageID)montageID {
    NSParameterAssert(aClass);
    if (!aClass) { return NO; }
    [self.cellTable setObject:NSStringFromClass(aClass) forKey:@(montageID).stringValue];
    return YES;
}

- (Class)cellClassForMontageID:(CHOMontageID)montageID {
    NSString *classname = [self.cellTable objectForKey:@(montageID).stringValue];
    NSParameterAssert(classname);
    return NSClassFromString(classname);
}

- (BOOL)registerLayout:(Class)aClass montageID:(CHOMontageID)montageID {
    NSParameterAssert(aClass);
    if (!aClass) { return NO; }
    [self.layoutTable setObject:NSStringFromClass(aClass) forKey:@(montageID).stringValue];
    return YES;
}

- (Class)layoutClassForMontageID:(CHOMontageID)montageID {
    NSString *classname = [self.layoutTable objectForKey:@(montageID).stringValue];
    NSParameterAssert(classname);
    return NSClassFromString(classname);
}

- (id<ICHOMontageLayout>)layoutForItem:(id<ICHOMontageItem>)item {
    Class layoutClass = [self layoutClassForMontageID:[item montageID]];
    NSParameterAssert(layoutClass);
    if (layoutClass == nil) {
        
        return nil;
    }
    Class cellClass = [self cellClassForMontageID:[item montageID]];
    NSParameterAssert(cellClass);
    if (cellClass == nil) {
        return nil;
    }
    id<ICHOMontageLayout>layout = [[layoutClass alloc] init];
    NSParameterAssert(layout);
    if ([cellClass figure:layout forItem:item] == NO) {
        return nil;
    }
    return layout;
}

@end
