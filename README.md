XHTransformNavigationController
===============================

利用导航控制器的时候，经常会遇到，在某个页面不需要navigationBar，有些页面需要navigationBar，
控制navigationBar的隐藏和显示的过程中会出现头部空白区域，那就是navigationBar隐藏之后，留下的系统Bug，
在这里提供一个解决方案



使用例子很简单，如下：

比如A控制器 Push 到 B控制

[self.navigationController pushViewControllerWithNavigationControllerTransition:hiddenNavigationBarViewController];

// hiddenNavigationBarViewController就是需要隐藏导航栏的界面了，既是B控制器
