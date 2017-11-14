//
//  InstaPicture.m
//  PracticeInstaKilo
//
//  Created by Paul on 2017-11-14.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "InstaPicture.h"

@implementation InstaPicture


- (instancetype)initWithName:(NSString*)name description:(NSString*)description category:(NSString*)category
{
    if (self = [super init]) {
        _name = name;
        _photoDescription = description;
        _category = category;
    }
    return self;
}


@end
