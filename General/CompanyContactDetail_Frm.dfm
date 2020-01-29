inherited CompanyContactDetailFrm: TCompanyContactDetailFrm
  Caption = 'CompanyContactDetailFrm'
  ClientHeight = 316
  ClientWidth = 384
  ExplicitWidth = 390
  ExplicitHeight = 345
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 380
    Height = 311
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 380
    ExplicitHeight = 311
    inherited lblHeaderTitle: TcxLabel
      ExplicitWidth = 358
    end
    inherited btnOK: TcxButton
      Left = 213
      Top = 275
      TabOrder = 10
      OnClick = btnOKClick
      ExplicitLeft = 213
      ExplicitTop = 275
    end
    inherited btnCancel: TcxButton
      Left = 294
      Top = 275
      TabOrder = 11
      ExplicitLeft = 294
      ExplicitTop = 275
    end
    inherited lblLegend: TcxLabel
      Top = 279
      ExplicitTop = 279
    end
    inherited lblRequired: TcxLabel
      Top = 276
      ExplicitTop = 276
      AnchorY = 288
    end
    inherited lblSubTitle: TcxDBLabel
      ExplicitWidth = 348
      Width = 348
    end
    object edtValue: TcxTextEdit [6]
      Left = 93
      Top = 105
      Style.HotTrack = False
      TabOrder = 4
      Width = 250
    end
    object memComment: TcxMemo [7]
      Left = 93
      Top = 134
      Properties.MaxLength = 255
      Properties.ScrollBars = ssVertical
      Properties.OnChange = memCommentPropertiesChange
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
      Style.HotTrack = False
      TabOrder = 2
      Width = 250
    end
    object lblCharCount: TcxLabel [11]
      Left = 11
      Top = 240
      Caption = 'Characters Left:'
      Style.HotTrack = False
      Style.TransparentBorder = False
      Transparent = True
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited grpData: TdxLayoutGroup
      ItemIndex = 3
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
    object litCharCount: TdxLayoutItem
      Parent = grpData
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Visible = False
      Control = lblCharCount
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 3
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
