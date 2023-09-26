@echo off

SET CONFIG=%1
SET CKPT=%2
SET VIDEO=%3
SET OUTDIR=%4
IF "%OUTDIR%"=="" SET OUTDIR="./output"

python scripts/demo_inference.py ^
    --cfg %CONFIG% ^
    --checkpoint %CKPT% ^
    --video %VIDEO% ^
    --outdir %OUTDIR% ^
    --detector yolo  --save_img --save_video
