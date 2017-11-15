//
//  PictureCategory.m
//  PracticeInstaKilo
//
//  Created by Paul on 2017-11-14.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PictureCategory.h"

@implementation PictureCategory

-(instancetype)initWithCategoryName:(NSString *)name{
    
    if (self = [super init]){
        _categoryName = name;
        //when picturesCategory is instantiated self.pictures will also be created with the saved categories.
        [self createCategory];
    }
    return self;
    
}

-(void)createCategory{
    
    if([self.categoryName isEqualToString:@"Batman"]) {
        [self createPhotoWithName:@"batman"];
    } else if ([self.categoryName isEqualToString:@"Animal"]){
        [self createPhotoWithName:@"animal"];
    } else if ([self.categoryName isEqualToString:@"BallPlayer"]){
        [self createPhotoWithName:@"basketball"];
    }
    
}

-(void)createPhotoWithName:(NSString *)name {
    NSMutableArray <PictureObject *> *temp = [NSMutableArray array];
    
    for (NSInteger i =1; i < 5; ++i) {
        
        NSString *picture = [NSString stringWithFormat:@"%@%ld%ld.jpg",name,(long)0,(long)i];
        [temp addObject:[[PictureObject alloc]initWithPicture:picture]];
    }
    //save info to the mutable array property declaed in .h
    self.pictures = [temp copy];
    
}


@end
