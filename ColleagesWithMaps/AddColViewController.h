//
//  AddColViewController.h
//  ColleagesWithMaps
//
//  Created by Ahmed Soultan on 26/01/2022.
//

#import <UIKit/UIKit.h>
#import "addDelegate.h"
#import "MapKit/MapKit.h"

NS_ASSUME_NONNULL_BEGIN

@interface AddColViewController : UIViewController<MKMapViewDelegate>

@property id <addDelegate> delegate;
@property (weak, nonatomic) IBOutlet MKMapView *colLocationMap;
@property (weak, nonatomic) IBOutlet UITextField *nameTf;
@property (weak, nonatomic) IBOutlet UITextField *ageTf;
@property (weak, nonatomic) IBOutlet UITextField *salaryTf;
@property (weak, nonatomic) IBOutlet UIImageView *userImg;

@end

NS_ASSUME_NONNULL_END
