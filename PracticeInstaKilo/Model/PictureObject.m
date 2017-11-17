//
//  PictureObject.m
//  PracticeInstaKilo
//
//  Created by Paul on 2017-11-14.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PictureObject.h"

@implementation PictureObject

- (instancetype)initWithPicture:(NSString *)imageName andName:(NSString*)photoName
{
    if (self = [super init]) {
        _photo = [UIImage imageNamed:imageName];
        _photoName = photoName;
        
    }
    return self;
}

@end
