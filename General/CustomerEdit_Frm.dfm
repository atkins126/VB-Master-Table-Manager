inherited CustomerEditFrm: TCustomerEditFrm
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'CustomerEditFrm'
  ClientHeight = 805
  ClientWidth = 1422
  OnKeyDown = FormKeyDown
  ExplicitWidth = 1428
  ExplicitHeight = 834
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 851
    Height = 571
    LayoutLookAndFeel = lafCustomSkin
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 851
    ExplicitHeight = 571
    object btnSave: TcxButton [0]
      Left = 684
      Top = 535
      Width = 75
      Height = 25
      Caption = 'Save'
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object btnCancel: TcxButton [1]
      Left = 765
      Top = 535
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object lblHeaderTitle: TcxLabel [2]
      Left = 11
      Top = 11
      Caption = 'Banking Details'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styHeaderFont
      Transparent = True
    end
    object lblLegend: TcxLabel [3]
      Left = 31
      Top = 494
      Caption = 'All these items are required fields'
      Style.HotTrack = False
      Transparent = True
    end
    object lblRequired: TcxLabel [4]
      Left = 11
      Top = 494
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 506
    end
    object lblSubTitle: TcxLabel [5]
      Left = 21
      Top = 37
      Caption = 'Sub Title'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = stySubTitle
      Transparent = True
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ItemIndex = 3
    end
    object grpCustomerDetail: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object grpButtons: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object litCustomerDetail: TdxLayoutItem
      Parent = grpCustomerDetail
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'pnlContactDetail'
      CaptionOptions.Visible = False
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 186
      ControlOptions.OriginalWidth = 383
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litSave: TdxLayoutItem
      Parent = grpButtons
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCancel: TdxLayoutItem
      Parent = grpButtons
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litHeaderTitle: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Visible = False
      Control = lblHeaderTitle
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object sep1: TdxLayoutSeparatorItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object sep2: TdxLayoutSeparatorItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Separator'
      Index = 5
    end
    object litLegend: TdxLayoutItem
      Parent = grpRequired
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblLegend
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 197
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litRequired: TdxLayoutItem
      Parent = grpRequired
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblRequired
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 14
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpRequired: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object litSubTitle: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Offsets.Left = 10
      Control = lblSubTitle
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object pagMain: TcxPageControl [1]
    Left = 607
    Top = 124
    Width = 829
    Height = 413
    Color = 16053234
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    Properties.ActivePage = tabDirector
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 407
    ClientRectLeft = 3
    ClientRectRight = 823
    ClientRectTop = 26
    object tabContactDetail: TcxTabSheet
      Caption = 'Contact Details'
      ImageIndex = 0
    end
    object tabAddress: TcxTabSheet
      Caption = 'Address'
      ImageIndex = 1
    end
    object tabContactPerson: TcxTabSheet
      Caption = 'Contact Persons'
      ImageIndex = 2
    end
    object tabContactDetailPerson: TcxTabSheet
      Caption = 'Contact Details (Person)'
      ImageIndex = 3
    end
    object tabBankingDetail: TcxTabSheet
      Caption = 'Banking Details'
      ImageIndex = 4
    end
    object tabDirector: TcxTabSheet
      Caption = 'Directors'
      ImageIndex = 5
    end
    object tabBeneficiary: TcxTabSheet
      Caption = 'Beneficiaries'
      ImageIndex = 6
    end
    object tabVehicle: TcxTabSheet
      Caption = 'Vehicles'
      ImageIndex = 7
    end
  end
  object pnlContactDetail: TcxGroupBox [2]
    AlignWithMargins = True
    Left = 35
    Top = 609
    PanelStyle.Active = True
    ParentBackground = False
    ParentColor = False
    Style.BorderStyle = ebsNone
    Style.Color = 16053234
    TabOrder = 2
    Visible = False
    Height = 190
    Width = 380
    object layContactDetails: TdxLayoutControl
      Left = 3
      Top = 3
      Width = 374
      Height = 184
      TabOrder = 0
      object lucContactType: TcxLookupComboBox
        Left = 93
        Top = 11
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
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 250
      end
      object edtContactDetailValue: TcxTextEdit
        Left = 93
        Top = 40
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Text = 'edtContactDetailValue'
        Width = 250
      end
      object memContactDetailComment: TcxMemo
        Left = 93
        Top = 69
        Lines.Strings = (
          'memContactDetailComment')
        Properties.ScrollBars = ssVertical
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 4
        Height = 100
        Width = 250
      end
      object lblReq1: TcxLabel
        Left = 349
        Top = 11
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Transparent = True
      end
      object lblReq2: TcxLabel
        Left = 349
        Top = 40
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Transparent = True
      end
      object layContactDetailsGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object grpContactType: TdxLayoutGroup
        Parent = layContactDetailsGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object grpContactValue: TdxLayoutGroup
        Parent = layContactDetailsGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object litContactType: TdxLayoutItem
        Parent = grpContactType
        CaptionOptions.Text = 'Contact Type'
        Control = lucContactType
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litContactValue: TdxLayoutItem
        Parent = grpContactValue
        CaptionOptions.Text = 'Value'
        Control = edtContactDetailValue
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litContactComment: TdxLayoutItem
        Parent = layContactDetailsGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.AlignVert = tavTop
        CaptionOptions.Text = 'Comment'
        Control = memContactDetailComment
        ControlOptions.OriginalHeight = 100
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litMand1: TdxLayoutItem
        Parent = grpContactType
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq1
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object litMand2: TdxLayoutItem
        Parent = grpContactValue
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq2
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object pnlContactPerson: TcxGroupBox [3]
    Left = 35
    Top = 145
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 5
    Visible = False
    Height = 190
    Width = 380
    object layContactDetailsPerson: TdxLayoutControl
      Left = 3
      Top = 3
      Width = 374
      Height = 184
      Align = alClient
      TabOrder = 0
      Visible = False
      object lucCDPContactType: TcxLookupComboBox
        Left = 93
        Top = 11
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
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 250
      end
      object edtCDPValue: TcxTextEdit
        Left = 93
        Top = 40
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Width = 250
      end
      object memCDPComment: TcxMemo
        Left = 93
        Top = 69
        Properties.ScrollBars = ssVertical
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 4
        Height = 100
        Width = 250
      end
      object lblReq6: TcxLabel
        Left = 349
        Top = 11
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Transparent = True
      end
      object lblReq7: TcxLabel
        Left = 349
        Top = 40
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Transparent = True
      end
      object layContactDetailsPersonGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 2
        ShowBorder = False
        Index = -1
      end
      object grpCDPContactType: TdxLayoutGroup
        Parent = layContactDetailsPersonGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object grpCDPValue: TdxLayoutGroup
        Parent = layContactDetailsPersonGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object litCDPContactType: TdxLayoutItem
        Parent = grpCDPContactType
        CaptionOptions.Text = 'Contact Type'
        Control = lucCDPContactType
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litCDPValue: TdxLayoutItem
        Parent = grpCDPValue
        CaptionOptions.Text = 'Value'
        Control = edtCDPValue
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litCDPComment: TdxLayoutItem
        Parent = layContactDetailsPersonGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.AlignVert = tavTop
        CaptionOptions.Text = 'Comment'
        Control = memCDPComment
        ControlOptions.OriginalHeight = 100
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litReq6: TdxLayoutItem
        Parent = grpCDPContactType
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq6
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object litReq7: TdxLayoutItem
        Parent = grpCDPValue
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq7
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object pnlBankingDetail: TcxGroupBox [4]
    Left = 123
    Top = 246
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 6
    Visible = False
    Height = 110
    Width = 675
    object layBankingDetails: TdxLayoutControl
      Left = 3
      Top = 3
      Width = 669
      Height = 381
      Align = alTop
      TabOrder = 0
      object lucBank: TcxLookupComboBox
        Left = 94
        Top = 11
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
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 220
      end
      object lucAccType: TcxLookupComboBox
        Left = 94
        Top = 40
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
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 4
        Width = 220
      end
      object edtBranchCode: TcxTextEdit
        Left = 420
        Top = 11
        BeepOnEnter = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Text = 'edtBranchCode'
        Width = 220
      end
      object edtAccNo: TcxTextEdit
        Left = 420
        Top = 40
        BeepOnEnter = False
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 6
        Text = 'edtAccNo'
        Width = 220
      end
      object edtBFirstName: TcxTextEdit
        Left = 94
        Top = 69
        BeepOnEnter = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 8
        Text = 'edtBFirstName'
        Width = 220
      end
      object edtBLastName: TcxTextEdit
        Left = 420
        Top = 69
        BeepOnEnter = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 10
        Text = 'edtBLastName'
        Width = 220
      end
      object lblReq8: TcxLabel
        Left = 320
        Top = 11
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 23
      end
      object lblReq9: TcxLabel
        Left = 646
        Top = 11
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 23
      end
      object lblreq10: TcxLabel
        Left = 320
        Top = 40
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 52
      end
      object lblReq11: TcxLabel
        Left = 646
        Top = 40
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 52
      end
      object lblReq12: TcxLabel
        Left = 320
        Top = 69
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 81
      end
      object lblReq13: TcxLabel
        Left = 646
        Top = 69
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 81
      end
      object layBankingDetailsGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 2
        ShowBorder = False
        Index = -1
      end
      object grpBank: TdxLayoutGroup
        Parent = layBankingDetailsGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object grpAccountHolderName: TdxLayoutGroup
        Parent = layBankingDetailsGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object grpAccountType: TdxLayoutGroup
        Parent = layBankingDetailsGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 3
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object litBankName: TdxLayoutItem
        Parent = grpBank
        CaptionOptions.Text = 'Bank'
        Control = lucBank
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 220
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litBranchCode: TdxLayoutItem
        Parent = grpBank
        CaptionOptions.Text = 'Branch Code'
        Control = edtBranchCode
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 220
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litAccountType: TdxLayoutItem
        Parent = grpAccountType
        CaptionOptions.Text = 'Account No'
        Control = edtAccNo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 220
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litAccountNo: TdxLayoutItem
        Parent = grpAccountType
        CaptionOptions.Text = 'Account Type'
        Control = lucAccType
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 220
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litFirstName: TdxLayoutItem
        Parent = grpAccountHolderName
        CaptionOptions.Text = 'First Name'
        Control = edtBFirstName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 220
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litLastName: TdxLayoutItem
        Parent = grpAccountHolderName
        CaptionOptions.Text = 'Last Name'
        Control = edtBLastName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 220
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litReq8: TdxLayoutItem
        Parent = grpBank
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq8
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object litlitlitReq9: TdxLayoutItem
        Parent = grpBank
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq9
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object litlitlitReq10: TdxLayoutItem
        Parent = grpAccountType
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblreq10
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object litReq11: TdxLayoutItem
        Parent = grpAccountType
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq11
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object litlitlitReq12: TdxLayoutItem
        Parent = grpAccountHolderName
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq12
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object litReq13: TdxLayoutItem
        Parent = grpAccountHolderName
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq13
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 3
      end
    end
  end
  object pnlVehicle: TcxGroupBox [5]
    Left = 21
    Top = 380
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 9
    Visible = False
    Height = 220
    Width = 525
    object layVehicle: TdxLayoutControl
      Left = 3
      Top = 3
      Width = 519
      Height = 214
      Align = alClient
      TabOrder = 0
      object lblReq22: TcxLabel
        Left = 262
        Top = 11
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 23
      end
      object lblReq23: TcxLabel
        Left = 487
        Top = 11
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 23
      end
      object lblReq24: TcxLabel
        Left = 262
        Top = 40
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 52
      end
      object lblReq25: TcxLabel
        Left = 487
        Top = 40
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 52
      end
      object lblReq26: TcxLabel
        Left = 262
        Top = 69
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 81
      end
      object lucVehicleMake: TcxLookupComboBox
        Left = 96
        Top = 11
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
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 160
      end
      object edtModel: TcxTextEdit
        Left = 321
        Top = 11
        BeepOnEnter = False
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Text = 'edtModel'
        Width = 160
      end
      object edtRegNo: TcxTextEdit
        Left = 96
        Top = 40
        BeepOnEnter = False
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 4
        Text = 'edtRegNo'
        OnKeyPress = edtRegNoKeyPress
        Width = 160
      end
      object memVComment: TcxMemo
        Left = 96
        Top = 98
        Lines.Strings = (
          'memVComment')
        Properties.ScrollBars = ssVertical
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 11
        Height = 100
        Width = 385
      end
      object lucRenewlDate: TcxDateEdit
        Left = 96
        Top = 69
        Properties.ImmediatePost = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 8
        Width = 160
      end
      object cbxMaintenancePlan: TcxCheckBox
        Left = 282
        Top = 69
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
        TabOrder = 10
        Transparent = True
      end
      object edtYear: TcxCurrencyEdit
        Left = 321
        Top = 40
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '0000'
        Properties.EditFormat = '0000'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 6
        Width = 160
      end
      object layVehicleGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object grpMake: TdxLayoutGroup
        Parent = layVehicleGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 3
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object grpRegNo: TdxLayoutGroup
        Parent = layVehicleGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 2
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object grpMaintenancePlan: TdxLayoutGroup
        Parent = layVehicleGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object grpComment: TdxLayoutGroup
        Parent = layVehicleGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 3
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
      object litYear: TdxLayoutItem
        Parent = grpRegNo
        CaptionOptions.Text = 'Year'
        Control = edtYear
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litMaintenancePlan: TdxLayoutItem
        Parent = grpMaintenancePlan
        CaptionOptions.Text = 'Renewal Date'
        Control = lucRenewlDate
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litRenewalDate: TdxLayoutItem
        Parent = grpMaintenancePlan
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = cbxMaintenancePlan
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 123
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litVComment: TdxLayoutItem
        Parent = grpComment
        AlignHorz = ahLeft
        CaptionOptions.AlignVert = tavTop
        CaptionOptions.Text = 'Comment'
        Control = memVComment
        ControlOptions.OriginalHeight = 100
        ControlOptions.OriginalWidth = 385
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litMand22: TdxLayoutItem
        Parent = grpMake
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq22
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object litMand23: TdxLayoutItem
        Parent = grpMake
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq23
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object litMand24: TdxLayoutItem
        Parent = grpRegNo
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq24
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object litMand25: TdxLayoutItem
        Parent = grpRegNo
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq25
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object litMand26: TdxLayoutItem
        Parent = grpMaintenancePlan
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq26
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object pnlAddress: TcxGroupBox [6]
    AlignWithMargins = True
    Left = 730
    Top = 349
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 3
    Visible = False
    Height = 375
    Width = 680
    object layAddress: TdxLayoutControl
      Left = 3
      Top = 3
      Width = 674
      Height = 381
      Align = alTop
      TabOrder = 0
      object grpPhysicalAddress: TcxGroupBox
        Left = 11
        Top = 11
        Caption = 'Physical Address'
        ParentBackground = False
        ParentColor = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clBtnFace
        TabOrder = 0
        Height = 165
        Width = 300
        object lblPhysical1: TcxLabel
          Left = 15
          Top = 27
          Caption = 'Physical 1'
          Transparent = True
        end
        object lblPhysical2: TcxLabel
          Left = 15
          Top = 52
          Caption = 'Physical 2'
          Transparent = True
        end
        object lblPhysical3: TcxLabel
          Left = 15
          Top = 77
          Caption = 'Physical 3'
          Transparent = True
        end
        object lblPhysical4: TcxLabel
          Left = 15
          Top = 102
          Caption = 'Physical 4'
          Transparent = True
        end
        object lblPhysicalPostalCode: TcxLabel
          Left = 15
          Top = 127
          Caption = 'Postal Code'
          Transparent = True
        end
        object edtPhysical1: TcxTextEdit
          Left = 95
          Top = 25
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 5
          Text = 'edtPhysical1'
          Width = 175
        end
        object edtPhysical2: TcxTextEdit
          Left = 95
          Top = 50
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 6
          Text = 'edtPhysical2'
          Width = 175
        end
        object edtPhysical3: TcxTextEdit
          Left = 95
          Top = 75
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 7
          Text = 'edtPhysical3'
          Width = 175
        end
        object edtPhysical4: TcxTextEdit
          Left = 95
          Top = 100
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 8
          Text = 'edtPhysical4'
          Width = 175
        end
        object edtPhysicalPostalCode: TcxTextEdit
          Left = 95
          Top = 125
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 9
          Text = 'edtPhysicalPostalCode'
          Width = 175
        end
      end
      object grpPostalAddress: TcxGroupBox
        Left = 363
        Top = 11
        Caption = 'Postal Address'
        ParentBackground = False
        ParentColor = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clBtnFace
        TabOrder = 5
        Height = 165
        Width = 300
        object lblPostal1: TcxLabel
          Left = 10
          Top = 27
          Caption = 'Postal 1'
          Transparent = True
        end
        object lblPostal2: TcxLabel
          Left = 15
          Top = 52
          Caption = 'Postal 2'
          Transparent = True
        end
        object lblPostal3: TcxLabel
          Left = 15
          Top = 77
          Caption = 'Postal 3'
          Transparent = True
        end
        object lblPostal4: TcxLabel
          Left = 15
          Top = 102
          Caption = 'Postal 4'
          Transparent = True
        end
        object lblPostalCode: TcxLabel
          Left = 15
          Top = 127
          Caption = 'Postal Code'
          Transparent = True
        end
        object edtPostal1: TcxTextEdit
          Left = 95
          Top = 25
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 5
          Text = 'edtPostal1'
          Width = 175
        end
        object edtPostal2: TcxTextEdit
          Left = 95
          Top = 50
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 6
          Text = 'edtPostal2'
          Width = 175
        end
        object edtPostal3: TcxTextEdit
          Left = 95
          Top = 75
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 7
          Text = 'edtPostal3'
          Width = 175
        end
        object edtPostal4: TcxTextEdit
          Left = 95
          Top = 100
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 8
          Text = 'edtPostal4'
          Width = 175
        end
        object edtPostalCode: TcxTextEdit
          Left = 93
          Top = 127
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 9
          Text = 'edtPostalCode'
          Width = 175
        end
      end
      object grpBillingAddress: TcxGroupBox
        Left = 11
        Top = 193
        Caption = 'Billing Address'
        ParentBackground = False
        ParentColor = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.Color = clBtnFace
        TabOrder = 6
        Height = 165
        Width = 300
        object lblBilling1: TcxLabel
          Left = 15
          Top = 27
          Caption = 'Billing 1'
          Transparent = True
        end
        object lblBilling2: TcxLabel
          Left = 15
          Top = 52
          Caption = 'Billing 2'
          Transparent = True
        end
        object lblBilling3: TcxLabel
          Left = 15
          Top = 77
          Caption = 'Billing 3'
          Transparent = True
        end
        object lblBilling4: TcxLabel
          Left = 15
          Top = 102
          Caption = 'Billing 4'
          Transparent = True
        end
        object lblBillingPostalCode: TcxLabel
          Left = 15
          Top = 127
          Caption = 'Postal Code'
          Transparent = True
        end
        object edtBilling1: TcxTextEdit
          Left = 95
          Top = 25
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 5
          Text = 'edtBilling1'
          Width = 175
        end
        object edtBilling2: TcxTextEdit
          Left = 95
          Top = 50
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 6
          Text = 'edtBilling2'
          Width = 175
        end
        object edtBilling3: TcxTextEdit
          Left = 95
          Top = 75
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 7
          Text = 'edtBilling3'
          Width = 175
        end
        object edtBilling4: TcxTextEdit
          Left = 95
          Top = 100
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 8
          Text = 'edtBilling4'
          Width = 175
        end
        object edtBillingPostalCode: TcxTextEdit
          Left = 95
          Top = 125
          BeepOnEnter = False
          Properties.OnChange = lucContactTypePropertiesChange
          TabOrder = 9
          Text = 'edtBillingPostalCode'
          Width = 175
        end
      end
      object btnPhysicalToPostal: TcxButton
        Left = 317
        Top = 11
        Width = 40
        Height = 25
        Caption = 'u'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
        OnClick = btnPhysicalToPostalClick
      end
      object btnPostalToPhysical: TcxButton
        Left = 317
        Top = 42
        Width = 40
        Height = 25
        Caption = 't'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
        OnClick = btnPostalToPhysicalClick
      end
      object btnPhysicalToBilling: TcxButton
        Left = 317
        Top = 89
        Width = 40
        Height = 25
        Caption = 'q'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
        OnClick = btnPhysicalToBillingClick
      end
      object btnBillingToPostal: TcxButton
        Left = 317
        Top = 193
        Width = 40
        Height = 25
        Caption = 'u'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
        OnClick = btnBillingToPostalClick
      end
      object btnPostalToBilling: TcxButton
        Left = 317
        Top = 224
        Width = 40
        Height = 25
        Caption = 't'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
        OnClick = btnPostalToBillingClick
      end
      object btnBillingToPhysical: TcxButton
        Left = 317
        Top = 120
        Width = 40
        Height = 25
        Caption = 'p'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
        OnClick = btnBillingToPhysicalClick
      end
      object layAddressGroup_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object grpPhysicalPostal: TdxLayoutGroup
        Parent = layAddressGroup_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object grpPhysical: TdxLayoutGroup
        Parent = grpPhysicalPostal
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 0
      end
      object grpPostal: TdxLayoutGroup
        Parent = grpPhysicalPostal
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 2
      end
      object grpPhysPostalControls: TdxLayoutGroup
        Parent = grpPhysicalPostal
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 2
        ShowBorder = False
        Index = 1
      end
      object grpBilling: TdxLayoutGroup
        Parent = layAddressGroup_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object grpBilliingControls: TdxLayoutGroup
        Parent = grpBilling
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 1
      end
      object litlitPhysical: TdxLayoutItem
        Parent = grpPhysical
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = grpPhysicalAddress
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 165
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litPostal: TdxLayoutItem
        Parent = grpPostal
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = grpPostalAddress
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 165
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litBilling: TdxLayoutItem
        Parent = grpBilling
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = grpBillingAddress
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 165
        ControlOptions.OriginalWidth = 300
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litPhysicalTopostal: TdxLayoutItem
        Parent = grpPhysPostalControls
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = btnPhysicalToPostal
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 40
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litPostalToPhysical: TdxLayoutItem
        Parent = grpPhysPostalControls
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = btnPostalToPhysical
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 40
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object litPhysicalToBilling: TdxLayoutItem
        Parent = grpPhysPostalControls
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = btnPhysicalToBilling
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 40
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object litBillingToPhysical: TdxLayoutItem
        Parent = grpPhysPostalControls
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = btnBillingToPhysical
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 40
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object spc5: TdxLayoutEmptySpaceItem
        Parent = grpPhysPostalControls
        CaptionOptions.Text = 'Empty Space Item'
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        Index = 2
      end
      object litBillingToPostal: TdxLayoutItem
        Parent = grpBilliingControls
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = btnBillingToPostal
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 40
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litPostalToBilling: TdxLayoutItem
        Parent = grpBilliingControls
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = btnPostalToBilling
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 40
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object spc8: TdxLayoutEmptySpaceItem
        Parent = layAddressGroup_Root
        CaptionOptions.Text = 'Empty Space Item'
        SizeOptions.Height = 5
        SizeOptions.Width = 10
        Index = 1
      end
    end
  end
  object pnlDirector: TcxGroupBox [7]
    Left = 503
    Top = 554
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 7
    Visible = False
    Height = 135
    Width = 555
    object layDirector: TdxLayoutControl
      Left = 3
      Top = 3
      Width = 549
      Height = 381
      Align = alTop
      TabOrder = 0
      object lucDSalutation: TcxLookupComboBox
        Left = 98
        Top = 40
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
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 4
        Width = 160
      end
      object edtDFirstName: TcxTextEdit
        Left = 98
        Top = 11
        BeepOnEnter = False
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Text = 'edtDFirstName'
        Width = 160
      end
      object edtDLastName: TcxTextEdit
        Left = 359
        Top = 11
        BeepOnEnter = False
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Text = 'edtDLastName'
        Width = 160
      end
      object edtDOtherName: TcxTextEdit
        Left = 359
        Top = 40
        BeepOnEnter = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 6
        Text = 'edtDOtherName'
        Width = 160
      end
      object edtDTaxNo: TcxTextEdit
        Left = 359
        Top = 69
        BeepOnEnter = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 8
        Text = 'edtDTaxNo'
        Width = 160
      end
      object edtDMobileNo: TcxTextEdit
        Left = 98
        Top = 69
        BeepOnEnter = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 7
        Text = 'edtDMobileNo'
        Width = 160
      end
      object edtDEmailAddress: TcxTextEdit
        Left = 98
        Top = 96
        BeepOnEnter = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 9
        Text = 'edtDEmailAddress'
        Width = 421
      end
      object lblReq14: TcxLabel
        Left = 264
        Top = 11
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 23
      end
      object lblReq15: TcxLabel
        Left = 525
        Top = 11
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 23
      end
      object lblReq16: TcxLabel
        Left = 264
        Top = 40
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 52
      end
      object layDirectorGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 3
        ShowBorder = False
        Index = -1
      end
      object grpDFirstName: TdxLayoutGroup
        Parent = layDirectorGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 3
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object grpDSalutation: TdxLayoutGroup
        Parent = layDirectorGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object grpTaxNo: TdxLayoutGroup
        Parent = layDirectorGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object litDFirstName: TdxLayoutItem
        Parent = grpDFirstName
        CaptionOptions.Text = 'First Name'
        Control = edtDFirstName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litDLastName: TdxLayoutItem
        Parent = grpDFirstName
        CaptionOptions.Text = 'Last Name'
        Control = edtDLastName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litDSalutation: TdxLayoutItem
        Parent = grpDSalutation
        CaptionOptions.Text = 'Salutation'
        Control = lucDSalutation
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litDTaxNo: TdxLayoutItem
        Parent = grpTaxNo
        CaptionOptions.Text = 'Tax No'
        Control = edtDMobileNo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litDMobileNo: TdxLayoutItem
        Parent = grpTaxNo
        CaptionOptions.Text = 'Mobile No'
        Control = edtDTaxNo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litDEmailAddress: TdxLayoutItem
        Parent = layDirectorGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Email Address'
        Control = edtDEmailAddress
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 421
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object litDOtherName: TdxLayoutItem
        Parent = grpDSalutation
        CaptionOptions.Text = 'Other Name'
        Control = edtDOtherName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litReq14: TdxLayoutItem
        Parent = grpDFirstName
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq14
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object litReq15: TdxLayoutItem
        Parent = grpDFirstName
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq15
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object litReq16: TdxLayoutItem
        Parent = grpDSalutation
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq16
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object spc1: TdxLayoutEmptySpaceItem
        Parent = grpTaxNo
        CaptionOptions.Text = 'Empty Space Item'
        SizeOptions.Height = 10
        SizeOptions.Width = 28
        Index = 1
      end
    end
  end
  object pnlBeneficiary: TcxGroupBox [8]
    Left = 506
    Top = 687
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 8
    Visible = False
    Height = 110
    Width = 555
    object layBeneficiary: TdxLayoutControl
      Left = 3
      Top = 3
      Width = 549
      Height = 381
      Align = alTop
      TabOrder = 0
      object lucBFSalutation: TcxLookupComboBox
        Left = 98
        Top = 40
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
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 4
        Width = 160
      end
      object edtBFFirstname: TcxTextEdit
        Left = 98
        Top = 11
        BeepOnEnter = False
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Text = 'edtBFFirstname'
        Width = 160
      end
      object edtBFLastName: TcxTextEdit
        Left = 350
        Top = 11
        BeepOnEnter = False
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Text = 'edtBFLastName'
        Width = 160
      end
      object edtBFEmailAddress: TcxTextEdit
        Left = 98
        Top = 69
        BeepOnEnter = False
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 8
        Text = 'edtBFEmailAddress'
        Width = 412
      end
      object edtBFMobileNo: TcxTextEdit
        Left = 350
        Top = 40
        BeepOnEnter = False
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 6
        Text = 'edtBFMobileNo'
        Width = 160
      end
      object lblReq17: TcxLabel
        Left = 264
        Top = 11
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 23
      end
      object lblReq18: TcxLabel
        Left = 516
        Top = 11
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 23
      end
      object lblReq19: TcxLabel
        Left = 264
        Top = 40
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 52
      end
      object lblReq20: TcxLabel
        Left = 516
        Top = 40
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 52
      end
      object lblReq21: TcxLabel
        Left = 516
        Top = 69
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 81
      end
      object layBeneficiaryGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object grpBFName: TdxLayoutGroup
        Parent = layBeneficiaryGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 3
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object grpBFSalutation: TdxLayoutGroup
        Parent = layBeneficiaryGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 3
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object litBFFirstName: TdxLayoutItem
        Parent = grpBFName
        CaptionOptions.Text = 'First Name'
        Control = edtBFFirstname
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litBFLastName: TdxLayoutItem
        Parent = grpBFName
        CaptionOptions.Text = 'Last Name'
        Control = edtBFLastName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object TdxLayoutItem
        Parent = grpBFSalutation
        CaptionOptions.Text = 'Salutation'
        Control = lucBFSalutation
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litBFMobileNo: TdxLayoutItem
        Parent = grpBFSalutation
        CaptionOptions.Text = 'Mobile No'
        Control = edtBFMobileNo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litBFEmailAddress: TdxLayoutItem
        Parent = grpBFEmailAddress
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Email Address'
        Control = edtBFEmailAddress
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 412
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litReq17: TdxLayoutItem
        Parent = grpBFName
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq17
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object litReq18: TdxLayoutItem
        Parent = grpBFName
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq18
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object litReq19: TdxLayoutItem
        Parent = grpBFSalutation
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq19
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object litReq21: TdxLayoutItem
        Parent = grpBFEmailAddress
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq21
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object grpBFEmailAddress: TdxLayoutGroup
        Parent = layBeneficiaryGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object litReq20: TdxLayoutItem
        Parent = grpBFSalutation
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq20
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 3
      end
    end
  end
  object pnlCoContactPerson: TcxGroupBox [9]
    Left = 551
    Top = 382
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 4
    Visible = False
    Height = 160
    Width = 545
    object layContactPerson: TdxLayoutControl
      Left = 3
      Top = 3
      Width = 539
      Height = 381
      Align = alTop
      TabOrder = 0
      object lucPSalutation: TcxLookupComboBox
        Left = 87
        Top = 40
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
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 4
        Width = 160
      end
      object lucPJobFunction: TcxLookupComboBox
        Left = 87
        Top = 123
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
        TabOrder = 11
        Width = 160
      end
      object edtPFirstName: TcxTextEdit
        Left = 87
        Top = 11
        BeepOnEnter = False
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Text = 'edtPFirstName'
        Width = 160
      end
      object edtPLastName: TcxTextEdit
        Left = 347
        Top = 11
        BeepOnEnter = False
        Properties.OnChange = lucContactTypePropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Text = 'edtPLastName'
        Width = 160
      end
      object edtPInitials: TcxTextEdit
        Left = 347
        Top = 40
        BeepOnEnter = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 6
        Text = 'edtPInitials'
        Width = 160
      end
      object edtPOtherName: TcxTextEdit
        Left = 87
        Top = 69
        BeepOnEnter = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 7
        Text = 'edtPOtherName'
        Width = 160
      end
      object edtPIDNo: TcxTextEdit
        Left = 87
        Top = 96
        BeepOnEnter = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 9
        Text = 'edtPIDNo'
        Width = 160
      end
      object edtPPassportNo: TcxTextEdit
        Left = 346
        Top = 96
        BeepOnEnter = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 10
        Text = 'edtPPassportNo'
        Width = 160
      end
      object lucPDOB: TcxDateEdit
        Left = 347
        Top = 69
        Properties.ImmediatePost = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 8
        Width = 160
      end
      object cbxPPrimaryContact: TcxCheckBox
        Left = 269
        Top = 123
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
        TabOrder = 12
        Transparent = True
      end
      object lblReq3: TcxLabel
        Left = 253
        Top = 11
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 23
      end
      object lblReq4: TcxLabel
        Left = 513
        Top = 11
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 23
      end
      object lblReq5: TcxLabel
        Left = 253
        Top = 40
        Caption = '*'
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = styMandatory
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 52
      end
      object layContactPersonGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 3
        ShowBorder = False
        Index = -1
      end
      object grpCPName: TdxLayoutGroup
        Parent = layContactPersonGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 2
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object grpCPSalutation: TdxLayoutGroup
        Parent = layContactPersonGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 2
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object grpCPDOB: TdxLayoutGroup
        Parent = layContactPersonGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object grpCPIDNo: TdxLayoutGroup
        Parent = layContactPersonGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object litCPFirstName: TdxLayoutItem
        Parent = grpCPName
        CaptionOptions.Text = 'First Name'
        Control = edtPFirstName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litCPLasNname: TdxLayoutItem
        Parent = grpCPName
        CaptionOptions.Text = 'Last Name  '
        Control = edtPLastName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litCPSalutation: TdxLayoutItem
        Parent = grpCPSalutation
        CaptionOptions.Text = 'Salutation'
        Control = lucPSalutation
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litCPInitials: TdxLayoutItem
        Parent = grpCPSalutation
        CaptionOptions.Text = 'Initials'
        Control = edtPInitials
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litCPOtherName: TdxLayoutItem
        Parent = grpCPDOB
        CaptionOptions.Text = 'Other Name'
        Control = edtPOtherName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litCPDOB: TdxLayoutItem
        Parent = grpCPDOB
        CaptionOptions.Text = 'DOB'
        Control = lucPDOB
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litCPIDNo: TdxLayoutItem
        Parent = grpCPIDNo
        CaptionOptions.Text = 'ID No'
        Control = edtPIDNo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litCPJobFunction: TdxLayoutItem
        Parent = grpJobFunction
        CaptionOptions.Text = 'Job Function'
        Control = lucPJobFunction
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object litCPPassportNo: TdxLayoutItem
        Parent = grpCPIDNo
        CaptionOptions.Text = 'Passport No'
        Control = edtPPassportNo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object litCPPrimaryContact: TdxLayoutItem
        Parent = grpJobFunction
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = cbxPPrimaryContact
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 117
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object grpJobFunction: TdxLayoutGroup
        Parent = layContactPersonGroup_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 4
      end
      object litMand3: TdxLayoutItem
        Parent = grpCPName
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq3
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object litMand4: TdxLayoutItem
        Parent = grpCPName
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq4
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object litMand5: TdxLayoutItem
        Parent = grpCPSalutation
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = lblReq5
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 14
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object spc2: TdxLayoutEmptySpaceItem
        Parent = grpCPDOB
        CaptionOptions.Text = 'Empty Space Item'
        SizeOptions.Height = 10
        SizeOptions.Width = 14
        Index = 1
      end
      object spc3: TdxLayoutEmptySpaceItem
        Parent = grpCPIDNo
        CaptionOptions.Text = 'Empty Space Item'
        SizeOptions.Height = 10
        SizeOptions.Width = 13
        Index = 1
      end
      object spc4: TdxLayoutEmptySpaceItem
        Parent = grpJobFunction
        CaptionOptions.Text = 'Empty Space Item'
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        Index = 1
      end
      object spc6: TdxLayoutEmptySpaceItem
        CaptionOptions.Text = 'Empty Space Item'
        SizeOptions.Height = 10
        SizeOptions.Width = 5
        Index = -1
      end
      object spc7: TdxLayoutEmptySpaceItem
        CaptionOptions.Text = 'Empty Space Item'
        SizeOptions.Height = 10
        SizeOptions.Width = 5
        Index = -1
      end
    end
  end
  inherited styRepository: TcxStyleRepository
    Top = 150
    PixelsPerInch = 96
  end
  inherited actList: TActionList
    Top = 150
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    Top = 205
    inherited lafCustomSkin: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited img16: TcxImageList
    FormatVersion = 1
    DesignInfo = 13435085
  end
  inherited img32: TcxImageList
    FormatVersion = 1
    DesignInfo = 13435155
  end
  object styHeaderFont: TcxEditStyleController
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Verdana'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Left = 450
    Top = 205
    PixelsPerInch = 96
  end
  object repScreenTip: TdxScreenTipRepository
    AssignedFonts = [stbHeader, stbDescription, stbFooter]
    DescriptionFont.Charset = ANSI_CHARSET
    DescriptionFont.Color = 5000268
    DescriptionFont.Height = -11
    DescriptionFont.Name = 'Verdana'
    DescriptionFont.Style = []
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = 5000268
    FooterFont.Height = -12
    FooterFont.Name = 'Verdana'
    FooterFont.Style = [fsBold]
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = 5000268
    HeaderFont.Height = -12
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    Left = 485
    Top = 330
    PixelsPerInch = 96
    object tipPhysicalToPostal: TdxScreenTip
      Header.Text = 'Physical To Postal'
      Description.Text = 'Make postal laddress same as physical address'
    end
    object tipPostalToPhysical: TdxScreenTip
      Header.Text = 'Postal To Physical'
      Description.Text = 'Make physical address same as postal address'
    end
    object tipPhysicalToBilling: TdxScreenTip
      Header.Text = 'Physical To Billing'
      Description.Text = 'Make billing address same as physical address'
    end
    object tipBillingToPhysical: TdxScreenTip
      Header.Text = 'Billing To Physical'
      Description.Text = 'Make physical address same as billing address'
    end
    object tipBillingToPostal: TdxScreenTip
      Header.Text = 'Billing To Postal'
      Description.Text = 'Make postal address same as billing address'
    end
    object tipPostalToBillling: TdxScreenTip
      Header.Text = 'Postal To Billling'
      Description.Text = 'Make billing address same as postal address'
    end
  end
  object styHintController: TcxHintStyleController
    Global = False
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
        ScreenTip = tipPhysicalToPostal
        Control = btnPhysicalToPostal
      end
      item
        ScreenTip = tipPostalToPhysical
        Control = btnPostalToPhysical
      end
      item
        ScreenTip = tipPhysicalToBilling
        Control = btnPhysicalToBilling
      end
      item
        ScreenTip = tipBillingToPhysical
        Control = btnBillingToPhysical
      end
      item
        ScreenTip = tipBillingToPostal
        Control = btnBillingToPostal
      end
      item
        ScreenTip = tipPostalToBillling
        Control = btnPostalToBilling
      end>
    HintStyle.ScreenTipActionLinks = <>
    HintShortPause = 0
    HintPause = 0
    HintHidePause = 3000
    Left = 575
    Top = 329
  end
  object imgNav16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 13435020
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002E744558745469746C650046697273743B446F75626C653B4172726F
          773B4261636B3B536B69703B507265763B526577696E64868055450000027349
          444154785EC5935B48544118C7FFBBAE5B292B6ABAA494525ED2B6C4F25288A1
          8676A1908830822448094CB312A48B16F4D0933D04D193D286212B9A91E65266
          64962288AD8962650F82A53E6837B5B33B7BCECCD71CD815ACC78206FE7CC38F
          6F7EDF1CCE390622C2DF2C23FEC132C9987DD570BE711CE5F5A3A86D798F8B8E
          09FF9055326B64028A6F0EAE64971BDFBEBADA3C4E7A05105875FF1D2A1AC696
          9B761DBB9E72A0DAD9BEAFFA0501B0FCC16A1DE3F48D1155DB47C837C520634E
          3B54B1E1E835E7ED925B43ACFEE534E5573DA34D69FB6D7ED6D03B437BA5C024
          8440D3C87730AF06FD6064CC1673C1E9BA3321E1519752122342E23686634961
          080E221494DC1848DD6CB524C44742E50011C1C4359287053C4CE060E59D23D1
          093B6B6C09D6B8D4E408CC2FB83130368BAF730AF2B293B1C366B5FC60848939
          8E88600304173079A58A712970AB48CDC8BA9B97958800B319935F14B85CD3B0
          8606A1302F5E67985AE258700B289CA078095C17E8576752A278BCF0AAAB312F
          9B3413C712936229654162992D4AE65505348DE0D60055EE8D6E8F06AFFE081E
          8EBEEE2755AD6DAEE961D794B41B1193148579E527DA9DA3904CF671A8043029
          51980057398C1E4585AA0930A661C051D3DC633F9B39D8DB57D7FD785899F9BC
          88C8F5EB106BB3A2BFE70DBA3A86DC9313B320C1A148932A0528BCF29CCE3DFA
          4439154E02B0D6F7FE83A3B715DA324ED8DB722F74F312FB07DA5AE4A0B0D8F4
          5C3F2BBDF791528E3F24E494B5F667977552C6C9A67E0096DDE54FE1FB164C32
          A1D1DB8BF3930E37BC4E2E6A2100512BD9039DC1E29B1C22139059DA89F4531D
          D853D9E51705CA84F97ACCBFB3FFFF37FE02C8BF4AE42C5ECDF9000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000031744558745469746C65004C6173743B446F75626C653B4172726F77
          3B466F72776172643B536B69703B4E6578743B526577696E643BDF9F345D0000
          028249444154785EC5935D48935118C7FF9B5B66684A59E0CD2051CB8C8A348A
          B0A2283F90B42F0D89082F144CF4A6D4A28440EB22CA4208B202696A8AA66188
          1AD22A6B6ECB026D3A9790D9AC15625AE2DECFF39ED371AC026F0B7AE0C739FC
          9E873FCFC5393AC618FEA6F4F807B58463E4E84FDD190E84FE7129A516EC2A79
          8C13575F21BBAA1F00741C4360C680B34DA3ACF0D6407B46C9CD84800CA96875
          2F76FAE3571C385A690500C339F3605F45B38B2D9C38631E6116F72C2B338F48
          B9977A6B62B665AEEDB04FB227A333BFDDA6D47C532048C7597AA1C9C56665C6
          4AEB86989E108A185304F233D705A7EF5C5F9C9C737E60D0EDC5AA70202F2D3A
          382D39BE78CBFE7C674AC9FDB2D048D30A00C19452340E7D87AC10A0A87690B9
          6628EBFAA8B17E2F61F6CF32AB6C1963B9557DEC729B93F5BE9B61368FE077A9
          A77BC63764541494DF73B26B2FBFB1829A016650140DA246312751CCFA287441
          4062920971B1ABD16D1983FDF51B1C3A96F8CBAD79D41D52ABA81A648D421255
          184491605E6110B9D4A80E2A0FF489E04D0DAACABDA4E2874F0581E67744D1FC
          ABCB7C5E9014E86559C5BC4421A8149AC643640D0EEB7B74B4D8B12C8C203D6B
          2382F446BF6BA8EBF33A9E76968B1281A250489206BD24A998E3174634B847BC
          68355B453AEDC1E183F148D81C0B8FC787070D0EC1D66BA976B6976D9F785E5D
          2F092A544221CB0406492018767D85DD364EA7263F3CF4D86EDFC8B97EF7C5A7
          290A87FDADDF7D196ABB383DD6330140E084FB04192A65501402EC28E86209D9
          75CFA292F2F62C3439917B8B7A163B03471777A40500427717B65A930B3BD9D6
          938D560088080C19030FC5B8D845EDAB474C5633A20F34014010278CB392B3FC
          FFFFC69F43966D3643BB4D970000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002C744558745469746C65004E6578743B446F75626C653B4172726F77
          3B466173743B526577696E643B496E637265617365C977401F000002A4494441
          54785EA5937F2C947F00C73F59FA4145B1564C368DFAA3560B49E12F27B34EAD
          E5BEFB2E6B5487B14493CC8F6A213BD250A11885EE34CDF97147256EA2E3B843
          E28E76A8CC6EDCA8DCE122DE3DCFB3E30FFACF677BFFF1BCB6F7EBD93EEFE721
          00D695750BE8634265933126E1057D6B98CFCD26E215F996B85D1191801429F1
          4F6C21CB8C3E9BE3042A843F5548CEDF2A75A3C0162A5BEFBC1E5CCD4C5C2E8B
          C885E48F841D2F21AC9846E219F1861198C594F4A37D588724FEC06220AFB9FC
          C869EED1EAF65148D5BF5698FB7F4907E897D1A26EED0291690CE454683D2330
          8F2AFA8CEFB3C0F0F412848A0970B3E47309056D908F6831A09D43A57C1CDC6C
          F9AC6F7445A6BDF3393BA368C389103123D816F1B407CAA92588BF2DA255B388
          4ECD3C1ED40C8173EF03E29ECB51AFD2423AAA4746B51A67121A275D2FE6C553
          BD9DC63B223BB88F145068FFA07C701E2F9506F0550688870DA856E9702DBF07
          ACEB75887DA18050F573851D0FAAF8E2E89312440B2C02D365681E5B4071DF1C
          0A7B0DC8ED9A4176870E8F3B7528E9D5234B328EC3FF578227195BC368816540
          722BC443BFF1A47B06399D7A64CAF4784809D29A26C1E175C09D5B85E0EC56F0
          5A2656D8218EE0AB9D67E2555AB08B9D2081A07F16E96DD35459878C962904E7
          F5C2234C044EDA7BDCAD53E37EA306C1B99FE01C24FCB19F957AD7D4CCDAC638
          2FB1624537E0591755944E23AC7800EE212203275688941A2552A96268919261
          4E67728AB6DBBAD0739AD3733AB0F9CC0AD62743EA70E3D508BC221BE0E49F5F
          6B61EFE99DC557208AAFA6D83B86591DF477A52F9CCA467AC2DBEFA7C83EBF32
          46B0F3D8A52A38B20B657B9C43CF1AE7D9EDC1AD5DCD4CE9A2035B40ECFDF8C4
          CEB78CECF52E6504A6C692E5F207F22F66E35D42A830455B5629313EAFFF6FFC
          0B0C0C183FEAAD166E0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002C744558745469746C6500507265763B446F75626C653B4172726F77
          3B536C6F773B526577696E643B44656372656173657A53DE51000002C7494441
          54785EA5917B48937B18C77F5DA5A8437634ED58FFD439A0E18514D48E5A201C
          8E7F2CA39AE1AC855A695E32D363DE466547524E1EBC7496E70CAF34D174B510
          AF73A8D3E69C0E346D738A79094D0AB7DCA6730AF2EDFDEDB010EA3F5FF8C2FB
          7E789ECFEFF73E0F01B0A5105EC324C97E3E41D26BC6C89D2A0DC9AA9FF8CA98
          6707933D4CF6D277EE5FCA6F18C9A8D59234A196A4566BC8EDF21146A4A545DB
          695160447E60486A73CFB9CC2E30EC87CDECF7542965FB484AB59AE82C209F56
          616BB43B1596E97A21BBA93EB6706043D8370F81588D1341E17E94C5140D6E08
          150BF82DA9830AEC49A26094366E63B2DB23F8B20B9BD758105B3260AEEC9E43
          FB3B2344430BC8289523A67870B552F6011D3316B44D99119CD44E050769F34E
          26FBD9592FD2AE172A754F2533783D6D8270681129CF4610F78F0A7CC92C7ADF
          9B211AB7E0EF7E136ADEAEE04C422B153810568A901391D733F6583C09F9EC2A
          DAA757F0F0D538A28B95A0AC976192D975548E9A51A05C466ECF12CADF981078
          A3890A1CC9A53FE5681D334236BF8E5AE68492FE4550D6AC36A06B6ECDCA4A87
          5750A434215F6EC4FDAECF783260846F5423151C2241917C2E2B5D3275A74283
          FF5406142AF4B855358C8B0F64486618BFDF80E2C1653CEA3322A77B09D9521D
          1E2B0CF0B92AA602674287B7D7DEC5D1FFCA535E484ABB3EBE4C83DCCE8F486B
          9C02A7A017AC0C296E5226D3E15EA71EE9123D72985B7871445470980427B47D
          DDBBC3B1805FBCC34ACB4F27B658A2046AFCD13287E4BA5170EE8AC1B0B54881
          06773B74E049F57067D753C14FC4FF5A13E1AB4CD655DA36E2E476D6D72D94DF
          1C10DF8AE8322DF2CA143870D48F45D9AF716D88AE9880EBF93A2A3842987F21
          3E5C31F1E6BE24272FBFB08976D11D3B7B455F3C1EF2AFCA33ACC15ABC99FD1C
          6A1538118F70D1FF091311777603F1BC64FDB689EC98FC48A74D67F55D06604B
          D9B2E00B4EFC1D5F135F05C60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000027744558745469746C650046697273743B4172726F773B4261636B3B
          536B69703B507265763B526577696E64018E90D40000028D49444154785EA593
          5D4854411886DFB3EB6A922D68B56A7A91413F9219FE643FB089149178515090
          46175996601A097B51E84D52E14D255414265EA8650666D4452246B5EA86FDB0
          B63726041586441892BA1ECF9C99F99AB37BA4F6DA81E19DF9CE3B0FEF7798D1
          8808CB1971B6A2B1E73338279004040842484889A80AA994D05A9BEFB0CF58CA
          882C37A0D9C578002E6B7FA13D84DAFB9F50736F0CD5B783B00F2494D6B5EDAD
          B8F2FA55F9D5B704207129BDEB62C798BFFAD647AABA11F05BA05F3A615A4D1B
          1EBFFFF4F5ADC79A06BB7D6D217A1E9AA1A34D430460151145E2389D712E6FF3
          D9EDF0DD7DEFB5F69E442D92AAE850BD272BAFB4213575EDA9E21D99099E3437
          4C09306EC3EDE89AE084911F0C9C4B580936141C5C915F76AE363925CD575C98
          E9CEDEB406537302A19F1CEBDC0E7043C4001C26978A4C100A5F7ABEB5327D7D
          AEAF30273DA328271D61A961FCB7C0AC2EA00B826E28AF90B1094C2EC0549199
          02DEDD3B6FEED9B51170C5E1EBBCC4AC0118AACE149C73C202772815B100C624
          0C2E22E43F6143C5E5E04E07E60D012E084C024CA9A9206153A9F12F81C35A2C
          EA1C561B5C195EBE18A8EFE80C4C8E06BE80192CD29A6EF0680A2EB0C8A06A22
          16A02B23E3042E243EF436768F3EBA541818F45FEEEB1A991B0F7E8314028A0F
          9380059383F35800F4453B012700603393C1E9604F4DF3F8E09DBC40FF9BB6FE
          07C36C72620A2401836BE0CC6EC11E2B4BEA9E0EEDAB1F206F75EF3080A46BFE
          992583D3FAEEC93D5E9475A0E55941651F9D6C9FA09C8A3E02E02152629B9200
          24DBEADC56FE10D947BAB0E570E7FF57DDBD3AF74C594649CBBBCDE54F08408A
          05D0962879271E8338457F9088B623A504915AABFDF7FE2ACD7E2B8936344C44
          E6B29FF35F8A7E791DC98C55400000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002A744558745469746C65004C6173743B4172726F773B466F72776172
          643B536B69703B4E6578743B526577696E643B5B449245000002934944415478
          5EA5935B48555D10C767EB399AA961178D34CE8B45F8701E7D2814CACA820A7A
          AAB07CA80CC98C0A310C4384B0A8C0822C8C48EA80DD03C920132F64A99C13A2
          562A1C022D341F3C712CB57D599769D66EE9F7E1AB1B8659336BE6B7FEB358DB
          404458CAE751CEA08F5CACCEC992FA01293882400152227086208504EEE6A4BB
          7E5195F38FA01578CF0786B0B82ED47EE0E2B32D14C791C51CAD0D41E1B52014
          5CE98583353DEE59641EBDEF75630D882F7BF01987C767B1FAF1081EB9DCD1B8
          F3445DD63CA87F8A4170D2720FAA080C7415DFEAC3A2DA9E2E17A401CBCEDE1F
          C4A88338FA1BB1E5D34F2CADEBB7F65F7873C7BFB364BD0619AAAEF2D110466D
          C4E33743AA312146CF6D7021C06208C3510989A9295074C81FBF2FDF7F322BB7
          6028EFD4D3CAD40D9B572B90BA9BEE71073897A0D479E6018201581261C61230
          3D479B845EEB5B03C70EAF5AD1FD31B5CABBBCBA68EAFBC80D468D8CEA045B04
          501B730E82C904086980C3054428A724666665802F332DBDB73BED3AA3BC2324
          384CB87DFF0128316B23FC21B292E948A042044E8B191B002D06B3A60D711E2F
          D8046142BA80853BB02D0ED3247F8E4C414C9B8394125030180C7E85E70F3B26
          42ADCDE596C941A9E56C1140C9FA4500D396A0D450278407C6E055E3BB99BEB6
          CE4BE196EAECB1CE9A80693B341E02D70A3C0B0022462D3709DFC293F0251876
          223FC6029191E6ABD3A3ED1394B6C9924D4B2B20C8FF5F624A7E791B963D19C5
          9C92D7B871CFEDA6347F6136E513F513372A5A23A0E26DA79BDE6F3FD78AB9C5
          2F3F509C340F48DE7AE62D6EDA5BDFBB2EBB74B78AF593357CF90D90B1E31EA4
          E7DD050D4B225BA97DACA10086E18E92A0C7B1C8B86F57034A2900258224A3C0
          F552485775A4A7D42D5EF2EFFC17EABC8B701AFC8B800000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000011744558745469746C6500446F776E3B4172726F773BBDFC82580000
          029049444154785E65926B48935118C78FD3564A46F4C5BE04E13E6846376390
          45E85022304A717611C9D034BB41855DE665B39517C4795D5898B70CA9B40F5E
          E78DCD255E3237C2FA5239B7D499A2656AA3E5947FE7BC4C51DF033FDE87F3FC
          DF1FCF39EF4B00900DCB8522A0B86DC095EBAD5900C8AA405963240F292C28AF
          1A6897571B9056F5012995039095BDC7CD425D07135DC9D592B8EC0EBEE05E69
          3FF9B9B8CCCA4DB79EF480D6EB8852B4B0A09065A4B246BEE04E492F99B12FB1
          72F38DA26E4CDB97D0396943E70F1B067FD97136B58905B7D07D127EB79E2710
          303B7B99E299A8EAC2D45F079ABECF73F44CD91071BF8105B753DC9D39C15A81
          F05A811E89797A24E476E1728E16569B03755F6751F76516DAD10544A5B7E1BC
          5C83C8540DA4C9CDDC34EB046149AF5BDEF6596099FB87D1F9458EEA4FD3A81E
          9A81C63447F9CDF56AB4DF70E482BA954DB1EE08E2D349BED1690D0B6F8C5328
          78370E759F154F0726F18C52DC3301957E0CC5FA518424542D880262FDD8D75A
          2B6008832E163F5094F542DD3D8EF496118A190AFA54348F205F3786988C56EC
          0F55CA9C7740360A5C285B0363CB062B75263CD29891D668E25052517AED100E
          85A90CEC9229029E4012FF823DDCFC24D78F4624D53A2AFAAD486E18464AFD30
          F23A2D90C4953B768B2F1D63997DA7F2094F703CA67C650A77FFB0EC027694AC
          363332E8243159EDF00D4E2DA43D0F96D97352C51704443F271F276CAC146CF3
          F2F51247AA474A7566C8EB3E636F688ED963876827EB19AC7F88CF896CBE407C
          AE8418699305E8127A075C954A6FBF5A0E89AF58DE753856CAF6588F210ACEE4
          0BFC23D4E460B89A1C3853B472144F9F10658D77A0EC25ABD99E48924944920C
          220A7ACC17F021AECEDFD683ABF98B13FC07806FBA055103A92F000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000F744558745469746C650055703B4172726F773BC85E281400000275
          49444154785E7D527D485351143FEF4DF7219399A9690EA1AF592409936A546C
          5242DA871F907D424C8288502144C706111641909052A0564890454A655F5011
          14EC8FA6188404D11F6111441AA331DBF7EEBBB7732F7BF09CD2E1FDE09EF7FB
          9DDF3DE7BC078C31F84F4802CB87A895D5C43B32059EDB53D07D7312BA86DF8B
          E2CEEBFEC143BE2737F8B9C53301CDDD8FA1B1EB111C3837BED88547CFAD497E
          5673E94CDF1BD7B587338A6FD0AFECEFBC5BCB4D54BEBE636C6907845050A3BE
          EDA23157AF1F6E76AD93DD4DD5B25E9F3754B5E7B449E5A946BBC4409224D96A
          DBE6ABABA9A84C180C90329BA065B7ADB26CFD4E2F723AA155C832068A0212C6
          51EFFDCDA5C5059E9A6A2BCCC752F02B9202E72E1B58CB567AB6B75EA9E21A85
          D0253B50379EEBBEFC3AF0E9FB1FF6EEE75FF6EC5B58E0E58F0536FD658E39DB
          4602A8D10B6DF60E10F2F1F313EDB5F60A47CA648060340DB1041108470924F3
          CDD0E8DAE4D87A78A01DB5BAEC11E4BDA7FAD6141716F6DAB794C387D9300443
          498827148821420B4998FE1A02976B23941615F5DA9C1D6BD5DA9C8C81CE52BA
          61A0B5CE96FF793E011203900885D9DF3141AE5E6104638E0C337309387BC261
          F65D0DF623D18C48A90632C8FA7DFD0F3E02A31428655077D00E84316E26F2A7
          6301A098230D9692550DD91DA4C72F359832B3198F5D781534EA64A00A56E343
          38140A6F878E94201F47505EA3DD016DEA799E608C45314912C2790684221815
          371334C3E09AC80EF7289F4DD1760084885C404131D797E3EC186204EDDFA760
          2E426B904E1368E97921F87864C17FEF8EDF892388DB19EF2415F323471C2747
          D170F91F49FB69F3101644410616F14E708B6BFF01189337125152162A000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001B744558745469746C65004E6578743B506C61793B4172726F773B52
          6967687416E40EAE000002AF49444154785EA5925D6895751CC73FCFD14D46BE
          B41AF6C20A870425152C2F82A08B0ABD295D05416F572184045D2644082A425A
          831A62128E2E448C59108D9430D84A1C81DBD4D6B6D05C3B739B5B3BB1EDAC73
          CEF33CFFDF4BCFE1807076DB173E7CF95FFC3E7C2FFE91BB136501D600D556C0
          3F3839EC8262062A86A9A3E2881B224AE9DF949E032F90A396B5877A46C3BEAF
          0687DF3DDABB0B683CBAE7A99C064352458212AA484053218943F55D3BA4969C
          A8B2E7C5C71E3FF7EBFAEFDEEBFAA56FE1D6C4FECFF73E7D1908638BC1821A6A
          10D439DCD58FA8D7092255A3A5B9898EE71F213FBBF9B99F06365D7CFBE0F9AF
          676E0C1FDED6DC70030803B3154B122388616AF582204A2A30B562DCD5BC8137
          3AB6716DEC9ED7FBD76F7C75C3E6B3DD7F0EF67EFCCC834D7380EC78BFD7D457
          2D90E0A46A9412A5583688E081875A78B3F5DEC6CBD75AF636346D7AAB65EBB3
          9DBF5F387EE242D7AE2520D0E59EBBB320552AC1A8A4423938C58A905F4C3302
          AD5BEE67F72BDB373EB1BDFDC0932F7D34D4FE5AE73B4063DD822408A5D4AB20
          6224197195580966AC6B8878B47D0B0F6FBDAFB5E754F205701A48EE082AA540
          A124148A29E6206A04ABC9725184C6C6D0C84D4606AF2FAE14663E03A47E811A
          CB15214E0D7343CC897211EBD6464C8C4F73F5D278BCFCF7ADEEF93F7A3B97A7
          06E680A44E90A6CA526CC4C18822674D2EC7FCC43C570646AD3033F5CD3F13FD
          870AD7CFFD05C480B5ED3CEEAB048195B262EE141796B87A7194DBF97CDFCAF4
          9583B77F3B35045400FDF0C7593F7DE45B4484D50B982B14B3C33126C76F8E94
          1646F74F0F7ED9079401D9F7C3AC03A880AA60AB7EA2A6B1F27DF7F9A9CAE2E4
          91C94B9F9C014A4068DB71CCCD9C339F9EA5DAA686BB634E9DA0FCF38997EFA6
          961848DB761E7337C7CC5071DC0C73C7AB4419A60044EECEFFC97FFDEAC21326
          FC988F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000011F144D086C48FF086C48FF086C48FF086C
          48FF011F144D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000124185A0D734EFF0D734EFF0D734EFF0D73
          4EFF0124185A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000124185A137953FF137953FF137953FF1379
          53FF0124185A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000124185A1A8059FF1A8059FF1A8059FF1A80
          59FF0124185A000000000000000000000000000000000000000000000000011C
          1246012216550122165501221655023B279121865FFF21865FFF21865FFF2186
          5FFF023B2791012216550122165501221655011D134900000000000000001C7E
          58FA288E66FF288E66FF288E66FF288E66FF288E66FF288E66FF288E66FF288E
          66FF288E66FF288E66FF288E66FF288E66FF1C825BFF00000001000000002183
          5CFA31956DFF31956DFF31956DFF31956DFF31956DFF31956DFF31956DFF3195
          6DFF31956DFF31956DFF31956DFF31956DFF22875FFF00000000000000002688
          61FA399E74FF399E74FF399E74FF399E74FF399E74FF399E74FF399E74FF399E
          74FF399E74FF399E74FF399E74FF399E74FF278C64FF00000000000000002D93
          6AFA46B185FF46B185FF46B185FF46AF84FF42A67CFF42A57BFF42A57BFF42A6
          7CFF46AF84FF46B185FF46B185FF46B185FF2F976DFF0000000000000000011C
          12460122165501221655012216550239268E4AAE84FF49AD84FF49AD84FF4AAE
          84FF033C2791012216550122165501221655011D134900000000000000000000
          00000000000000000000000000000122165550B38AFF50B38AFF50B38AFF50B3
          8AFF0225185A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000122165557BA90FF57BA90FF57BA90FF57BA
          90FF0225185A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000012216555DBF94FF5DBF94FF5DBF94FF5DBF
          94FF0225185A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000011D134947B085FF48B286FF48B286FF47B1
          85FF0220154D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000710
          344608143F5508143F5508143F5508143F5508143F5508143F5508143F550814
          3F5508143F5508143F5508143F5508143F550711364900000000000000000C33
          BDFA062FC2FF062FC2FF062FC2FF062FC2FF062FC2FF062FC2FF062FC2FF062F
          C2FF062FC2FF062FC2FF062FC2FF062FC2FF0C34C1FF00000001000000001343
          C5FA1148CFFF1148CFFF1148CFFF1148CFFF1148CFFF1148CFFF1148CFFF1148
          CFFF1148CFFF1148CFFF1148CFFF1148CFFF1344C9FF00000000000000001C55
          CEFA1E65DDFF1E65DDFF1E65DDFF1E65DDFF1E65DDFF1E65DDFF1E65DDFF1E65
          DDFF1E65DDFF1E65DDFF1E65DDFF1E65DDFF1C58D3FF0000000000000000266C
          D9FA2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8D
          F0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF266FDFFF00000000000000000710
          344608143F5508143F5508143F5508143F5508143F5508143F5508143F550814
          3F5508143F5508143F5508143F5508143F550711364900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000233227D054E33BB0005030D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000033624820E734EFF0E744EFF065437C40005030D0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000004382584147953FF157B55FF157B55FF157B54FF09563AC40005
          030D000000000000000000000000000000000000000000000000000000000000
          0000063A26851B815AFF1E845CFF1E845CFF1E845CFF1E845CFF1D835CFF0B58
          3CC40005030D000000000000000000000000000000000000000000000000073C
          2886248961FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF268B
          63FF0E5B3FC50005030D00000000000000000000000000000000062F20692D92
          6AFF30956CFF30956CFF30956DFF2D966CFF21855EF031966EFF30956CFF3095
          6CFF30946CFF115D41C50005030D00000000000000000000000000130C302385
          5EEC3BA176FF3A9F75FF359F73FF0737257A01150D33268861EE3BA076FF3A9E
          75FF3A9E75FF399E74FF146043C50005030D0000000000000000000000000013
          0C2E298963EB3EA97DFF07362578000000000000000001150E342C8F67EF44A9
          80FF44A77DFF44A77DFF43A77DFF176446C50005030E00000000000000000000
          000000100A2804261A560000000000000000000000000000000001160E353394
          6DEF4DB188FF4DB086FF4DB086FF4CAF85FF1A6749C50005030E000000000000
          0000000000000000000000000000000000000000000000000000000000000116
          0E35389A72EF56B98FFF55B78EFF55B78EFF4BB187FF021E1449000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001160F363DA077F05DC095FF55BC90FF0939287900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001170F373C9F76F00C3E2B7E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000030208000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000061034460103090D0000000000000000000000000000
          00000103090D0610344700000000000000000000000000000000000000000000
          0000000000000919526F062BBFFF0D2892C50103090D00000000000000000103
          090D0D2892C5062BBFFF091A5471000000000000000000000000000000000000
          0000091A526F0830C1FF042DC2FF052DC2FF0D2B93C50103090D0103090D0D2B
          93C5052DC2FF042DC2FF0830C1FF091A526F0000000000000000000000000611
          34470C37C6FF0935C5FF0935C5FF0935C5FF0935C5FF0F2D95C50F2D95C50935
          C5FF0935C5FF0935C5FF0935C5FF0C37C6FF0610344600000000000000000103
          0B0F1032A0C70D40D1FF0C3ECAFF0C3ECAFF0C3ECAFF0C3EC9FF0C3EC9FF0C3E
          CAFF0C3ECAFF0C3ECAFF0D40D2FF1032A0C701030A0E00000000000000000000
          000001030B0F1136A3C7124AD6FF1147CEFF1147CEFF1147CEFF1147CEFF1147
          CEFF1147CEFF124AD7FF1135A2C701030A0E0000000000000000000000000000
          00000000000001030B0F133AA4C71653D8FF1551D3FF1551D3FF1551D3FF1551
          D3FF1653D8FF1339A4C701030A0E000000000000000000000000000000000000
          0000000000000103090D14389BC51A5BD8FF1A5CD9FF1A5CD9FF1A5CD9FF1A5C
          D9FF1A5BD8FF133899C40103090D000000000000000000000000000000000000
          00000103090D153C9CC51E65DDFF1E66DDFF1E66DDFF1E66DDFF1E66DDFF1E66
          DDFF1E66DDFF1E65DDFF153B9BC40103090D0000000000000000000000000103
          090D173F9DC5236FE2FF2370E3FF2370E3FF2370E3FF2473E8FF2473E8FF2370
          E3FF2370E3FF2370E3FF236FE2FF163E9CC40103090D00000000000000000710
          33452673E8FF2779E8FF2779E7FF2779E7FF287DEEFF1946A6C51946A6C5287D
          EEFF2779E7FF2779E7FF2779E7FF2675E9FF0712374A00000000000000000000
          00000C1F566F2B7EEEFF2B82EBFF2C86F1FF1A49A6C501030A0E01030A0E1A49
          A6C52C86F1FF2B82EBFF2B81F0FF0E235E780000000000000000000000000000
          0000000000000C2057702E89F0FF1B4CA6C501030A0E00000000000000000103
          0A0E1B4CA6C52F8BF2FF0E245E78000000000000000000000000000000000000
          000000000000000000000712354701030A0E0000000000000000000000000000
          000001030A0E0713374A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000020101000100000000000000000101
          0001000000020000000200000001000000000000000000000000000000000000
          00000301000546361369684F1D9B60461D9B483416770604010A0604010A4935
          167860461D9B684E1D9B46361369030100050000000000000000000000000000
          00000806010E7C6121C4A4802DFFA4802DFF896A25D8100C0419100C0419896A
          25D8A4802DFFA4802DFF7C6121C40806010E0000000000000000000000000000
          00000806020E826726C5A98432FFA98432FF8F6F29D9110E041A110E041A8F6F
          29D9A98432FFA98432FF826726C50806020E0000000000000000000000000000
          00000806020E866A29C5AF8836FFAF8836FF91732ED9110E051A110E051A9173
          2ED9AF8836FFAF8836FF866A29C50806020E0000000000000000000000000000
          00000A07020E896D2DC5B48D3BFFB48D3BFF967830D9120F051A120F051A9678
          30D9B48D3BFFB48D3BFF896D2DC50A07020E0000000000000000000000000000
          00000A07030E8F7130C5B99140FFB99140FF9B7A35D9120F061A120F061A9B7A
          35D9B99140FFB99140FF8F7130C50A07030E0000000000000000000000000000
          00000A07030E927434C5BE9644FFBE9644FFA07F39D9140F061A140F061AA07F
          39D9BE9644FFBE9644FF927434C50A07030E0000000000000000000000000000
          00000A07030E967737C5C39A49FFC39A49FFA4813ED9140F071A140F071AA481
          3ED9C39A49FFC39A49FF967737C50A07030E0000000000000000000000000000
          00000A08030E9A7B3BC5C99F4EFFC99F4EFFA98541D9140F071A140F071AA985
          41D9C99F4EFFC99F4EFF9A7B3BC50A08030E0000000000000000000000000000
          00000A08040EA07E40C5CEA352FFCEA352FFAD8B46D91410081A1410081AAD8B
          46D9CEA352FFCEA352FFA07E40C50A08040E0000000000000000000000000000
          00000A08040EA48242C5D3A857FFD3A857FFB28D4AD91510081A1510081AB28D
          4AD9D3A857FFD3A857FFA48242C50A08040E0000000000000000000000000000
          00000B08040EA48545C4D8AC5BFFD8AC5BFFB78F4DD81511081915110819B78F
          4DD8D8AC5BFFD8AC5BFFA48545C40B08040E0000000000000000000000000000
          0000040301045C4C31658B71509682714F966256397207070409070704096256
          397282714F968B7150965C4C3165040301040000000000000000000000000000
          0000000000000000000101010001010100010100000100000000000000000100
          0001010100010101000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000027744558745469746C6500526566726573683B5265706561743B4261
          72733B526962626F6E3B52656C6F6164CD4DF6E90000037749444154785E6593
          6B4C537718C69F73E885622F4069C9B02DA1ADB60C2133D471DDD451D8257C02
          2661B3719912A3092163898BDBF8B06422DB74612612CDE64CDCE2A698CC2DA2
          0C541C9918645BB701EB3414B99536E08022A597737ADE71927E58C693BCFFBC
          F9E5799E2FFFBC0C364A64FFE794988DE6CF6F55032034567433EF7596AB37E7
          A85AC0302FB22C1C448020D02F3C47BD8F3C4B9F76BC3314FCE44A05AD330844
          585F80B3BDAF00007BB2CBE9BC70C73533E0F998BCF33F5030FA9B38343EFF3D
          F58F1EA7737D0DB347CF943A456F44F06085BF87F7BF28054470A2AB72CFE5C1
          43F4C07F999EC4876989FB891E477B6921DA438BDC6D5A37D398EF22755EDD4B
          CD271DF5626689BB83B74E3920693AB643AF516BCFE7659723439B0E6F6008D7
          6F0F60E46F0F44E5DB6D28DABE1DF9D66750F8F4F3989B0F7C597DC0329026DD
          153878BC80D8CCEC4D2DD9FADC145D8606EE078338FBF5377CFFDDC10FA7C717
          AC33138FAD3F0F0D1FB976EBC798D7EF86C1900AAB292F45A393BE0D800DADC5
          20E1E3F4B22E3D13ABDC1CDC7F8D61666EAEADEFCCEC31001C44011DCA237266
          F88FB18F5277CB91AE27C438FE2500EF46C25C9CE5B9B84DA10462F12798F64D
          63C5C79D17C3CBDC5D4A7C27EBEE5BF86ABD18E3C11E90F2112251CE044071E5
          84572E0947F8C8C44A8F54A94843B24C0685542E88414E0893B3DEACCA2FD6FB
          08B4492661118AFD038A876032EA5587DB75CB828065361CE2A67D8100FC2137
          AC66234C76CD7E00529DDCC9DCBC34115E5E8C746CCBCD455DCD0B880B1C1809
          8FC6FDB5D0E9B4181B9D6D4FB239B45B55AA9462953E0C8D3C0B6BAB5462B029
          42AA34B94FFB540A3B726FFE7E7246AC9E74BF6B92A4045EE0F170E657F47C37
          35E5BEBE788029ADDE6CDE569239BA65475461B66402410BA6BC8B989CF46375
          758DF38E2E952B53E5B6AD858A0BF93BA31075B32B04CFF08ACBDD1DBC240259
          952BA7F1607B01B575DBE9DB87657463B281067CCD7471701FD535E7F603D0D7
          34D9FBDB6ED8A8F5AA899EAD4D1599120083C4935C5663A8AF6BD9E26FEAB4D0
          07D72C74EABE95CEB94BE8707B1155BC96E372546595B85AF3B8CA43199CA558
          510440E278550D54BD99932881D468571BCA6A0D9FED6C308EECDE6BA25DAF9B
          E8B93DC63F2BDFB0B4025057ED339F2EA8569E06A0103385752A301BCF1832B1
          1D4052820B006200E2FF615C82E35FC02B8FD5CBC3AEEB0000000049454E44AE
          426082}
      end>
  end
  object styMandatory: TcxEditStyleController
    Style.Color = clRed
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clRed
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.TextColor = clRed
    Style.IsFontAssigned = True
    Left = 524
    Top = 204
    PixelsPerInch = 96
  end
  object stySubTitle: TcxEditStyleController
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Verdana'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Left = 450
    Top = 260
    PixelsPerInch = 96
  end
end
