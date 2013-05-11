//
//  vcTabla.m
//  OurFirstGitApp
//
//  Created by Eduardo Bautista Antonio on 27/04/13.
//  Copyright (c) 2013 Eric Vargas. All rights reserved.
//

#import "vcTabla.h"
#import "Persona.h"
#import "myCell.h"

@interface vcTabla ()

@property (nonatomic, strong) IBOutlet UITableView *table;
@property (nonatomic, strong) NSDictionary *dictionary;

@property (nonatomic, strong) NSArray *cargarPersonas;

@end

@implementation vcTabla

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.cargarPersonas count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier=@"idCelda";
    
    myCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell ==Nil) {
        cell = [[myCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    Persona *person = (Persona *)[self.cargarPersonas objectAtIndex:indexPath.row];
    cell.lblName.text= person.name;
    cell.lblYear.text =person.yeard;
    [cell.imvImage setImage:[UIImage imageNamed:person.photo]];
    
    
    return cell;
    
    
}

-(NSArray *) cargarPersonas
{
    if (!_cargarPersonas) {
        NSMutableArray *Perfiles =[[NSMutableArray alloc] init];
        
        Persona *person1 = [[Persona alloc] init];
        
        person1.name =@"Sophia";
        person1.yeard = @"25";
        person1.photo=@"1.jpg";
        
        [Perfiles addObject:person1];
        
        Persona *person2 = [[Persona alloc] init];
        
        person2.name =@"Alexander";
        person2.yeard = @"43";
        person2.photo=@"2.jpg";
        [Perfiles addObject:person2];
        
        Persona *person3 = [[Persona alloc] init];
        
        person3.name =@"Lucas";
        person3.yeard = @"36";
        person3.photo=@"3.jpg";
        [Perfiles addObject:person3];
        
        _cargarPersonas = Perfiles;
        
        Persona *person4 = [[Persona alloc] init];
        
        person4.name =@"Alyssa";
        person4.yeard = @"29";
        person4.photo=@"4.jpg";
        [Perfiles addObject:person4];
        
        _cargarPersonas = Perfiles;
    }
    return _cargarPersonas;

}


@end
