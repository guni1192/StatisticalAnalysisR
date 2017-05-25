# データの入力
tk = c(49, 53, 48, 47, 49, 43, 49, 52, 50, 51, 52, 57, 48, 52, 50)
ay = c(55, 48, 49, 60, 45, 44, 43, 55, 44, 44, 61, 60, 54, 48, 40)
# 平均
ave_tk = mean(tk)
ave_ay = mean(ay)
# データ入力偏差
hen_tk = tk - ave_tk
hen_ay = ay - ave_ay
# 偏差の二乗
hen2_tk = hen_tk ^ 2
hen2_ay = hen_ay ^ 2
# 偏差の2上の和
sum_tk = sum(hen2_tk)
sum_ay = sum(hen2_ay)
# 分散
v_tk  = sum_tk / length(tk)
v_ay  = sum_ay / length(ay)
# 標準偏差
s_tk = sqrt(v_tk)
s_ay = sqrt(v_ay)
# 範囲
range_tk = max(tk) - min(tk)
range_ay = max(ay) - min(ay)
# 変動係数
cv_tk = s_tk / ave_tk
cv_ay = s_ay / ave_ay
