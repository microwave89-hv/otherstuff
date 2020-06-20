#!/bin/bash
# Atmospheric Data Fetcher
# Intended to be used in conjunction with a cron job set to 20:00 UTC.
# (c) 2020 microwave89-hv
GFSENS00=`date "+%Y%m%d_%H%M_00"`
GFSENS12=`date "+%Y%m%d_%H%M_12"`
DAISY=`date -d "now - 3 days" "+%Y%m%d"` # Daisy is always 3 days behind
OSWINPLOT=`date "+%Y%m%d_%H%M"`
curl "modeles7.meteociel.fr/modeles/gens/graphe_ens3.php?x=614&ext=1&y=337&run=00&runpara=0">~/gfsens/$GFSENS00.gif
curl "modeles7.meteociel.fr/modeles/gens/graphe_ens3.php?x=614&ext=1&y=337&run=12&runpara=0">~/gfsens/$GFSENS12.gif
curl "http://lasp.colorado.edu/aim/cips/data/repository/prelim/current_daisy.png">~/nlcs/daisies/$DAISY.png
curl "https://www.iap-kborn.de/fileadmin/user_upload/MAIN-abteilung/radar/Radars/OswinVHF/Plots/OSWIN_Mesosphere_4hour.png">~/nlcs/oswin/$OSWINPLOT.png
exit
