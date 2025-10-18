`EDA`

```
- アイテム数
- ユーザー数
- 評価値
- 評価数
```


 EDA（Exploratory Data Analysis）の基本手順：

  1. データの概要把握

  # 基本情報
  df.info()           # 型、欠損値
  df.shape           # サイズ
  df.head()          # 最初の数行
  df.describe()      # 統計量

  2. 欠損値・異常値チェック

  df.isnull().sum()  # 欠損値カウント
  df.duplicated().sum()  # 重複
  df.boxplot()       # 外れ値の視覚化

  3. 単変量解析

  # 数値変数
  df['column'].hist()  # 分布確認

  # カテゴリ変数  
  df['category'].value_counts()  # 頻度
  df['category'].value_counts().plot(kind='bar')

  4. 二変量解析

  # 相関
  df.corr()  # 相関行列
  sns.heatmap(df.corr())  # ヒートマップ

  # 散布図
  df.plot.scatter(x='col1', y='col2')

   5. 可視化で傾向把握

  import seaborn as sns
  sns.pairplot(df)  # 変数間の関係を一覧

  実践的な流れ：
  1. 問いを立てる → 「売上に影響する要因は？」
  2. データ確認 → 型、サイズ、欠損
  3. 可視化 → グラフで傾向を見る
  4. 仮説生成 → 「〜が原因では？」
  5. 検証 → 統計的に確認

  まずはデータを眺めて、グラフを描いてみることから始めましょう！
  