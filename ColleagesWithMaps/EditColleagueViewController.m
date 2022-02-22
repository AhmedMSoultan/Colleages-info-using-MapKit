//
//  EditColleagueViewController.m
//  ColleagesWithMaps
//
//  Created by Ahmed Soultan on 26/01/2022.
//

#import "EditColleagueViewController.h"
#import "MapAnnotation.h"
#import "MapKit/Mapkit.h"

@interface EditColleagueViewController ()

@end

@implementation EditColleagueViewController

//CLLocationCoordinate2D coordinate ;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _nameTf.text = _coll.name;
    _ageTf.text = [@(_coll.age) stringValue];
    _salaryTf.text = [@(_coll.salary) stringValue];
    _userImg.image = _coll.colleagueImg;
    CLLocationCoordinate2D coordinate ;
    coordinate.latitude = _coll.latitude;
    coordinate.longitude = _coll.longitude;
    
    MapAnnotation *colAnnotation = [MapAnnotation new];
    [colAnnotation setCoordinate:coordinate];
    [colAnnotation setTitle:@"Your Location"];
    NSString *latitude = [@"latitude:" stringByAppendingString:[[NSString alloc] initWithFormat:@"%f" , coordinate.latitude]];
    NSString *longitude = [ latitude stringByAppendingString:[ @" longitude:" stringByAppendingString:[[NSString alloc] initWithFormat:@"%f" , coordinate.longitude]]];
    
    [colAnnotation setSubtitle:longitude];
    [_colLocationMap addAnnotation:colAnnotation];
}

- (IBAction)editBtnMethod:(id)sender {
    
    Colleague *colleague = [Colleague new];
    colleague.name = _nameTf.text;
    colleague.age = [_ageTf.text intValue ];
    colleague.salary = [_salaryTf.text intValue];
//    colleague.latitude = coordinate.latitude;
//    colleague.longitude = coordinate.longitude;
    colleague.colleagueImg = _userImg.image;
    
    [_delegate addNewColleague:colleague];
    [self.navigationController popViewControllerAnimated:YES];
    
}


@end
