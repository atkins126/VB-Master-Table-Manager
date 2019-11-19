inherited ContactPersonFrm: TContactPersonFrm
  Caption = 'ContactPersonFrm'
  ClientHeight = 281
  ClientWidth = 544
  ExplicitWidth = 550
  ExplicitHeight = 310
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = -2
    Top = -2
    Width = 540
    Height = 275
    ExplicitLeft = -2
    ExplicitTop = -2
    ExplicitWidth = 540
    ExplicitHeight = 275
    inherited lblHeaderTitle: TcxLabel
      ExplicitWidth = 518
    end
    inherited btnOK: TcxButton
      Left = 373
      Top = 239
      TabOrder = 20
      ExplicitLeft = 373
      ExplicitTop = 239
    end
    inherited btnCancel: TcxButton
      Left = 454
      Top = 239
      TabOrder = 21
      ExplicitLeft = 454
      ExplicitTop = 239
    end
    inherited lblLegend: TcxLabel
      Top = 243
      ExplicitTop = 243
    end
    inherited lblRequired: TcxLabel
      Top = 240
      ExplicitTop = 240
      AnchorY = 252
    end
    inherited lblSubTitle: TcxDBLabel
      ExplicitWidth = 508
      Width = 508
    end
    object edtFirstName: TcxTextEdit [6]
      Left = 87
      Top = 76
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 160
    end
    object lucSalutation: TcxLookupComboBox [7]
      Left = 87
      Top = 105
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListSource = LookupDM.dtsSalutation
      Properties.PostPopupValueOnTab = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 160
    end
    object edtOtherName: TcxTextEdit [8]
      Left = 87
      Top = 134
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 160
    end
    object edtIDNo: TcxTextEdit [9]
      Left = 87
      Top = 163
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 160
    end
    object lucJobFunction: TcxLookupComboBox [10]
      Left = 87
      Top = 192
      BeepOnEnter = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListSource = LookupDM.dtsJobFunction
      Properties.PostPopupValueOnTab = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 160
    end
    object lblReq1: TcxLabel [11]
      Left = 253
      Top = 76
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 88
    end
    object lblReq2: TcxLabel [12]
      Left = 505
      Top = 76
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 88
    end
    object edtLastName: TcxTextEdit [13]
      Left = 339
      Top = 76
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 160
    end
    object edtInitials: TcxTextEdit [14]
      Left = 339
      Top = 105
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 160
    end
    object dteDOB: TcxDateEdit [15]
      Left = 342
      Top = 134
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowOnlyValidDates = True
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 160
    end
    object edtPassportNo: TcxTextEdit [16]
      Left = 342
      Top = 163
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 160
    end
    object cbxPrimaryContact: TcxCheckBox [17]
      Left = 268
      Top = 192
      Caption = 'Primary Contact'
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Transparent = True
    end
    object lblReq3: TcxLabel [18]
      Left = 253
      Top = 105
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 117
    end
    object lbl1: TcxLabel [19]
      Left = 253
      Top = 134
      Caption = ' '
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 146
    end
    object lbl2: TcxLabel [20]
      Left = 253
      Top = 163
      Caption = ' '
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 175
    end
    object lbl3: TcxLabel [21]
      Left = 253
      Top = 192
      Caption = ' '
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 204
    end
    inherited grpData: TdxLayoutGroup
      ItemIndex = 2
    end
    object grpName: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpSalutation: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpOtherName: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object grpIDNo: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object litFirstName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'First name'
      Control = edtFirstName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litLastName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'Last Name'
      Control = edtLastName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litSalutation: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Text = 'Salutation'
      Control = lucSalutation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litOtherName: TdxLayoutItem
      Parent = grpOtherName
      CaptionOptions.Text = 'Other Name'
      Control = edtOtherName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litInitials: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Text = 'Initials'
      Control = edtInitials
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litDOB: TdxLayoutItem
      Parent = grpOtherName
      CaptionOptions.Text = 'DOB        '
      Control = dteDOB
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litIDNo: TdxLayoutItem
      Parent = grpIDNo
      CaptionOptions.Text = 'ID No'
      Control = edtIDNo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litPassportNo: TdxLayoutItem
      Parent = grpIDNo
      CaptionOptions.Text = 'Passport No'
      Control = edtPassportNo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litPrimaryContact: TdxLayoutItem
      Parent = grpJobFunction
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxPrimaryContact
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litReq1: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litReq2: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq2
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litReq3: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq3
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litJobFunction: TdxLayoutItem
      Parent = grpJobFunction
      CaptionOptions.Text = 'Job Function'
      Control = lucJobFunction
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpJobFunction: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object litLabel1: TdxLayoutItem
      Parent = grpOtherName
      CaptionOptions.Visible = False
      Control = lbl1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 9
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litLabel2: TdxLayoutItem
      Parent = grpIDNo
      CaptionOptions.Visible = False
      Control = lbl2
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 9
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litLabel3: TdxLayoutItem
      Parent = grpJobFunction
      CaptionOptions.Visible = False
      Control = lbl3
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 9
      ControlOptions.ShowBorder = False
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
