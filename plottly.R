```{r}
library(plotly)
library(gapminder)

df <- data_clean
fig <- df |>
  plot_ly(
    x = ~gdp_per_capita, 
    y = ~co2_per_capita, 
    frame = ~year, 
    text = ~country, 
    hoverinfo = "text",
    type = 'scatter',
    mode = 'markers'
  )
fig <- fig |> layout(
  xaxis = list(
    type = "log"
  )
)

fig

```