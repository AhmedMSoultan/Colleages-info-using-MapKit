//
//  MapAnnotation.h
//  ColleagesWithMaps
//
//  Created by Ahmed Soultan on 26/01/2022.
//

#import <Foundation/Foundation.h>
#import "MapKit/MapKit.h"
NS_ASSUME_NONNULL_BEGIN

@interface MapAnnotation : NSObject <MKAnnotation>
@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@end



NS_ASSUME_NONNULL_END
