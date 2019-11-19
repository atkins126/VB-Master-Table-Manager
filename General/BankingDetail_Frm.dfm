inherited BankingDetailFrm: TBankingDetailFrm
  Caption = 'BankingDetailFrm'
  ClientHeight = 221
  ClientWidth = 659
  ExplicitWidth = 665
  ExplicitHeight = 250
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 660
    Height = 215
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 660
    ExplicitHeight = 215
    inherited lblHeaderTitle: TcxLabel
      ExplicitWidth = 638
    end
    inherited btnOK: TcxButton
      Left = 493
      Top = 179
      TabOrder = 16
      OnClick = btnOKClick
      ExplicitLeft = 493
      ExplicitTop = 179
    end
    inherited btnCancel: TcxButton
      Left = 574
      Top = 179
      TabOrder = 17
      ExplicitLeft = 574
      ExplicitTop = 179
    end
    inherited lblLegend: TcxLabel
      Top = 183
      ExplicitTop = 183
    end
    inherited lblRequired: TcxLabel
      Top = 180
      ExplicitTop = 180
      AnchorY = 192
    end
    inherited lblSubTitle: TcxDBLabel
      ExplicitWidth = 628
      Width = 628
    end
    object lucBank: TcxLookupComboBox [6]
      Left = 78
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
      Properties.ListSource = LookupDM.dtsBank
      Properties.PostPopupValueOnTab = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 220
    end
    object lucAccType: TcxLookupComboBox [7]
      Left = 78
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
      Properties.ListSource = LookupDM.dtsBankAccountType
      Properties.PostPopupValueOnTab = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 220
    end
    object edtFirstName: TcxTextEdit [8]
      Left = 78
      Top = 134
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 220
    end
    object lblReq1: TcxLabel [9]
      Left = 304
      Top = 76
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 88
    end
    object lblreq2: TcxLabel [10]
      Left = 630
      Top = 76
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 88
    end
    object lblReq3: TcxLabel [11]
      Left = 304
      Top = 105
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 117
    end
    object edtBranchCode: TcxTextEdit [12]
      Left = 404
      Top = 76
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 220
    end
    object edtAccNo: TcxTextEdit [13]
      Left = 404
      Top = 105
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 220
    end
    object edtLastName: TcxTextEdit [14]
      Left = 404
      Top = 134
      BeepOnEnter = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 220
    end
    object lblReq4: TcxLabel [15]
      Left = 630
      Top = 105
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 117
    end
    object lblReq5: TcxLabel [16]
      Left = 304
      Top = 134
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 146
    end
    object lblReq6: TcxLabel [17]
      Left = 630
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
      ItemIndex = 2
    end
    object grpBankName: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpBankAccount: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpName: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litBank: TdxLayoutItem
      Parent = grpBankName
      CaptionOptions.Text = 'Bank'
      Control = lucBank
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litBranchCode: TdxLayoutItem
      Parent = grpBankName
      CaptionOptions.Text = 'Branch Code'
      Control = edtBranchCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litAccountType: TdxLayoutItem
      Parent = grpBankAccount
      CaptionOptions.Text = 'Acc Type'
      Control = lucAccType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litAccounto: TdxLayoutItem
      Parent = grpBankAccount
      CaptionOptions.Text = 'Acc No'
      Control = edtAccNo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litFirstName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'First Name'
      Control = edtFirstName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litLastname: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'Last Name'
      Control = edtLastName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litReq1: TdxLayoutItem
      Parent = grpBankName
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litReq2: TdxLayoutItem
      Parent = grpBankName
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblreq2
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litReq3: TdxLayoutItem
      Parent = grpBankAccount
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq3
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litReq4: TdxLayoutItem
      Parent = grpBankAccount
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq4
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litReq5: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq5
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litReq6: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblReq6
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
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
