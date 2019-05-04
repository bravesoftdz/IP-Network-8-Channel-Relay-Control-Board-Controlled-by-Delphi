object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'KC868 Smart Home Demo For Delphi-- Code By KinCony'
  ClientHeight = 243
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 40
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Open Port'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Initialization'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Turn ON Light'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 352
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Turn OFF Light'
    TabOrder = 3
    OnClick = Button4Click
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = '192.168.1.210'
    Port = 4196
    Left = 48
    Top = 72
  end
end
