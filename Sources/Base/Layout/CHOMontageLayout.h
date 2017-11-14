//
//  CHOMontageLayout.h
//  CHOMontage
//
//  Created by Gene on 14/11/2017.
//  Copyright © 2017 chojd.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ICHOMontageLayout.h"
#import "CHOMontageAnnotation.h"

@interface CHOMontageLayout : NSObject <ICHOMontageLayout>

@property (nonatomic, assign) Float64 width;
@property (nonatomic, assign) Float64 height;

@end
