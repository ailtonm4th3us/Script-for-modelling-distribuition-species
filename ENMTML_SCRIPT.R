library(devtools)  
library(ENMTML)  


ENMTML(pred_dir ="C:/labb/model/biovar", # LOCAL DAS BIOVAR
       occ_file= "C:/labb/model/occ/occurences.txt", # LOCAL DAS OCORRENCIAS
       result_dir="C/labb/model/result", # Cria o destinario para os resultados
       proj_dir= "C:/labb/model/biovar_future", # Diretorio contendo as var. do futuro
       sp="sp", x="x", y="y", # Colunas nos arquivos de pontos de ocorrencia
       min_occ=1, # Metodo para escolher o minimo de ocorrencias para rodar o modelo
       colin_var=c(method="VIF"),  # Metodo para reduzir a colinearidade das biovar
       imp_var = TRUE,
       eval_occ = NULL,
       sp_accessible_area = c(method='MASK', filepath='C:/labb/model/ecoregion/shape.shp'), # area acessiveis. Basicamente uma restritricao da spp (biomas, etc)
       pres_abs_ratio = 1, # presenca - ausencia
       pseudoabs_method = c(method='ENV_CONST'), # Metodo para alocar as pseudo-ausencias
       part=c(method='BOOT', replicates='10', proportion='0.7'), # Metodo para particionar os dados
       save_part=FALSE,save_final=TRUE,
       algorithm = c("MXS", "RDF", "SVM"), # Algoritmos para modelagem
       cores=8, #numeros de processadores utilizados
       thr=c(type='Jaccard'), # Limiar usado para previsoes de presenca-ausencia.
       msdm=NULL, # Restricoes espaciais dos modelos  - Tem a priori e a posteriori
       ensemble=c(method='SUP', metric='JACCARD'), # Metodo para alocar todo resultado em um ensemble
       extrapolation=TRUE # Extrapolacao do modelo
       )