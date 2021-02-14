FROM mcr.microsoft.com/windows/servercore/insider:10.0.18362.1

RUN echo "Downloading dbconvert studio"
ADD https://dbconvert.com/downloads/dbconvert_studio.zip /
COPY DBConvert-Studio.reg /
RUN powershell -Command "Write-Host 'Expanding dbconvert archive'; \
    Expand-Archive dbconvert_studio.zip; \
    Write-Host 'Installing dbconvert'; \
    Start-Process msiexec -ArgumentList '/i', 'C:\dbconvert_studio\dbconvert_studio_x64\DbConvertStudioSetup_x64.msi', '/quiet', '/norestart' -NoNewWindow -Wait; \
    Start-Process reg import DBConvert-Studio.reg; \
    Remove-Item -Path c:\dbconvert* -recurse -force; \
    Set-Location -Path 'C:\Program Files\DBConvert\DBConvert Studio x64';"
CMD ["powershell"]