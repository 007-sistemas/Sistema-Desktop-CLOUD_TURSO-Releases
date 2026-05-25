[Setup]
AppName=Controle de Produção - ÔmegaDev
AppVersion=1.0
DefaultDirName={userappdata}\Controle de Produção - ÔmegaDev
DefaultGroupName=Controle de Produção - ÔmegaDev
OutputDir=.
OutputBaseFilename=Controle de Produção - ÔmegaDev Setup
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64



[Files]
; ATENÇÃO: Use a pasta win-x64 (NÃO a publish) para garantir que o instalador replique o ambiente funcional.
Source: "..\bin\Release\net8.0-windows\win-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Controle de Produção - ÔmegaDev"; Filename: "{app}\Controle de Produção - ÔmegaDev.exe"
Name: "{commondesktop}\Controle de Produção - ÔmegaDev"; Filename: "{app}\Controle de Produção - ÔmegaDev.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na Área de Trabalho"; GroupDescription: "Opções adicionais:"

[Run]
Filename: "{app}\Controle de Produção - ÔmegaDev.exe"; Description: "Executar Controle de Produção - ÔmegaDev"; Flags: nowait postinstall skipifsilent
