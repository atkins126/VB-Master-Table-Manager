inherited CompanyContactDetailFrm: TCompanyContactDetailFrm
  Caption = 'CompanyContactDetailFrm'
  ClientHeight = 306
  ClientWidth = 384
  ExplicitWidth = 390
  ExplicitHeight = 335
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 380
    Height = 300
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 380
    ExplicitHeight = 300
    inherited lblHeaderTitle: TcxLabel
      ExplicitWidth = 358
    end
    inherited btnOK: TcxButton
      Left = 213
      Top = 264
      TabOrder = 9
      OnClick = btnOKClick
      ExplicitLeft = 213
      ExplicitTop = 264
    end
    inherited btnCancel: TcxButton
      Left = 294
      Top = 264
      TabOrder = 10
      ExplicitLeft = 294
      ExplicitTop = 264
    end
    inherited lblLegend: TcxLabel
      Top = 268
      ExplicitTop = 268
    end
    inherited lblRequired: TcxLabel
      Top = 265
      ExplicitTop = 265
      AnchorY = 277
    end
    inherited lblSubTitle: TcxDBLabel
      ExplicitWidth = 348
      Width = 348
    end
    object edtValue: TcxTextEdit [6]
      Left = 93
      Top = 105
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 250
    end
    object memComment: TcxMemo [7]
      Left = 93
      Top = 134
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Height = 100
      Width = 250
    end
    object lblReq1: TcxLabel [8]
      Left = 349
      Top = 76
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Transparent = True
    end
    object lblReq2: TcxLabel [9]
      Left = 349
      Top = 105
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Transparent = True
    end
    object lucContactType: TcxLookupComboBox [10]
      Left = 93
      Top = 76
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListSource = LookupDM.dtsContactType
      Properties.PostPopupValueOnTab = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 250
    end
    inherited litSubTitle: TdxLayoutItem
      ControlOptions.OriginalWidth = 589
    end
    object litConatctType: TdxLayoutItem
      Parent = grpContactType
      CaptionOptions.Text = 'Contact Type'
      Control = lucContactType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litValue: TdxLayoutItem
      Parent = grpValue
      CaptionOptions.Text = 'Value'
      Control = edtValue
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litComment: TdxLayoutItem
      Parent = grpData
      AlignHorz = ahLeft
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Comment'
      Control = memComment
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litReq1: TdxLayoutItem
      Parent = grpContactType
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litReq2: TdxLayoutItem
      Parent = grpValue
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq2
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpContactType: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpValue: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited styRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
  end
  inherited img32: TcxImageList
    FormatVersion = 1
  end
  inherited repScreenTip: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited stySubTitle: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited styHeaderFont: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited styMandatory: TcxEditStyleController
    PixelsPerInch = 96
  end
end
