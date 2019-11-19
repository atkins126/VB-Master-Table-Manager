inherited PriceListFrm: TPriceListFrm
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'PriceListFrm'
  ClientHeight = 745
  ClientWidth = 1504
  ExplicitWidth = 1504
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 1421
    Height = 691
    LayoutLookAndFeel = lafCustomSkin
    ExplicitWidth = 1421
    ExplicitHeight = 691
    inherited grdMaster: TcxGrid
      Width = 1399
      Height = 623
      ExplicitWidth = 1399
      ExplicitHeight = 623
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
          MinWidth = 74
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
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
          Properties.ListSource = LookupDM.dtsRateUnit
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
      Buttons.OnButtonClick = navMasterButtonsButtonClick
      DataSource = MTDM.dtsPriceList
    end
    inherited litGrid: TdxLayoutItem
      AlignHorz = ahClient
      ControlOptions.OriginalHeight = 448
      ControlOptions.OriginalWidth = 1315
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
