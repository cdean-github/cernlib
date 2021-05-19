#!/bin/bash
mkdir CERNlib
cp cernlib-2005-all-new.tgz cernlib/cernlib.2005.corr.tgz
cp cernlib.2005.corr.2020.12.11.tgz cernlib/cernlib_2005.tgz
tar -zxvf cernlib.2005.install.2020.12.11.tgz -C cernlib
cd CERNlib/
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
./Install_cernlib
source cernlib_env 
