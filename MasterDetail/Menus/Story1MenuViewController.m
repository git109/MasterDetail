//
//  Story1MenuViewController.m
//  MasterDetail


#import "Story1MenuViewController.h"
#import "Scene1AViewController.h"
#import "Scene1BViewController.h"
#import "Scene1CViewController.h"
#import "Scene1DViewController.h"
#import "UISplitViewController+DetailViewSwapper.h"

@interface Story1MenuViewController ()

@property NSArray *menus;

@end

@implementation Story1MenuViewController

@synthesize menus = _menus;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.menus = [NSMutableArray arrayWithObjects:
                      @"Scene 1A.",
                      @"Scene 1B.",
                      @"Scene 1C.",
                      @"Scene 1D.",
                      nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.menus.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [self.menus objectAtIndex:indexPath.row];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        Scene1AViewController *scene1AViewController = [[Scene1AViewController alloc]
                                                                        initWithNibName:@"Scene1AViewController"
                                                                        bundle:nil];
        [self.splitViewController swapDetailViewControllerWith:scene1AViewController];
    }
    else if (indexPath.row == 1)
    {
        Scene1BViewController *scene1BViewController = [[Scene1BViewController alloc]
                                                        initWithNibName:@"Scene1BViewController"
                                                        bundle:nil];
        [self.splitViewController swapDetailViewControllerWith:scene1BViewController];
    }
    else if (indexPath.row == 2)
    {
        Scene1CViewController *scene1CViewController = [[Scene1CViewController alloc]
                                                        initWithNibName:@"Scene1CViewController"
                                                        bundle:nil];
        [self.splitViewController swapDetailViewControllerWith:scene1CViewController];
    }
    else if (indexPath.row == 3)
    {
        Scene1DViewController *scene1DViewController = [[Scene1DViewController alloc]
                                                        initWithNibName:@"Scene1DViewController"
                                                        bundle:nil];
        [self.splitViewController swapDetailViewControllerWith:scene1DViewController];
    }
}



@end
