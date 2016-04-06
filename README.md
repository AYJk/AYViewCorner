# AYViewCorner

[![LICENSE](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/AYJk/AYPageControl/blob/master/License)&nbsp;
![CocoaPods Version](https://img.shields.io/badge/pod-v1.0.0-brightgreen.svg)
[![BLOG](https://img.shields.io/badge/blog-ayjkdev.top-orange.svg)](http://ayjkdev.top/)&nbsp;

[不触发离屏渲染的情况下设置圆角](http://ayjkdev.top/2016/04/05/corner-radius-with-out-offscreen-rendered/)

[中文介绍](https://github.com/AYJk/AYViewCorner#中文介绍)

This is a utility class which can help you set round corner without **offScreen rendered**. 
You can easily hoding frames at 60fps, the effect looks more smoother than `layer.cornerRadius`.

# Installation
The perferred way of installation is via [CocoaPods](http://cocoapods.org/)

```ruby
pod 'AYViewCorner'
```

and run `pod install` or `pod update`. It will install the most recent version of AYViewCorner.

After that import \<AYViewCorner/AYViewCorner.h\>.

# Usage

## UIButton
If you want set UIButton with round corner, I suggest you invoke:
```objc
- (void)ay_setCornerRadius:(AYRadius)cornerRadius setNormalImage:(UIImage *)normalImage highlightedImage:(UIImage *)highlightedImage disabledImage:(UIImage *)disableImage selectedImage:(UIImage *)selectedImage backgroundColor:(UIColor *)color;
```

## UIView/UILabel
If you want set UIView or UILabel with round corner, I suggest you invoke:
```objc
- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundColor:(UIColor *)color;
```

## UIImageView
If you want set UIImageView with round corner, I suggest you invoke:
```objc
- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundImage:(UIImage *)image backgroundColor:(UIColor *)color;
```
At the same time, if you want to set UIViewContentMode with UIImageView,I suggest you invoke:
```objc
- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundImage:(UIImage *)image backgroundColor:(UIColor *)color withContentMode:(UIViewContentMode)contentMode;
```
> If both the image and color are set ,it only show the image.

# Changelog

v 1.0.1 fix some info

v 1.0.0 first version 

# License
AYViewCorner is provided under the MIT license. See LICENSE file for details.	

=================
# 中文介绍

这是一个不触发离屏渲染设置圆角的工具类。你可以很容易的保持界面的FPS保持在60左右，足以保证流畅。

# 安装
推荐使用[CocoaPods](http://cocoapods.org/)进行安装。

```ruby
pod 'AYViewCorner'
```

然后输入 `pod install` or `pod update`。将会安装最新版本的AYViewCorner。

最后导入头文件\<AYViewCorner/AYViewCorner.h\>

# 用法

## UIButton
如果你想要设置 UIButton 的圆角，建议调用下面的方法：

```objc
- (void)ay_setCornerRadius:(AYRadius)cornerRadius setNormalImage:(UIImage *)normalImage highlightedImage:(UIImage *)highlightedImage disabledImage:(UIImage *)disableImage selectedImage:(UIImage *)selectedImage backgroundColor:(UIColor *)color;
```

## UIView/UILabel
如果你想要设置 UIView/UILabel 的圆角，建议调用下面的方法：

```objc
- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundColor:(UIColor *)color;
```

## UIImageView
如果你想要设置 UIImageView 的圆角，建议调用下面的方法：

```objc
- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundImage:(UIImage *)image backgroundColor:(UIColor *)color;
```

同时，如果你想设置 UIImageView 的 UIViewContentMode，建议调用下面的方法：

```objc
- (void)ay_setCornerRadius:(AYRadius)cornerRadius backgroundImage:(UIImage *)image backgroundColor:(UIColor *)color withContentMode:(UIViewContentMode)contentMode;
```

> 如果同时设置图片和颜色，只会显示图片。

# Changelog

v 1.0.1 修正一些信息

v 1.0.0 首次提交 

# 许可证
AYViewCorner 使用 MIT 许可证，详情见 LICENSE 文件。	
