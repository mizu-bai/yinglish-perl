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

```perl
sub chs2yin($s, $inran);

```

`$s` 是原字符串，淫乱度是0~1的实数，越大越淫乱，表示每个词语被转化的概率。

## 安装

使用 repo release 中发布的的 perl 包即可。

项目依赖：

1. [Lingua::ZH::Jieba](https://metacpan.org/dist/Lingua-ZH-Jieba/view/lib/Lingua/ZH/Jieba.pod)
