//
//  shareTableViewCell.m
//  CocoaPodsTest
//
//  Created by young_jerry on 2020/9/8.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "shareTableViewCell.h"
#import "Masonry.h"
@implementation shareTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if([reuseIdentifier isEqualToString:@"111"]){
        _firstlabel = [[UILabel alloc]init];
        [self.contentView addSubview:_firstlabel];
        _secondlabel = [[UILabel alloc]init];
        [self.contentView addSubview:_secondlabel];
        _thirdlabel = [[UILabel alloc]init];
        [self.contentView addSubview:_thirdlabel];
        _firstnumlabel = [[UILabel alloc]init];
        [self.contentView addSubview:_firstnumlabel];
        _secondnumlabel = [[UILabel alloc]init];
        [self.contentView addSubview:_secondnumlabel];
        _thirdnumlabel = [[UILabel alloc]init];
        [self.contentView addSubview:_thirdnumlabel];
    }else if([reuseIdentifier isEqualToString:@"222"]){
        _textlabel = [[UILabel alloc]init];
        [self.contentView addSubview:_textlabel];
    }
    return self;
}
-(void)layoutSubviews{
    [_firstlabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.equalTo(self.contentView).offset(-100);
        make.top.equalTo(self.contentView).offset(20);
        make.left.equalTo(self.contentView).offset(100);
        make.right.equalTo(self.contentView).offset(-200);
        make.height.equalTo(@20);
    }];
    _firstlabel.font = [UIFont systemFontOfSize:15];
    
     [_secondlabel mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.centerX.equalTo(self.contentView).offset(-100);
            make.top.equalTo(self.contentView).offset(50);
            make.left.equalTo(self.contentView).offset(100);
            make.right.equalTo(self.contentView).offset(-200);
            make.height.equalTo(@20);
        }];
        _secondlabel.font = [UIFont systemFontOfSize:12];
    
    [_thirdlabel mas_makeConstraints:^(MASConstraintMaker *make) {
      //        make.centerX.equalTo(self.contentView).offset(-100);
              make.top.equalTo(self.contentView).offset(20);
              make.left.equalTo(self.contentView).offset(300);
              make.right.equalTo(self.contentView).offset(-20);
              make.height.equalTo(@20);
          }];
          _thirdlabel.font = [UIFont systemFontOfSize:12];
    [_firstnumlabel mas_makeConstraints:^(MASConstraintMaker *make) {
         //        make.centerX.equalTo(self.contentView).offset(-100);
                 make.top.equalTo(self.contentView).offset(72);
                 make.left.equalTo(self.contentView).offset(245);
                 make.right.equalTo(self.contentView).offset(-20);
                 make.height.equalTo(@20);
             }];
             _firstnumlabel.font = [UIFont systemFontOfSize:12];
    [_secondnumlabel mas_makeConstraints:^(MASConstraintMaker *make) {
         //        make.centerX.equalTo(self.contentView).offset(-100);
                 make.top.equalTo(self.contentView).offset(72);
                 make.left.equalTo(self.contentView).offset(295);
                 make.right.equalTo(self.contentView).offset(-20);
                 make.height.equalTo(@20);
             }];
             _secondnumlabel.font = [UIFont systemFontOfSize:12];
    [_thirdnumlabel mas_makeConstraints:^(MASConstraintMaker *make) {
         //        make.centerX.equalTo(self.contentView).offset(-100);
                 make.top.equalTo(self.contentView).offset(72);
                 make.left.equalTo(self.contentView).offset(340);
                 make.right.equalTo(self.contentView).offset(-20);
                 make.height.equalTo(@20);
             }];
             _thirdnumlabel.font = [UIFont systemFontOfSize:12];
    [_textlabel mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.centerX.equalTo(self.contentView).offset(-100);
            make.top.equalTo(self.contentView).offset(10);
            make.left.equalTo(self.contentView).offset(10);
            make.right.equalTo(self.contentView).offset(-20);
            make.height.equalTo(@20);
        }];
        _textlabel.font = [UIFont systemFontOfSize:12];
}

@end
