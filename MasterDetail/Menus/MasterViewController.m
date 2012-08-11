//
//  MasterViewController.m
//  MasterDetail


#import "MasterViewController.h"
#import "PrologueViewControllerViewController.h"
#import "Story1MenuViewController.h"
#import "UISplitViewController+DetailViewSwapper.h"

@interface MasterViewController () 

@property NSArray *menus;

@end

@implementation MasterViewController

@synthesize menus = _menus;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Menu", @"Menu");
        self.clearsSelectionOnViewWillAppear = NO;
        self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.menus = [NSMutableArray arrayWithObjects:
                  @"Prolouge", 
                  @"Storyboard 1.", 
                  @"Storyboard 2.",
                  @"Storyboard 3.",
                  @"Storyboard 4.",
                  nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];    
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
        PrologueViewControllerViewController *prologueViewController = [[PrologueViewControllerViewController alloc]
                                                                        initWithNibName:@"PrologueViewControllerViewController"
                                                                        bundle:nil];
        [self.splitViewController swapDetailViewControllerWith:prologueViewController];
    }
    else if (indexPath.row == 1)
    {
        Story1MenuViewController *story1MenuViewController = [[Story1MenuViewController alloc]
                                                                        initWithNibName:@"Story1MenuViewController"
                                                                        bundle:nil];
        [self.navigationController pushViewController:story1MenuViewController animated:YES];

    }
}

@end
