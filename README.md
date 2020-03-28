# gsi-vector-mapbox-gl-js-without-hatch
地理院地図のベクトルタイルをMapbox GL JSで表示するサンプル（fill-patternによるhatch表現を利用しない）

- [標準地図](https://mghs15.github.io/gsi-vector-mapbox-gl-js-without-hatch/std.html#14.01/35.44575/139.9552)
- [単色地図](https://mghs15.github.io/gsi-vector-mapbox-gl-js-without-hatch/pale.html#14.01/35.44575/139.9552)
- [白地図](https://mghs15.github.io/gsi-vector-mapbox-gl-js-without-hatch/blank.html#14.01/35.44575/139.9552)

fill-patternによるハッチ表現をfill-colorによる塗りつぶし表現で代用するタイプです。
ハッチ用の配列データや画像データを読み込む必要はありません。

`style-fillpattern-replace.pl`は、fill-patternの設定を、対応するfill-colorの設定に置き換えるPerl製ツール（変換表を兼ねる）です。


配列データを読み込んで表示するVer.は[こちら](https://github.com/mghs15/gsi-vector-mapbox-gl-js)。
PNG画像を読み込んで表示するVer.は[こちら](https://github.com/mghs15/gsi-vector-mapbox-gl-js-png)。

## 参考文献等
* [地理院地図Vector（仮称）提供実験](https://github.com/gsi-cyberjapan/gsimaps-vector-experiment)
* [Mapbox GL JS](https://github.com/mapbox/mapbox-gl-js)

