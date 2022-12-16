//
//  ViewController.m
//
//

#import "ViewController.h"
#import "DBManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 20)];
    [button setTitle:@"打开数据库" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(open) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton * button1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 150, 100, 20)];
    [button1 setTitle:@"创建表" forState:UIControlStateNormal];
    button1.backgroundColor = [UIColor redColor];
    [self.view addSubview:button1];
    [button1 addTarget:self action:@selector(create) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton * button2 = [[UIButton alloc] initWithFrame:CGRectMake(0, 200, 100, 20)];
    [button2 setTitle:@"插入一条数据" forState:UIControlStateNormal];
    button2.backgroundColor = [UIColor redColor];
    [self.view addSubview:button2];
    [button2 addTarget:self action:@selector(inseat) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton * button3 = [[UIButton alloc] initWithFrame:CGRectMake(0, 250, 100, 20)];
    [button3 setTitle:@"cha" forState:UIControlStateNormal];
    button3.backgroundColor = [UIColor redColor];
    [self.view addSubview:button3];
    [button3 addTarget:self action:@selector(check) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton * button4 = [[UIButton alloc] initWithFrame:CGRectMake(0, 300, 100, 20)];
    [button4 setTitle:@"删除表" forState:UIControlStateNormal];
    button4.backgroundColor = [UIColor redColor];
    [self.view addSubview:button4];
    [button4 addTarget:self action:@selector(deleteTable) forControlEvents:UIControlEventTouchUpInside];

    UIButton * button5 = [[UIButton alloc] initWithFrame:CGRectMake(0, 350, 100, 20)];
    [button5 setTitle:@"更新数据" forState:UIControlStateNormal];
    button5.backgroundColor = [UIColor redColor];
    [self.view addSubview:button5];
    [button5 addTarget:self action:@selector(update) forControlEvents:UIControlEventTouchUpInside];

    UIButton * button6 = [[UIButton alloc] initWithFrame:CGRectMake(0, 400, 100, 20)];
    [button6 setTitle:@"删除数据" forState:UIControlStateNormal];
    button6.backgroundColor = [UIColor redColor];
    [self.view addSubview:button6];
    [button6 addTarget:self action:@selector(delete) forControlEvents:UIControlEventTouchUpInside];


    
}
-(void)open{
    [[DBManager shareDataBase] openDB];
}
//-(void)create{
//    [[DBManager shareDataBase] createTable];
//
//}
//-(void)inseat{
//    [[DBManager shareDataBase] insert];
//
//}
//-(void)check{
//    [[DBManager shareDataBase] sqlData];
//
//}
//-(void)deleteTable{
//    [[DBManager shareDataBase] dropTableName:@""];
//}
//-(void)update{
//    [[DBManager shareDataBase] updateSQLData:@""];
//
//}
//-(void)delete{
//
//    [[DBManager shareDataBase] updateSQLData:@"河北京"];
//
//}

@end
