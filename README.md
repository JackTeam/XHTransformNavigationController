XHTransformNavigationController
===============================

利用导航控制器的时候，经常会遇到，在某个页面不需要navigationBar，有些页面需要navigationBar，
控制navigationBar的隐藏和显示的过程中会出现头部空白区域，那就是navigationBar隐藏之后，留下的系统Bug，
在这里提供一个解决方案



使用例子很简单，如下：

比如A控制器 Push 到 B控制

[self.navigationController pushViewControllerWithNavigationControllerTransition:hiddenNavigationBarViewController];

// hiddenNavigationBarViewController就是需要隐藏导航栏的界面了，既是B控制器














The MIT License (MIT)

Copyright (c) 2013 Patrick Piemonte

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
