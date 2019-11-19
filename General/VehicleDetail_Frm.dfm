inherited VehicleDetailFrm: TVehicleDetailFrm
  Caption = 'VehicleDetailFrm'
  ClientHeight = 331
  ClientWidth = 514
  ExplicitWidth = 520
  ExplicitHeight = 360
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 520
    Height = 325
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 520
    ExplicitHeight = 325
    inherited lblHeaderTitle: TcxLabel
      ExplicitWidth = 498
    end
    inherited btnOK: TcxButton
      Left = 353
      Top = 289
      TabOrder = 16
      OnClick = btnOKClick
      ExplicitLeft = 353
      ExplicitTop = 289
    end
    inherited btnCancel: TcxButton
      Left = 434
      Top = 289
      TabOrder = 17
      ExplicitLeft = 434
      ExplicitTop = 289
    end
    inherited lblLegend: TcxLabel
      Top = 293
      ExplicitTop = 293
    end
    inherited lblRequired: TcxLabel
      Top = 290
      ExplicitTop = 290
      AnchorY = 302
    end
    inherited lblSubTitle: TcxDBLabel
      ExplicitWidth = 488
      Width = 488
    end
    object lucVehicleMake: TcxLookupComboBox [6]
      Left = 96
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
      Properties.PostPopupValueOnTab = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 160
    end
    object edtRegNo: TcxTextEdit [7]
      Left = 96
      Top = 105
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 160
    end
    object dteRenewlDate: TcxDateEdit [8]
      Left = 96
      Top = 134
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 160
    end
    object memComment: TcxMemo [9]
      Left = 96
      Top = 163
      Lines.Strings = (
        'memVComment')
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Height = 100
      Width = 385
    end
    object lblReq1: TcxLabel [10]
      Left = 262
      Top = 76
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 88
    end
    object lblReq2: TcxLabel [11]
      Left = 487
      Top = 76
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 88
    end
    object lblReq3: TcxLabel [12]
      Left = 262
      Top = 105
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 117
    end
    object edtModel: TcxTextEdit [13]
      Left = 321
      Top = 76
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 160
    end
    object edtYear: TcxCurrencyEdit [14]
      Left = 321
      Top = 105
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0000'
      Properties.EditFormat = '0000'
      Properties.UseDisplayFormatWhenEditing = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 160
    end
    object cbxMaintenancePlan: TcxCheckBox [15]
      Left = 282
      Top = 134
      Caption = 'Maintenance Plan'
      Properties.Alignment = taRightJustify
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Transparent = True
    end
    object lblReq4: TcxLabel [16]
      Left = 487
      Top = 105
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 117
    end
    object lblReq5: TcxLabel [17]
      Left = 262
      Top = 134
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 146
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited grpData: TdxLayoutGroup
      ItemIndex = 3
    end
    object grpMake: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpRegNo: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpRenewalDate: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litMake: TdxLayoutItem
      Parent = grpMake
      CaptionOptions.Text = 'Make'
      Control = lucVehicleMake
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litModel: TdxLayoutItem
      Parent = grpMake
      CaptionOptions.Text = 'Model'
      Control = edtModel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litRegNo: TdxLayoutItem
      Parent = grpRegNo
      CaptionOptions.Text = 'Reg No'
      Control = edtRegNo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litRenewalDate: TdxLayoutItem
      Parent = grpRenewalDate
      CaptionOptions.Text = 'Renewal Date'
      Control = dteRenewlDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litMaintenancePlan: TdxLayoutItem
      Parent = grpRenewalDate
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxMaintenancePlan
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 123
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litComment: TdxLayoutItem
      Parent = grpData
      AlignHorz = ahLeft
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Comment'
      Control = memComment
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 385
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litReq1: TdxLayoutItem
      Parent = grpMake
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litReq2: TdxLayoutItem
      Parent = grpMake
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq2
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litReq3: TdxLayoutItem
      Parent = grpRegNo
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq3
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litReq4: TdxLayoutItem
      Parent = grpRegNo
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq4
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litReq5: TdxLayoutItem
      Parent = grpRenewalDate
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq5
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litYear: TdxLayoutItem
      Parent = grpRegNo
      CaptionOptions.Text = 'Year'
      Control = edtYear
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
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
