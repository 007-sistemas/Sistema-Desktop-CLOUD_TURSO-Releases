[Setup]
AppName=Controle de Produção - ÔmegaDev
AppVersion=1.6
DefaultDirName={userappdata}\Controle de Produção - ÔmegaDev
DefaultGroupName=Controle de Produção - ÔmegaDev
OutputDir=.
OutputBaseFilename=Controle de Produção - ÔmegaDev Setup 1.6
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
PrivilegesRequired=lowest
DisableDirPage=yes
DisableProgramGroupPage=yes
DisableReadyPage=no
DisableWelcomePage=yes
DisableFinishedPage=yes

[Files]
; ATENÇÃO: Use a pasta win-x64 (NÃO a publish) para garantir que o instalador replique o ambiente funcional.
Source: "..\bin\Release\net8.0-windows\win-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Controle de Produção - ÔmegaDev"; Filename: "{app}\Controle de Produção - ÔmegaDev.exe"
Name: "{userdesktop}\Controle de Produção - ÔmegaDev"; Filename: "{app}\Controle de Produção - ÔmegaDev.exe"

[Run]
Filename: "{app}\Controle de Produção - ÔmegaDev.exe"; Description: "Executar Controle de Produção - ÔmegaDev"; Flags: nowait postinstall; Check: not WizardSilent
Filename: "{app}\Controle de Produção - ÔmegaDev.exe"; Flags: nowait; Check: WizardSilent

[Code]
procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpReady then
  begin
    WizardForm.NextButton.OnClick(WizardForm.NextButton);
  end;
end;
