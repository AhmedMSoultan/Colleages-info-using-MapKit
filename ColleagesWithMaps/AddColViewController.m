//
//  AddColViewController.m
//  ColleagesWithMaps
//
//  Created by Ahmed Soultan on 26/01/2022.
//

#import "AddColViewController.h"
#import "MapAnnotation.h"

@interface AddColViewController ()

@end

@implementation AddColViewController

CLLocationCoordinate2D coordinate;
//MapAnnotation *colAnnotation;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    _colLocationMap.cameraZoomRange;
    _colLocationMap.delegate = self;
    
}

- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    
}

- (IBAction)click:(id)sender {
    
    CGPoint point = [sender locationInView:self.colLocationMap];
    
    coordinate = [_colLocationMap convertPoint:point toCoordinateFromView:_colLocationMap];
    
    printf("longitude %f latitude %f \n",coordinate.longitude , coordinate.latitude);
    MapAnnotation *colAnnotation = [MapAnnotation new];
    [colAnnotation setCoordinate:coordinate];
    [colAnnotation setTitle:@"Your Location"];
    
    NSString *latitude = [@"latitude:" stringByAppendingString:[[NSString alloc] initWithFormat:@"%f" , coordinate.latitude]];
    NSString *longitude = [ latitude stringByAppendingString:[ @" longitude:" stringByAppendingString:[[NSString alloc] initWithFormat:@"%f" , coordinate.longitude]]];
    
    [colAnnotation setSubtitle:longitude];
    [_colLocationMap addAnnotation:colAnnotation];
}
- (IBAction)registerMethod:(id)sender {
    Colleague *colleague = [Colleague new];
    colleague.name = _nameTf.text;
    colleague.age = [_ageTf.text intValue ];
    colleague.salary = [_salaryTf.text intValue];
    colleague.latitude = coordinate.latitude;
    colleague.longitude = coordinate.longitude;
    colleague.colleagueImg = _userImg.image;
    
    [_delegate addNewColleague:colleague];
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
