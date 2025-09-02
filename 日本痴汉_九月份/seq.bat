@echo off
setlocal enabledelayedexpansion

rem 定义支持的图片扩展名
set extensions=jpg png jpeg

set count=1

for %%e in (%extensions%) do (
    for /f "tokens=*" %%f in ('dir /b /on *.%%e') do (
        rem 重命名文件，带扩展名
        ren "%%f" "!count!.%%e"
        set /a count+=1
    )
)

echo 重命名完成！
pause
