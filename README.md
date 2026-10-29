# CityCAT-docker
The setup required for running CityCAT hydrodynamic model in a wine-based Docker container.

#### Setup Notes
1. Place your CityCat.exe in a directory called app.
2. Place config and data files in the top level directory: Buildings.txt, CityCat_Config.txt, Domain_DEM.asc, GreenAreas.txt, Rainfall_Data.txt

#### Build
  
    docker build -t citycat-docker .

#### Run

    docker run --rm \
      --cpuset-cpus="0-29" \
      -v "$PWD":/data \
      citycat-docker \
      -c 1 -r 1
