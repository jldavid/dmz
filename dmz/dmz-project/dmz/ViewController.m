#import "ViewController.h"
#import "Placemark.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CLLocationCoordinate2D coord = { .latitude = 43.656440, .longitude = -79.380686};
    MKCoordinateRegion region;
    region.center = coord;
    [_mapView setRegion:region];
    
    PlaceMark *placeMark = [[PlaceMark alloc]
                            initWithCoordinate:coord
                            andMarkTitle:@"Digital Media Zone"
                            andMarkSubTitle:@"Ryerson University"];
    
    [_mapView addAnnotation:placeMark];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)viewWebsite:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://digitalmediazone.ryerson.ca"]];
}

- (IBAction)callRestaurant:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:6479935263"]];
}
@end
