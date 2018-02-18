if "%~1" equ "" (
	set message="Inital development"
) ELSE (
	set message=%1
)

git add .
git commit -m %message%
git push