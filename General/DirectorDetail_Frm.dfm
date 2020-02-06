inherited DirectorDetailFrm: TDirectorDetailFrm
  Caption = 'DirectorDetailFrm'
  ClientHeight = 524
  ClientWidth = 674
  ExplicitWidth = 680
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 545
    Height = 395
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 545
    ExplicitHeight = 395
    inherited lblHeaderTitle: TcxLabel
      Caption = 'Director Details'
      ExplicitWidth = 523
    end
    inherited btnOK: TcxButton
      Left = 378
      Top = 359
      TabOrder = 10
      OnClick = btnOKClick
      ExplicitLeft = 378
      ExplicitTop = 359
    end
    inherited btnCancel: TcxButton
      Left = 459
      Top = 359
      TabOrder = 11
      ExplicitLeft = 459
      ExplicitTop = 359
    end
    inherited lblSubTitle: TcxDBLabel
      ExplicitWidth = 513
      Width = 513
    end
    object edtFirstName: TcxTextEdit [4]
      Left = 99
      Top = 76
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 2
      Width = 160
    end
    object lucSalutation: TcxLookupComboBox [5]
      Left = 99
      Top = 103
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
      Style.HotTrack = False
      TabOrder = 4
      Width = 160
    end
    object edtMobileNo: TcxTextEdit [6]
      Left = 352
      Top = 130
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 7
      Width = 160
    end
    object edtLastName: TcxTextEdit [7]
      Left = 352
      Top = 76
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 3
      Width = 160
    end
    object edtOtherName: TcxTextEdit [8]
      Left = 352
      Top = 103
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 5
      Width = 160
    end
    object edtTaxNo: TcxTextEdit [9]
      Left = 99
      Top = 130
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 6
      Width = 160
    end
    object edtEmailAddress: TcxTextEdit [10]
      Left = 99
      Top = 157
      BeepOnEnter = False
      Style.HotTrack = False
      TabOrder = 8
      Width = 412
    end
    object grdDirectorOfCompany: TcxGrid [11]
      Left = 11
      Top = 184
      Width = 523
      Height = 150
      TabOrder = 9
      object viewDirectorOfCompany: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = MTDM.dtsDirectorOfCompany
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.NoDataToDisplayInfoText = '<No Company data to display>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Company'
          end>
        object edtDirectorID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DIRECTOR_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '###0'
          Properties.EditFormat = '###0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 40
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object lucCompanyID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object lvlDirectorOfCompany: TcxGridLevel
        GridView = viewDirectorOfCompany
      end
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited grpData: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited grpButtons: TdxLayoutGroup
      Index = 4
    end
    inherited sep01: TdxLayoutSeparatorItem
      Index = 3
    end
    object grpName: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpSalutation: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object grpMobileNo: TdxLayoutGroup
      Parent = grpData
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object litFirstName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000044744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E536574526564546F426C61636B343B436F6E646974696F6E
        616C466F726D617474696E673B98A0D4C8000002D249444154785E4D904D685C
        5518869F7373D330C9CC346D8DC224216A37D5858A228822940856A9687ECD4C
        4B25585D68144A8A15244A37AE224840574550680B75E1602A81800846D4855D
        B8C8A2D4D8665A4D9BA449E6CE4C66EEBD73EEF99CCB3D48CFE1E17DCFE17BBF
        8F73902F67620014D076757C64E8467EECDCCD63AF5F593B3E11940AE357AE4F
        8C9E5B1E191A065C40C9DC19626E4D8CF17F78FEC5177A57F363F3EB6F9D90FA
        D9F7447FF681C8DC872D3D2DF54FA6E4F664415646872E5F3AFC7C1FE0C8EC34
        ABA3C300A85F8EBEF468293FBA519E3E2966F694C8C79322670A22D3E322A7F3
        221F9D10F3E9946CBF3F292BC3AFAE5F7CEED9070167E5B5575047FB7A53734F
        3FF57BCFC1FB1FCFA6814A192203825D0262C000D92C5E0D56AF6D2C3CB1B838
        0284EA8F2347DECCF564BFCA0D7442C54B02912401654004B0670C7465289502
        AEAF974F0EFEBAF48DDB81E4D3FBDA61671B8C80DC8B4930582FE06FB237DB4D
        E71D8E01175C9AD19329F1210C40489A609267401232366C7D574795B6307A0C
        687325D007DCDD2A441AB0C546126F9B8808AA8518137B5C1DA1B5E9069413F8
        CD6D5D6B40D08430408216CDB0A521E8F82E44B520C6FA60D727F49B1E805B0B
        FD3FBD5AC7E0FE94C651A0A2640A765A0CB11A00414542B9EE50F5F53220EE46
        3D28AEADABC103398D510206C4181050242A221069C4FA7FB6DAB9DDF0BF059A
        EECCADBFCF7FA11F9ADABFC73994DB2B104560042199AEAC62042258AB4069CB
        FCF8F6E68DF380765742BFF65BD57BC3D1E985A06EEE1BD86750F6D789C56EA3
        E1A6A7B876D7D95AAC7BA780C60FDD03D206C8CF8DEA467B24C554C37DA4E2F1
        B0AB22DA89708D21080D772BB07C07AEEEF053B1E18D7FED97FF02A2BC9B8166
        E1190005B840E6F3AE07DEB998EE5B2A667A77E6D3FDF25D3AB773A133B7349B
        EA7917C8DA3A15BE7C90622A87FA3EDD0F806018AAFDAB803D16D73616400361
        4C2B24DCB3FE03F304B94D918F11270000000049454E44AE426082}
      CaptionOptions.Text = 'First Name'
      Control = edtFirstName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litLastName: TdxLayoutItem
      Parent = grpName
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000044744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E536574526564546F426C61636B343B436F6E646974696F6E
        616C466F726D617474696E673B98A0D4C8000002D249444154785E4D904D685C
        5518869F7373D330C9CC346D8DC224216A37D5858A228822940856A9687ECD4C
        4B25585D68144A8A15244A37AE224840574550680B75E1602A81800846D4855D
        B8C8A2D4D8665A4D9BA449E6CE4C66EEBD73EEF99CCB3D48CFE1E17DCFE17BBF
        8F73902F67620014D076757C64E8467EECDCCD63AF5F593B3E11940AE357AE4F
        8C9E5B1E191A065C40C9DC19626E4D8CF17F78FEC5177A57F363F3EB6F9D90FA
        D9F7447FF681C8DC872D3D2DF54FA6E4F664415646872E5F3AFC7C1FE0C8EC34
        ABA3C300A85F8EBEF468293FBA519E3E2966F694C8C79322670A22D3E322A7F3
        221F9D10F3E9946CBF3F292BC3AFAE5F7CEED9070167E5B5575047FB7A53734F
        3FF57BCFC1FB1FCFA6814A192203825D0262C000D92C5E0D56AF6D2C3CB1B838
        0284EA8F2347DECCF564BFCA0D7442C54B02912401654004B0670C7465289502
        AEAF974F0EFEBAF48DDB81E4D3FBDA61671B8C80DC8B4930582FE06FB237DB4D
        E71D8E01175C9AD19329F1210C40489A609267401232366C7D574795B6307A0C
        687325D007DCDD2A441AB0C546126F9B8808AA8518137B5C1DA1B5E9069413F8
        CD6D5D6B40D08430408216CDB0A521E8F82E44B520C6FA60D727F49B1E805B0B
        FD3FBD5AC7E0FE94C651A0A2640A765A0CB11A00414542B9EE50F5F53220EE46
        3D28AEADABC103398D510206C4181050242A221069C4FA7FB6DAB9DDF0BF059A
        EECCADBFCF7FA11F9ADABFC73994DB2B104560042199AEAC62042258AB4069CB
        FCF8F6E68DF380765742BFF65BD57BC3D1E985A06EEE1BD86750F6D789C56EA3
        E1A6A7B876D7D95AAC7BA780C60FDD03D206C8CF8DEA467B24C554C37DA4E2F1
        B0AB22DA89708D21080D772BB07C07AEEEF053B1E18D7FED97FF02A2BC9B8166
        E1190005B840E6F3AE07DEB998EE5B2A667A77E6D3FDF25D3AB773A133B7349B
        EA7917C8DA3A15BE7C90622A87FA3EDD0F806018AAFDAB803D16D73616400361
        4C2B24DCB3FE03F304B94D918F11270000000049454E44AE426082}
      CaptionOptions.Text = 'Last Name'
      Control = edtLastName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litSalutation: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000044744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E536574526564546F426C61636B343B436F6E646974696F6E
        616C466F726D617474696E673B98A0D4C8000002D249444154785E4D904D685C
        5518869F7373D330C9CC346D8DC224216A37D5858A228822940856A9687ECD4C
        4B25585D68144A8A15244A37AE224840574550680B75E1602A81800846D4855D
        B8C8A2D4D8665A4D9BA449E6CE4C66EEBD73EEF99CCB3D48CFE1E17DCFE17BBF
        8F73902F67620014D076757C64E8467EECDCCD63AF5F593B3E11940AE357AE4F
        8C9E5B1E191A065C40C9DC19626E4D8CF17F78FEC5177A57F363F3EB6F9D90FA
        D9F7447FF681C8DC872D3D2DF54FA6E4F664415646872E5F3AFC7C1FE0C8EC34
        ABA3C300A85F8EBEF468293FBA519E3E2966F694C8C79322670A22D3E322A7F3
        221F9D10F3E9946CBF3F292BC3AFAE5F7CEED9070167E5B5575047FB7A53734F
        3FF57BCFC1FB1FCFA6814A192203825D0262C000D92C5E0D56AF6D2C3CB1B838
        0284EA8F2347DECCF564BFCA0D7442C54B02912401654004B0670C7465289502
        AEAF974F0EFEBAF48DDB81E4D3FBDA61671B8C80DC8B4930582FE06FB237DB4D
        E71D8E01175C9AD19329F1210C40489A609267401232366C7D574795B6307A0C
        687325D007DCDD2A441AB0C546126F9B8808AA8518137B5C1DA1B5E9069413F8
        CD6D5D6B40D08430408216CDB0A521E8F82E44B520C6FA60D727F49B1E805B0B
        FD3FBD5AC7E0FE94C651A0A2640A765A0CB11A00414542B9EE50F5F53220EE46
        3D28AEADABC103398D510206C4181050242A221069C4FA7FB6DAB9DDF0BF059A
        EECCADBFCF7FA11F9ADABFC73994DB2B104560042199AEAC62042258AB4069CB
        FCF8F6E68DF380765742BFF65BD57BC3D1E985A06EEE1BD86750F6D789C56EA3
        E1A6A7B876D7D95AAC7BA780C60FDD03D206C8CF8DEA467B24C554C37DA4E2F1
        B0AB22DA89708D21080D772BB07C07AEEEF053B1E18D7FED97FF02A2BC9B8166
        E1190005B840E6F3AE07DEB998EE5B2A667A77E6D3FDF25D3AB773A133B7349B
        EA7917C8DA3A15BE7C90622A87FA3EDD0F806018AAFDAB803D16D73616400361
        4C2B24DCB3FE03F304B94D918F11270000000049454E44AE426082}
      CaptionOptions.Text = 'Salutation'
      Control = lucSalutation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litTaxNo: TdxLayoutItem
      Parent = grpMobileNo
      CaptionOptions.Text = 'Tax No'
      Control = edtTaxNo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litMobileNo: TdxLayoutItem
      Parent = grpMobileNo
      CaptionOptions.Text = 'Mobile No   '
      Control = edtMobileNo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litEmailAddress: TdxLayoutItem
      Parent = grpData
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Email Address'
      Control = edtEmailAddress
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 412
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litOtherName: TdxLayoutItem
      Parent = grpSalutation
      CaptionOptions.Text = 'Other Name'
      Control = edtOtherName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object spc1: TdxLayoutEmptySpaceItem
      Parent = grpMobileNo
      SizeOptions.Height = 10
      SizeOptions.Width = 8
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object litCompany: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Visible = False
      Control = grdDirectorOfCompany
      ControlOptions.OriginalHeight = 150
      ControlOptions.OriginalWidth = 401
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited styRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited lafLayoutList: TdxLayoutLookAndFeelList
    Left = 245
    Top = 250
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
  inherited styHintController: TcxHintStyleController
    Left = 165
    Top = 249
  end
  inherited repScreenTip: TdxScreenTipRepository
    Left = 90
    Top = 250
    PixelsPerInch = 96
  end
  inherited stySubTitle: TcxEditStyleController
    Left = 75
    Top = 380
    PixelsPerInch = 96
  end
  inherited styHeaderFont: TcxEditStyleController
    Left = 150
    Top = 380
    PixelsPerInch = 96
  end
end
