推薦アルゴリズムの分類

 主要アプローチ

  1. 協調フィルタリング - ユーザー行動データ
  2. コンテンツベース - アイテム特徴
  3. 知識ベース - ルール・オントロジー
  4. グラフベース - 関係性ネットワーク
  5. 強化学習 - 報酬最適化
  6. セッションベース - 短期行動パターン
  7. 文脈考慮 - 時間・場所・デバイス等

  特殊アプローチ

  - 因果推論 - バイアス除去
  - メタ学習 - 少数データ対応
  - 説明可能推薦 - 解釈性重視
  - マルチタスク - 複数目的最適化

1. データ活用方法による分類

  協調フィルタリング（ユーザー行動データ）

  メモリベース
  - ユーザーベース協調フィルタリング
  - アイテムベース協調フィルタリング

  モデルベース（行列分解）
  - SVD（特異値分解）
  - NMF（非負値行列分解）
  - MF（Matrix Factorization）
  - IMF（暗黙的評価値対応）
  - BPR（ランキング最適化）
  - ALS（大規模データ対応）

  コンテンツベース（アイテム特徴データ）

  - TF-IDF
  - コサイン類似度
  - LDA（トピックモデル）
  - word2vec

  ハイブリッド（両データ活用）

  - FM（Factorization Machines）
  - 加重ハイブリッド
  - 切り替えハイブリッド
  - 深層学習系（NCF、Wide&Deep、DeepFM等）

2. 学習方法による分類

  ルールベース

  - アソシエーションルール
  - Knowledge-based
  - 人気度推薦

  機械学習

  - 回帰モデル
  - 行列分解系（SVD、NMF、MF等）
  - 埋め込み系（word2vec、item2vec、LDA）

  深層学習

  - NCF
  - Wide&Deep
  - DeepFM
  - BERT4Rec
  - Two-Tower Model

  その他

  - ランダム推薦（ベースライン）
 グラフベース

  - PageRank応用 - リンク構造から重要度算出
  - Random Walk - グラフ上のランダムウォーク
  - GNN (Graph Neural Networks) - グラフ構造を学習
  - LightGCN - グラフ畳み込みネットワーク
  - Knowledge Graph - 知識グラフ活用

  強化学習系

  - Multi-Armed Bandit - 探索と活用のバランス
  - Contextual Bandit - 文脈付きバンディット
  - DQN/DDPG - 深層強化学習

  セッションベース

  - GRU4Rec - RNNベース
  - SASRec - Self-Attention
  - STAMP - 短期記憶重視

  時系列考慮

  - TimeSVD++ - 時間変化を考慮
  - RRN (Recurrent Recommender Networks)

  マルチタスク学習

  - MMoE - Multi-gate Mixture-of-Experts
  - PLE - Progressive Layered Extraction

  その他

  - AutoML推薦 - AutoRec等
  - メタ学習 - 少数データ対応
  - 説明可能推薦 - 推薦理由の提示
  - 因果推論ベース - バイアス除去

===この本でのアルゴリズム

ランダム推薦    ランダムにアイテムを推薦する。ベースラインとして利用されることがある
統計情報や特定のルールに基づく推薦（人気度推薦など）    ベースラインとしてよく利用される
アソシエーションルール    シンプルな計算方法で、SQL でも実装が可能なため、昔から幅広く活用されている
ユーザー間型メモリベース法協調フィルタリング    同上
回帰モデル    回帰問題として推薦タスクを定式化して、種々の機械学習手法を適用する
SVD（特異値分解）    シンプルな行列分解手法
NMF（非負値行列分解）    非負という制約を加えた行列分解手法
MF（Matrix Factorization）    Netflix のコンペで好成績を収めた行列分解手法
IMF（Implicit Matrix Factorization）    暗黙的評価値に対応した行列分解手法
BPR（Bayesian Personalized Ranking）    暗黙的評価値に対応したランキングを考慮した行列分解手法
FM（Factorization Machines）    評価値以外にもアイテムやユーザーの情報を加味することが可能な手法
LDA（コンテンツベース）    アイテムのコンテンツ情報にトピックモデルを適用して推薦する手法
LDA（協調フィルタリング）    ユーザーの行動履歴にトピックモデルを適用して推薦する手法
word2vec（コンテンツベース）    アイテムのコンテンツ情報に word2vec を適用して推薦する手法
item2vec（協調フィルタリング）    ユーザーの行動履歴に word2vec を適用して推薦する手法
深層学習    深層学習の推薦手法
