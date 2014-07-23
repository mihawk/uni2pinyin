uni2pinyin
==========

unicode chines to pinyin

```bash
$ git clone https://github.com/mihawk/uni2pinyin.git
$ cd uni2pinyin
$ ./rebar compile

$ erl -pa ebin/
Erlang R16B02 (erts-5.10.3) [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V5.10.3  (abort with ^G)
1> [uni2pinyin:decode(X) || X <- "龙江省五大"].
["long2","jiang1",["sheng3","xing3"],"wu3",["da4","dai4"]]

```
