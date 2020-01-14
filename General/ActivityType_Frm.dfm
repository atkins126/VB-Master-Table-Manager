inherited ActivityTypeFrm: TActivityTypeFrm
  BorderStyle = bsNone
  Caption = 'ActivityTypeFrm'
  ClientHeight = 745
  ClientWidth = 968
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 586
    LayoutLookAndFeel = lafCustomSkin
    ExplicitWidth = 586
    inherited grdMaster: TcxGrid
      Width = 450
      ExplicitWidth = 450
      inherited viewMaster: TcxGridDBBandedTableView
        DataController.DataSource = MTDM.dtsActivityType
        OptionsCustomize.ColumnsQuickCustomization = True
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
      Width = 342
      DataSource = MTDM.dtsActivityType
      ExplicitWidth = 342
    end
    inherited cbxOpenAfterExport: TcxCheckBox
      Left = 359
      ExplicitLeft = 359
      ExplicitWidth = 182
    end
    inherited litNavigator: TdxLayoutItem
      ControlOptions.OriginalWidth = 342
    end
    inherited litGrid: TdxLayoutItem
      ControlOptions.OriginalWidth = 450
    end
    inherited litOpenAfterExport: TdxLayoutItem
      ControlOptions.OriginalWidth = 182
    end
  end
  object cxButton1: TcxButton [1]
    Left = 625
    Top = 67
    Width = 75
    Height = 25
    Caption = 'cxButton1'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
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
