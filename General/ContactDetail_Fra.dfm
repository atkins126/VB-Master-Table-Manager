object ContactDetailFra: TContactDetailFra
  AlignWithMargins = True
  Left = 0
  Top = 0
  Width = 365
  Height = 185
  TabOrder = 0
  object layContactDetails: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 365
    Height = 185
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -123
    ExplicitWidth = 820
    ExplicitHeight = 381
    object lucContactType: TcxLookupComboBox
      Left = 80
      Top = 10
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
      TabOrder = 0
      Width = 250
    end
    object edtContactDetailValue: TcxTextEdit
      Left = 80
      Top = 39
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Text = 'edtContactDetailValue'
      Width = 250
    end
    object memContactDetailComment: TcxMemo
      Left = 80
      Top = 68
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
      Left = 336
      Top = 10
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Transparent = True
    end
    object lblReq2: TcxLabel
      Left = 336
      Top = 39
      Caption = '*'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styMandatory
      Transparent = True
    end
    object layContactDetailsGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
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
  object styMandatory: TcxEditStyleController
    Style.Color = clRed
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clRed
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.TextColor = clRed
    Style.IsFontAssigned = True
    Left = 19
    Top = 103
    PixelsPerInch = 96
  end
end
