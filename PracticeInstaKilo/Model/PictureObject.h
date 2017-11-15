//
//  PictureObject.h
//  PracticeInstaKilo
//
//  Created by Paul on 2017-11-14.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface PictureObject : NSObject

@property UIImage* photo;

-(instancetype)initWithPicture: (NSString*)imageName;


@end
