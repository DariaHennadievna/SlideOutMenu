//
//  NavigationMenuViewController.m
//  SlideOutMenu
//
//  Created by Admin on 11.05.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "NavigationMenuViewController.h"

@interface NavigationMenuViewController ()

@property (nonatomic) NSArray *menu;

@end

@implementation NavigationMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.menu = @[@"Red",@"Green",@"Map"];
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return self.menu.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = [self.menu objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
     UITableViewCell *myCell = (UITableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    if ( [myCell.reuseIdentifier isEqualToString:@"Red"] )
    {
        NSLog(@"Red");
    }
    if ( [myCell.reuseIdentifier isEqualToString:@"Green"] )
    {
        NSLog(@"Green");
    }
    if ( [myCell.reuseIdentifier isEqualToString:@"Map"] )
    {
        NSLog(@"Map");
    }
    
    //[self performSegueWithIdentifier:myCell.reuseIdentifier sender:self];
}

#pragma mark - Navigation



// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    /*if ( [segue isKindOfClass:[SWRevealViewControllerSegueSetController class]] )
    {
        //SWRevealViewControllerSegueSetController *swSegue = (SWRevealViewControllerSegueSetController *)segue;
        //swSegue.perform = ^(SWRevealViewControllerSegueSetController *rvc_segue, UIViewController *svc, UIViewController *dvc) {
        //if
        GreenViewController *dvc;
        UINavigationController *navController = (UINavigationController *)self.revealViewController.frontViewController;
        [navController setViewControllers:@[dvc] animated:NO];
        [self.revealViewController setFrontViewPosition:FrontViewPositionLeft animated:YES];
        
        
    }*/
}


@end
