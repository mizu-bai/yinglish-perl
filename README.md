# 淫语翻译机（现以 Perl 版呈现）


能把中文翻译成淫语的翻译机！

此 repo 是 RimoChan 的 [淫语翻译机](https://github.com/RimoChan/yinglish) perl 实现版本。

## 样例

```perl
use Yinglish;

$s = "不行，那里不行。";
print Yinglish::chs2yin($s) . "\n";
# 不行，那……那里不行……

$s2 = "吃葡萄不吐葡萄皮。";
print Yinglish::chs2yin($s) . "\n";
# ……吃〇〇不吐葡……葡萄皮……

```

## 接口说明

