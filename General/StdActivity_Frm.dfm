inherited StdActivityFrm: TStdActivityFrm
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'StdActivityFrm'
  ClientHeight = 745
  ClientWidth = 968
  OnClose = FormClose
  ExplicitWidth = 968
  ExplicitHeight = 745
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    inherited grdMaster: TcxGrid
      Width = 600
      ExplicitWidth = 600
      inherited viewMaster: TcxGridDBBandedTableView
        DataController.DataSource = MTDM.dtsStdActivityType
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.NoDataToDisplayInfoText = '<No STD Activity Type data to display>'
        OptionsView.ColumnAutoWidth = True
        Bands = <
          item
            Caption = 'Statndard Activity Listing'
          end>
        object viewMasterID: TcxGridDBBandedColumn
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
      Width = 342
      DataSource = MTDM.dtsStdActivityType
      ExplicitWidth = 342
    end
    inherited litNavigator: TdxLayoutItem
      ControlOptions.OriginalWidth = 342
    end
    inherited litGrid: TdxLayoutItem
      ControlOptions.OriginalWidth = 600
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
