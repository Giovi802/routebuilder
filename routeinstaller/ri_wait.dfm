object Routeinstaller_Wait: TRouteinstaller_Wait
  Left = 524
  Top = 224
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'RB Route Installer'
  ClientHeight = 48
  ClientWidth = 192
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 104
    Height = 13
    Caption = 'Unpacking package...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 24
    Width = 175
    Height = 16
    Min = 0
    Max = 100
    TabOrder = 0
  end
  object ZipForge1: TZipForge
    ExtractCorruptedFiles = False
    CompressionLevel = clFastest
    CompressionMode = 1
    CurrentVersion = '1.50 '
    InMemory = False
    OnOverallProgress = ZipForge1OverallProgress
    Left = 96
    Top = 8
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 64
    Top = 8
  end
end
