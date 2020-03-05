REM ############################################################################ REM
REM # Copyright © 2020, SAS Institute Inc., Cary, NC, USA.  All Rights Reserved. REM
REM # SPDX-License-Identifier: Apache-2.0                                        REM
REM ############################################################################ REM

cd %~dp0/../construct/project_change_manager
REM -------------------------------------------------------------------------------
REM Clean the directories and construct the archive
REM -------------------------------------------------------------------------------
call gradle clean distZip

cd %~dp0/../deploy/project_change_manager
REM -------------------------------------------------------------------------------
REM deploy and unpack the archive
REM -------------------------------------------------------------------------------
call gradle clean cleanRemote deployAll

PAUSE