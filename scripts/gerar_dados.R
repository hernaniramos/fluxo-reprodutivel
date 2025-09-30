set.seed(123)
if (!dir.exists("data/raw")) dir.create("data/raw", recursive = TRUE)

# Locais
locais <- data.frame(
  site_id = sprintf("S%03d", 1:20),
  municipio = sample(c("Ilhéus","Una","Itacaré","Uruçuca"), 20, TRUE),
  uf = "BA",
  lat = runif(20, -15.5, -13.5),
  lon = runif(20, -40.0, -38.0),
  area_ha = round(runif(20, 5, 300), 1),
  tipo_habitat = sample(c("Floresta","Mata Secundária","Cabruca"), 20, TRUE)
)

# Ocorrências (2024-2025)
especies <- c("Chaunus ictericus","Boana faber","Leptodactylus latrans","Rhinella crucifer")
datas <- seq(as.Date("2024-03-01"), as.Date("2025-02-28"), by = "week")
ocorr <- data.frame(
  site_id = sample(locais$site_id, 400, TRUE),
  data = sample(datas, 400, TRUE),
  bioma = "Mata Atlantica",
  especie = sample(especies, 400, TRUE),
  abundancia = rpois(400, lambda = sample(1:6, 400, TRUE))
)

write.csv(ocorr, "data/raw/ocorrencias_herpetofauna_2024_2025.csv", row.names = FALSE)
write.csv(locais, "data/raw/locais_amostragem.csv", row.names = FALSE)