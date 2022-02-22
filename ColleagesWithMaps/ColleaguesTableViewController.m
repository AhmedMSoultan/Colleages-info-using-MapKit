//
//  ColleaguesTableViewController.m
//  ColleagesWithMaps
//
//  Created by Ahmed Soultan on 26/01/2022.
//

#import "ColleaguesTableViewController.h"
#import "Colleague.h"
#import "AddColViewController.h"
#import "EditColleagueViewController.h"

@interface ColleaguesTableViewController ()

@end

@implementation ColleaguesTableViewController

NSMutableArray <Colleague*> *males;
NSMutableArray <Colleague*> *females;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeColleages];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return males.count;
            break;
        case 1:
            return females.count;
            break;
    }
    return 0;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *title = @"";
    switch (section) {
        case 0:
            title = @"Males";
            break;
        case 1:
            title = @"Females";
            break;
    }
    return title;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return 60;
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    switch (indexPath.section) {
        case 0: //males
            cell.textLabel.text = males[indexPath.row].name;
            return cell;
            break;
        case 1: //females
            cell.textLabel.text = females[indexPath.row].name;
            return cell;
            break;
    }
    return cell;
}

- (IBAction)addNewColMethod:(id)sender {
    AddColViewController *addColVC = [self.storyboard instantiateViewControllerWithIdentifier:@"addColViewController"];
    [addColVC setDelegate:self];
    [self.navigationController pushViewController:addColVC animated:YES];
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        switch (indexPath.section) {
            case 0:
                [males removeObjectAtIndex:indexPath.row];
                break;
            case 1:
                [females removeObjectAtIndex:indexPath.row];
                break;
            default:
                break;
        }
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    EditColleagueViewController *eCVC = [self.storyboard instantiateViewControllerWithIdentifier:@"editColViewController"];
    switch (indexPath.section) {
        case 0:
            eCVC.coll = [males objectAtIndex:indexPath.row];
            [males removeObjectAtIndex:indexPath.row];
            break;
        case 1:
            eCVC.coll = [females objectAtIndex:indexPath.row];
            [males removeObjectAtIndex:indexPath.row];
            break;
    }
    [eCVC setDelegate:self];
    [self.navigationController pushViewController:eCVC animated:YES];
}


-(void) initializeColleages{
    males = [NSMutableArray new ];
    females = [NSMutableArray new];
    
    Colleague *col1 = [Colleague new];
    col1.name = @"Ahmed";
    col1.age = 25;
    col1.salary = 12000;
    col1.longitude = 30.0444;
    col1.latitude = 31.2357;
    col1.colleagueImg = [UIImage imageNamed:@"user-placeholder"];
    
    Colleague *col2 = [Colleague new];
    col2.name = @"Momen";
    col2.age = 23;
    col2.salary = 15000;
    col2.longitude = 30.0444;
    col2.latitude = 31.2357;
    col2.colleagueImg = [UIImage imageNamed:@"user-placeholder"];
    
    Colleague *col3 = [Colleague new];
    col3.name = @"Omar";
    col3.age = 17;
    col3.salary = 18000;
    col3.longitude = 30.0444;
    col3.latitude = 31.2357;
    col3.colleagueImg = [UIImage imageNamed:@"user-placeholder"];
    
    Colleague *col4 = [Colleague new];
    col4.name = @"Bassem";
    col4.age = 25;
    col4.salary = 9000;
    col4.longitude = 30.0444;
    col4.latitude = 31.2357;
    col4.colleagueImg = [UIImage imageNamed:@"user-placeholder"];
    
    Colleague *col5 = [Colleague new];
    col5.name = @"Sama";
    col5.age = 24;
    col5.salary = 10000;
    col5.longitude = 30.0444;
    col5.latitude = 31.2357;
    col5.colleagueImg = [UIImage imageNamed:@"user-placeholder"];
    
    Colleague *col6 = [Colleague new];
    col6.name = @"Sara";
    col6.age = 26;
    col6.salary = 12000;
    col6.longitude = 30.0444;
    col6.latitude = 31.2357;
    col6.colleagueImg = [UIImage imageNamed:@"user-placeholder"];
    
    [males addObject:col1];
    [males addObject:col2];
    [males addObject:col3];
    [males addObject:col4];
    
    [females addObject:col5];
    [females addObject:col6];
}

- (void)addNewColleague:(nonnull Colleague *)newColleague {
    [males addObject:newColleague];
    NSLog(@"%@", newColleague.name);
    [self.tableView reloadData];
}


@end
