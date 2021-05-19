#!/bin/bash
mkdir cernlib
cp cernlib-2005-all-new.tgz cernlib/cernlib.2005.corr.tgz
cp cernlib.2005.corr.2020.12.11.tgz cernlib/cernlib_2005.tgz
tar -zxvf cernlib.2005.install.2020.12.11.tgz -C cernlib
cd cernlib/
#wget https://cernlib.web.cern.ch/download/2005_source/tar/include.tar.gz  
#wget https://cernlib.web.cern.ch/download/2005_source/tar/gcalor.tar.gz   
#wget https://cernlib.web.cern.ch/download/2005_source/tar/mathlib32_src.tar.gz
#wget https://cernlib.web.cern.ch/download/2005_source/tar/minuit32_src.tar.gz  
#wget https://cernlib.web.cern.ch/download/2005_source/tar/nypatchy_boot.tar.gz 
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_Imakefile.tar.gz    
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_car.tar.gz          
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_cfortran.tar.gz     
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_cmz.tar.gz          
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_config.tar.gz       
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_geant321.tar.gz     
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_graflib.tar.gz      
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_include.tar.gz      
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_mathlib.tar.gz      
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_mclibs.tar.gz       
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_packlib.tar.gz      
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_patchy.tar.gz       
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_pawlib.tar.gz       
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_phtools.tar.gz      
wget https://cernlib.web.cern.ch/download/2005_source/tar/src_scripts.tar.gz      
sed -i -e 's/FC=" "/FC=gfortran/g' Install_cernlib
sed -i -e 's/[ "$GCCVSN" = "3" ]&&FC=g77/#[ "$GCCVSN" = "3" ]&&FC=g77/g' Install_cernlib
sed -i -e 's/[ "$GCCVSN" = "4" ]&&FC=gfortran/#[ "$GCCVSN" = "4" ]&&FC=gfortran/g' Install_cernlib
./Install_cernlib
source cernlib_env 
