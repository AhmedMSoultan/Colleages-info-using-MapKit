//
//  Colleague.h
//  ColleagesWithMaps
//
//  Created by Ahmed Soultan on 26/01/2022.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Colleague : NSObject

@property NSString *name;
@property int age;
@property int salary;
@property double longitude;
@property double latitude;
@property UIImage *colleagueImg;

@end

NS_ASSUME_NONNULL_END
