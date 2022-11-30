## static_bin_test

> 2022.11.30

what I want
` program <- shape.a <- libpthread.a `

*아마 성공?*
- ldd program -> dynamic execution이 아니라 아무것도 안나옴 (정상)
- lsof -p [PID] -> 실행파일 이외에는 다른 파일(so등) 참조되지않고 있는 듯
