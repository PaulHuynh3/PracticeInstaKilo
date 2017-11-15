//
//  PictureCategory.h
//  PracticeInstaKilo
//
//  Created by Paul on 2017-11-14.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PictureObject.h"

@interface PictureCategory : NSObject

@property (nonatomic,strong) NSString* categoryName;
@property(nonatomic,strong) NSArray <PictureObject*> * pictures;

-(instancetype)initWithCategoryName:(NSString*)name;


@end
