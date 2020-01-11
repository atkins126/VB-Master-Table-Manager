inherited JobFunctionFrm: TJobFunctionFrm
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'JobFunctionFrm'
  ClientHeight = 745
  ClientWidth = 968
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    LayoutLookAndFeel = lafCustomSkin
    inherited grdMaster: TcxGrid
      inherited viewMaster: TcxGridDBBandedTableView
        DataController.DataSource = MTDM.dtsJobFunction
        OptionsView.NoDataToDisplayInfoText = '<No Job Function data to display>'
        OptionsView.ColumnAutoWidth = True
        Bands = <
          item
            Caption = 'Job Funciton Listing'
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
      ExplicitWidth = 342
    end
    inherited cbxOpenAfterExport: TcxCheckBox
      ExplicitWidth = 182
    end
    inherited litNavigator: TdxLayoutItem
      ControlOptions.OriginalWidth = 342
    end
    inherited litOpenAfterExport: TdxLayoutItem
      ControlOptions.OriginalWidth = 182
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
