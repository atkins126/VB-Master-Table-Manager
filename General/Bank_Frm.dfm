inherited BankFrm: TBankFrm
  Tag = 3
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'BankFrm'
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
        DataController.DataSource = MTDM.dtsBank
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.NoDataToDisplayInfoText = '<No Bank data to display>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.FooterAutoHeight = True
        Bands = <
          item
            Caption = 'Bank Listing'
          end>
        object edtID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '###0'
          Properties.EditFormat = '###0'
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
        object edtname: TcxGridDBBandedColumn
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
      DataSource = MTDM.dtsBank
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
