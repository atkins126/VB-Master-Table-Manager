inherited PriceListFrm: TPriceListFrm
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'PriceListFrm'
  ClientHeight = 745
  ClientWidth = 1504
  ExplicitWidth = 1504
  ExplicitHeight = 745
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 1421
    Height = 691
    ExplicitWidth = 1421
    ExplicitHeight = 691
    inherited grdMaster: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1368
      Height = 569
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 1368
      ExplicitHeight = 569
      inherited viewMaster: TcxGridDBBandedTableView
        DataController.DataSource = MTDM.dtsPriceList
        OptionsView.NoDataToDisplayInfoText = '<No Price List data to display>'
        OptionsView.CellAutoHeight = True
        object edtID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,###,330'
          Properties.EditFormat = '#,###,330'
          Properties.ReadOnly = False
          Properties.UseLeftAlignmentOnEditing = False
          Visible = False
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxMemoProperties'
          Width = 450
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtRate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RATE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taTopJustify
          Properties.DisplayFormat = '#,###,##0.00'
          Properties.EditFormat = '#,###,##0.00'
          HeaderAlignmentHorz = taRightJustify
          MinWidth = 70
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object lucRateUnit: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RATE_UNIT_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.Alignment.Vert = taTopJustify
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.SyncMode = True
          MinWidth = 130
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtDescription: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DESCRIPTION'
          PropertiesClassName = 'TcxMemoProperties'
          Width = 450
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtInvoiceDescription: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INVOICE_DESCRIPTION'
          PropertiesClassName = 'TcxMemoProperties'
          Width = 450
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
    end
    inherited navMaster: TcxDBNavigator
      Width = 333
      DataSource = MTDM.dtsPriceList
    end
    object grdPriceHistory: TcxGrid [3]
      Left = 25
      Top = 94
      Width = 1368
      Height = 569
      TabOrder = 3
      object viewPriceHistory: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewMasterCustomDrawCell
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.NoDataToDisplayInfoText = '<No Price History data to display>'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Price Items'
          end
          item
            Caption = 'Rate'
          end>
      end
      object lvlPriceHistory: TcxGridLevel
        GridView = viewPriceHistory
      end
    end
    inherited litNavigator: TdxLayoutItem
      ControlOptions.OriginalWidth = 333
    end
    inherited litGrid: TdxLayoutItem
      Parent = grpPricelist
      AlignHorz = ahClient
      CaptionOptions.Text = 'Price List'
      ControlOptions.OriginalWidth = 1315
      Index = 0
    end
    object grpPricelist: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Price List'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = grpPricelistTabChanged
      OnTabChanging = grpPricelistTabChanging
      Index = 1
    end
    object litPriceHistory: TdxLayoutItem
      Parent = grpPricelist
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Price History'
      CaptionOptions.Visible = False
      Control = grdPriceHistory
      ControlOptions.OriginalHeight = 569
      ControlOptions.OriginalWidth = 1368
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
  inherited imgNav: TcxImageList
    FormatVersion = 1
  end
end
