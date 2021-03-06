inherited ActivityTypeFrm: TActivityTypeFrm
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'ActivityTypeFrm'
  ClientHeight = 697
  ClientWidth = 777
  ExplicitWidth = 777
  ExplicitHeight = 697
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 550
    ExplicitWidth = 550
    inherited grdMaster: TcxGrid
      Width = 450
      ExplicitWidth = 450
      inherited viewMaster: TcxGridDBBandedTableView
        DataController.DataSource = MTDM.dtsActivityType
        OptionsView.NoDataToDisplayInfoText = '<No Activity Type data to display>'
        OptionsView.ColumnAutoWidth = True
        Bands = <
          item
            Caption = 'Activity Type Listing'
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
          Options.Sorting = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Grouping = False
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
    end
    inherited navMaster: TcxDBNavigator
      Width = 318
      Buttons.CustomButtons = <
        item
          Hint = 'Preview'
          ImageIndex = 11
        end>
      DataSource = MTDM.dtsActivityType
      ExplicitWidth = 318
    end
    inherited cbxOpenAfterExport: TcxCheckBox
      Left = 335
      ExplicitLeft = 335
    end
    inherited litNavigator: TdxLayoutItem
      ControlOptions.OriginalWidth = 318
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
