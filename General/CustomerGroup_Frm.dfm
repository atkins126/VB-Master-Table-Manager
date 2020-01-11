inherited CustomerGroupFrm: TCustomerGroupFrm
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'CustomerGroupFrm'
  ClientHeight = 745
  ClientWidth = 968
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    LayoutLookAndFeel = lafCustomSkin
    inherited grdMaster: TcxGrid
      Width = 450
      ExplicitWidth = 450
      inherited viewMaster: TcxGridDBBandedTableView
        DataController.DataSource = MTDM.dtsCustomerGroup
        OptionsView.ColumnAutoWidth = True
        Bands = <
          item
            Caption = 'Customer Group Listing'
          end>
        object edtID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##,##0'
          Properties.EditFormat = '#,##,##0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 74
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.ShowCaption = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
    end
    inherited navMaster: TcxDBNavigator
      Width = 324
      DataSource = MTDM.dtsCustomerGroup
      ExplicitWidth = 324
    end
    inherited cbxOpenAfterExport: TcxCheckBox
      ExplicitWidth = 183
      ExplicitHeight = 19
    end
    inherited litNavigator: TdxLayoutItem
      ControlOptions.OriginalWidth = 324
    end
    inherited litGrid: TdxLayoutItem
      ControlOptions.OriginalWidth = 450
    end
    inherited litOpenAfterExport: TdxLayoutItem
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 183
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
