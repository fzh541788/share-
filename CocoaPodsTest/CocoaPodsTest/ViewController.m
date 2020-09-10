//
//  ViewController.m
//  CocoaPodsTest
//
//  Created by young_jerry on 2020/9/8.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewController.h"
#import "shareTableViewCell.h"
#import "Masonry.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _TableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    
    [self.view addSubview:_TableView];
    self.TableView.delegate = self;
    self.TableView.dataSource = self;
    
    [self.TableView registerClass:[shareTableViewCell class] forCellReuseIdentifier:@"111"];
    [self.TableView registerClass:[shareTableViewCell class] forCellReuseIdentifier:@"222"];
    [self.TableView registerClass:[shareTableViewCell class] forCellReuseIdentifier:@"333"];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0){
        return 90;
    }else if (indexPath.row == 1){
        return 40;
    }else{
        return 1270;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [[UIView alloc]init];
}
-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [[UIView alloc]init];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == 0){
           shareTableViewCell *cell = [self.TableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
        UIImage *head = [UIImage imageNamed:@"头像.png"];
        UIImageView *headimage = [[UIImageView alloc]initWithImage:head];
                                   [cell addSubview:headimage];
        [headimage mas_makeConstraints:^(MASConstraintMaker *make){
                   //            make.centerX.equalTo(cell).offset(-100);
            make.top.equalTo(cell).offset(5);
            make.left.equalTo(cell).offset(5);
            make.right.equalTo(cell).offset(-295);
            make.height.equalTo(@80);
                           }];
        
        UIImage *zanfirstimage = [UIImage imageNamed:@"button_zan.png"];
        UIImageView *zanimage = [[UIImageView alloc]initWithImage:zanfirstimage];
        [cell addSubview:zanimage];
        [zanimage mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.equalTo(cell).offset(72);
            make.left.equalTo(cell).offset(220);
            make.right.equalTo(cell).offset(-135);
            make.height.equalTo(@15);
                           }];
        
        UIImage *sharefirstimage = [UIImage imageNamed:@"button_share.png"];
        UIImageView *shareimage = [[UIImageView alloc]initWithImage:sharefirstimage];
        [cell addSubview:shareimage];
        [shareimage mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.equalTo(cell).offset(72);
            make.left.equalTo(cell).offset(267);
            make.right.equalTo(cell).offset(-88);
            make.height.equalTo(@15);
                           }];
        
        UIImage *guanzhufirstimage = [UIImage imageNamed:@"button_guanzhu.png"];
        UIImageView *guanzhuimage = [[UIImageView alloc]initWithImage:guanzhufirstimage];
        [cell addSubview:guanzhuimage];
        [guanzhuimage mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.equalTo(cell).offset(72);
            make.left.equalTo(cell).offset(315);
            make.right.equalTo(cell).offset(-38);
            make.height.equalTo(@15);
                           }];
        
        cell.firstlabel.text = @"假日";
        cell.secondlabel.text = @"share小白";
        cell.thirdlabel.text = @"8分钟前";
        cell.firstnumlabel.text = @"29";
        cell.secondnumlabel.text = @"49";
        cell.thirdnumlabel.text = @"19";
        
        return cell;
    }else if(indexPath.row == 1){
           shareTableViewCell *cell = [self.TableView dequeueReusableCellWithIdentifier:@"222" forIndexPath:indexPath];
        cell.textlabel.text = @"多希望列车能把我带到有你的城市";
        return cell;
    }else{
        shareTableViewCell *cell = [self.TableView dequeueReusableCellWithIdentifier:@"333" forIndexPath:indexPath];
        UIImage *first = [UIImage imageNamed:@"works_img1.png"];
        UIImageView *firstimage = [[UIImageView alloc]initWithImage:first];
        [cell addSubview:firstimage];
        [firstimage mas_makeConstraints:^(MASConstraintMaker *make){
//            make.centerX.equalTo(cell).offset(-100);
            make.top.equalTo(cell).offset(5);
            make.left.equalTo(cell).offset(0);
            make.right.equalTo(cell).offset(0);
            make.height.equalTo(@200);
        }];
        
        UIImage *second = [UIImage imageNamed:@"works_img2.png"];
        UIImageView *secondimage = [[UIImageView alloc]initWithImage:second];
        [cell addSubview:secondimage];
        [secondimage mas_makeConstraints:^(MASConstraintMaker *make){
//                  make.centerX.equalTo(cell).offset(-100);
            make.top.equalTo(cell).offset(215);
            make.left.equalTo(cell).offset(0);
            make.right.equalTo(cell).offset(0);
            make.height.equalTo(@200);
                }];

        UIImage *third = [UIImage imageNamed:@"works_img3.png"];
        UIImageView *thirdimage = [[UIImageView alloc]initWithImage:third];
        [cell addSubview:thirdimage];
        [thirdimage mas_makeConstraints:^(MASConstraintMaker *make){
                    //            make.centerX.equalTo(cell).offset(-100);
            make.top.equalTo(cell).offset(425);
            make.left.equalTo(cell).offset(100);
            make.right.equalTo(cell).offset(-100);
            make.height.equalTo(@280);
                }];
        
        UIImage *fourth = [UIImage imageNamed:@"works_img4.png"];
        UIImageView *fourthimage = [[UIImageView alloc]initWithImage:fourth];
        [cell addSubview:fourthimage];
        [fourthimage mas_makeConstraints:^(MASConstraintMaker *make){
            //            make.centerX.equalTo(cell).offset(-100);
            make.top.equalTo(cell).offset(715);
            make.left.equalTo(cell).offset(0);
            make.right.equalTo(cell).offset(0);
            make.height.equalTo(@200);
                    }];
        
        UIImage *fifth = [UIImage imageNamed:@"works_img5.png"];
        UIImageView *fifthimage = [[UIImageView alloc]initWithImage:fifth];
        [cell addSubview:fifthimage];
        [fifthimage mas_makeConstraints:^(MASConstraintMaker *make){
            //            make.centerX.equalTo(cell).offset(-100);
            make.top.equalTo(cell).offset(925);
            make.left.equalTo(cell).offset(100);
            make.right.equalTo(cell).offset(-100);
            make.height.equalTo(@280);
                    }];

        return cell;
    }

}
@end
