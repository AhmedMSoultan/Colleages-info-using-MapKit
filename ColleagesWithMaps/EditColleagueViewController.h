//
//  EditColleagueViewController.h
//  ColleagesWithMaps
//
//  Created by Ahmed Soultan on 26/01/2022.
//

#import <UIKit/UIKit.h>
#import "Colleague.h"
#import "MapKit/MapKit.h"
#import "addDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface EditColleagueViewController : UIViewController <MKMapViewDelegate>

@property id <addDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIImageView *userImg;
@property (weak, nonatomic) IBOutlet UITextField *nameTf;
@property (weak, nonatomic) IBOutlet UITextField *ageTf;
@property (weak, nonatomic) IBOutlet UITextField *salaryTf;
@property (weak, nonatomic) IBOutlet MKMapView *colLocationMap;

@property Colleague *coll;

@end

NS_ASSUME_NONNULL_END
