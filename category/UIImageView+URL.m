//
//  UIImageView+URL.m
//  category
//
//  Created by zengqiang xing on 2018/6/3.
//  Copyright © 2018年 zengqiang xing. All rights reserved.
//

#import "UIImageView+URL.h"
#import <objc/runtime.h>
static char *urlKey="key";
@implementation UIImageView (URL)



// setter
-(void)setUrl1:(NSString *)url1
{
    /*参数：
     * id object 给哪个对象的属性赋值
     const void *key 属性对应的key
     id value  设置属性值为value
     objc_AssociationPolicy policy  使用的策略，是一个枚举值，和copy，retain，assign是一样的，手机开发一般都选择NONATOMIC
     */
    objc_setAssociatedObject(self, urlKey, url1, OBJC_ASSOCIATION_COPY_NONATOMIC);


}
// getter
-(NSString *)url1
{
    return objc_getAssociatedObject(self, urlKey);

}
// 移除关联对象
-(void)dealloc
{
    objc_removeAssociatedObjects(self);
}
@end
