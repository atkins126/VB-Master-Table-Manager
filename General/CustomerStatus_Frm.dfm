inherited CustomerStatusFrm: TCustomerStatusFrm
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'CustomerStatusFrm'
  ClientHeight = 745
  ClientWidth = 968
  ExplicitWidth = 968
  ExplicitHeight = 745
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    inherited grdMaster: TcxGrid
      Width = 450
      ExplicitWidth = 450
      inherited viewMaster: TcxGridDBBandedTableView
        DataController.DataSource = MTDM.dtsCustomerStatus
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.NoDataToDisplayInfoText = '<No Customer  Status data to display>'
        OptionsView.ColumnAutoWidth = True
        Bands = <
          item
            Caption = 'Customer Status Listing'
          end>
        object edtID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,###,##0'
          Properties.EditFormat = '#,###,##0'
          Properties.ReadOnly = True
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
        object viewMasterNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
    end
    inherited navMaster: TcxDBNavigator
      Width = 324
      ExplicitWidth = 324
    end
    inherited litNavigator: TdxLayoutItem
      ControlOptions.OriginalWidth = 324
    end
    inherited litGrid: TdxLayoutItem
      ControlOptions.OriginalWidth = 450
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
