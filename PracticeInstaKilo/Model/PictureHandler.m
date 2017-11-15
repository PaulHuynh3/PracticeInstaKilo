//
//  PictureHandler.m
//  PracticeInstaKilo
//
//  Created by Paul on 2017-11-14.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PictureHandler.h"

@implementation PictureHandler

- (instancetype)init
{
    self = [super init];
    if (self) {
        //inside PictureCategory...[self createCategory] is iniside the iniatlizer so all the objects/array is created when we instantiate it here.
        PictureCategory* batman = [[PictureCategory alloc]initWithCategoryName:@"Batman"];
        
        PictureCategory* animal = [[PictureCategory alloc]initWithCategoryName:@"Animal"];
        
        PictureCategory* basketball = [[PictureCategory alloc]initWithCategoryName:@"BallPlayer"];
        
        self.categories = @[batman,animal,basketball];
    }
    
    return self;
}


@end
