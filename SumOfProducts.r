# -2変数の関係性を求める-

arr1 <- c(49, 53, 48, 47, 49, 43, 49, 52, 50, 51, 52, 57, 48, 52, 50)
arr2 <- c(55, 48, 49, 60, 45, 44, 43, 55, 44, 44, 61, 60, 54, 48, 40)
ave1 <- mean(arr1)
ave2 <- mean(arr2)
# 偏差
hensa1 <- arr1 - ave1
hensa2 <- arr2 - ave2
# 偏差積和を算出する
sekiwa <- sum(hensa1 * hensa2)
# 標本共分散
kyobunsan <- sekiwa / length(arr1)

# 偏差1の二乗
hensa1expr2 <- hensa1 ^ 2
# 平方和1
heihowa1 <- sum(hensa1expr2)
# 標本分散1
v1 <- heihowa1 / length(arr1)
# 標準偏差1
s1 <- sqrt(v1)

# 偏差2の二乗
hensa2expr2 <- hensa2 ^ 2
# 平方和2
heihowa2 <- sum(hensa2expr2)
# 標本分散2
v2 <- heihowa2 / length(arr2)
# 標準偏差2
s2 <- sqrt(v2)

# ピアソンの積率相関係数 <- 標本共分散 / (標準偏差1 * 標準偏差2)
sokankesu1 <- kyobunsan / ( s1 * s2 )
# ピアソンの積率相関係数はcor(data1, data2)で求めることができる
sokankesu2 <- cor(arr1, arr2)

# 順位
rank1 = rank(arr1)
# スピアマンの順位相関係数
rank2 = cor(arr1, arr2, method="spearman")
