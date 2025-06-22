file.path(
"models",
"words",
"words.csv"
) |> 
read.csv() -> 
words

colMeans(
words - words[,1]
) |> 
round(2) |> 
rbind() |> 
write.csv(
file = file.path(
"models",
"words",
"means.csv"
),
row.names = F,
quote = F
)