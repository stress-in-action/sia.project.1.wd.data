########################################################################
# Read in raw data
#
# Stress in Action 2025
########################################################################

p_devices     <- here("data","raw","devices.xlsx")
p_signals     <- here("data","raw","signals.xlsx")
p_specs       <- here("data","raw","technical_specs.xlsx")
p_data_access <- here("data","raw","data_access.xlsx")
p_rvu         <- here("data","raw","rvu_synthesis.xlsx")
p_scores      <- here("data","raw","expert_scores.xlsx")
p_rvu_synthesis_detailed <- here("data","raw","rvu_synthesis_detailed.xlsx")

#set na values
na_vals <- c("", "NA", "NP", "N/A", "Na", "na", "NULL", "-9999")

devices      <- read_xlsx(p_devices,      na = na_vals) %>% clean_names()
signals_long <- read_xlsx(p_signals,      na = na_vals) %>% clean_names()
specs        <- read_xlsx(p_specs,        na = na_vals) %>% clean_names()
data_access  <- read_xlsx(p_data_access,  na = na_vals) %>% clean_names()
rvu          <- read_xlsx(p_rvu,          na = na_vals) %>% clean_names()
scores       <- read_xlsx(p_scores,       na = na_vals) %>% clean_names()
rvu_detailed  <- read_xlsx(p_rvu_synthesis_detailed, na = na_vals) %>% clean_names()


# possibility: restrict to selected devices only 

# DEVICE_FILTER <- c("003_sia_wd_emp", "004_sia_wd_emp")
# devices      <- devices      %>% dplyr::filter(device_id %in% DEVICE_FILTER)
# signals_long <- signals_long %>% dplyr::filter(device_id %in% DEVICE_FILTER)
# specs        <- specs        %>% dplyr::filter(device_id %in% DEVICE_FILTER)
# data_access  <- data_access  %>% dplyr::filter(device_id %in% DEVICE_FILTER)
# rvu          <- rvu          %>% dplyr::filter(device_id %in% DEVICE_FILTER)
# scores       <- scores       %>% dplyr::filter(device_id %in% DEVICE_FILTER)
