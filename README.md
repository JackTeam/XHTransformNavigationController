XHTransformNavigationController
===============================

利用导航控制器的时候，经常会遇到，在某个页面不需要navigationBar，有些页面需要navigationBar，
控制navigationBar的隐藏和显示的过程中会出现头部空白区域，那就是navigationBar隐藏之后，留下的系统Bug，
在这里提供一个解决方案



使用例子很简单，如下：

比如A控制器 Push 到 B控制

[self.navigationController pushViewControllerWithNavigationControllerTransition:hiddenNavigationBarViewController];

// hiddenNavigationBarViewController就是需要隐藏导航栏的界面了，既是B控制器


## License

中文:      XHTransformNavigationController 是在MIT协议下使用的，可以在LICENSE文件里面找到相关的使用协议信息.

English:   XHTransformNavigationController is acailable under the MIT license, see the LICENSE file for more information.


=======================
## 须知       
中文：如果您在您的项目中使用开源组件,请给我们发[电子邮件](mailto:xhzengAIB@gmail.com?subject=From%20GitHub%20XHTransformNavigationController)告诉我们您的应用程序的名称。         

## Instructions
         
English：If you use open source components in your project, please [Email us](mailto:xhzengAIB@gmail.com?subject=From%20GitHub%20XHTransformNavigationController) to tell us the name of your application.




