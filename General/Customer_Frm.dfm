inherited CustomerFrm: TCustomerFrm
  Caption = 'CustomerFrm'
  ClientHeight = 765
  ClientWidth = 1490
  ExplicitWidth = 1506
  ExplicitHeight = 804
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    Width = 1376
    Height = 731
    ExplicitWidth = 1376
    ExplicitHeight = 731
    object grdCustomer: TcxGrid [0]
      Left = 11
      Top = 125
      Width = 915
      Height = 313
      TabOrder = 7
      object viewCustomer: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.ApplyInputDelay = 600
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.ShowCloseButton = False
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewCustomerCustomDrawCell
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = MTDM.dtsCustomer
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsView.NoDataToDisplayInfoText = '<No Customer data to display>'
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Customer Listing'
          end>
        object edtCustomerID: TcxGridDBBandedColumn
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
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object lucCustomerType: TcxGridDBBandedColumn
          Caption = 'Customer Type'
          DataBinding.FieldName = 'CUSTOMER_TYPE_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              Caption = 'Customer Type'
              Width = 200
              FieldName = 'NAME'
            end>
          Properties.ReadOnly = True
          MinWidth = 200
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 400
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 400
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtFirstName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIRST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 160
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 160
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtlastName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LAST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 160
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 160
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtTaxNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TAX_NO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 120
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object lucStatus: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STATUS_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ReadOnly = True
          MinWidth = 80
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cbxIsActive: TcxGridDBBandedColumn
          Caption = 'Active'
          DataBinding.FieldName = 'IS_ACTIVE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          MinWidth = 60
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
      end
      object lvlCustomer: TcxGridLevel
        GridView = viewCustomer
      end
    end
    object grdVCustomer: TcxDBVerticalGrid [1]
      Left = 932
      Top = 171
      Width = 444
      Height = 267
      OptionsView.ScrollBars = ssVertical
      OptionsView.RowHeaderWidth = 146
      OptionsData.Appending = False
      OptionsData.DeletingConfirmation = False
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 9
      OnInitEdit = grdVCustomerInitEdit
      DataController.DataSource = MTDM.dtsCustomer
      Version = 1
      object grpGeneralInformation: TcxCategoryRow
        Properties.Caption = 'General Information'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object edtVCustomerName: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'NAME'
        ID = 1
        ParentID = 0
        Index = 0
        Version = 1
      end
      object lucVCustomerType: TcxDBEditorRow
        Properties.Caption = 'Customer Type'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'ID'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.DataBinding.FieldName = 'CUSTOMER_TYPE_ID'
        ID = 2
        ParentID = 0
        Index = 1
        Version = 1
      end
      object edtVComapnyNo: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'CO_NO'
        ID = 3
        ParentID = 0
        Index = 2
        Version = 1
      end
      object lucVStatus: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.KeyFieldNames = 'ID'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.DataBinding.FieldName = 'STATUS_ID'
        ID = 4
        ParentID = 0
        Index = 3
        Version = 1
      end
      object edtVTradingAs: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'TRADING_AS'
        ID = 5
        ParentID = 0
        Index = 4
        Version = 1
      end
      object edtVBillTo: TcxDBEditorRow
        Properties.Caption = 'Bill To'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'BILL_TO'
        ID = 6
        ParentID = 0
        Index = 5
        Version = 1
      end
      object cbxVActive: TcxDBEditorRow
        Properties.Caption = 'Active'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.Alignment = taLeftJustify
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.UseAlignmentWhenInplace = True
        Properties.EditProperties.ValueChecked = 1
        Properties.EditProperties.ValueUnchecked = 0
        Properties.DataBinding.FieldName = 'IS_ACTIVE'
        ID = 7
        ParentID = 0
        Index = 6
        Version = 1
      end
      object grpTaxInformation: TcxCategoryRow
        Properties.Caption = 'Tax Information'
        ID = 8
        ParentID = -1
        Index = 1
        Version = 1
      end
      object lucVYearEndmonth: TcxDBEditorRow
        Properties.Caption = 'Year End Month'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'ID'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.DataBinding.FieldName = 'YEAR_END_MONTH_ID'
        ID = 9
        ParentID = 8
        Index = 0
        Version = 1
      end
      object edtVTaxNo: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'TAX_NO'
        ID = 10
        ParentID = 8
        Index = 1
        Version = 1
      end
      object lucVTaxOffice: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'ID'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.DataBinding.FieldName = 'TAX_OFFICE_ID'
        ID = 11
        ParentID = 8
        Index = 2
        Version = 1
      end
      object lucVARMonth: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'ID'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.DataBinding.FieldName = 'AR_MONTH_ID'
        ID = 12
        ParentID = 8
        Index = 3
        Version = 1
      end
      object grpVATInformation: TcxCategoryRow
        Properties.Caption = 'VAT Information'
        ID = 13
        ParentID = -1
        Index = 2
        Version = 1
      end
      object edtVVATNo: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'VAT_NO'
        ID = 14
        ParentID = 13
        Index = 0
        Version = 1
      end
      object lucVVATOffice: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'ID'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.DataBinding.FieldName = 'VAT_OFFICE_ID'
        ID = 15
        ParentID = 13
        Index = 1
        Version = 1
      end
      object lucVVATMonth: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'ID'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.DataBinding.FieldName = 'VAT_MONTH_ID'
        ID = 16
        ParentID = 13
        Index = 2
        Version = 1
      end
      object lucVCountry: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'ID'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NAME'
          end
          item
            Width = 70
            FieldName = 'DIALING_CODE'
          end>
        Properties.DataBinding.FieldName = 'VAT_COUNTRY_ID'
        ID = 17
        ParentID = 13
        Index = 3
        Version = 1
      end
      object edtVCustomsCode: TcxDBEditorRow
        Properties.Caption = 'Customs Code'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'Text'
        ID = 18
        ParentID = 13
        Index = 4
        Version = 1
      end
      object grpSARS: TcxCategoryRow
        Properties.Caption = 'SARS'
        ID = 19
        ParentID = -1
        Index = 3
        Version = 1
      end
      object edtVPAYEUIF: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'PAYE_UIF_NO'
        ID = 20
        ParentID = 19
        Index = 0
        Version = 1
      end
      object edtVSDLNo: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'SDL_NO'
        ID = 21
        ParentID = 19
        Index = 1
        Version = 1
      end
      object edtVWCNo: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'WC_NO'
        ID = 22
        ParentID = 19
        Index = 2
        Version = 1
      end
      object lucARCompletionDate: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxDateEditProperties'
        Properties.EditProperties.DisplayFormat = 'dd/MM/yyyy'
        Properties.EditProperties.EditFormat = 'dd/MM/yyyy'
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.SaveTime = False
        Properties.EditProperties.ShowTime = False
        Properties.DataBinding.FieldName = 'AR_COMPLETION_DATE'
        ID = 23
        ParentID = 19
        Index = 3
        Version = 1
      end
      object edtVEFiling: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'EFILING'
        ID = 24
        ParentID = 19
        Index = 4
        Version = 1
      end
      object edtVEFUserName: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'EF_USER_NAME'
        ID = 25
        ParentID = 19
        Index = 5
        Version = 1
      end
      object edtVEFPassword: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'EF_PASSWORD'
        ID = 26
        ParentID = 19
        Index = 6
        Version = 1
      end
      object grpMiscellaneous: TcxCategoryRow
        Properties.Caption = 'Miscellaneous'
        ID = 27
        ParentID = -1
        Index = 4
        Version = 1
      end
      object edtVPastelAccCode: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'PASTEL_ACC_CODE'
        ID = 28
        ParentID = 27
        Index = 0
        Version = 1
      end
      object edtVVBTaxCode: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'VB_TAX_ACC_CODE'
        ID = 29
        ParentID = 27
        Index = 1
        Version = 1
      end
      object cbxVProvTaxPayer: TcxDBEditorRow
        Properties.Caption = 'Prov Tax Payer'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.Alignment = taLeftJustify
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.UseAlignmentWhenInplace = True
        Properties.EditProperties.ValueChecked = 1
        Properties.EditProperties.ValueUnchecked = 0
        Properties.DataBinding.FieldName = 'IS_PROV_TAX_PAYER'
        ID = 30
        ParentID = 27
        Index = 2
        Version = 1
      end
      object cbxVLivingWill: TcxDBEditorRow
        Properties.Caption = 'Living Will'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.Alignment = taLeftJustify
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.UseAlignmentWhenInplace = True
        Properties.EditProperties.ValueChecked = 1
        Properties.EditProperties.ValueUnchecked = 0
        Properties.DataBinding.FieldName = 'HAS_LIVING_WILL'
        ID = 31
        ParentID = 27
        Index = 3
        Version = 1
      end
      object cbxOrganDonor: TcxDBEditorRow
        Properties.Caption = 'Org Donor'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.Alignment = taLeftJustify
        Properties.EditProperties.ImmediatePost = True
        Properties.EditProperties.UseAlignmentWhenInplace = True
        Properties.EditProperties.ValueChecked = 1
        Properties.EditProperties.ValueUnchecked = 0
        Properties.DataBinding.FieldName = 'IS_ORGAN_DONOR'
        ID = 32
        ParentID = 27
        Index = 4
        Version = 1
      end
      object lucCreated: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxDateEditProperties'
        Properties.EditProperties.DisplayFormat = 'dd/MM/yyyy'
        Properties.EditProperties.EditFormat = 'dd/MM/yyyy'
        Properties.EditProperties.ReadOnly = True
        Properties.EditProperties.SaveTime = False
        Properties.EditProperties.ShowTime = False
        Properties.DataBinding.FieldName = 'DATE_CREATED'
        ID = 33
        ParentID = 27
        Index = 5
        Version = 1
      end
      object lucModified: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxDateEditProperties'
        Properties.EditProperties.DisplayFormat = 'dd/MM/yyyy'
        Properties.EditProperties.EditFormat = 'dd/MM/yyyy'
        Properties.EditProperties.ReadOnly = True
        Properties.EditProperties.SaveTime = False
        Properties.EditProperties.ShowTime = False
        Properties.DataBinding.FieldName = 'DATE_MODIFIED'
        ID = 34
        ParentID = 27
        Index = 6
        Version = 1
      end
    end
    object navCustomer: TcxDBNavigator [2]
      Left = 11
      Top = 11
      Width = 360
      Height = 40
      BorderStyle = nbsNone
      Buttons.OnButtonClick = navCustomerButtonsButtonClick
      Buttons.CustomButtons = <
        item
          Hint = 'Preview'
          ImageIndex = 13
        end
        item
          Hint = 'Print'
          ImageIndex = 14
        end
        item
          Hint = 'Export to Excel'
          ImageIndex = 15
        end
        item
          Hint = 'Export to PDF'
          ImageIndex = 16
        end>
      Buttons.Images = imgNav
      Buttons.First.Hint = 'Go to first record'
      Buttons.First.Visible = False
      Buttons.PriorPage.Hint = 'move back 10 records'
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Hint = 'Go to previous record'
      Buttons.Prior.Visible = False
      Buttons.Next.Hint = 'Go to next record'
      Buttons.Next.Visible = False
      Buttons.NextPage.Hint = 'Move forward 10 records'
      Buttons.NextPage.Visible = False
      Buttons.Last.Hint = 'Go to last record'
      Buttons.Last.Visible = False
      Buttons.Insert.Hint = 'Insert a new record'
      Buttons.Insert.ImageIndex = 6
      Buttons.Append.Hint = 'Add a neew record'
      Buttons.Delete.Hint = 'delete selected records'
      Buttons.Delete.ImageIndex = 7
      Buttons.Edit.Hint = 'Edit selected record'
      Buttons.Edit.ImageIndex = 11
      Buttons.Post.Hint = 'Save changes'
      Buttons.Post.ImageIndex = 8
      Buttons.Cancel.Hint = 'Cancel changes'
      Buttons.Cancel.ImageIndex = 9
      Buttons.Refresh.Hint = 'Refresh dataset'
      Buttons.Refresh.ImageIndex = 10
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Hint = 'Filter dataset'
      Buttons.Filter.ImageIndex = 12
      Buttons.Filter.Visible = False
      DataSource = MTDM.dtsCustomer
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object navVCustomer: TcxDBNavigator [3]
      Left = 932
      Top = 125
      Width = 216
      Height = 40
      BorderStyle = nbsNone
      Buttons.CustomButtons = <>
      Buttons.Images = imgNav
      Buttons.First.Hint = 'Go to first record'
      Buttons.First.Visible = False
      Buttons.PriorPage.Hint = 'move back 10 records'
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Hint = 'Go to previous record'
      Buttons.Prior.Visible = False
      Buttons.Next.Hint = 'Go to next record'
      Buttons.Next.Visible = False
      Buttons.NextPage.Hint = 'Move forward 10 records'
      Buttons.NextPage.Visible = False
      Buttons.Last.Hint = 'Go to last record'
      Buttons.Last.Visible = False
      Buttons.Insert.Hint = 'Insert a new record'
      Buttons.Insert.ImageIndex = 6
      Buttons.Append.Hint = 'Add a neew record'
      Buttons.Delete.Hint = 'delete selected records'
      Buttons.Delete.ImageIndex = 7
      Buttons.Edit.Hint = 'Edit selected record'
      Buttons.Edit.ImageIndex = 11
      Buttons.Post.Hint = 'Save changes'
      Buttons.Post.ImageIndex = 8
      Buttons.Cancel.Hint = 'Cancel changes'
      Buttons.Cancel.ImageIndex = 9
      Buttons.Refresh.Hint = 'Refresh dataset'
      Buttons.Refresh.ImageIndex = 10
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Hint = 'Filter dataset'
      Buttons.Filter.ImageIndex = 12
      Buttons.Filter.Visible = False
      DataSource = MTDM.dtsCustomer
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object grdContactDetailCo: TcxGrid [4]
      Left = 25
      Top = 481
      Width = 391
      Height = 170
      TabOrder = 10
      object viewContactDetailCo: TcxGridDBBandedTableView
        PopupMenu = popDBAction
        OnDblClick = viewContactDetailCoDblClick
        OnKeyDown = viewContactDetailCoKeyDown
        Navigator.Buttons.OnButtonClick = viewContactDetailNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = imgNav16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = 'Add a new contact detail'
        Navigator.Buttons.Insert.ImageIndex = 9
        Navigator.Buttons.Delete.Hint = 'Delete selected contact detail'
        Navigator.Buttons.Delete.ImageIndex = 10
        Navigator.Buttons.Edit.Hint = 'Edit selected contact detail'
        Navigator.Buttons.Edit.ImageIndex = 13
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Hint = 'Refresh contact details'
        Navigator.Buttons.Refresh.ImageIndex = 14
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewCustomerCustomDrawCell
        DataController.DataSource = MTDM.dtsContactDetailCo
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        EditForm.DefaultStretch = fsVertical
        EditForm.UseDefaultLayout = False
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No Contact Detail data to display>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Contact Details'
          end>
        object edtCDID: TcxGridDBBandedColumn
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
        object lucCDContactTypeID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTACT_TYPE_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ReadOnly = True
          LayoutItem = viewContactDetailCoLayoutItem1.Owner
          MinWidth = 150
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtCDCusotmerID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
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
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtCDContactPersonID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTACT_PERSON_ID'
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
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtCDValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VALUE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          LayoutItem = viewContactDetailCoLayoutItem2.Owner
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object viewContactDetailCoRootGroup: TcxGridInplaceEditFormGroup
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Template Card'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object viewContactDetailCoLayoutItem1: TcxGridInplaceEditFormLayoutItem
          Parent = viewContactDetailCoRootGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          SizeOptions.Width = 233
          Index = 0
        end
        object viewContactDetailCoLayoutItem2: TcxGridInplaceEditFormLayoutItem
          Parent = viewContactDetailCoRootGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          SizeOptions.Width = 368
          Index = 1
        end
      end
      object lvlContactDetailCo: TcxGridLevel
        GridView = viewContactDetailCo
      end
    end
    object memCDComment: TcxDBMemo [5]
      Left = 25
      Top = 657
      DataBinding.DataField = 'COMMENT'
      DataBinding.DataSource = MTDM.dtsContactDetailCo
      PopupMenu = popDBAction
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 11
      OnDblClick = viewContactDetailCoDblClick
      OnKeyDown = viewContactDetailCoKeyDown
      Height = 24
      Width = 391
    end
    object grdPhysicalAddress: TcxDBVerticalGrid [6]
      Left = 10000
      Top = 10000
      Width = 280
      Height = 200
      OptionsView.CellAutoHeight = True
      OptionsView.ScrollBars = ssNone
      OptionsView.RowHeaderWidth = 90
      OptionsBehavior.ImmediateEditor = False
      OptionsData.CancelOnExit = False
      OptionsData.Editing = False
      OptionsData.Appending = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      Navigator.Buttons.OnButtonClick = viewContactDetailNavigatorButtonsButtonClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Images = imgNav16
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Hint = 'Add new address information for selected customer'
      Navigator.Buttons.Insert.ImageIndex = 9
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Hint = 'Delete address information for selected customer'
      Navigator.Buttons.Delete.ImageIndex = 10
      Navigator.Buttons.Edit.Hint = 'Edit address information for selected customer'
      Navigator.Buttons.Edit.ImageIndex = 13
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Hint = 'Refresh address information for selected customer'
      Navigator.Buttons.Refresh.ImageIndex = 14
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      PopupMenu = popDBAction
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 12
      Visible = False
      OnDblClick = grdPhysicalAddressDblClick
      OnEnter = grdPhysicalAddressEnter
      OnKeyDown = viewContactDetailCoKeyDown
      DataController.DataSource = MTDM.dtsAddress
      Version = 1
      object edtPhysical1: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'PHYSICAL1'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object edtPhysical2: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'PHYSICAL2'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object edtPhysical3: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'PHYSICAL3'
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object edtPhysical4: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'PHYSICAL4'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object edtPhysicaPostalCode: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'PHYSICAL_CODE'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
    end
    object grdPostalAddress: TcxDBVerticalGrid [7]
      Tag = 1
      Left = 10000
      Top = 10000
      Width = 280
      Height = 200
      OptionsView.CellAutoHeight = True
      OptionsView.ScrollBars = ssNone
      OptionsView.RowHeaderWidth = 88
      OptionsBehavior.ImmediateEditor = False
      OptionsData.CancelOnExit = False
      OptionsData.Editing = False
      OptionsData.Appending = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      Navigator.Buttons.CustomButtons = <>
      PopupMenu = popDBAction
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 13
      Visible = False
      OnDblClick = grdPhysicalAddressDblClick
      OnEnter = grdPhysicalAddressEnter
      OnKeyDown = viewContactDetailCoKeyDown
      DataController.DataSource = MTDM.dtsAddress
      Version = 1
      object edtPostal1: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'POSTAL1'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object edtPostal2: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'POSTAL2'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object edtPostal3: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'POSTAL3'
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object edtPostal4: TcxDBEditorRow
        Options.Moving = False
        Properties.Caption = 'Postal 3'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'POSTAL4'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object EdtPostalCode: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'POSTAL_CODE'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
    end
    object grdBillingAddress: TcxDBVerticalGrid [8]
      Tag = 2
      Left = 10000
      Top = 10000
      Width = 280
      Height = 200
      OptionsView.CellAutoHeight = True
      OptionsView.ScrollBars = ssNone
      OptionsView.RowHeaderWidth = 89
      OptionsBehavior.ImmediateEditor = False
      OptionsData.CancelOnExit = False
      OptionsData.Editing = False
      OptionsData.Appending = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      Navigator.Buttons.CustomButtons = <>
      PopupMenu = popDBAction
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 14
      Visible = False
      OnDblClick = grdPhysicalAddressDblClick
      OnEnter = grdPhysicalAddressEnter
      OnKeyDown = viewContactDetailCoKeyDown
      DataController.DataSource = MTDM.dtsAddress
      Version = 1
      object edtBilling1: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'BILLING1'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object edtBilling2: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'BILLING2'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object edtBilling3: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'BILLING3'
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object edtBilling4: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'BILLING4'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object edtBillingPostalCode: TcxDBEditorRow
        Options.Moving = False
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.ReadOnly = True
        Properties.DataBinding.FieldName = 'BILLING_CODE'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
    end
    object grdContactPerson: TcxGrid [9]
      Left = 10000
      Top = 10000
      Width = 1250
      Height = 245
      TabOrder = 15
      Visible = False
      OnEnter = grdContactPersonEnter
      object viewContactPerson: TcxGridDBBandedTableView
        PopupMenu = popDBAction
        OnDblClick = viewContactDetailCoDblClick
        OnKeyDown = viewContactDetailCoKeyDown
        Navigator.Buttons.OnButtonClick = viewContactDetailNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = imgNav16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = 'Add a new  contact person'
        Navigator.Buttons.Insert.ImageIndex = 9
        Navigator.Buttons.Delete.Hint = 'Delete selected contact person'
        Navigator.Buttons.Delete.ImageIndex = 10
        Navigator.Buttons.Edit.Hint = 'Edit selected contact person'
        Navigator.Buttons.Edit.ImageIndex = 13
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Hint = 'Refresh contact persons'
        Navigator.Buttons.Refresh.ImageIndex = 14
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewCustomerCustomDrawCell
        OnFocusedRecordChanged = viewContactPersonFocusedRecordChanged
        DataController.DataSource = MTDM.dtsContactPerson
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Contact Persons'
          end>
        object edtCPID: TcxGridDBBandedColumn
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
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtCCustomerID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,###,##0'
          Properties.EditFormat = '#,###,##0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cbxCPPrimaryContact: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IS_PRIMARY_CONTACT'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ImmediatePost = True
          Properties.ReadOnly = True
          Properties.UseAlignmentWhenInplace = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          Options.Moving = False
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object lucCPSalutation: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SALUTATION_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ReadOnly = True
          Options.Moving = False
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtCPFirstName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIRST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtCPLastName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LAST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtCPInitials: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INITIALS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Moving = False
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtCPOtherName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OTHER_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Moving = False
          Width = 180
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object lucCPDOB: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DOB'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Options.Moving = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object edtCPIDNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID_NUMBER'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Moving = False
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object edtCPPassportNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PASSPORT_NUMBER'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Moving = False
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object lucCPJobFunction: TcxGridDBBandedColumn
          DataBinding.FieldName = 'JOB_FUNCTION_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ReadOnly = True
          Options.Moving = False
          Width = 210
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
      end
      object lvlContactPerson: TcxGridLevel
        GridView = viewContactPerson
      end
    end
    object grdCPContactDetail: TcxGrid [10]
      Left = 10000
      Top = 10000
      Width = 400
      Height = 120
      TabOrder = 16
      Visible = False
      OnEnter = grdCPContactDetailEnter
      object viewCPContactDetail: TcxGridDBBandedTableView
        PopupMenu = popDBAction
        OnDblClick = viewContactDetailCoDblClick
        OnKeyDown = viewContactDetailCoKeyDown
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = imgNav16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = 'Add a new contact detail'
        Navigator.Buttons.Insert.ImageIndex = 9
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Delete.Hint = 'Delete selected contact detail'
        Navigator.Buttons.Delete.ImageIndex = 10
        Navigator.Buttons.Edit.Hint = 'Edit selected contact detail'
        Navigator.Buttons.Edit.ImageIndex = 13
        Navigator.Buttons.Post.Hint = 'Save changes'
        Navigator.Buttons.Post.ImageIndex = 11
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Hint = 'Cancle changes'
        Navigator.Buttons.Cancel.ImageIndex = 12
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Hint = 'Refresh contact details'
        Navigator.Buttons.Refresh.ImageIndex = 14
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewCustomerCustomDrawCell
        DataController.DataSource = MTDM.dtsContactDetailPerson
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No Contact Detail data to display>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Contact Details'
          end>
        object edtCPContactDetailID: TcxGridDBBandedColumn
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
        object edtCPContactDetailContactPersonID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTACT_PERSON_ID'
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
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtCPContactDetailCustomerID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
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
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object lucCPContactDetailTypeID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTACT_TYPE_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ReadOnly = True
          MinWidth = 130
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtwCPContactDetailValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VALUE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object lvlCPContactDetail: TcxGridLevel
        GridView = viewCPContactDetail
      end
    end
    object memCPcontactDetailComment: TcxDBMemo [11]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'COMMENT'
      DataBinding.DataSource = MTDM.dtsContactDetailPerson
      PopupMenu = popDBAction
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      OnDblClick = viewContactDetailCoDblClick
      OnEnter = grdCPContactDetailEnter
      OnKeyDown = viewContactDetailCoKeyDown
      Height = 119
      Width = 400
    end
    object grdBankingDetail: TcxGrid [12]
      Left = 10000
      Top = 10000
      Width = 1656
      Height = 245
      TabOrder = 18
      Visible = False
      object viewBankingDetail: TcxGridDBBandedTableView
        PopupMenu = popDBAction
        OnDblClick = viewContactDetailCoDblClick
        OnKeyDown = viewContactDetailCoKeyDown
        Navigator.Buttons.OnButtonClick = viewContactDetailNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = imgNav16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = 'Add a new Banking Detail'
        Navigator.Buttons.Insert.ImageIndex = 9
        Navigator.Buttons.Delete.Hint = 'Delete selected Banking Detail'
        Navigator.Buttons.Delete.ImageIndex = 10
        Navigator.Buttons.Edit.Hint = 'Edit selected Banking Detail'
        Navigator.Buttons.Edit.ImageIndex = 13
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Hint = 'Refresh Banking Details'
        Navigator.Buttons.Refresh.ImageIndex = 14
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewCustomerCustomDrawCell
        DataController.DataSource = MTDM.dtsBankingDetail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No Banking Detail data to display>'
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Banking Details'
          end>
        object edtBankDID: TcxGridDBBandedColumn
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
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.ShowCaption = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtBankDCustomerID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,###,##0'
          Properties.EditFormat = '#,###,##0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 60
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.ShowCaption = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object lucBankDBankID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BANK_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.MaxLength = 50
          Properties.ReadOnly = True
          Width = 210
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object lucBankDAccountTypeID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCOUNT_TYPE_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ReadOnly = True
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtBankDBranchCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BRANCH_CODE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtBankDAccountNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCOUNT_NO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtBankDFirstName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIRST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtBankDLastName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LAST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
      end
      object lvlBankingDetail: TcxGridLevel
        GridView = viewBankingDetail
      end
    end
    object grdDirector: TcxGrid [13]
      Left = 10000
      Top = 10000
      Width = 1656
      Height = 245
      TabOrder = 19
      Visible = False
      object viewDirector: TcxGridDBBandedTableView
        PopupMenu = popDBAction
        OnDblClick = viewContactDetailCoDblClick
        OnKeyDown = viewContactDetailCoKeyDown
        Navigator.Buttons.OnButtonClick = viewContactDetailNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = imgNav16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = 'Add a new director'
        Navigator.Buttons.Insert.ImageIndex = 9
        Navigator.Buttons.Delete.Hint = 'Delete selected director'
        Navigator.Buttons.Delete.ImageIndex = 10
        Navigator.Buttons.Edit.Hint = 'Edit selected director'
        Navigator.Buttons.Edit.ImageIndex = 13
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Hint = 'Refresh director listing'
        Navigator.Buttons.Refresh.ImageIndex = 14
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewCustomerCustomDrawCell
        DataController.DataSource = MTDM.dtsDirector
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No Director data to display>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Director Listing'
          end>
        object edtDrID: TcxGridDBBandedColumn
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
        object edtDrCustomerID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
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
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object lucDrSalutation: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SALUTATION_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          MinWidth = 75
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtDrFirstName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIRST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 150
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtDrLastName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LAST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 150
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtDrMiddleName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MIDDLE_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 150
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtDrTaxNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TAX_NO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 130
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object edtDrMobilePhone: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MOBILE_PHONE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 130
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object edtDrEmailAddress: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EMAIL_ADDRESS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
      end
      object lvlDirector: TcxGridLevel
        GridView = viewDirector
      end
    end
    object grdBeneficiary: TcxGrid [14]
      Left = 10000
      Top = 10000
      Width = 1656
      Height = 245
      TabOrder = 20
      Visible = False
      object viewBeneficiary: TcxGridDBBandedTableView
        PopupMenu = popDBAction
        OnDblClick = viewContactDetailCoDblClick
        OnKeyDown = viewContactDetailCoKeyDown
        Navigator.Buttons.OnButtonClick = viewContactDetailNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = imgNav16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = 'Add a new beneficiary'
        Navigator.Buttons.Insert.ImageIndex = 9
        Navigator.Buttons.Delete.Hint = 'Delete selected beneficiary'
        Navigator.Buttons.Delete.ImageIndex = 10
        Navigator.Buttons.Edit.Hint = 'Edit selected beneficiary'
        Navigator.Buttons.Edit.ImageIndex = 13
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Hint = 'Refresh beneficiary listing'
        Navigator.Buttons.Refresh.ImageIndex = 14
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewCustomerCustomDrawCell
        DataController.DataSource = MTDM.dtsBeneficiary
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No Beneficiary data to display>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Beneficiary Listing'
          end>
        object edtBFID: TcxGridDBBandedColumn
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
        object edtBFCustomerID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
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
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object lucBFSalutationID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SALUTATION_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ReadOnly = True
          MinWidth = 75
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object edtBFFirstName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIRST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 150
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtBFLaastName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LAST_NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 150
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtBFMobileNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MOBILE_PHONE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 130
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object edtBFEmailAddress: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EMAIL_ADDRESS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
      end
      object lvlBeneficiary: TcxGridLevel
        GridView = viewBeneficiary
      end
    end
    object grdVehicle: TcxGrid [15]
      Left = 10000
      Top = 10000
      Width = 1656
      Height = 245
      TabOrder = 21
      Visible = False
      object viewVehicle: TcxGridDBBandedTableView
        PopupMenu = popDBAction
        OnDblClick = viewContactDetailCoDblClick
        OnKeyDown = viewContactDetailCoKeyDown
        Navigator.Buttons.OnButtonClick = viewContactDetailNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = imgNav16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Hint = 'Add a new benficiary'
        Navigator.Buttons.Insert.ImageIndex = 9
        Navigator.Buttons.Delete.Hint = 'Delete selected benficiary'
        Navigator.Buttons.Delete.ImageIndex = 10
        Navigator.Buttons.Edit.Hint = 'Edit selected benficiary'
        Navigator.Buttons.Edit.ImageIndex = 13
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Hint = 'Refresh benficiary listing'
        Navigator.Buttons.Refresh.ImageIndex = 14
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = viewCustomerCustomDrawCell
        DataController.DataSource = MTDM.dtsVehicle
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No Vehicle data to display>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Vehicle Listing'
          end>
        object edtVID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,###,##0'
          Properties.EditFormat = '#,###,##0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 74
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object edtVCustomerID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,###,##0'
          Properties.EditFormat = '#,###,##0'
          Properties.ReadOnly = True
          Visible = False
          MinWidth = 74
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object edtVManYear: TcxGridDBBandedColumn
          DataBinding.FieldName = 'THE_YEAR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '####'
          Properties.EditFormat = '####'
          Properties.ReadOnly = True
          MinWidth = 50
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object lucVMakeID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VEHICLE_MAKE_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ReadOnly = True
          MinWidth = 150
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object edtVModel: TcxGridDBBandedColumn
          AlternateCaption = 'text'
          DataBinding.FieldName = 'VEHICLE_MODEL'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 250
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 250
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object edtVRegNo: TcxGridDBBandedColumn
          AlternateCaption = 'text'
          DataBinding.FieldName = 'REG_NO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          MinWidth = 120
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object lucVRenewalDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RENEWAL_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ImmediatePost = True
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          MinWidth = 90
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cbxVMaintenancePlan: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MAINTENANCE_PLAN'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ImmediatePost = True
          Properties.ReadOnly = True
          Properties.UseAlignmentWhenInplace = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Maintenance plan'
          MinWidth = 50
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object edtVComment: TcxGridDBBandedColumn
          DataBinding.FieldName = 'COMMENT'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Editing = False
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
      end
      object lvlVehicle: TcxGridLevel
        GridView = viewVehicle
      end
    end
    object lblLegend: TcxLabel [16]
      Left = 11
      Top = 704
      Caption = 
        'INS = Add a new record;  ENTER = Edit selected record;  DEL = De' +
        'lete selected record'
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = styLegend
      Transparent = True
    end
    object cbxOpenAfterExport: TcxCheckBox [17]
      Left = 688
      Top = 88
      Caption = 'Open after export'
      ParentShowHint = False
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.OnEditValueChanged = cbxOpenAfterExportPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Transparent = True
    end
    object cbxPersistSelection: TcxCheckBox [18]
      Left = 383
      Top = 21
      Caption = 'Persist Selection'
      ParentShowHint = False
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      Properties.OnEditValueChanged = cbxPersistSelectionPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Transparent = True
    end
    object cbxGroupedReport: TcxCheckBox [19]
      Left = 570
      Top = 88
      Caption = 'Grouped Report'
      ParentShowHint = False
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Transparent = True
    end
    object lucPrintWhat: TcxComboBox [20]
      Left = 295
      Top = 88
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'All records'
        'Selected records'
        'Filtered records')
      Properties.OnEditValueChanged = lucPrintWhatPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Text = 'All records'
      Width = 130
    end
    object lucReportType: TcxComboBox [21]
      Left = 96
      Top = 88
      ParentShowHint = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Customer List'
        'Customer Details')
      Properties.OnEditValueChanged = lucPrintWhatPropertiesEditValueChanged
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Text = 'Customer List'
      Width = 130
    end
    object cbxPrintContactDetails: TcxCheckBox [22]
      Left = 431
      Top = 88
      Caption = 'Print contact details'
      ParentShowHint = False
      Properties.ImmediatePost = True
      Properties.UseAlignmentWhenInplace = True
      ShowHint = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Transparent = True
    end
    inherited layMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    object grpToolbar: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grpCustomerGrid: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object grpDetailGrid: TdxLayoutGroup
      Parent = layMainGroup_Root
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = grpDetailGridTabChanged
      Index = 3
    end
    object grpVerticalGrid: TdxLayoutGroup
      Parent = grpCustomerGrid
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object litCustomerGrid: TdxLayoutItem
      Parent = grpCustomerGrid
      Control = grdCustomer
      ControlOptions.OriginalHeight = 313
      ControlOptions.OriginalWidth = 915
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litVcustomerGrid: TdxLayoutItem
      Parent = grpVerticalGrid
      AlignHorz = ahLeft
      Control = grdVCustomer
      ControlOptions.OriginalHeight = 267
      ControlOptions.OriginalWidth = 444
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litVNavigator: TdxLayoutItem
      Parent = grpVerticalGrid
      AlignHorz = ahLeft
      Control = navVCustomer
      ControlOptions.OriginalHeight = 40
      ControlOptions.OriginalWidth = 216
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litNavigator: TdxLayoutItem
      Parent = grpToolbar
      Control = navCustomer
      ControlOptions.OriginalHeight = 40
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCDContactDetail: TdxLayoutItem
      Parent = grpCDComment
      Control = grdContactDetailCo
      ControlOptions.OriginalHeight = 170
      ControlOptions.OriginalWidth = 391
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litContactPerson: TdxLayoutItem
      Parent = grpContactPerson
      AlignVert = avClient
      CaptionOptions.Text = 'new Item'
      CaptionOptions.Visible = False
      Control = grdContactPerson
      ControlOptions.OriginalHeight = 286
      ControlOptions.OriginalWidth = 1250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litBankingDetail: TdxLayoutItem
      Parent = grpDetailGrid
      AlignVert = avClient
      CaptionOptions.Text = 'Banking Details'
      CaptionOptions.Visible = False
      Control = grdBankingDetail
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 900
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object litDirector: TdxLayoutItem
      Parent = grpDetailGrid
      AlignVert = avClient
      CaptionOptions.Text = 'Directors'
      CaptionOptions.Visible = False
      Control = grdDirector
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 1161
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litBeneficiary: TdxLayoutItem
      Parent = grpDetailGrid
      AlignVert = avClient
      CaptionOptions.Text = 'Beneficiaries'
      CaptionOptions.Visible = False
      Control = grdBeneficiary
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object litVehicle: TdxLayoutItem
      Parent = grpDetailGrid
      AlignVert = avClient
      CaptionOptions.Text = 'Vehicle Listing'
      CaptionOptions.Visible = False
      Control = grdVehicle
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 1236
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object litPhysicalAddress: TdxLayoutItem
      Parent = grpAddress
      Control = grdPhysicalAddress
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 280
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litPostalAddress: TdxLayoutItem
      Parent = grpAddress
      Control = grdPostalAddress
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 280
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litBillingAddress: TdxLayoutItem
      Parent = grpAddress
      Control = grdBillingAddress
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 280
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litlitCDComment: TdxLayoutItem
      Parent = grpCDComment
      AlignVert = avClient
      Control = memCDComment
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 391
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpContactDetails: TdxLayoutGroup
      Parent = grpDetailGrid
      CaptionOptions.Text = 'Company Contact Details'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object grpCDComment: TdxLayoutGroup
      Parent = grpContactDetails
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grpContactPerson: TdxLayoutGroup
      Tag = 2
      Parent = grpDetailGrid
      CaptionOptions.Text = 'Contact Persons'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object grpCPContactDetail: TdxLayoutGroup
      Parent = grpContactPerson
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object litCPContactDetailGrid: TdxLayoutItem
      Parent = grpCPContactDetail
      CaptionOptions.Text = 'Newe Item'
      CaptionOptions.Visible = False
      Control = grdCPContactDetail
      ControlOptions.OriginalHeight = 120
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litCPContactDetailComment: TdxLayoutItem
      Parent = grpCPContactDetail
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = memCPcontactDetailComment
      ControlOptions.OriginalHeight = 130
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litLegend: TdxLayoutItem
      Parent = layMainGroup_Root
      CaptionOptions.Visible = False
      Control = lblLegend
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 480
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object grpAddress: TdxLayoutGroup
      Tag = 1
      Parent = grpDetailGrid
      CaptionOptions.Text = 'Address Information'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object litOpenAfterExport: TdxLayoutItem
      Parent = grpReportOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxOpenAfterExport
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 123
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object litPrintToolbar: TdxLayoutItem
      Parent = grpToolbar
      AlignVert = avCenter
      CaptionOptions.Visible = False
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 3
      ControlOptions.OriginalWidth = 385
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litPersistSelection: TdxLayoutItem
      Parent = grpToolbar
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxPersistSelection
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object litReportType: TdxLayoutItem
      Parent = grpReportOptions
      CaptionOptions.Text = 'Report Type'
      Control = lucReportType
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litWhatToPrint: TdxLayoutItem
      Parent = grpReportOptions
      CaptionOptions.Text = 'Print what'
      Control = lucPrintWhat
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object litGroupBy: TdxLayoutItem
      Parent = grpReportOptions
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxGroupedReport
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grpReportOptions: TdxLayoutGroup
      Parent = layMainGroup_Root
      CaptionOptions.Text = 'Report Options'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object litPrintContactDetails: TdxLayoutItem
      Parent = grpReportOptions
      Visible = False
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbxPrintContactDetails
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 133
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object grdCustomerReport: TcxGrid [1]
    Left = 1406
    Top = 67
    Width = 915
    Height = 313
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object viewCustomerReport: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.ApplyInputDelay = 600
      FindPanel.ShowCloseButton = False
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = viewCustomerCustomDrawCell
      DataController.DataSource = ReportDM.dtsCustomer
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.MultiSelect = True
      OptionsView.NoDataToDisplayInfoText = '<No Customer data to display>'
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Customer Listing'
        end>
      object viewCustomerReportID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object viewCustomerReportCUSTOMER_TYPE_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_TYPE_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object viewCustomerReportYEAR_END_MONTH_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'YEAR_END_MONTH_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object viewCustomerReportTAX_OFFICE_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TAX_OFFICE_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object viewCustomerReportVAT_MONTH_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT_MONTH_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object viewCustomerReportVAT_COUNTRY_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT_COUNTRY_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object viewCustomerReportVAT_OFFICE_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT_OFFICE_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object viewCustomerReportAR_MONTH_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR_MONTH_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object viewCustomerReportSTATUS_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUS_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object viewCustomerReportNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAME'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object viewCustomerReportFIRST_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FIRST_NAME'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object viewCustomerReportLAST_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LAST_NAME'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object viewCustomerReportINITIALS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INITIALS'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object viewCustomerReportTRADING_AS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADING_AS'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object viewCustomerReportBILL_TO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BILL_TO'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object viewCustomerReportCO_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CO_NO'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object viewCustomerReportTAX_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TAX_NO'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object viewCustomerReportVAT_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT_NO'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object viewCustomerReportVAT_CUSTOMS_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT_CUSTOMS_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object viewCustomerReportPAYE_UIF_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PAYE_UIF_NO'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object viewCustomerReportSDL_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SDL_NO'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object viewCustomerReportWC_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WC_NO'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object viewCustomerReportAR_COMPLETION_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR_COMPLETION_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object viewCustomerReportSARS_AUTHORIZATION_SHEET: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SARS_AUTHORIZATION_SHEET'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object viewCustomerReportPASTEL_ACC_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PASTEL_ACC_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object viewCustomerReportVB_TAX_ACC_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VB_TAX_ACC_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object viewCustomerReportIS_PROV_TAX_PAYER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IS_PROV_TAX_PAYER'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object viewCustomerReportHAS_LIVING_WILL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HAS_LIVING_WILL'
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object viewCustomerReportIS_ORGAN_DONOR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IS_ORGAN_DONOR'
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object viewCustomerReportDATE_CREATED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DATE_CREATED'
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object viewCustomerReportDATE_MODIFIED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DATE_MODIFIED'
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object viewCustomerReportIS_ACTIVE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IS_ACTIVE'
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object viewCustomerReportEFILING: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EFILING'
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object viewCustomerReportEF_USER_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EF_USER_NAME'
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object viewCustomerReportEF_PASSWORD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EF_PASSWORD'
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object viewCustomerReportCUSTOMER_GROUP_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_GROUP_ID'
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = viewCustomerReport
    end
  end
  object grdCustomerListing: TcxGrid [2]
    Left = 818
    Top = 461
    Width = 711
    Height = 326
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object viewCustomerListing: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = ReportDM.dtsCustomerListing
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Bands = <
        item
        end>
      object edtCLID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object edtCLCustomerTypeID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_TYPE_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object edtCLYearEndMonthID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'YEAR_END_MONTH_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object edtCLTaxOfficeID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TAX_OFFICE_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object edtCLARMonthID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR_MONTH_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object edtCLVATMonthID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT_MONTH_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object edtCLVATCountryID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT_COUNTRY_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object edtCLVATOfficeID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT_OFFICE_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object edtCLStatusID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUS_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object edtCLCustomerType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_TYPE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object edtCLName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAME'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object edtCLTradingAs: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADING_AS'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object edtCLCoNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CO_NO'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object edtCLTaxNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TAX_NO'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object edtCLVATNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT_NO'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cbxCLIsActive: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IS_ACTIVE_STR'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object edtCLStatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER_STATUS'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
    end
    object lvlCustomerListing: TcxGridLevel
      GridView = viewCustomerListing
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
  object repScreenTip: TdxScreenTipRepository
    AssignedFonts = [stbHeader, stbDescription, stbFooter]
    DescriptionFont.Charset = ANSI_CHARSET
    DescriptionFont.Color = 5000268
    DescriptionFont.Height = -11
    DescriptionFont.Name = 'Verdana'
    DescriptionFont.Style = []
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = 5000268
    FooterFont.Height = -12
    FooterFont.Name = 'Verdana'
    FooterFont.Style = [fsBold]
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = 5000268
    HeaderFont.Height = -12
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    Left = 270
    Top = 125
    PixelsPerInch = 96
    object tipExit: TdxScreenTip
      Header.Text = 'Exit'
      Description.Text = 'Exit master table manager'
    end
    object tipCloseScreen: TdxScreenTip
      Header.Text = 'Close'
      Description.Text = 'Close Bank Account Type screen'#13#10
      Width = 250
    end
    object tipLaunchMasterTableManager: TdxScreenTip
      Header.Text = 'Master Tables'
      Description.Text = 'Launch Master Table manager'
    end
    object tipPersistSelection: TdxScreenTip
      Header.Text = 'Persistent Selection'
      Description.Text = 'Maintain selection even when changing focus to other records'
    end
    object tipOpenAfterExport: TdxScreenTip
      Header.Text = 'Open After Export'
      Description.Text = 'Open the document after it has been exported'
    end
    object tipGroupedReport: TdxScreenTip
      Header.Text = 'Grouped Report'
      Description.Text = 'Print customer listing grouped by Customer Type'
    end
    object tipRepoortType: TdxScreenTip
      Header.Text = 'Repoort Type'
      Description.PlainText = False
      Description.Text = 
        '{\rtf1\ansi\ansicpg1252\deff0\nouicompat{\fonttbl{\f0\fnil\fchar' +
        'set0 Verdana;}}'#13#10'{\colortbl ;\red0\green0\blue0;}'#13#10'{\*\generator' +
        ' Riched20 10.0.18362}\viewkind4\uc1 '#13#10'\pard\cf1\b\f0\fs16\lang10' +
        '33 Customer List:\b0  Print a simple customer list with minimal ' +
        'detail\par'#13#10'\par'#13#10'\b Customer Details:\b0  Print full cusomter l' +
        'isting with all details. This produces one customer per page and' +
        ' will produce a large amount of pages when sent to your printer.' +
        '\par'#13#10'}'#13#10
    end
    object tipPrintWhat: TdxScreenTip
      Header.Text = 'What to Print'
      Description.PlainText = False
      Description.Text = 
        '{\rtf1\ansi\ansicpg1252\deff0\nouicompat{\fonttbl{\f0\fnil\fchar' +
        'set0 Verdana;}}'#13#10'{\colortbl ;\red0\green128\blue0;\red0\green0\b' +
        'lue0;\red0\green108\blue217;\red128\green0\blue0;}'#13#10'{\*\generato' +
        'r Riched20 10.0.18362}\viewkind4\uc1 '#13#10'\pard\cf1\b\f0\fs16\lang1' +
        '033 Selected Records:\cf2\b0  Print only the selected records. T' +
        'his applies even if the customer list is filtered.\par'#13#10'\par'#13#10'\c' +
        'f3\b Filtered Records:\cf2\b0  Print all records visible in the ' +
        'current filter. This option ignores any selected records.\par'#13#10'\' +
        'par'#13#10'\cf4\b All Records:\cf2\b0  All records in the customer lis' +
        'ting are printed. This option ignores any selected and/or filter' +
        'ed records.\par'#13#10'}'#13#10
    end
    object tipPrintContactDetails: TdxScreenTip
      Header.Text = 'Print Contact Details'
      Description.Text = 'Print company contact details on customer listing report'
    end
  end
  object styHintController: TcxHintStyleController
    Global = False
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
        ScreenTip = tipPersistSelection
        Control = cbxPersistSelection
      end
      item
        ScreenTip = tipGroupedReport
        Control = cbxGroupedReport
      end
      item
        ScreenTip = tipOpenAfterExport
        Control = cbxOpenAfterExport
      end
      item
        ScreenTip = tipRepoortType
        Control = lucReportType
      end
      item
        ScreenTip = tipPrintWhat
        Control = lucPrintWhat
      end
      item
        ScreenTip = tipPrintContactDetails
        Control = cbxPrintContactDetails
      end>
    HintStyle.ScreenTipActionLinks = <>
    HintShortPause = 0
    HintPause = 0
    HintHidePause = 3000
    Left = 360
    Top = 124
  end
  object imgNav: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 4259981
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000000000000000000
          0000000000000000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000005000000050000000200000001000000000000
          0001000000010000000200000005000000050000000200000001000000000000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000060000000C00000012000000120000000900000002000000020000
          0002000000060000000C00000012000000120000000900000002000000020000
          0004000000040000000400000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000050000
          000A000000140E0704365C2F1AAD9C5530FF0000001500000007000000060000
          000A000000140E0704365C2F1AAD9C5530FF0000001400000005000000060000
          000E000000120000000E00000007000000020000000000000000000000000000
          0000000000000000000000000001000000010000000400000008000000100704
          02284E2816999A5733F9C28E60FF9C5630FF0000001E0000000F000000110704
          02284E2816999A5733F9C38F60FF9D5630FF0000001A000000070000000D8154
          38BFAE6C44FF7D4C31BF0000000E000000030000000100000000000000000000
          0000000000010000000100000003000000070000000D0201011B3E20127D8F4E
          2DEDBD865BFFDBB480FFDDB783FFA76C4BFF00000028020101213E20127D8F4E
          2DEDBE875BFFDCB581FFE0B985FF9E5730FF0000001C0000000700000012B77B
          54FFE4BF8CFFB06E47FF00000013000000050000000100000000000000000000
          000100000002000000050000000B000000142C180D5F834828DDB87E54FFD9B1
          81FFDDB882FFD7AC75FFD6B280FFC09F8DFF2C180D70834828DEB87E54FFDAB2
          82FFDFB983FFDBAF77FFE0BA86FFA05932FF0000001B0000000700000012BA7F
          58FFE5C291FFB2724AFF00000013000000050000000100000000000000010000
          000400000008000000101E110A46754226C5B3774EFFD9B183FFE2BF8DFFDCB2
          7DFFD6AB75FFCEA570FFC1996DFFA56A49FFB3774EFFD9B183FFE3C08EFFDFB5
          7FFFDDB179FFDCB077FFE1BB88FFA25B34FF0000001A0000000700000011BD84
          5EFFE7C595FFB4754EFF00000013000000050000000100000003000000070000
          000D1009062C653C23A9B2744CFFD6AC82FFE6C599FFE0BB88FFDAB37DFFD4AD
          79FFC79F6CFFB0794DFFB2744CFFD6AC82FFE7C69AFFE3BD8AFFE0B881FFDFB6
          7FFFDDB57CFFDDB37AFFE2BE8CFFA45E36FF000000190000000600000010BF89
          62FFE9C89AFFB67851FF0000001200000006000000050000000A0805031D5937
          2291AA7048F8D1A77EFFE9CCA2FFE5C596FFDFBA88FFDAB684FFD0AB7AFFB986
          5AFFB1754CFFD1A77EFFEACDA3FFE7C797FFE3BE8BFFE3BD89FFE2BB86FFE1B9
          83FFE0B781FFDEB57EFFE3C090FFA66139FF00000018000000060000000FC28E
          67FFEACC9EFFB77C54FF000000120000000B02010111452D1D71A36C46EBCFA3
          7DFFEBD0AAFFE9CDA2FFE5C394FFE0BF8FFFD8B688FFC3986CFFB57A52FFCFA3
          7DFFEBD0AAFFEACEA3FFE7C595FFE6C493FFE5C291FFE4C08EFFE3BF8BFFE2BD
          88FFE1BA84FFE0B781FFE5C495FFA8653DFF00000017000000060000000DC492
          6CFFECCFA3FFB97F58FF0000001335241955986946D9CC9D76FFE9CEAAFFEED4
          AEFFEACB9FFFE9C99BFFE4C598FFD2AD81FFBB855CFFCC9D76FFE9CEAAFFEED4
          AEFFEACB9FFFEACA9CFFE9C99BFFE9C999FFE7C697FFE7C494FFE5C290FFE4BF
          8DFFE2BD89FFE1BA85FFE7C699FFAB6A40FF00000015000000060000000CC696
          71FFF0D6ADFFBC825DFF00000013BF8961FFE8D2BAFFF4E6CCFFEFD5ADFFEDD0
          A4FFEED3A7FFEED5A9FFE9D1A8FFBF8961FFE8D2BAFFF4E6CCFFEFD5ADFFEDD0
          A4FFEFD5A9FFF0D9AFFFF1DAB0FFF1DBB1FFF0D9AEFFEED5A8FFEDD0A3FFE8C8
          98FFE4C18FFFE2BD89FFE8C99DFFAE6F45FF00000014000000050000000BC99A
          75FFF3DEB7FFBD8661FF00000010251B133B906848C5D0A887FFF1E1CBFFF8EB
          CEFFF3E0B9FFF2DCB4FFEFDAB1FFE1C69EFFC69970FFD0A887FFF1E1CAFFF9EE
          D0FFF5E5BFFFF5E2BBFFF5E2BAFFF4E0B8FFF3DEB5FFF2DCB3FFF0DAAFFFEFD7
          ACFFEDD3A6FFE8C897FFE9CCA2FFB1744AFF000000130000000500000009CA9E
          78FFF5E2BCFFC08B65FF0000000D00000007000000093D2D1F5BA77A58DFDAB9
          9AFFF7EDD6FFF9EBCEFFF3DEB9FFF0DCB5FFEAD5AFFFD9B992FFC4946EFFDABA
          99FFF8EFD5FFFAEED0FFF7E5C0FFF6E4BEFFF5E2BBFFF4E0B9FFF2DEB5FFF1DB
          B1FFEFD8ACFFEED5A9FFF0D9B3FFB3784FFF000000120000000500000008CCA1
          7BFFF6E5C0FFC38E69FF0000000900000003000000030000000605030210563F
          2D7BBA8C67F2E3CAAEFFFAF2DCFFF8E8C9FFF1DEB8FFEDD9B2FFE8D1AAFFD2B0
          87FFC69770FFE4CBADFFFBF4DBFFFAECCDFFF6E6C0FFF6E4BDFFF4E1BAFFF3DF
          B6FFF1DCB2FFEFD9AEFFF4E1BBFFB77D53FF000000110000000400000007CEA3
          7EFFF8E8C4FFC5936DFF00000008000000020000000000000001000000030000
          00070E0A071C73553D9DCAA17BFDEDDCC4FFFBF1D9FFF6E4C2FFF1DCB4FFEBD6
          AEFFE4CCA2FFCDA67DFFCCA27DFFEEDDC2FFFCF3D9FFF8EAC7FFF6E5BEFFF4E2
          BAFFF3DFB6FFF1DCB2FFF4E3BFFFBA8259FF000000100000000400000006CFA6
          80FFFAEAC7FFC79670FF00000007000000020000000000000000000000010000
          0002000000040000000720181235916C4EC2D4B18FFFF4E7D0FFF9EED1FFF1DE
          B9FFEDD8AEFFE9D1A7FFE1CBA7FFC69B78FFD5B28FFFF5E8CEFFFBF2D4FFF6E6
          C1FFF4E2BAFFF3DFB6FFF5E6C3FFBD875FFF0000000F0000000400000004D0A7
          82FFFEFAE8FFC99A74FF00000005000000010000000000000000000000000000
          0000000000010000000200000005000000093F30235BAB8260DFDDBFA1FFF8EE
          D6FFF5E7C8FFEED7AFFFEFDEBCFFD7BEABFF3F302363AA8260E0DDC0A0FFF9F0
          D5FFF8EDCDFFF4E1BAFFF7E8C6FFBF8B63FF0000000E00000004000000029B7D
          61BFD0A984FF9A7D61BF00000003000000010000000000000000000000000000
          000000000000000000000000000100000002000000050504030F5944327ABE94
          70F2E5CDB1FFF9EFD6FFF5E6C6FFCAA27FFF00000012050403125944327ABE94
          70F2E6CFB0FFFAF2D7FFF8ECCCFFC29168FF0000000D00000003000000010000
          0002000000020000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000060E0B
          081C755A429DCDA681FCECD9BEFFC5956DFF0000000C00000006000000060E0B
          081C755A429DCDA681FCECDBBDFFC5956DFF0000000B00000003000000000000
          0000000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          000300000007211A1333906F53BBC79972FF0000000700000003000000010000
          000300000007211A1333906F53BBC79972FF0000000700000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000020000000400000005000000060000000300000001000000000000
          0001000000020000000400000005000000060000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000000000000000000
          0000000000000000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000002000000050000
          0005000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000002000000060000000C000000120000
          0012000000090000000200000001000000000000000000000000000000000000
          0000000000000000000100000002000000040000000400000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000100000002000000050000000A000000140E0704365C2F1AAD9C55
          30FF000000140000000500000001000000000000000000000000000000000000
          00000000000000000002000000060000000E000000120000000E000000070000
          0002000000000000000000000000000000000000000000000000000000010000
          0001000000040000000800000010070402284E2816999A5733F9C38F60FF9D56
          30FF0000001A0000000700000001000000000000000000000000000000000000
          000000000001000000030000000D815438BFAE6C44FF7D4C31BF0000000E0000
          0003000000010000000000000000000000000000000100000001000000030000
          00070000000D0201011B3E20127D8F4E2DEDBE875BFFDCB581FFE0B985FF9E57
          30FF0000001C0000000700000001000000000000000000000000000000000000
          0000000000000000000400000012B77B54FFE4BF8CFFB06E47FF000000130000
          00050000000100000000000000000000000100000002000000050000000B0000
          00142C180D5F834828DDB87E54FFDAB282FFDFB983FFDBAF77FFE0BA86FFA059
          32FF0000001B0000000700000001000000000000000000000000000000000000
          0000000000000000000500000012BA7F58FFE5C291FFB2724AFF000000130000
          00050000000100000000000000010000000400000008000000101E110A467542
          26C5B3774EFFD9B183FFE3C08EFFDFB57FFFDDB179FFDCB077FFE1BB88FFA25B
          34FF0000001A0000000700000001000000000000000000000000000000000000
          0000000000000000000400000011BD845EFFE7C595FFB4754EFF000000130000
          00050000000100000003000000070000000D1009062C653C23A9B2744CFFD6AC
          82FFE7C69AFFE3BD8AFFE0B881FFDFB67FFFDDB57CFFDDB37AFFE2BE8CFFA45E
          36FF000000190000000600000001000000000000000000000000000000000000
          0000000000000000000400000010BF8962FFE9C89AFFB67851FF000000120000
          0006000000050000000A0805031D59372291AA7048F8D1A77EFFEACDA3FFE7C7
          97FFE3BE8BFFE3BD89FFE2BB86FFE1B983FFE0B781FFDEB57EFFE3C090FFA661
          39FF000000180000000600000001000000000000000000000000000000000000
          000000000000000000040000000FC28E67FFEACC9EFFB87C54FF000000120000
          000B02010111452D1D71A36C46EBCFA37DFFEBD0AAFFEACEA3FFE7C595FFE6C4
          93FFE5C291FFE4C08EFFE3BF8BFFE2BD88FFE1BA84FFE0B781FFE5C495FFA865
          3DFF000000170000000600000001000000000000000000000000000000000000
          000000000000000000030000000DC4926CFFECCFA3FFBA8058FF000000133424
          1955986946D9CC9D76FFE9CEAAFFEED4AEFFEACB9FFFEACA9CFFE9C99BFFE9C9
          99FFE7C697FFE7C494FFE5C290FFE4BF8DFFE2BD89FFE1BA85FFE7C699FFAB6A
          40FF000000150000000600000001000000000000000000000000000000000000
          000000000000000000030000000CC69671FFF0D6ADFFBD835DFF00000013BD87
          60FFE8D2BAFFF4E6CCFFEFD5ADFFEDD0A4FFEFD5A9FFF0D9AFFFF1DAB0FFF1DB
          B1FFF0D9AEFFEED5A8FFEDD0A3FFE8C898FFE4C18FFFE2BD89FFE8C99DFFAE6F
          45FF000000140000000500000001000000000000000000000000000000000000
          000000000000000000030000000BC99A75FFF3DEB7FFBE8761FF00000010241B
          133B906848C5D0A887FFF1E1CAFFF9EED0FFF5E5BFFFF5E2BBFFF5E2BAFFF4E0
          B8FFF3DEB5FFF2DCB3FFF0DAAFFFEFD7ACFFEDD3A6FFE8C897FFE9CCA2FFB174
          4AFF000000130000000500000001000000000000000000000000000000000000
          0000000000000000000200000009CA9E78FFF5E2BCFFC08B65FF0000000D0000
          0007000000093D2D1F5BA77A57DFDABA99FFF8EFD5FFFAEED0FFF7E5C0FFF6E4
          BEFFF5E2BBFFF4E0B9FFF2DEB5FFF1DBB1FFEFD8ACFFEED5A9FFF0D9B3FFB378
          4FFF000000120000000500000000000000000000000000000000000000000000
          0000000000000000000200000008CCA17BFFF6E5C0FFC38E69FF000000090000
          0003000000030000000605030210563F2D7BBB8C67F2E4CBADFFFBF4DBFFFAEC
          CDFFF6E6C0FFF6E4BDFFF4E1BAFFF3DFB6FFF1DCB2FFEFD9AEFFF4E1BBFFB77D
          53FF000000110000000400000000000000000000000000000000000000000000
          0000000000000000000200000007CEA37EFFF8E8C4FFC5936DFF000000080000
          0002000000000000000100000003000000070E0A071C73553D9DCAA17BFDEEDD
          C2FFFCF3D9FFF8EAC7FFF6E5BEFFF4E2BAFFF3DFB6FFF1DCB2FFF4E3BFFFBA82
          59FF000000100000000400000000000000000000000000000000000000000000
          0000000000000000000100000006CFA680FFFAEAC7FFC79670FF000000070000
          000200000000000000000000000100000002000000040000000720181235916C
          4EC2D5B28FFFF5E8CEFFFBF2D4FFF6E6C1FFF4E2BAFFF3DFB6FFF5E6C3FFBD87
          5FFF0000000F0000000400000000000000000000000000000000000000000000
          0000000000000000000100000004D0A782FFFEFAE8FFC99A74FF000000050000
          0001000000000000000000000000000000000000000100000002000000050000
          00093F30235BAB8260DFDDC0A0FFF9F0D5FFF8EDCDFFF4E1BAFFF7E8C6FFBF8B
          63FF0000000E0000000400000000000000000000000000000000000000000000
          00000000000000000001000000029B7D61BFD0A984FF9A7D61BF000000030000
          0001000000000000000000000000000000000000000000000000000000010000
          0002000000050504030F5944327ABE9470F2E6CFB0FFFAF2D7FFF8ECCCFFC291
          68FF0000000D0000000300000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000200000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000003000000060E0B081C755A429DCDA681FCECDBBDFFC595
          6DFF0000000B0000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000010000000300000007211A1333906F53BBC799
          72FF000000070000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000004000000050000
          0006000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000002000000050000000500000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000002000000060000000C000000120000001200000009000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          00050000000A000000140E0704365C2F1AAD9C5530FF00000014000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000004000000080000
          0010070402284E2816999A5733F9C38F60FF9D5630FF0000001A000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000010000000100000003000000070000000D0201011B3E20
          127D8F4E2DEDBE875BFFDCB581FFE0B985FF9E5730FF0000001C000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000002000000050000000B000000142C180D5F834828DDB87E
          54FFDAB282FFDFB983FFDBAF77FFE0BA86FFA05932FF0000001B000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000400000008000000101E110A46754226C5B3774EFFD9B183FFE3C0
          8EFFDFB57FFFDDB179FFDCB077FFE1BB88FFA25B34FF0000001A000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          00070000000D1009062C653C23A9B2744CFFD6AC82FFE7C69AFFE3BD8AFFE0B8
          81FFDFB67FFFDDB57CFFDDB37AFFE2BE8CFFA45E36FF00000019000000060000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000002000000050000000A0805
          031D59372291AA7048F8D1A77EFFEACDA3FFE7C797FFE3BE8BFFE3BD89FFE2BB
          86FFE1B983FFE0B781FFDEB57EFFE3C090FFA66139FF00000018000000060000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000702010111452D1D71A36C
          46EBCFA37DFFEBD0AAFFEACEA3FFE7C595FFE6C493FFE5C291FFE4C08EFFE3BF
          8BFFE2BD88FFE1BA84FFE0B781FFE5C495FFA8653DFF00000017000000060000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000534241952986946D9CC9D76FFE9CE
          AAFFEED4AEFFEACB9FFFEACA9CFFE9C99BFFE9C999FFE7C697FFE7C494FFE5C2
          90FFE4BF8DFFE2BD89FFE1BA85FFE7C699FFAB6A40FF00000015000000060000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000006BF8961FFE8D2BAFFF4E6CCFFEFD5
          ADFFEDD0A4FFEFD5A9FFF0D9AFFFF1DAB0FFF1DBB1FFF0D9AEFFEED5A8FFEDD0
          A3FFE8C898FFE4C18FFFE2BD89FFE8C99DFFAE6F45FF00000014000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000004251B1439906848C5D0A887FFF1E1
          CAFFF9EED0FFF5E5BFFFF5E2BBFFF5E2BAFFF4E0B8FFF3DEB5FFF2DCB3FFF0DA
          AFFFEFD7ACFFEDD3A6FFE8C897FFE9CCA2FFB1744AFF00000013000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000004000000093D2D1F5BA77A
          57DFDABA99FFF8EFD5FFFAEED0FFF7E5C0FFF6E4BEFFF5E2BBFFF4E0B9FFF2DE
          B5FFF1DBB1FFEFD8ACFFEED5A9FFF0D9B3FFB3784FFF00000012000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000060503
          0210563F2D7BBB8C67F2E4CBADFFFBF4DBFFFAECCDFFF6E6C0FFF6E4BDFFF4E1
          BAFFF3DFB6FFF1DCB2FFEFD9AEFFF4E1BBFFB77D53FF00000011000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0003000000070E0A071C73553D9DCAA17BFDEEDDC2FFFCF3D9FFF8EAC7FFF6E5
          BEFFF4E2BAFFF3DFB6FFF1DCB2FFF4E3BFFFBA8259FF00000010000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000002000000040000000720181235916C4EC2D5B28FFFF5E8CEFFFBF2
          D4FFF6E6C1FFF4E2BAFFF3DFB6FFF5E6C3FFBD875FFF0000000F000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000010000000200000005000000093F30235BAB8260DFDDC0
          A0FFF9F0D5FFF8EDCDFFF4E1BAFFF7E8C6FFBF8B63FF0000000E000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000002000000050504030F5944
          327ABE9470F2E6CFB0FFFAF2D7FFF8ECCCFFC29168FF0000000D000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          00060E0B081C755A429DCDA681FCECDBBDFFC5956DFF0000000B000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00010000000300000007211A1333906F53BBC79972FF00000007000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000050000000600000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0004000000040000000200000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000070000
          000D0000000E0000000A00000005000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000040000000EA55E
          37FF5E321BA91008053300000011000000090000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000500000013A662
          38FFC9996DFF9F5C36F9502A1896070402240000000F00000008000000040000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000500000014AA65
          3BFFE7C99CFFE1BC8AFFC18D61FF93522FEC3E22137A020101190000000D0000
          0007000000030000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000400000013AB6A
          3FFFE9CEA3FFDFB67FFFE1BD89FFDFB88AFFBB8359FF864929DC2C180E5F0000
          00140000000C0000000500000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000400000011AF6E
          44FFEBD1ACFFE1BA83FFE1B983FFE1BA85FFE4C190FFDAB486FFB3784FFF7542
          25C51E110948000000120000000A000000050000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000400000010B273
          48FFEED7B3FFE3BE8AFFE2BD89FFE2BC88FFE2BC87FFE2BC8AFFE6C394FFD5AA
          7EFFAF7048FF633820AB0F090530000000100000000900000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000040000000FB478
          4DFFF1DABBFFE5C290FFE5C28FFFE4C08EFFE4C08DFFE3BE8BFFE3BD89FFE4BF
          8CFFE7C596FFCD9F73FFA5663FF954301D95080402230000000E000000080000
          0003000000010000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000EB77B
          53FFF3E0C4FFE8C696FFE7C695FFE7C595FFE6C493FFE5C291FFE4C08EFFE3BF
          8BFFE2BD88FFE4C08DFFE4C294FFC7966AFF9A5E39EC40261677020101180000
          000B000000040000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000DBA82
          59FFF5E4CAFFEACB9DFFEACA9CFFE9C99BFFE9C999FFE7C697FFE7C494FFE5C2
          90FFE4BF8DFFE2BD89FFE1BB86FFE4BF8DFFDFBB8EFFBF895EFF8C5533DB2F1C
          1159000000090000000200000001000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000CBD86
          5DFFF7E8D1FFEDD0A3FFECCFA2FFECCEA2FFEBCDA0FFEACB9DFFE9C999FFE8C6
          96FFE6C392FFE4C08EFFE2BD89FFE1B984FFE2BC8AFFE8CCA0FFDCB890FFAC6C
          42FF0000000C0000000300000001000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000BC18D
          64FFF8EBD7FFF1D8AFFFF2DBB2FFF3DCB3FFF2DBB2FFF1D9AFFFEFD5AAFFECD1
          A4FFEACA9BFFE6C493FFE5C291FFEACEA6FFE5C9A6FFC39169FF855535C82115
          0D40000000080000000200000001000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020000000AC491
          6AFFFBF2DBFFF6E4BEFFF6E4BEFFF5E2BCFFF5E0BAFFF4DFB7FFF2DCB3FFF0D9
          AFFFEFD7ACFFF1DDB6FFEFDBBCFFD0A581FF9D6A46E139261962000000100000
          0008000000030000000100000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000200000009C697
          6FFFFCF5DEFFF8E9C4FFF8E8C3FFF7E7C2FFF7E5C0FFF5E3BDFFF4E0B9FFF5E4
          BFFFF6EBCDFFDEBF9EFFB4805AF35238257F0403021600000009000000050000
          0002000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000200000008C99B
          75FFFDF7E0FFFAEDC9FFFAECC8FFF9EBC6FFF9E9C5FFF8E9C6FFFAEFD3FFECD7
          BAFFC69972FD6F4F369F0D090620000000090000000500000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000200000007CBA0
          79FFFEF8E1FFFBEFCDFFFCEFCCFFFBEFCDFFFCF3D7FFF4E7CCFFD4AF8BFF916B
          4CC5221911390000000900000005000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000100000006CDA4
          7EFFFEFAE1FFFDF2D1FFFEF5D9FFFBF2D8FFDFC2A1FFAC8360DF3E2F225B0000
          0009000000050000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000100000005D0A8
          83FFFFFAE2FFFDF8DFFFE9D4B5FFC29A76F2594533790504030E000000050000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000100000004D2AC
          87FFF1E2C6FFD2B08AFC785F479A0E0B09190000000500000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000100000002D4B0
          8BFF95785BB9221B152F00000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000020000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000400000004000000020000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000070000000D0000000E0000000A0000
          0005000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          00000000000000000001000000040000000EA55E37FF5E321BA9100805330000
          0011000000090000000400000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000040000
          0004000000040000000200000001000000000000000000000000000000000000
          000000000000000000000000000500000013A66238FFC9996DFF9F5C36F9502A
          1896070402240000000F00000008000000040000000100000001000000000000
          00000000000000000000000000000000000000000002000000060000000E0000
          00120000000E0000000700000002000000000000000000000000000000000000
          000000000000000000000000000500000014AA653BFFE7C99CFFE1BC8AFFC18D
          61FF93522FEC3E22137A020101190000000D0000000700000003000000010000
          000100000000000000000000000000000001000000030000000D815438BFAE6C
          44FF7D4C31BF0000000E00000003000000010000000000000000000000000000
          000000000000000000000000000400000013AB6A3FFFE9CEA3FFDFB67FFFE1BD
          89FFDFB88AFFBB8359FF864929DC2C180E5F000000140000000C000000050000
          0002000000010000000100000000000000000000000400000012B77B54FFE4BF
          8CFFB06E47FF0000001300000005000000010000000000000000000000000000
          000000000000000000000000000400000011AF6E44FFEBD1ACFFE1BA83FFE1B9
          83FFE1BA85FFE4C190FFDAB486FFB3784FFF754225C51E110948000000120000
          000A000000050000000200000001000000000000000500000012BA7F58FFE5C2
          91FFB2724AFF0000001300000005000000010000000000000000000000000000
          000000000000000000000000000400000010B27348FFEED7B3FFE3BE8AFFE2BD
          89FFE2BC88FFE2BC87FFE2BC8AFFE6C394FFD5AA7EFFAF7048FF633820AB0F09
          0530000000100000000900000004000000020000000500000011BD845EFFE7C5
          95FFB4754EFF0000001300000005000000000000000000000000000000000000
          00000000000000000000000000040000000FB4784DFFF1DABBFFE5C290FFE5C2
          8FFFE4C08EFFE4C08DFFE3BE8BFFE3BD89FFE4BF8CFFE7C596FFCD9F73FFA566
          3FF954301D95080402230000000E000000080000000700000011BE8862FFE9C8
          9AFFB67851FF0000001100000004000000000000000000000000000000000000
          00000000000000000000000000030000000EB77B53FFF3E0C4FFE8C696FFE7C6
          95FFE7C595FFE6C493FFE5C291FFE4C08EFFE3BF8BFFE2BD88FFE4C08DFFE4C2
          94FFC7966AFF9A5E39EC40261677020101180000000F00000013C18D67FFEACC
          9EFFB87C54FF0000001000000004000000000000000000000000000000000000
          00000000000000000000000000030000000DBA8259FFF5E4CAFFECD0A4FFEFD5
          AAFFEFD6ABFFF0D8ACFFEED5AAFFEDD1A5FFEACD9EFFE6C494FFE2BE8AFFE1BB
          86FFE4BF8DFFDFBB8EFFBF895EFF8C5533DB2F1C115B00000016C2916BFFEBCE
          A2FFBA8058FF0000000E00000004000000000000000000000000000000000000
          00000000000000000000000000030000000CBD865DFFFAEFD4FFF4E1B8FFF3E0
          B7FFF3DFB6FFF2DDB4FFF1DCB2FFF0DAAFFFEFD7ACFFEED5A9FFECD1A3FFE6C5
          94FFE1BA85FFE2BC8AFFE8CCA0FFDCB890FFAC6C42FF00000017C49470FFEFD5
          ACFFBD835DFF0000000D00000003000000000000000000000000000000000000
          00000000000000000000000000030000000BC18D64FFFBF2D8FFF6E5BEFFF6E4
          BDFFF5E3BCFFF5E2BAFFF4E0B7FFF3DEB5FFF1DCB2FFF0D9AFFFEFD6ABFFEED5
          A9FFEFD9B3FFE6CAA7FFC39169FF855535C821150D4300000013C79974FFF2DD
          B6FFBE8761FF0000000C00000003000000000000000000000000000000000000
          00000000000000000000000000020000000AC4916AFFFCF4DBFFF8E8C3FFF7E8
          C2FFF7E6C1FFF6E5BFFFF6E4BDFFF4E2BBFFF3E0B7FFF2DEB4FFF4E3BDFFF3E2
          C3FFD2AA86FF9D6A46E139261962000000100000000A0000000CC99D78FFF5E2
          BCFFC08B65FF0000000B00000003000000000000000000000000000000000000
          000000000000000000000000000200000009C6976FFFFDF6DDFFF9ECC7FFF9EC
          C7FFF9EAC6FFF9E9C4FFF7E8C2FFF6E5BFFFF7E8C4FFF8EDCFFFDFC19FFFB480
          5AF35238257F0403021600000009000000050000000400000009CCA17BFFF6E5
          C0FFC38E69FF0000000900000002000000000000000000000000000000000000
          000000000000000000000000000200000008C99B75FFFDF7DEFFFBEFCCFFFBEE
          CBFFFAEDCAFFFAECC8FFF9ECC9FFFBF1D4FFECD9BAFFC69A72FD6F4F369F0D09
          0620000000090000000500000002000000010000000200000007CEA37EFFF8E8
          C4FFC5936DFF0000000800000002000000000000000000000000000000000000
          000000000000000000000000000200000007CBA079FFFEF8E0FFFCF1CFFFFCF1
          CEFFFBF1CFFFFCF4D7FFF5E8CCFFD4AF8BFF916B4CC522191139000000090000
          0005000000020000000100000000000000000000000100000006CFA680FFFAEA
          C7FFC79670FF0000000700000002000000000000000000000000000000000000
          000000000000000000000000000100000006CDA47EFFFEFAE0FFFDF3D2FFFEF6
          D9FFFBF2D7FFDFC2A1FFAC8360DF3E2F225B0000000900000005000000020000
          0001000000000000000000000000000000000000000100000004D0A782FFFEFA
          E8FFC99A74FF0000000500000001000000000000000000000000000000000000
          000000000000000000000000000100000005D0A883FFFFFAE1FFFDF9DEFFE9D4
          B4FFC29A76F2594533790504030E000000050000000200000001000000000000
          00000000000000000000000000000000000000000001000000029B7D61BFD0A9
          84FF9A7D61BF0000000300000001000000000000000000000000000000000000
          000000000000000000000000000100000004D2AC87FFF1E2C6FFD2B08AFC785F
          479A0E0B09190000000500000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0002000000020000000100000000000000000000000000000000000000000000
          000000000000000000000000000100000002D4B08BFF95785BB9221B152F0000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000000000000000000000000000000000
          0001000000010000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000040000000400000002000000010000000100000000000000010000
          0002000000040000000400000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00070000000D0000000E0000000A000000050000000200000002000000020000
          00070000000D0000000E0000000A000000050000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000000000000040000
          000EA55E37FF5E321BA910080533000000110000000900000005000000060000
          000FA55E37FF5E321BA910080533000000110000000900000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000040000000400000002000000050000
          0013A66238FFC9996DFF9F5C36F9502A1896070402240000000F0000000D0000
          0017A56238FFC8986DFF9F5C36F9502A1896070402240000000F000000080000
          0004000000010000000100000000000000000000000000000000000000000000
          000000000002000000060000000E000000120000000E00000007000000050000
          0014AA653BFFE7C99CFFE1BC8AFFC18D61FF93522FEC3E22137A0201011E0000
          0020B17855FFE4C79AFFE0BB89FFC08C61FF93522FEC3E22137A020101190000
          000D000000070000000300000001000000010000000000000000000000000000
          0001000000030000000D7F5236BFAA6841FF7B4A2EBF0000000E000000040000
          0013AB6A3FFFE9CEA3FFDFB67FFFE1BD89FFDFB88AFFBB8359FF854A2ADD2C18
          0E6BC4A793FFDEC49BFFDBB27DFFDFBC88FFDEB789FFBA8259FF864929DC2C18
          0E5F000000140000000C00000005000000020000000100000001000000000000
          00000000000400000012B47851FFE4BF8CFFAC6A44FF00000013000000040000
          0011AF6E44FFEBD1ACFFE1BA83FFE1B983FFE1BA85FFE4C190FFDAB486FFB378
          4FFFA66B4AFFC7A785FFD1AD7AFFD8B27EFFDDB682FFE2BF8FFFD9B385FFB378
          4FFF754225C51E110948000000120000000A0000000500000002000000010000
          00000000000500000012B77C56FFE5C291FFAE6E47FF00000013000000040000
          0010B27348FFEED7B3FFE3BE8AFFE2BD89FFE2BC88FFE2BC87FFE2BC8AFFE6C3
          94FFD5AA7EFFAF7048FFAE774EFFC7A374FFD4B07FFFDAB582FFDEB988FFE4C1
          93FFD4A97EFFAF7048FF633820AB0F0905300000001000000009000000040000
          00020000000500000011BA815CFFE7C595FFB0714BFF00000013000000040000
          000FB4784DFFF1DABBFFE5C290FFE5C28FFFE4C08EFFE4C08DFFE3BE8BFFE3BD
          89FFE4BF8CFFE7C596FFCD9F73FFAB6A43FFB38158FFCDAA7DFFD7B483FFDCB7
          85FFE1BD8AFFE6C495FFCC9E73FFA5663FF954301D95080402230000000E0000
          00080000000700000011BB8560FFE9C89AFFB2744EFF00000011000000030000
          000EB77B53FFF3E0C4FFE8C696FFE7C695FFE7C595FFE6C493FFE5C291FFE4C0
          8EFFE3BF8BFFE2BD88FFE4C08DFFE4C294FFC7966AFFAB6D44FFBA8E64FFD0AF
          81FFD9B785FFDEBA86FFE3BF8CFFE4C294FFC7966AFF9A5E39EC402616770201
          01180000000F00000013BE8A66FFEACC9EFFB47851FF00000010000000030000
          000DBA8259FFF5E4CAFFEACB9DFFEACA9CFFE9C99BFFE9C999FFE7C697FFE7C4
          94FFE5C290FFE4BF8DFFE2BD89FFE1BB86FFE4BF8DFFDFBB8EFFBF895EFFAD71
          48FFC49B6FFFDCB888FFE0BC88FFE0BA85FFE4BF8DFFDFBB8EFFBF895EFF8C55
          33DB2F1C115B00000016BF8E69FFEBCEA2FFB67C55FF0000000E000000030000
          000CBD865DFFF7E8D1FFEFD4A8FFF0D7ADFFF0D8AEFFF0D8AEFFEFD6ABFFEDD2
          A5FFEBCEA0FFE8C797FFE4C18FFFE2BD89FFE1B984FFE2BC8AFFE8CCA0FFDCB8
          90FFAC6C42FFDCBD8EFFE1BE8DFFE1BC88FFE1B984FFE2BC8AFFE8CCA0FFDCB8
          90FFAC6C42FF00000017C2926EFFEDD1A8FFB97F59FF0000000D000000030000
          000BC18D64FFFAF0D8FFF5E1BAFFF4E0B9FFF4E0B8FFF3DEB5FFF2DCB2FFF0D9
          AFFFEFD7ACFFEED4A8FFECD0A2FFE8C898FFEACEA6FFE5C9A6FFC39169FFB883
          5AFFD2B389FFE5C99DFFE8CA9CFFE6C595FFEACEA6FFE5C9A6FFC39169FF8555
          35C821150D4300000013C59772FFF0D9B0FFBA835DFF0000000C000000020000
          000AC4916AFFFBF3DBFFF7E6C0FFF6E5C0FFF6E4BEFFF5E2BCFFF4E1B9FFF3DE
          B6FFF1DBB2FFF0D9AEFFF2DFB9FFF2E0C1FFD1A884FFBA845BFFCEAD87FFE2CB
          A5FFE8D0A7FFEBD2A6FFEFDAB4FFF0DDBEFFD1A783FF9D6A46E1392619620000
          00100000000A0000000CC89B76FFF4DFB9FFBC8761FF0000000B000000020000
          0009C6976FFFFCF6DDFFF9EAC6FFF9EAC5FFF8E8C3FFF8E7C2FFF6E5BFFFF5E2
          BBFFF5E5C1FFF7ECCEFFDEC09FFFBF8A63FFCEAB85FFE6D2AFFFEBD8B2FFEED9
          B1FFF2DFBBFFF5E8CBFFDDBF9DFFB4805AF35238257F04030216000000090000
          00050000000400000009CA9F7AFFF5E3BEFFBF8A65FF00000009000000020000
          0008C99B75FFFDF7DFFFFAEECBFFFAEDCAFFFAECC8FFFAEAC6FFF9EBC8FFFAF0
          D4FFECD8BAFFC89B74FFCCA781FFE7D5B2FFEFE0BCFFF3E1BDFFF5E5C1FFF8EC
          D2FFEBD7BAFFC59972FD6F4F369F0D0906200000000900000005000000020000
          00010000000200000007CCA27DFFF7E7C2FFC18F69FF00000008000000020000
          0007CBA079FFFEF8E0FFFCF0CEFFFCF0CEFFFBF0CEFFFCF4D7FFF4E8CCFFD4AF
          8BFFC59A76FFE6D8C2FFF2E4C3FFF6E7C5FFF8EAC8FFFAF0D5FFF4E6CDFFD3AF
          8BFF916B4CC52219113900000009000000050000000200000001000000000000
          00000000000100000006CEA57FFFF9E9C6FFC3926CFF00000007000000010000
          0006CDA47EFFFEFAE0FFFDF3D2FFFEF6D9FFFBF2D8FFDFC2A1FFAC8360DF3E2F
          225FDECBB8FFF9F4E0FFFAEDCDFFFCF3D7FFFBF1DAFFDFC2A2FFAC8360DF3E2F
          225B000000090000000500000002000000010000000000000000000000000000
          00000000000100000004CFA681FFFEFAE9FFC59670FF00000005000000010000
          0005D0A883FFFFFAE1FFFDF9DEFFE9D4B4FFC29A76F2594533790504030F0000
          000AD6B596FFFDF9E5FFFDF8E1FFE8D4B6FFC29A76F2594533790504030E0000
          0005000000020000000100000000000000000000000000000000000000000000
          000000000001000000029A7C61BFD0A883FF9A7C61BF00000003000000010000
          0004D2AC87FFF1E2C6FFD2B08AFC785F479A0E0B091900000005000000040000
          0005D2AC87FFF0E3CAFFD2B08BFC785F479A0E0B091900000005000000030000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000020000000200000001000000010000
          0002D4B08BFF95785BB9221B152F000000040000000200000001000000010000
          0002D4B08BFF95785BB9221B152F000000040000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000000000000000000000000
          0001000000020000000200000002000000010000000000000000000000000000
          0001000000020000000200000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020233217D056A46FF056A46FF056A46FF056A46FF056A46FF056A
          46FF056A46FF056A46FF0233217D000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF0A6F4AFF0A6F4AFF0A6F4AFF0A6F4AFF0A6F4AFF0A6F
          4AFF0A6F4AFF0A6F4AFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF0C724DFF0C724DFF0C724DFF0C724DFF0C724DFF0C72
          4DFF0C724DFF0C724DFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF0E744FFF0E744FFF0E744FFF0E744FFF0E744FFF0E74
          4FFF0E744FFF0E744FFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF117751FF117751FF117751FF117751FF117751FF1177
          51FF117751FF117751FF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF147A54FF147A54FF147A54FF147A54FF147A54FF147A
          54FF147A54FF147A54FF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF187D57FF187D57FF187D57FF187D57FF187D57FF187D
          57FF187D57FF187D57FF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010503472FAF1B815AFF1B815AFF1B815AFF1B815AFF1B815AFF1B81
          5AFF1B815AFF1B815AFF03472FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002010504482FAF1F855DFF1F855DFF1F855DFF1F855DFF1F855DFF1F85
          5DFF1F855DFF1F855DFF04482FAF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000022E1E7103442DA703452DAA03452DAA03452DAA03452DAA03452DAA0345
          2DAA03462EAC055E3EE4238860FF238860FF238860FF238860FF238860FF2388
          60FF238860FF238860FF055E3EE403462EAC03452DAA03452DAA03452DAA0345
          2DAA03452DAA03452DAA03452DAA0232217B0000000000000000000000000000
          00000F6F4BF5268C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C
          64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C
          64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF278C
          64FF278C64FF278C64FF278C64FF10744FFF0001010400000000000000000000
          0000106F4CF52A8F67FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B90
          67FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B90
          67FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B9067FF2B8F67FF2B90
          67FF2B8F67FF2B9067FF2B8F67FF117550FF0000000000000000000000000000
          000011704DF52E936BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F94
          6BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F94
          6BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F946BFF2F94
          6BFF2F946BFF2F946BFF2F946BFF127651FF0000000000000000000000000000
          000012714EF532976EFF33986FFF33986FFF33986FFF33986FFF33986FFF3398
          6FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF3398
          6FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF33986FFF3398
          6FFF33986FFF33986FFF33986FFF137752FF0000000000000000000000000000
          000014734FF5379B72FF389C73FF389C73FF389C73FF389C73FF389C73FF389C
          73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C
          73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C73FF389C
          73FF389C73FF389C73FF389C73FF157953FF0000000000000000000000000000
          0000157450F53A9F75FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA0
          76FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA0
          76FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA076FF3BA0
          76FF3BA076FF3BA076FF3BA076FF167A54FF0000000000000000000000000000
          0000167552F53EA279FF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A4
          7AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A4
          7AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A47AFF40A4
          7AFF40A47AFF40A47AFF40A47AFF187B56FF0000000000000000000000000000
          0000187B56F54AB88BFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE
          8FFF4DBE8FFF4BB98CFF46AC82FF44A77DFF44A77DFF44A77DFF44A77DFF44A7
          7DFF44A77DFF46AC82FF4BB88BFF4DBD8FFF4DBE8FFF4DBE8FFF4DBE8FFF4DBE
          8FFF4DBE8FFF4DBE8FFF4BBA8DFF1B825AFF0000000000000000000000000000
          0000022E1E7103442DA703452DAA03452DAA03452DAA03452DAA03452DAA0345
          2DAA03452DAA045D3DE349AF85FF48AB82FF48AB82FF48AB82FF48AB82FF48AB
          82FF48AB82FF49AF85FF06603FE403462EAC03452DAA03452DAA03452DAA0345
          2DAA03452DAA03452DAA03452DAA0232217B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA4BAF85FF4BAF85FF4BAF85FF4BAF85FF4BAF85FF4BAF
          85FF4BAF85FF4BAF85FF044930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA4FB288FF4FB288FF4FB288FF4FB288FF4FB288FF4FB2
          88FF4FB288FF4FB288FF044930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA52B58BFF52B58BFF52B58BFF52B58BFF52B58BFF52B5
          8BFF52B58BFF52B58BFF054930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA56B88EFF56B88EFF56B88EFF56B88EFF56B88EFF56B8
          8EFF56B88EFF56B88EFF054930AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA59BB91FF59BB91FF59BB91FF59BB91FF59BB91FF59BB
          91FF59BB91FF59BB91FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA5CBE93FF5CBE93FF5CBE93FF5CBE93FF5CBE93FF5CBE
          93FF5CBE93FF5CBE93FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA5EC095FF5EC095FF5EC095FF5EC095FF5EC095FF5EC0
          95FF5EC095FF5EC095FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003452DAA65CC9FFF67D0A2FF67D0A2FF67D0A2FF67D0A2FF67D0
          A2FF67D0A2FF65CDA0FF054931AF000201050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000232217B289067FF2A946AFF2A946AFF2A946AFF2A946AFF2A94
          6AFF2A946AFF289167FF0233227D000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFC003FFFFC003FFFFC003FFFFC003FFFFC003FFFFC0
          03FFFFC003FFFFC003FFFFC003FFC0000003C0000001C0000003C0000003C000
          0003C0000003C0000003C0000003C0000003C0000003FFE003FFFFE003FFFFE0
          03FFFFE003FFFFE003FFFFE003FFFFE003FFFFE003FFFFE003FFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B1B547110287CA711297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA0C1D5B7B0000000000000000000000000000
          00001235B6F5042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042B
          C0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042B
          C0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042BC0FF042B
          C0FF042BC0FF042BC0FF042BC0FF1136BEFF0000020400000000000000000000
          00001338B8F50834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834
          C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834
          C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834C5FF0834
          C5FF0834C5FF0834C5FF0834C5FF133AC0FF0000000000000000000000000000
          0000153CBAF50E41CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42
          CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42
          CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42CCFF0E42
          CCFF0E42CCFF0E42CCFF0E42CCFF153EC2FF0000000000000000000000000000
          00001640BCF5144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144E
          D2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144E
          D2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144ED2FF144E
          D2FF144ED2FF144ED2FF144ED2FF1742C4FF0000000000000000000000000000
          00001844BEF51B5EDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5F
          DAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5F
          DAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5FDAFF1B5F
          DAFF1B5FDAFF1B5FDAFF1B5FDAFF1948C7FF0000000000000000000000000000
          00001A48C0F5216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216B
          E0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216B
          E0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216BE0FF216B
          E0FF216BE0FF216BE0FF216BE0FF1B4CC9FF0000000000000000000000000000
          00001C4DC3F52778E7FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879
          E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879
          E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879E8FF2879
          E8FF2879E8FF2879E8FF2879E8FF1E51CCFF0000000000000000000000000000
          00001F54C8F53399F6FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359F
          F8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359F
          F8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359FF8FF359F
          F8FF359FF8FF359FF8FF349BF8FF2159D1FF0000000000000000000000000000
          00000B1B547110287CA711297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA11297EAA1129
          7EAA11297EAA11297EAA11297EAA0C1D5B7B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000003C0000001C0000003C0000003C000
          0003C0000003C0000003C0000003C0000003C0000003FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000006040F022E1E71045035C2011E144B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002352382076643F1096F4AFF055D3EE001150E3400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000006040F0236
          23840A6E4AFF0D734DFF0D734DFF0D724DFF065D3EE001201550000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000023623850A69
          46F2107550FF107650FF107650FF107650FF0E734EFF075E3FE001150E340000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000060410033724870E734EFF1379
          53FF147953FF147953FF147953FF147953FF147953FF137852FF075F3FE00120
          1550000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000033724870E6D4AF2177C56FF177D
          56FF177D56FF177D56FF177D56FF177D56FF177D56FF177D56FF147A53FF0760
          3FE001150E340000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000006041003382587147953FF1B815AFF1B825AFF1C82
          5AFF1B825AFF1C825AFF1B825AFF1C825AFF1B825AFF1C825AFF1B825AFF1A80
          59FF096241E00120155000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000339258913724EF31F855DFF20865EFF20865EFF2086
          5EFF20865EFF20865EFF20865EFF20865EFF20865EFF20865EFF20865EFF2086
          5EFF1B815AFF0A6242E001150E35000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000060410043926891A7E59FF248962FF258A62FF258A62FF258A62FF258A
          62FF258A62FF258A62FF258A62FF258A62FF258A62FF258A62FF258A62FF258A
          62FF258A62FF238860FF0C6443E1012116520000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000043A268A197854F3288D65FF298E66FF288E66FF298E66FF288E66FF298E
          66FF288E66FF298E66FF288E66FF298E66FF288E66FF298E66FF288E66FF298E
          66FF288E66FF298E66FF238861FF0C6444E101150E3500000000000000000000
          00000000000000000000000000000000000000000000000000000004020B0438
          258522865FFF2E936BFF2E936BFF2E936BFF2E936BFF2E936BFF2E936BFF2E93
          6BFF2F946CFF2F9B70FF28946AFF30996FFF2E936BFF2E936BFF2E936BFF2E93
          6BFF2E936BFF2E936BFF2E936BFF2C9069FF0E6545E101211652000000000000
          000000000000000000000000000000000000000000000000000001160E36156D
          4CE0339970FF33976FFF33976FFF33976FFF33976FFF33976FFF33976FFF3397
          6FFF359F74FF208A61FF09563AC2289369FF359D73FF33976FFF33976FFF3397
          6FFF33976FFF33976FFF33976FFF33976FFF2C9068FF0E6646E101150E350000
          000000000000000000000000000000000000000000000000000000080514023E
          299929966AFF39A477FF389D73FF389D73FF389D73FF389D73FF389F74FF39A5
          78FF1B7D57EF023220780009061703422B9F2B976CFF39A377FF389D73FF389D
          73FF389D73FF389D73FF389D73FF389D73FF389D73FF359A70FF106847E10121
          1652000000000000000000000000000000000000000000000000000000000008
          0514064E34B32C986CFF3FA87CFF3CA177FF3CA177FF3DA277FF3EA97CFF248E
          65FF02301F750004030C0000000000090617085338BC2F9B6FFF3FA77BFF3CA1
          77FF3CA177FF3CA177FF3CA177FF3CA177FF3CA177FF3CA177FF34986FFF1169
          48E101150E350000000000000000000000000000000000000000000000000000
          000000070513023D28952F9A6FFF43AD82FF43A97EFF43AE82FF1D7F59EE0230
          1F74000000000000000000000000000000000009061704432CA134A074FF44AD
          81FF42A67CFF42A67CFF42A67CFF42A67CFF42A67CFF42A67CFF42A67CFF3EA2
          79FF136A4AE20122165300000000000000000000000000000000000000000000
          00000000000000060411074D33B0319D71FF4BBB8DFF289368FF022E1E710004
          020B0000000000000000000000000000000000000000000906180A5639BE37A2
          77FF48B085FF46AA80FF46AA80FF46AA80FF46AA80FF46AA80FF46AA80FF46AA
          80FF3CA077FF146C4BE201160E37000000000000000000000000000000000000
          000000000000000000000006041102382489136747CB022B1C68000000000000
          0000000000000000000000000000000000000000000000000000000906180544
          2DA23BA67AFF4DB58AFF4BAE85FF4BAE85FF4BAE85FF4BAE85FF4BAE85FF4BAE
          85FF4BAE85FF47AA81FF156D4BE2022217530000000000000000000000000000
          000000000000000000000000000000020107000D082100010003000000000000
          000000000000000000000000000000000000000000000000000000000000000A
          06190B573BBF3FAA7EFF52B88DFF4FB288FF4FB288FF4FB288FF4FB288FF4FB2
          88FF4FB288FF4FB288FF44A77DFF166E4DE201160E3700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000A061905452EA343AD82FF56BD92FF53B68CFF53B68CFF53B68CFF53B6
          8CFF53B68CFF53B68CFF54B78EFF4EB288FF074E34B40004020A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000A06190D593CC046B185FF5ABF94FF57B98FFF57B98FFF57B9
          8FFF57B98FFF57BA90FF59C195FF31996FFF022A1B6600000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000A071A05462FA54AB488FF5DC498FF5ABD92FF5ABD
          92FF5BBF94FF5EC699FF298A64EF03301F730000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000A071A0F5C3FC34CB78BFF60C69AFF5EC1
          96FF60C99CFF3AA377FF033221770004030C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000B071B074830A750BB8EFF67D3
          A4FF30926AF00334227C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000B071B105E41C4309A
          70FF0435237E0005030E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000020107000A
          071A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFC1FFFFFF00FFFFFF00
          7FFFFC003FFFFC001FFFF0000FFFF00007FFC00003FFC00001FF000000FF0000
          007F0000003F8008001FC03C000FE03E0007F0FF0003F8FF8001FFFFC000FFFF
          E000FFFFF003FFFFF803FFFFFC0FFFFFFE0FFFFFFF3FFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010001
          0508000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000001050800000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000815445C1029
          84B2050C27350000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050C2735102984B209174962000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002060909174A640E32BEFF0428
          BEFF1031A7E108133D5200000000000000000000000000000000000000000000
          0000000000000000000008133D521031A7E10428BEFF0E32BEFF0A194E690102
          070A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000009174A641032AFEB0429BFFF0228
          BFFF062BBFFF1131A7E1050C2735000000000000000000000000000000000000
          000000000000050C27351131A7E1062BBFFF0228BFFF0429BFFF1031B0EC0918
          4C66000000000000000000000000000000000000000000000000000000000000
          000000000000000000000002060909174A640F35BFFF052CC1FF042BC1FF042B
          C1FF042BC1FF052CC1FF1132A8E108133D520000000000000000000000000000
          000008133D521132A7E1052CC1FF042BC1FF042BC1FF042BC1FF052CC1FF0F35
          BFFF09184B650002060900000000000000000000000000000000000000000000
          0000000000000000000009184A641134B0EB0630C2FF052FC2FF052FC2FF052F
          C2FF052FC2FF052FC2FF0831C2FF1232A8E1050C27350000000000000000050C
          27351232A8E10831C2FF052FC2FF052FC2FF052FC2FF052FC2FF052FC2FF062F
          C2FF1134B0EB09184A6400000000000000000000000000000000000000000000
          0000000000010816445C1139C1FF0933C4FF0833C4FF0833C4FF0833C4FF0833
          C4FF0833C4FF0833C4FF0833C4FF0933C4FF1233A9E108133D5208133D521233
          A9E10933C4FF0833C4FF0833C4FF0833C4FF0833C4FF0833C4FF0833C4FF0833
          C4FF0933C4FF1239C1FF0916435B000000010000000000000000000000000000
          00000102070A102B87B40B38CAFF0937CAFF0937C6FF0937C6FF0937C6FF0937
          C6FF0937C6FF0937C6FF0937C6FF0937C6FF0C38C5FF1334A9E11334A9E10C38
          C5FF0937C6FF0937C6FF0937C6FF0937C6FF0937C6FF0937C6FF0937C6FF0937
          C6FF0937CAFF0B39CBFF112B85B3000206090000000000000000000000000000
          000000000000050E2C3B1339B5E40E42DDFF0B3DCDFF0B3CC8FF0B3CC8FF0B3C
          C8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0C3CC8FF0C3CC8FF0B3C
          C8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3CC8FF0B3D
          CDFF0E42DDFF1338B4E3050D2A39000000000000000000000000000000000000
          00000000000000000000081541571339B6E40F46E0FF0D41D0FF0D40CBFF0D40
          CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40
          CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D40CBFF0D41D0FF0F47
          E0FF1439B4E30814405600000000000000000000000000000000000000000000
          0000000000000000000000000000050E2C3B153CB7E4124BE2FF1047D2FF1045
          CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045
          CDFF1045CDFF1045CDFF1045CDFF1045CDFF1045CDFF1047D3FF134BE2FF153B
          B5E3050D2A390000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000008154157153DB8E41451E5FF124B
          D5FF124AD0FF124AD0FF124AD0FF124AD0FF124AD0FF124AD0FF124AD0FF124A
          D0FF124AD0FF124AD0FF124AD0FF124AD0FF124CD5FF1451E6FF153CB6E30814
          4056000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000050E2C3B163FB9E41756
          E7FF1551D7FF144FD2FF144FD2FF144FD2FF144FD2FF144FD2FF144FD2FF144F
          D2FF144FD2FF144FD2FF144FD2FF1551D8FF1755E7FF163EB7E3050D2A390000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000081541571740
          B8E41858E0FF1654D6FF1654D5FF1654D5FF1654D5FF1654D5FF1654D5FF1654
          D5FF1654D5FF1654D5FF1654D6FF1857E0FF173FB6E308154056000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000008133D52163C
          AEE11958D6FF195AD7FF195AD7FF195AD7FF195AD7FF195AD7FF195AD7FF195A
          D7FF195AD7FF195AD7FF195AD7FF1958D6FF163CADE008133B50000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000050C2735163EAEE11B59
          D6FF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5E
          DAFF1B5EDAFF1B5EDAFF1B5EDAFF1B5EDAFF1B59D6FF163DADE0050C26340000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000008143D52173FAEE11D62DAFF1D64
          DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64
          DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D64DCFF1D61DAFF173FADE00813
          3B50000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050C27351740AEE11E62DAFF1F68DFFF1F68
          DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68
          DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1F68DFFF1E62DAFF173F
          AEE0050C26340000000000000000000000000000000000000000000000000000
          0000000000000000000008143D521841AFE1216BDFFF226EE1FF226EE1FF226E
          E1FF226EE1FF226EE1FF226EE1FF226EE1FF226EE2FF226EE3FF226EE3FF226E
          E2FF226EE1FF226EE1FF226EE1FF226EE1FF226EE1FF226EE1FF226EE1FF216B
          DFFF1840AFE008133B5000000000000000000000000000000000000000000000
          000000000000050C27351942B0E1226ADEFF2472E4FF2472E4FF2472E4FF2472
          E4FF2472E4FF2472E4FF2472E4FF2472E4FF2575EAFF277BF3FF277BF3FF2575
          EAFF2472E4FF2472E4FF2472E4FF2472E4FF2472E4FF2472E4FF2472E4FF2472
          E4FF2269DEFF1841AFE0050C2634000000000000000000000000000000000000
          000000010507112C85B12573E7FF2779EAFF2677E6FF2677E6FF2677E6FF2677
          E6FF2677E6FF2677E6FF2677E6FF277AECFF287BF4FF1B49B7E21B49B7E2287B
          F4FF277AECFF2677E6FF2677E6FF2677E6FF2677E6FF2677E6FF2677E6FF2677
          E6FF2778E9FF2574E7FF122D86B2000105080000000000000000000000000000
          0000000000010916445C215FDAFF2A84F7FF287CEBFF277BE8FF277BE8FF277B
          E8FF277BE8FF277BE8FF287EEEFF2B86F9FF1B4AB7E208143E5308143E531B4A
          B7E22B86F9FF287EEEFF277BE8FF277BE8FF277BE8FF277BE8FF277BE8FF287C
          EAFF2A84F8FF2363DDFF0A1A4F6A000001020000000000000000000000000000
          000000000000000000000A184A641F52C2EB2D88F7FF2B83EFFF2A80EAFF2A80
          EAFF2A80EAFF2B83F0FF2C84F5FF1C4BB7E2050D29370000000000000000050D
          29371C4BB7E22C84F5FF2B83F0FF2A80EAFF2A80EAFF2A80EAFF2B82EEFF2D89
          F9FF205AC9EE0B1C567300000000000000000000000000000000000000000000
          00000000000000000000000206090A184B652465DBFF2E8CF8FF2C85EEFF2B83
          EBFF2D87F1FF2F8EFAFF1D4CB7E208153E530000000000000000000000000000
          000008153E531D4CB7E22F8EFAFF2D87F1FF2B83EBFF2C84EDFF2F8DF9FF266B
          DFFF0B1C56730102080C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A184C662056C3EC3090F8FF308E
          F5FF2F8BF5FF1D4DB7E2050D2937000000000000000000000000000000000000
          000000000000050D29371D4DB7E22F8BF5FF2F8DF5FF3190F9FF225CC9EE0B1C
          5673000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000206090A184C67266ADBFF349B
          F8FF1E4DB7E208153E5300000000000000000000000000000000000000000000
          0000000000000000000008153E531E4DB7E2359DF9FF2870DFFF0B1C56730102
          080C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000917465F132F
          87B2050D29370000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050D2937133089B40A1A4F6A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010001
          0508000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000102070A00000102000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFF3FFCFFFF1FF8FFFC0FF03FFC07E03FF003C00FF001
          800FC0000003C0000003E0000007F000000FF800001FFC00003FFE00007FFF00
          00FFFF0000FFFE00007FFC00003FF800001FF000000FE0000007C0000003C000
          0003F001800FF003C00FFC07E03FFC0FF03FFF1FF8FFFF3FFCFFFFFFFFFFFFFF
          FFFF}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000027744558745469746C6500526566726573683B5265706561743B4261
          72733B526962626F6E3B52656C6F6164CD4DF6E90000097049444154785EC557
          696C15D715FEEECC5BEC673FEFF83DE305DB103078613360234CCA521227A449
          504A2AB2476A9AA849A334AAFAAB4A11A289D212A94A5A3552DBB4A4350E2969
          6241EAB44052CC12E305638C17700CDEFDFC166F6F9B3733F7F6DDABEB18891F
          1152AB9ED1A7FBE6FADCB37CE79C190F618CE1FF29E4BFA8CFFE5701908555E2
          76610B90F77712C06F1B6B0176CB2946F0C3FB3E95CEA01C3CBCADC891627B54
          B5901D842095105201C64019EB6494CC1A86796ADA1B3D7AE0074D0300A804DE
          3E7EAF2830D705217215F6E5CAC482774ED462DFF61F831082F4849D5F3B7EBD
          6E7B4D62B275BF2B3DB7C69D9E8F45A98B919A9C094782135C4291594C07FDF0
          CE8CC313188C63EC427036F6F39F3DF5C517004C007462EE38331905632C0E0A
          CA4CF1FBE333BF177128E09A94815FF3CE1F7C6645E2A163DF7EBB30AFE8F4E6
          55BB6ABEB5663756169521353501067CF0877BE10B5D85C6C691EC24585EB014
          5B56DF834DA53BAB8B0B8B3E7BA37EC7DB35F7E7270150DDCEDD0490CEF90A70
          E6844FD3A0B0806F98149989BB44D6CFBDB63E7B7979FAD195856BB7AC282885
          CD4630A78D82C11494890B145464A581D259F19B4B564626D29C55703A329EC3
          93A4B4B024FDD1F70F757A72531E3487A68E89D38C99A010CE6F6B30259EB973
          736DFEC9B5CBABD697149620A20760D098542200E10616029094C661C0A4F135
          0E8B6A4792D58D81919BE8E86B696FACEBBFA7E9F8D03400F346A09EF1EC29A5
          F8DBA93F885EB0DC1280BA6967EE5B2B97AC5EBF2CBF1881F030DF147DC14555
          ACB02A7628C41A872A82D0690C861985A68741A90E931AD04C0DC1E80CF27396
          20122D5BA7ED310EC503781E00EF055304CD61083E40E69DBFFA56755569E9B2
          A6CAD28DD031C3B3E3CE8582DD9A84D1B1002EF75C434FFF0086C7C7C5A9FC1C
          17561417A1ACA408D9D94988C4667910820D421438D4C5E8ECBD82F6D66BDBDE
          7DADED3C00FDDAE461C619FBA0F13000068B0CC0E2CCB41F2C7017C32421C4F4
          8830A0C461B33870AEE50A4E9DBF680C0E4DFC3916A67FBFD91A6A06007F65B8
          AAF7DAD04397BA7B9EDABA718D65754501344383C94C98A60685F890EBCAC770
          CEC80100B5A2DF6198E2EFE6420F589E3F50B9A962CDD2B35BD656635A1BE799
          0B245A92D072F93A3E6EFCDCE3199ADB7BA961AA158021E79C8BCACFAFFB4E46
          654E91F383DAED55AED2558B118E336198862853A6A310ED97BBD1D67CFD5B87
          DFECBC0040BF3CF61B76F478BD6040E14652D26C7B16A56623A407A01BBCAE3A
          1803463D8178F61D867738F448DC790B008D1B00604AE87CAFBD21D0E2B911DA
          DBD2D16B78BD73608C8886D44D1D33510FD2D3D2919695B80780609C07C71930
          4D2636140AB6D1626708C666C0286F1202AB6AC7B5AF863136E67DBFED137F87
          744687673E640BE308B624ED5106406F6DF07564E426FEE5C690F7E98A7237C2
          5417CD1689CD21C99101C54A2A6500CAFAFC97D94FDEA9664C6EA894D265A6A2
          61607200AE943C517707140C8D8E2316A41FCDD37E73AA9EF10683745F94BE4F
          8CAF2C250DFB8D86B171DFD3E5153930A8215830988124ABC1359602B0018871
          FD5FBE788101304544864E33991A45509B46D8378B74870B49F614F80253E86E
          9A6E9335E7DD2B9D034B339E203201DB3C2E9FF47717AFCC14CF0AC330C44484
          F5205882CA6730038053F68D21198D8A9AE8BA0931CB8C89A87DC13158545B1C
          0A783B424ADCA0740FC8CCAD3FFAD5C61946A012F932B3DBECD0CD1866A30144
          F410C018ECAA83D7DBFAE29B1B06B88ED4355B4E8EE5F100108D198170447329
          4C85C174AE200E676765A262EBF4FAD375C3A700189A11617C346510C2D6F8F8
          4CDDEE7BB73DB1A67495A05D33A2E81E3D839016144C08C608C5BE471E90A3C3
          70B9AB0F9FFEE37CFDC57F8D8679004C8B1A03C159DD451C2AA81103445061B8
          5D59485B24BAF72C00BDCCFD02FB72F00D16174831BBCEF90E26249D7D3064FD
          2A25AC074099A48273276BE79B9BC017B31F8A3DBB928C0B4D9EB9EEF3FED7B9
          4DAE93F4F0CB77BD5EBE2EEFA58C3C0DE158105CACAA1599B665E8681B31BA9A
          C7EE3B7DF446338008773A9FBDACA763D7B3852F97552EDA5FB8D281883CCF21
          190095ABDDE240FFD510BA9ABDFB9B8E8CFF1A4050E106BD239186C9893930AA
          7C7D3066C410253E942C2FB0DC5591F5D7BB1F5E520D20853B0460E731CA26A4
          678E8EBC37D017E88B06092C0ADF2692016E4F114F559558A18509FA7BA6062F
          364CFE91930CC020D29073F78BC58DAB372EDA90EAA6E2512C84008BD38AA04F
          A5A2A777D0181DF21F99F2463F3D5937C04B42EF797CE986F8FDCD8B9F8D8E6F
          B8DFB5BDB42AFBC8FA9A6C31FB4264A92818122C89683BE7C5D566DFF3ED277C
          1FF0EC0198728E9158B9DB7577F926D789A5E57610BB26A6410A72338A60375D
          981C0F223EE708046604A5CE640726C6A6DAEBDFEA7A0800763E9BFF6ED5F6FC
          DAAC1C2B0CAA8331EE9A412516F82763686A1C3ADBF4BE672F802900B16DDFCF
          119C337ED37ADCD33C38E03F3A7243830A2B0F9E43C85860103EBD1FD9450477
          6F2FC5E38FD5C6711F6A7757637949E1BA9D8F157F0F00FADB677E71B5C31725
          B08110158A800516C58E2BAD5E73A427BC1F40483E0318A514E49699B667E627
          B857EFCA6C585E9E5A56B0C20ECA0CF9FF24997F3B8ABA0AE3FC5E5190E72CC7
          27C72EF84ED5F7EFF00C856636EF75BF5A5993F7D25D6569E279A02A2AAE774F
          A1F9F3E13FB51CF3FF1400A72FB6F5D96CC6A463EC7C2E97F24DFF70D4DB7B6E
          6A5F7747A0ED7A6708B1B00A8B6A954E45B56420840720EEFDDA102A2B5765AD
          D9E67E0500B9D4E8FB5DF7158F4FD74443428F2AE8EA98F05FFF72EE1080B0CC
          5E4C068B430580256B9371B33D28F6E77C7AD03F143DA12693826884AD042370
          A63860B558212855D479364476A0408EDB8D91517F6924A47DE4B919F2A6BA6D
          21D5A6EEC85B928ED6E6110C74050E0C5D0A9F91F4D3D3FDAFB1D3672E4AEA65
          34FFEC7B85C9198F0603C6E48523932FF434FB9F6C3D3779A5F9DF13E8EB9C86
          774C831656602109B02021AEA8607C3488D34D5F62363A6B4D5B8AEFF2F3974E
          F8EAAE5FF5744EFB35F4754F747635CED4C9EC4DC80165F2220050F34C36A4A0
          E9BD49C1B59CF10400C9451B92CBD273AD0FD81CEA6610E654AD6419B8359DF5
          338AA016A6E76726621FDF680EB5CBF9B6966C4DDBB2AC34FBA3DE2BA37BFACF
          869A64F666F55319EC9B3FCD16F65509DB2DB0C83D2E1480215FB19A84C9CFC8
          E0ADB2E611A9C76E737407DF85CA026EFB2EA40B90B2A04B25D89D7D9CDEB92E
          BB5DFF9BBF9CFF03BCBD0FCE21DB47940000000049454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000805020E241C0A3D29200B442B20
          0B442A1F0B452A210B4529200B43100C041B0000000000000000000000000000
          0000120E071D29200B432A210B452B200B4429200B4429200B44241C0A3D0805
          020E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101000147331277947125F19A7326F59A75
          26F5977727F6977727F69A7326F5675019A80604010A00000000000000000604
          010A66511CA99A7325F5977727F6977727F69A7326F59A7326F5947125F14733
          1276010100010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000202000362471AA3A37D2CFFA37D2CFFA37D
          2CFFA37D2CFFA37D2CFFA37D2CFF846521D10D0A031500000000000000000D0A
          0315846521D1A37D2CFFA37D2CFFA37D2CFFA37D2CFFA37D2CFFA37D2CFF6247
          1AA3020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020003674D17A4A6812EFFA6812EFFA681
          2EFFA6812EFFA6812EFFA6812EFF866826D20D0A031500000000000000000D0A
          0315866826D2A6812EFFA6812EFFA6812EFFA6812EFFA6812EFFA6812EFF674D
          17A4020200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020200036A4D19A4A88330FFA88330FFA883
          30FFA88330FFA88330FFA88330FF886C27D20D0A031500000000000000000D0A
          0315886C27D2A88330FFA88330FFA88330FFA88330FFA88330FFA88330FF6A4D
          19A4020200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020200036E4F1BA4AB8533FFAB8533FFAB85
          33FFAB8533FFAB8533FFAB8533FF8D6D2AD20D0A031500000000000000000D0A
          03158D6D2AD2AB8533FFAB8533FFAB8533FFAB8533FFAB8533FFAB8533FF6E4F
          1BA4020200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020200036E511EA4AD8735FFAD8735FFAD87
          35FFAD8735FFAD8735FFAD8735FF8B6D2AD20F0A041500000000000000000F0A
          04158B6D2AD2AD8735FFAD8735FFAD8735FFAD8735FFAD8735FFAD8735FF6E51
          1EA4020200030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000202000370531FA4B08A37FFB08A37FFB08A
          37FFB08A37FFB08A37FFB08A37FF8F6F2BD20F0B041500000000000000000F0B
          04158F6F2BD2B08A37FFB08A37FFB08A37FFB08A37FFB08A37FFB08A37FF7053
          1FA4020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020003735522A4B28C3AFFB28C3AFFB28C
          3AFFB28C3AFFB28C3AFFB28C3AFF927230D20F0B041500000000000000000F0B
          0415927230D2B28C3AFFB28C3AFFB28C3AFFB28C3AFFB28C3AFFB28C3AFF7355
          22A4020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020003745722A4B58E3CFFB58E3CFFB58E
          3CFFB58E3CFFB58E3CFFB58E3CFF927530D20F0B041500000000000000000F0B
          0415927530D2B58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFFB58E3CFF7457
          22A4020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020003735925A4B7903EFFB7903EFFB790
          3EFFB7903EFFB7903EFFB7903EFF967533D20F0B041500000000000000000F0B
          0415967533D2B7903EFFB7903EFFB7903EFFB7903EFFB7903EFFB7903EFF7359
          25A4020200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003725A26A4BA9341FFBA9341FFBA93
          41FFBA9341FFBA9341FFBA9341FF977634D20F0B051500000000000000000F0B
          0515977634D2BA9341FFBA9341FFBA9341FFBA9341FFBA9341FFBA9341FF725A
          26A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003705C29A4BD9543FFBD9543FFBD95
          43FFBD9543FFBD9543FFBD9543FF997A35D20F0C051500000000000000000F0C
          0515997A35D2BD9543FFBD9543FFBD9543FFBD9543FFBD9543FFBD9543FF705C
          29A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003725E29A4BF9745FFBF9745FFBF97
          45FFBF9745FFBF9745FFBF9745FF9B7A39D20F0C051500000000000000000F0C
          05159B7A39D2BF9745FFBF9745FFBF9745FFBF9745FFBF9745FFBF9745FF725E
          29A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003755E2DA4C29948FFC29948FFC299
          48FFC29948FFC29948FFC29948FF9D7B3AD20F0C051500000000000000000F0C
          05159D7B3AD2C29948FFC29948FFC29948FFC29948FFC29948FFC29948FF755E
          2DA4030200030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000302000375622DA4C59B4AFFC59B4AFFC59B
          4AFFC59B4AFFC59B4AFFC59B4AFFA07F3DD2100C05150000000000000000100C
          0515A07F3DD2C59B4AFFC59B4AFFC59B4AFFC59B4AFFC59B4AFFC59B4AFF7562
          2DA4030200030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000302000379622FA4C89E4DFFC89E4DFFC89E
          4DFFC89E4DFFC89E4DFFC89E4DFFA2803ED2100C06150000000000000000100C
          0615A2803ED2C89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFFC89E4DFF7962
          2FA4030200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000030200037B6531A4CAA04FFFCAA04FFFCAA0
          4FFFCAA04FFFCAA04FFFCAA04FFFA4843FD2100C06150000000000000000100C
          0615A4843FD2CAA04FFFCAA04FFFCAA04FFFCAA04FFFCAA04FFFCAA04FFF7B65
          31A4030200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000030200037D6534A4CDA251FFCDA251FFCDA2
          51FFCDA251FFCDA251FFCDA251FFA88441D2100D06150000000000000000100D
          0615A88441D2CDA251FFCDA251FFCDA251FFCDA251FFCDA251FFCDA251FF7D65
          34A4030200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000030200037D6934A4D0A454FFD0A454FFD0A4
          54FFD0A454FFD0A454FFD0A454FFA98444D2100D06150000000000000000100D
          0615A98444D2D0A454FFD0A454FFD0A454FFD0A454FFD0A454FFD0A454FF7D69
          34A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003806938A4D2A756FFD2A756FFD2A7
          56FFD2A756FFD2A756FFD2A756FFAB8846D2110D06150000000000000000110D
          0615AB8846D2D2A756FFD2A756FFD2A756FFD2A756FFD2A756FFD2A756FF8069
          38A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003836C38A4D5A958FFD5A958FFD5A9
          58FFD5A958FFD5A958FFD5A958FFAD8947D2110D06150000000000000000110D
          0615AD8947D2D5A958FFD5A958FFD5A958FFD5A958FFD5A958FFD5A958FF836C
          38A4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003836E3AA4D7AB5BFFD7AB5BFFD7AB
          5BFFD7AB5BFFD7AB5BFFD7AB5BFFAE8D49D2110D07150000000000000000110D
          0715AE8D49D2D7AB5BFFD7AB5BFFD7AB5BFFD7AB5BFFD7AB5BFFD7AB5BFF836E
          3AA4030200030000000000000000000000000000000000000000000000000000
          000000000000000000000000000003020003876C40A3D9AC5CFFD9AB5AFFD9AB
          5AFFD9AB5AFFD9AB5AFFD9AB5AFFB28E4ED1110D07150000000000000000110D
          0715B28E4ED1D9AB5AFFD9AB5AFFD9AB5AFFD9AB5AFFD9AB5AFFD9AC5CFF876C
          40A3030200030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101000162513372D4B16DEDD6B26AF2D6B2
          6AF2D6B26AF2D6B26AF2D7B46DF0917647A20806030A00000000000000000806
          030A917647A2D7B46DF0D6B26AF2D6B26AF2D6B26AF2D6B26AF2D4B16DED6251
          3372010100010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000906040C2F261835362E1C3D362E
          1C3D362E1C3D362E1C3D332B1B3A120F08160000000000000000000000000000
          0000120F0816332B1B3A362E1C3D362E1C3D362E1C3D362E1C3D2F2618350906
          040C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000D744558745469746C650046696C7465723B851A65D10000077E4944
          4154785E8D977B885C571DC73FE7DE3BAFCD669374B3499AC498346DDAC6963E
          4525B696E28B988215158B95FA8728884245A542915AF1554C4BD1528C2DF888
          AD011B296D29941AD136CD4B9336C99A6E92CDEEA6D9D7CCEEEC3C1FF7DEF3F8
          B99DECC03064C87EE1CB9C3970CEEF73CEEF77CF3D578908004A292E23D5E57F
          A7A44BBB5DB4E2068B0CAA16EC75F67509EE16DAAED5DF0DA6130067359E9F68
          0FE8ED79F4EE2B37AFEBFB642250DB3CD45A05ABC549D2F7D8EA44B0564E396B
          B575648DB153D5BA3E786C38BFEFA167DE9E04EC82DDA5402E950205F8CFFEE8
          8E81DBAE5DF9ED743AFDF94CFFE61BD2FDD790E9BF9A44EF2A1021C82C6F1AB1
          C4B5694C3587B898A83C452D3736EFF394A6474F954BB597FF793CFBF4637B87
          72806E81744B4133F8A15DF7DC3FB07EEB532B6FB877497AD907290F1FA63133
          46F1D41EA2D20460D0E5F3247B20BD62294BD6AD63C9DA5B49F4F4D137B08CBE
          FEABE0BAEB21B57A6B69626CEBC0FAD7BE7BFBA6BEEF7D69E791BF00316001E9
          04508077E8E9BBBFB5E1967B9F4AF65ECDC8DF9FA036768C2095022F407CC149
          04A249A693884B21E2101761AA53F82AC6BA329E0E31B522616E9246BC94CD1F
          DFD1B374F555BBFE982F67BEFE87A15D6DE9C0A35DE0A77C7ED27FDD760E3CF6
          4D2E1CFE17516830DA61ACC319C12EFC1A6B70C660B5418731B61162EB35E25A
          79DE154CB58AAE37288D1CE5EC8B3F67FD873FC3F28CFF3010B4176FE70E2884
          7EE2D3DCFEE06F19DAFB3485A1C3242A42904EA00285F2349E32248C8028F07C
          54B282D379E26A481078281DE31A65AAB379FCDECD6CFCC817983DF6124AD44A
          C00714DD9F02A94D1DD8DDBBFAA6BBB8F3E1276914EB644F1CA432394279F21C
          F5620E6763F2136749A56252BD11E962C48A8DAB89D39ACCD2E5A4FA36905EB3
          9215775C8F294C5038FE323367FF87B3526F05EF0A60AC1B9E7B6FECE69ECC11
          96F92B485E713D1BEEFA3400CA86E034D80A780994E70316740D5D9E45C4601A
          65888AB8F204B5C3FF252ECD1015E7886387B66E1470DD00049028342793BDC9
          9BAD0E91A8847231E205E0F9380C442398CA11E2C220D1C42CBAD8202CD4A9CF
          3590C0A36FED1A7AD76C2290242E8E7056CFDB12454218DBC1F602BC54114AA9
          AAFF6D62833531AE368DD818C482B320A0740D11074E01805228CF03C0F77DFC
          641A8507CE21CEE08CC5CC3B6C08C5BA7913B0DD000470874FCDBD56AF84F538
          8ED09519541342372753BA8AE80845029A413D140A9487E77B28DF6FF6230AB1
          A6B97AAB353AB6D46AB6F1C670E9F56E002DC9CF5E189E2D55A2DDE55C0113D7
          B0B3274157C1D4A09E6B0288B68851A8D6692DE0053E413249E0A7F09C4574DC
          4C813586B982A150337B5E389ECF2E00D01500B0C747CABFC98DE78D891AD87A
          01C9BE0D85D3385D9FB746620D5616F89B18CD3404C9042A081063307188D111
          611853281873E47CF5292006E4B2003F7E6178243753FFE5F9C1114C584197C7
          31B53CA651C286155C6C91587046102738074AA9797B28E330518C0DEB342A35
          26C6EB640BF1E3BF3F941D060C20DD52D00E611E7971E4F1D1A1ECA1E9B3A344
          852C71711A53CE5F3CE16A354C6491D8619BB6408097EAC54696B852A65AAE90
          CFD5C9CDC6FF79F4F50B4F0051FB23D815E06FDFF89000EEDC4CA3F1EA8999FB
          DE39387C62EAEC39C29931A27988B85A242E95D0D51013DBA69D15F068A627AA
          D5A8576BCC4CD7187D2F7C77EF89B9FBB3155DE9587D7700AB1D937BB63BC0FC
          E948766AF7C1E9ED47DF1A7D6370FF20D5E90B44957233B8AE362E42841A6B05
          2742548F28E7AB9C1B9A6378B4F6D6AE83D39F7B71706E1C8801F7FC57360B9D
          1291A65B7AEEABD7B6F7794012E8DBB963E383BBEFBBAEBCEFA18FCA995DDBE5
          CCEFEE94779FBC45067F75A39CDA79AB0CFEFA63F2EA776E92BF7EEDDACACE1D
          1BBE0FF40399D6D97FEE8D9778EECB5775C625A043D63AC2A9630034268FBACC
          DADB0CD0F8C12B63CF6EBA22B5F717F76CFC47D20BB7ACDCB00A95F1D0E51C49
          3FC9C45891030726CE3E3354FD6CB6E1F24008684072EFBC2200B2B82B1928E5
          D35238F58E4B5F79B3008CCE4595D97C3CB4EE03CBB66CFCC40E1AF561F247F7
          934A2F83F1180BA7E78397DA83CF8F175A727279007182F27DDA15E54E4A6AD5
          8D0EB082CA5907783E2A48E12552283F406B07300318C002F2FE380194000A9C
          2C064004FCA0DB755BAC62DA39509EC27B1F2099B908105B9CA7A6DA2B1D2F40
          A98E192E0F407342B5D046B50F449C222702F83E5E22DD7CF97812608CC30AB9
          B6B75D138CD6140A64313B00E0B50DEC908B202B2894EFE12706F0534BF0B4C1
          6A470CB9765C2F0868492D76075AE45D2485D04E22721120B99C2095416C1D6B
          34C5D84D010EC0D62F081D92C5032480CEFD4700776CBC32F1A99B069A85AA92
          7DF8A91E6CA38ED596D1926901C82517B16800CF0340509DA970FB4ECD157FB8
          7DD399F193A7B7ACBD6D3D824FF6421163CCB9372F346601D72AC0D62214202C
          B20696F478EC79601B220202EBAEE96F477740B87FB8F8C0F933CFFF34E3EFD9
          26405DDB03C7B3D12340A305F0E72FDE0E02D2B1F75D8FE2454A2D40678015C0
          00B06AA1DDD379E7EFAECEA378F192B60F4DDD164C3A3E3E17ADFF0375AFAFD4
          54FA47CB0000000049454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00020B4368891482C8F41277B8E307283E550000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010B40
          6280148EDCFD148FDFFE148FDFFE138AD5FA06263A4F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001082E465F158E
          DBFC1691E1FE1592E2FF1591E1FE1591E0FD0E5E91AD00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001061F2E42178CD6F71793
          E3FE1793E3FE1795E5FF1794E4FE1693E2FD0D55839600000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004121B2A1785CBEC1995E5FE1995
          E5FE1997E7FF1995E5FE1895E5FE1583C9E0020C131A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002090D17177BBBDB1B97E7FE1B97E7FE1B99
          E9FF1B98E8FE1A97E7FE198DD7EF0419272F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000003050A176EA6C51C99E8FD1D99E9FE1D9BEBFF1D9A
          EAFE1C99E9FE1C96E4F9072A4049000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000002155E8DAB1E9BEAFD1F9BEBFE1F9CECFF1F9CECFF1E9B
          EBFE1E9AE9FC0C3D5D6700000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000011045677E209CEAFD219DEDFE219EEEFF219EEEFF209DEDFE209C
          EBFD11547E890000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000002000000020000000100000001000000000000
          0000000000011F89CDE2239FEFFE23A0F0FF23A0F0FF229FEFFE229EEDFD1669
          9EAA000001020000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000010000032D230D496951
          1F9793712ACBAB822FE7B18731EEA27C2DDD7F6325B4503D17740F0B041D0000
          00020B0D0E163B9FDFF026A1F0FE25A2F2FF24A1F1FE24A0EFFD1B7BB9C50104
          070A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000135290F519E792CD8C99935FDD4A0
          36FDD7A237FED7A237FED7A237FED7A237FED6A136FECF9D36FDBE9034F77057
          259C9C988EC2A9C8DBFE32A6F1FE27A3F2FE26A2F1FD208BCFDB020C12170000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000030200077056209DCA9A36FDD6A137FED7A237FED8A3
          38FFD9A438FFD9A438FFD9A438FFD9A438FFD8A338FFD7A237FED7A238FED4A1
          37FEC39945FEC9BFABFEB8CDD9FE4F93BED015567F86030E151A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000002010005826425B2D3A038FDD8A338FED9A438FFD8A338FED8A3
          38FED7A338FDD6A238FDD6A238FDD6A338FDD8A338FED8A338FED8A338FED9A4
          39FFD9A539FFCA9B3EFEADA38ADD0E0E0E150000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000168501F8FD5A239FDD9A43AFED9A43AFED9A439FED7A339FDA07A
          2CC74A391776281F0F51221B0E4A3328125F6C532096C99936EFD9A439FED9A4
          3AFEDAA53AFFD9A53AFEBC9137EE171207250000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000261E0B3CCF9E39FBDAA53BFEDAA63BFEDAA53BFEC99937EE392C13600908
          06270707072B0404041D040403180404041A06060522110E082E866626AFD8A5
          3BFDDAA53BFEDAA53BFEDAA53BFE8E6C29BA0000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000192702BBBDCA73CFEDCA73DFEDCA73CFECF9D39F1221B0D430807072D0202
          02100000000000000000000000000000000000000000010100070605041A7B5E
          25A4DAA73CFDDCA73DFEDCA73DFED6A43CFD2C220D4200000000000000000000
          000000000000000000000000000000000000000000000000000000000000140F
          0625D5A23CFBDDA83EFEDEA93EFEDBA83EFD4A3A18710707072B010101070000
          0000000000000000000000000000000000000000000000000000000000000706
          0416BA8E35DBDDA83EFEDEAA3EFFDDA83EFE816327A400000001000000000000
          000000000000000000000000000000000000000000000000000000000000523F
          186DDEA93FFDDFAA40FEDFAA3FFEC39438E30B0906240202020E000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          000252411B68DEA940FDE0AB40FFDFAA40FEC49639EA01000003000000000000
          0000000000000000000000000000000000000000000000000000000000017F62
          269CE0AB41FEE2AD41FFE0AB41FE755B25990606062400000000000000000000
          0000000000000000000000000000000000000000000000000000000000002020
          202217130B1ADEAB41FCE1AC41FEE0AB41FEDCA840FC110D0520000000000000
          0000000000000000000000000000000000000000000000000000000000019774
          2DB2E1AC42FEE3AE43FFE0AB42FD503E1C760404041800000000000000000000
          0000000000000000000000000000000000000000000000000000000000015655
          555902020103D3A240EEE2AD43FEE3AE43FFDFAB42FD221A0A38000000000000
          0000000000000000000000000000000000000000000000000000000000019B78
          2EB2E3AE44FEE4AF44FFE2AD44FD4E3E1B751313122701010102000000000000
          00000000000000000000000000000000000000000000000000002D2D2D316463
          636702010103D2A23FEDE3AE44FEE4AF44FFE1AD44FD251C0B39000000000000
          0000000000000000000000000000000000000000000000000000000000018B6B
          2A9DE4AF46FEE6B146FFE4AF45FE71582696111111244747474B000000010000
          000000000000000000000000000000000000000000001919191D747474784C4C
          4C4F120F0A17DFAC45FBE4AF46FEE5B046FEE1AD44FC16110623000000000000
          000000000000000000000000000000000000000000000000000000000000614B
          1E70E4AF47FDE6B147FEE5B047FEBC923CDF0504030C5A5A5A605C5C5C5F1919
          191D0000000100000001000000010808080C3E3E3E417676767A7A7A7A7D1C1C
          1B1E4F3F1E63E4AF48FDE6B147FEE6B147FED4A342ED02010004000000000000
          0000000000000000000000000000000000000000000000000000000000001C16
          0829E3B047FBE7B249FEE7B249FEE3B048FD44361A6312111015727171757B7B
          7A7E70707074616161656767676B7979797D7C7C7C7F7C7C7C7F464645480606
          0408B48C3CD6E7B249FEE8B349FFE7B248FE977530A900000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001AF8738C2E8B34AFEE8B34AFEE8B34AFECB9E44ED231D102C161615186565
          65687B7B7B7E7C7C7C7F7C7C7C7F7C7C7C7F7777767A3D3D3D3F02020203785E
          2A98E5B14AFDE8B34AFEE9B44AFEE7B24AFD3D2F134700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000392C1244E7B34AFCEAB54CFEE9B44BFEE9B44CFEC29843E8382D17480202
          020320201F233D3D3C3F42414144302F2F320B0B0A0D0C0A070F7E632DA0E2B0
          4BFDE9B44BFEEAB54BFEE9B44BFEAF8839C10000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000018E6E2E9BEAB54CFDEBB64DFEEBB64CFEEBB64DFEDBAC4AFC9274
          34B948391A611F190D3217120A282D24124468532687BE9543E7E6B24DFDEBB6
          4CFEEBB64DFEEBB64DFEDFAD48F2231B0B2A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000005040109AF883ABEEBB64EFDEDB84EFEECB74EFEECB74EFEEBB7
          4EFEE1AF4CFDDAAA4BFDD8A94BFDDDAC4BFDE7B34DFDECB74EFEECB74EFEECB7
          4EFEECB74EFEE5B34CF84737174F000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000705020B9E7A35ABECB74FFDEEB950FEEEB950FEEEB9
          50FFEEB94FFFEEB94FFFEEB94FFFEEB94FFFEEB94FFFEDB950FEEEB950FEECB7
          4FFDDCAB4AED4334164A00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000157431D5FD3A548E2EEB951FDEFBA
          51FEEFBA51FEEFBA51FEEFBA51FEEFBA51FEEFBA51FEEEB951FDEAB750FA9E7B
          36AA1913081F0000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000105030108503E1B589D7A
          35A7CFA247DCEAB750F8EFBA52FDE0AE4CEDB9903FC47B602983221A0B2A0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000200000003000000030000
          0003000000030000000300000003000000030000000300000003000000030000
          0003000000030000000300000003000000030000000300000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000C000000440000005B000000590000
          0059000000590000005900000059000000590000005A0000005A0000005A0000
          005A0000005A00000059000000590000005800000055000000520000004E0000
          003F0000000D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000003E7A7A7AD5FEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF7A7A
          7AD50000003C0000000100000000000000000000000000000000000000000000
          000000000000000000000000000403030369959595FFFEFEFEFFF4F4F4FFF2F2
          F2FFF4F4F4FFF4F4F4FFF4F4F4FFF6F6F6FFF5F5F5FFF7F7F7FFF5F5F5FFF4F4
          F4FFF5F5F5FFF3F3F3FFF6F6F6FFFAFAFAFFFAFAFAFFFAFAFAFFFEFEFEFF9595
          95FF030303680000000400000000000000000000000000000000000000000000
          000000000000000000000000000605050571898989FFFDFDFDFFF6F6F6FFF6F6
          F6FFF4F4F4FFF7F7F7FFF4F4F4FFF5F5F5FFF4F4F4FFF5F5F5FFF6F6F6FFF6F6
          F6FFF8F8F8FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFF8F8F8FFFDFDFDFF8989
          89FF050505700000000500000000000000000000000000000000000000000000
          00000000000000000000000000040808086A878787FFF9F8F8FFEDEDEDFFEDEC
          ECFFEEEEEEFFF0EFEFFFF0F0F0FFF1F1F1FFF0EFEFFFEEEEEEFFEFEFEFFFF1F0
          F0FFF2F2F2FFEEEEEEFFEFEFEFFFF0EFEFFFEFEFEFFFF1F1F1FFF9F8F8FF8787
          87FF070707660000000400000000000000000000000000000000000000020000
          001000000016000000120000001709090976717171FFEDECECFFECEBEBFFE9E8
          E8FFE8E7E7FFE9E8E8FFE8E7E7FFE7E6E6FFE8E7E7FFEBE9E9FFE7E6E6FFE8E7
          E7FFE9E8E8FFEBE9E9FFE8E7E7FFE9E8E8FFE9E8E8FFE9E8E8FFEDECECFF7171
          71FF090909780000001A00000011000000140000000F000000020000001C1D1D
          1D95303030AF2F2F2FAA2F2F2FAC3C3C3CC85F5F5FFFD0CCCCFFC9C5C5FFC6C2
          C2FFC7C3C3FFC6C2C2FFC5C1C1FFC6C2C2FFC6C2C2FFC8C4C4FFC7C3C3FFC7C3
          C3FFCAC6C6FFC9C5C5FFCFCBCBFFCECACAFFD0CBCBFFCFCBCBFFD0CCCCFF5F5F
          5FFF3D3D3DCC303030AE2E2E2EA82F2F2FAC1D1D1D95000000200000002B7979
          79E3B2B2B2FFB2B2B2FFB2B2B2FFA7A7A7FF4F4F4FFF958C8CFF918888FF8F87
          87FF8F8787FF908787FF8D8585FF908888FF8D8585FF8E8686FF8E8686FF8F87
          87FF8C8484FF8D8484FF8F8787FF8D8585FF8F8787FF918989FF958C8CFF4F4F
          4FFFA7A7A7FFB2B2B2FFB2B2B2FFB2B2B2FF7A7A7AE40000002D000000299696
          96ECC3C3C3FFC3C3C3FFC3C3C3FFAFAFAFFF202020FF2B2929FF2C2A2AFF2C2A
          2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A
          2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2C2A2AFF2B2929FF2020
          20FFAFAFAFFFC3C3C3FFBFBFBFFFC2C2C2FF969696EC0000002800000022ACAC
          ACF2CCCCCCFFCCCCCCFFCCCCCCFFC0C0C0FF101010FF0F0F0FFF0F0F0FFF0F0F
          0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F
          0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1010
          10FFBFBFBFFFCCCCCCFFCDCECEFFC4C4C4FFACACACF20000002400000013C2C2
          C2F8D4D4D4FFD4D4D4FFD4D4D4FFD6D6D6FF8D8D8DFF636363FF626262FF6262
          62FF616161FF606060FF5F5F5FFF5E5E5EFF5D5D5DFF5C5C5CFF5C5C5CFF5C5C
          5CFF5D5D5DFF5E5E5EFF5F5F5FFF606060FF616161FF626262FF626262FF8D8D
          8DFFD6D6D6FFD4D4D4FFCBCBCBFFCECECEFFC1C1C1F70101011200000002CECE
          CEFBDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFD8D8D8FFD4D4D4FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD8D8
          D8FFDCDCDCFFDCDCDCFFD1D2D2FFD4D4D4FFCECECEFB0000000100000000BDBD
          BDFCC8C8C8FFC9C9C9FFCACACAFFCBCBCBFFC2C2C2FF969696FF979797FF9898
          98FF999999FF9A9A9AFF989898FF959595FF9A9A9AFFA3A3A3FFA2A2A2FF9A9A
          9AFF949494FF989898FF9C9C9CFF9B9B9BFF9A9A9AFF999999FF999999FFC5C5
          C5FFCFCFCFFFCECECEFFCDCDCDFFCCCCCCFFC1C1C1FC0000000000000000CFCF
          CFF6E0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFC9C9C9FF3F3F3FFF3E3E3EFF3E3E
          3EFF3E3E3EFF3E3E3EFF3C3C3CFF383838FF3F3F3FFF434343FF434343FF3E3E
          3EFF323232FF3B3B3BFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3F3F3FFFC9C9
          C9FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFCFCFCFF60000000000000000CCCC
          CCECE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFD3D3D3FF4F4F4FFF4D4D4DFF4D4D
          4DFF4D4D4DFF4D4D4DFF4D4D4DFF565656FF5E5E5EFF5E5E5EFF5E5E5EFF5E5E
          5EFF565656FF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4F4F4FFFD3D3
          D3FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFCCCCCCEC0000000000000000C3C3
          C3DCEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFDADADAFF555555FF535353FF5353
          53FF535353FF535353FF535353FF535353FF535353FF535353FF535353FF5353
          53FF535353FF535353FF535353FF535353FF535353FF535353FF545454FFDADA
          DAFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFC3C3C3DC0000000000000000B3B3
          B3CAEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFDFDFDFFF5D5D5DFF5A5A5AFF5A5A
          5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A
          5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5C5C5CFFDFDF
          DFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFB3B3B3CA00000000000000008787
          87ADCECECEF6D3D3D3F6D5D5D5F6D8D8D8F6CACACAF8B8B8B8FDB9B9B9FDB9B9
          B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9
          B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB9B9B9FDB8B8B8FDCACA
          CAF8D8D8D8F6D5D5D5F6D3D3D3F6CECECEF6888888AD00000000000000004949
          4976ABABABFFBBBBBBFFBFBFBFFFC3C3C3FFB5B5B5FF575757FF515151FF4F4F
          4FFF4D4D4DFF4C4C4CFF4A4A4AFF474747FF454545FF424242FF424242FF4545
          45FF474747FF4A4A4AFF4C4C4CFF4D4D4DFF4F4F4FFF515151FF575757FFB5B5
          B5FFC3C3C3FFBFBFBFFFBBBBBBFFABABABFF4949497600000000000000002020
          2036A3A3A3FFB6B6B6FFBDBDBDFFC1C1C1FFADADADFF737373FFB4AEAEFFBBB5
          B5FFC0BBBBFFC5C0C0FFC9C4C4FFCCC8C8FFCECACAFFCFCBCBFFCFCBCBFFCECA
          CAFFCCC8C8FFC9C4C4FFC5C0C0FFC0BBBBFFBBB5B5FFB4AEAEFF737373FFADAD
          ADFFC1C1C1FFBDBDBDFFB6B6B6FFA3A3A3FF2121213700000000000000000202
          0204909090F1ADADADFFBBBBBBFFBFBFBFFFB2B2B2FF848484FFC1BCBCFFC8C3
          C3FFCECACAFFD3CFCFFFD7D3D3FFDAD7D7FFDCD9D9FFDDDADAFFDDDADAFFDCD9
          D9FFDAD7D7FFD7D3D3FFD3CFCFFFCECACAFFC8C3C3FFC1BCBCFF858585FFB2B2
          B2FFBFBFBFFFBBBBBBFFADADADFF919191F20202020400000000000000000000
          0000000000000000000000000000000000001212121B8D8D8DFFCEC9C9FFD4D1
          D1FFDAD7D7FFDFDCDCFFE3E0E0FFE5E3E3FFE7E5E5FFE8E6E6FFE8E6E6FFE7E5
          E5FFE5E3E3FFE3E0E0FFDFDCDCFFDAD7D7FFD4D1D1FFCEC9C9FF8E8E8EFF1212
          121B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001111111B929292FFD9D6D6FFE0DD
          DDFFE5E3E3FFE9E7E7FFEDEBEBFFF0EEEEFFF1F0F0FFF2F1F1FFF2F1F1FFF1F0
          F0FFF0EEEEFFEDEBEBFFE9E7E7FFE5E3E3FFE0DDDDFFD9D6D6FF939393FF1111
          111B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001010101B8E8E8EFFE3E0E0FFE9E7
          E7FFEEEDEDFFF3F2F2FFF6F5F5FFF8F8F8FFFAF9F9FFFAFAFAFFFAFAFAFFFAF9
          F9FFF8F8F8FFF6F5F5FFF3F2F2FFEEEDEDFFE9E7E7FFE3E0E0FF8E8E8EFF1010
          101B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A0A0A12888888F4EBEAEAFFF2F0
          F0FFF7F6F6FFFAFAFAFFFDFCFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFCFCFFFAFAFAFFF7F6F6FFF2F0F0FFEBEAEAFF888888F40A0A
          0A12000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000005050513F3F2F2FFF9F8
          F8FFFCFCFCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFCFCFFF9F8F8FFF3F2F2FF060606130000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000003030313F9F8F8FFFDFD
          FDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFFF9F8F8FF050505130000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000003030313FDFDFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF050505130000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000003030313FEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF040404130000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004040404130505
          0513050505130505051305050513050505130505051305050513050505130505
          0513050505130505051305050513050505130505051304040413000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          200000000000001000000000000000000000000000000000000045711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF678C47FF8BA671FFB9CAAAFFDCE5D5FFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF5B8339FF7E9D63FFA2B8
          8EFFD1DCC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFE8EDE3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF4F7F2FFD2DCC8FFD2DCC8FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFF8BA772FF4571
          1EFF8BA772FFFFFFFFFF97AF81FF45711EFF8BA772FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFF4F7F2FF517A
          2CFF517A2CFFE9EEE4FF517A2CFF45711EFFE9EEE4FFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFA2B8
          8FFF45711EFF5C843AFF45711EFF8BA772FFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFF4F7
          F2FF517A2CFF45711EFF45711EFFE9EEE4FFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF5C843AFF45711EFF517A2CFFF4F7F2FFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFB9CB
          ABFF45711EFF517A2CFF45711EFFA2B88FFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFF5C84
          3AFF45711EFFD2DCC8FF517A2CFF517A2CFFF4F7F2FFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFB9CBABFF4571
          1EFF688C48FFFFFFFFFFA2B88FFF45711EFF97AF81FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFD2DC
          C8FFE9EEE4FFFFFFFFFFF4F7F2FFD2DCC8FFDDE5D6FFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFFFFFFFFFF45711EFF45711EFF45711EFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF729555FF96AF80FFADC19CFFD1DC
          C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF5B8339FF7E9D63FFA2B88EFFC4D3B8FFE8EDE3FFFFFFFFFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF4571
          1EFF45711EFF45711EFF45711EFF45711EFF45711EFF45711EFF}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000E0E0E182121213F2020203D2020203B1E1E1E391E1E1E381D1D
          1D361B1B1B341A1A1A32191919301818182E1616162C1515152A131313271313
          132517161622171717201515151D1212121A0F0F0F160707070C0505050A0202
          0206000000000000000000000000000000000000000000000000000000000000
          00000000000048484862F1F1F1FFF0F0F0FFEFEFEFFFEEEEEEFFEEEEEEFFEDED
          EDFFECECECFFECECECFFEBEBEBFFEBEBEBFFEAEAEAFFEAEAEAFFE9E9E9FFE9E7
          E7FFE8E6E5FFE5E3E2FFDFDEDEFFE0DFDFFFE7E7E7FFE5E5E5FED3D3D3F47E7E
          7EC31B1B1B6B0404041500000000000000000000000000000000000000000000
          0000000000004747475EF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6
          F6FFF6F5F4FFF5F3F2FFF3F0EFFFEDECEBFFEEEDEDFFF7F6F6FFF8F8F8FFF8F8
          F8FFEEEEEEFE1F1F1F7102020208000000000000000000000000000000000000
          0000000000004747475BF8F8F8FFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F5F5FFF6F4F4FFF5F3F2FFF3F0EFFFEDECECFFEEEDEDFFF6F6F6FFF8F8
          F8FFF8F8F8FF9E9E9ED505050515000000000000000000000000000000000000
          00000000000044444458F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF6F6F6FFF6F5F5FFF5F4F4FFF5F3F2FFF3F0F0FFEEECECFFEEEDEDFFF6F6
          F6FFF7F7F7FFE7E7E7FD0C0C0C21000000000000000000000000000000000000
          0000000000003F3F3F54F7F7F7FFF6F6F6FFEFEFEFFFEAEAEAFFECECECFFF1F1
          F1FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F4F4FFF5F4F4FFF4F2F2FFF3F0F0FFEEEDECFFEEED
          EDFFF6F6F6FFF2F2F2FF24242441000000000000000000000000000000000000
          0000000000003C3C3C51F6F6F6FFF2F2F2FFC5C7E0FF7D86D5FF6E77D0FFA1A5
          D7FFE7E7E8FFF2F2F2FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF5F4F4FFF5F3F3FFF4F2F2FFF3F0EFFFEEED
          ECFFEEEDEDFFF4F4F4FF2B2B2B49000000000000000000000000000000000000
          0000000000003737374DF6F6F6FFF5F5F5FFABB1E3FF707BD6FFC2C5E1FF7D85
          D4FF777ECFFFE3E3E5FFF1F1F1FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF5F3F3FFF4F2F2FFF3F0
          EFFFEFEDECFFEDEDEDFF2B2B2B49000000000000000000000000000000000000
          0000000000003232324AF5F5F5FFF5F5F5FFEBECF2FF8B94DDFF9BA1DBFFE1E1
          E5FF8087D1FF8C92D3FFE7E7E7FFF1F1F1FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF5F3F3FFF4F2
          F2FFF3F0EFFFEFEDEDFF2C2B2B49000000000000000000000000000000000000
          0000000000002B2B2B46F4F4F4FFF5F5F5FFF4F4F4FFEDEEF2FFA8AEE3FF7782
          D6FFB6BADFFF5962CAFFBEC0DDFFE9E9E9FFF0F0F0FFF2F2F2FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF5F3
          F3FFF4F2F2FFF3F0F0FF2B2B2B48000000000000000000000000000000000000
          00000000000027272744F4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFD7D9
          ECFF8088D7FF4F5ACAFF5C66CAFFE5E5E7FFE8E8E8FFE9E9E9FFECECECFFEFEF
          EFFFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF3F2
          F2FFF4F3F3FFF4F2F2FF2A2A2A47000000000000000000000000000000000000
          00000000000026262643F3F3F3FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF2F2F2FFC5C8E7FF545FCBFF4B55C5FF8D92D3FFDBDBE9FFEDEDEDFFEBEB
          EBFFEBEBEBFFECECECFFEEEEEEFFF0F0F0FFF0F0F0FFEFEFEFFFF0F0F0FFF0F0
          F0FFF1F1F1FFF4F2F2FF2A2A2A46000000000000000000000000000000000000
          00000000000026262643F2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2
          F2FFF1F1F1FFF1F1F1FFA0A6DDFF4551C6FF7077CCFF2A34B9FF575FC4FF9B9F
          D7FFDEDFEAFFEFEFEFFFD9D9E7FF686AC1FF3133ADFF6767BFFFE7E7EDFFF1F1
          F1FFF2F2F2FFF3F3F3FF29292945000000000000000000000000000000000000
          00000000000025252541F2F2F2FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FFF1F1
          F1FFF1F1F1FFF0F0F0FFE0E1ECFF4753C8FFC4C6E1FFDFDFE7FF989CD6FF3B43
          BBFF0912AAFF3D43B8FF191FABFF1419A7FF383BB1FF00019BFF8B8BCCFFF3F3
          F3FFF4F4F4FFF3F3F3FF28282844000000000000000000000000000000000000
          00000000000024242440F2F2F2FFF3F3F3FFF2F2F2FFF2F2F2FFF1F1F1FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FF747ED4FF878ED5FFEBEBEBFFEEEEEEFFF0F0
          F0FFB7B9DEFF0710A9FF353BB5FF3539B3FF2D30AEFF4345B5FFCECEE5FFF3F3
          F3FFF3F3F3FFF2F2F2FF27272742000000000000000000000000000000000000
          0000000000002323233FF1F1F1FFF3F3F3FFF2F2F2FFF1F1F1FFF0F0F0FFF0F0
          F0FFF0F0F0FFEFEFEFFFEFEFEFFFABB1E0FF515DCCFFE6E7E9FFECECECFFE4E5
          EBFF313BB9FF353DB9FFE8E8EDFFF0F0F0FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3
          F3FFF3F3F3FFF2F2F2FF26262640000000000000000000000000000000000000
          0000000000002222223DF1F1F1FFF2F2F2FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0
          F0FFEFEFEFFFEEEEEEFFEEEEEEFFD6D8E9FF4E5BCDFFC4C7E3FFECECECFF6A72
          CCFF1521B3FFCBCDE4FFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF1F1F1FFF2F2
          F2FFF3F3F3FFF2F2F2FF2323233D000000000000000000000000000000000000
          0000000000002121213BF1F1F1FFF2F2F2FFF1F1F1FFF0F0F0FFF0F0F0FFEFEF
          EFFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFF6672D3FF9DA4DDFFC0C3E3FF2936
          BEFF7C84D0FFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF2F2
          F2FFF3F3F3FFF1F1F1FF2121213A000000000000000000000000000000000000
          0000000000001F1F1F39F0F0F0FFF1F1F1FFF0F0F0FFF0F0F0FFEFEFEFFFEEEE
          EEFFEEEEEEFFEDEDEDFFEDEDEDFFECECECFF929BDCFF7681D6FF5F6ACEFF4450
          C6FFE3E4EBFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1F1FFF1F1
          F1FFF2F2F2FFF0F0F0FF1F1F1F37000000000000000000000000000000000000
          0000000000001D1D1D36F0F0F0FFF1F1F1FFF0F0F0FFF0F0F0FFEFEFEFFFEEEE
          EEFFEEEEEEFFEDEDEDFFECECECFFECECECFFB7BCE3FF5765D2FF4856CCFFA6AC
          DDFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1
          F1FFF2F2F2FFF0F0F0FF1D1D1D34000000000000000000000000000000000000
          0000000000001B1B1B33EFEFEFFFF1F1F1FFF0F0F0FFEFEFEFFFEEEEEEFFEEEE
          EEFFEDEDEDFFECECECFFEBEBEBFFEBEBEBFFD3D5E7FF5F6DD5FF6874D4FFE9E9
          EBFFECECECFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFF0F0F0FFF0F0F0FFF1F1
          F1FFF2F2F2FFEFEFEFFF1B1B1B30000000000000000000000000000000000000
          00000000000019191930EEEEEEFFF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFEDED
          EDFFECECECFFECECECFFEBEBEBFFEAEAEAFFCDD0E6FF6775D8FFAEB4E0FFEAEA
          EAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1
          F1FFF1F1F1FFEFEFEFFF1919192D000000000000000000000000000000000000
          0000000000001919192EEEEEEEFFF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFEDED
          EDFFECECECFFEBEBEBFFEAEAEAFFEAEAEAFFA7AFE3FF6E7CDBFFAAB1E1FFEAEA
          EAFFEBEBEBFFECECECFFECECECFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1
          F1FFF1F1F1FFEEEEEEFE1B1B1B28000000000000000000000000000000000000
          0000000000001E1E1E2BEEEEEEFFF0F0F0FFF0F0F0FFEEEEEEFFEEEEEEFFEDED
          EDFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FF98A3E3FF7685DEFF9BA4DFFFE9E9
          E9FFEAEAEAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0
          F0FFF1F1F1FFEDEDEDFE1C1C1C24000000000000000000000000000000000000
          00000000000020202029ECECECFEF0F0F0FFF0F0F0FFEEEEEEFFEEEEEEFFEDED
          EDFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FF8E9BE5FF929EE1FF949FE0FFE9E9
          E9FFEAEAEAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0
          F0FFF1F1F1FFEDEDEDFE1818181F000000000000000000000000000000000000
          0000000000001F1F1F27ECECECFEF0F0F0FFF0F0F0FFEEEEEEFFEEEEEEFFEDED
          EDFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FF94A0E8FFB4BBE5FF98A2E2FFE9E9
          E9FFEAEAEAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0
          F0FFF1F1F1FFEDEDEDFE1414141B000000000000000000000000000000000000
          0000000000001D1D1D25EBEBEBFEF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFEDED
          EDFFECECECFFEBEBEBFFEAEAEAFFE9E9E9FFA5B0E9FF95A2E6FFACB4E5FFEAEA
          EAFFEBEBEBFFECECECFFECECECFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1
          F1FFF1F1F1FFECECECFE11111117000000000000000000000000000000000000
          0000000000001A1A1A22EBEBEBFEF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFEDED
          EDFFECECECFFECECECFFEBEBEBFFEAEAEAFFDADCE9FFBEC5E9FFDEE0E9FFEAEA
          EAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF1F1
          F1FFF1F1F1FFECECECFE0D0D0D13000000000000000000000000000000000000
          00000000000019191920EBEBEBFEF1F1F1FFF0F0F0FFEFEFEFFFEEEEEEFFEEEE
          EEFFEDEDEDFFECECECFFEBEBEBFFEBEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFEBEB
          EBFFECECECFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFF0F0F0FFF0F0F0FFF1F1
          F1FFF2F2F2FFEBEBEBFE0A0A0A0F000000000000000000000000000000000000
          0000000000001616161EEBEBEBFEF1F1F1FFF0F0F0FFF0F0F0FFEEEEEEFFEEEE
          EEFFEDEDEDFFECECECFFECECECFFECECECFFEBEBEBFFEBEBEBFFEBEBEBFFECEC
          ECFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF1F1
          F1FFF2F2F2FFEAEAEAFE0606060B000000000000000000000000000000000000
          00000000000010101017AEAEAED5BABABADABABABADABBBBBBDBBDBDBDDCBCBC
          BCDCBDBDBDDDBDBDBDDDBEBEBEDEBEBEBEDEBEBEBEDEBEBEBEDEBEBEBEDEBEBE
          BEDEBEBEBEDEBDBDBDDDBDBDBDDDBCBCBCDCBCBCBCDCBCBCBCDCBBBBBBDBB9B9
          B9DABABABADAB2B2B2D70505050A000000000000000000000000000000000000
          0000000000000000000000000001000000010101010201010102010101020101
          0102010101030101010301010103010101030101010302020204020202040202
          0204020202040202020502020205020202050202020503030306030303060303
          0306030303060303030600000001000000000000000000000000}
      end>
  end
  object imgNav16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 8192140
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002E744558745469746C650046697273743B446F75626C653B4172726F
          773B4261636B3B536B69703B507265763B526577696E64868055450000027349
          444154785EC5935B48544118C7FFBBAE5B292B6ABAA494525ED2B6C4F25288A1
          8676A1908830822448094CB312A48B16F4D0933D04D193D286212B9A91E65266
          64962288AD8962650F82A53E6837B5B33B7BCECCD71CD815ACC78206FE7CC38F
          6F7EDF1CCE390622C2DF2C23FEC132C9987DD570BE711CE5F5A3A86D798F8B8E
          09FF9055326B64028A6F0EAE64971BDFBEBADA3C4E7A05105875FF1D2A1AC696
          9B761DBB9E72A0DAD9BEAFFA0501B0FCC16A1DE3F48D1155DB47C837C520634E
          3B54B1E1E835E7ED925B43ACFEE534E5573DA34D69FB6D7ED6D03B437BA5C024
          8440D3C87730AF06FD6064CC1673C1E9BA3321E1519752122342E23686634961
          080E221494DC1848DD6CB524C44742E50011C1C4359287053C4CE060E59D23D1
          093B6B6C09D6B8D4E408CC2FB83130368BAF730AF2B293B1C366B5FC60848939
          8E88600304173079A58A712970AB48CDC8BA9B97958800B319935F14B85CD3B0
          8606A1302F5E67985AE258700B289CA078095C17E8576752A278BCF0AAAB312F
          9B3413C712936229654162992D4AE65505348DE0D60055EE8D6E8F06AFFE081E
          8EBEEE2755AD6DAEE961D794B41B1193148579E527DA9DA3904CF671A8043029
          51980057398C1E4585AA0930A661C051D3DC633F9B39D8DB57D7FD785899F9BC
          88C8F5EB106BB3A2BFE70DBA3A86DC9313B320C1A148932A0528BCF29CCE3DFA
          4439154E02B0D6F7FE83A3B715DA324ED8DB722F74F312FB07DA5AE4A0B0D8F4
          5C3F2BBDF791528E3F24E494B5F667977552C6C9A67E0096DDE54FE1FB164C32
          A1D1DB8BF3930E37BC4E2E6A2100512BD9039DC1E29B1C22139059DA89F4531D
          D853D9E51705CA84F97ACCBFB3FFFF37FE02C8BF4AE42C5ECDF9000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000031744558745469746C65004C6173743B446F75626C653B4172726F77
          3B466F72776172643B536B69703B4E6578743B526577696E643BDF9F345D0000
          028249444154785EC5935D48935118C7FF9B5B66684A59E0CD2051CB8C8A348A
          B0A2283F90B42F0D89082F144CF4A6D4A28440EB22CA4208B202696A8AA66188
          1AD22A6B6ECB026D3A9790D9AC15625AE2DECFF39ED371AC026F0B7AE0C739FC
          9E873FCFC5393AC618FEA6F4F807B58463E4E84FDD190E84FE7129A516EC2A79
          8C13575F21BBAA1F00741C4360C680B34DA3ACF0D6407B46C9CD84800CA96875
          2F76FAE3571C385A690500C339F3605F45B38B2D9C38631E6116F72C2B338F48
          B9977A6B62B665AEEDB04FB227A333BFDDA6D47C532048C7597AA1C9C56665C6
          4AEB86989E108A185304F233D705A7EF5C5F9C9C737E60D0EDC5AA70202F2D3A
          382D39BE78CBFE7C674AC9FDB2D048D30A00C19452340E7D87AC10A0A87690B9
          6628EBFAA8B17E2F61F6CF32AB6C1963B9557DEC729B93F5BE9B61368FE077A9
          A77BC63764541494DF73B26B2FBFB1829A016650140DA246312751CCFA287441
          4062920971B1ABD16D1983FDF51B1C3A96F8CBAD79D41D52ABA81A648D421255
          184491605E6110B9D4A80E2A0FF489E04D0DAACABDA4E2874F0581E67744D1FC
          ABCB7C5E9014E86559C5BC4421A8149AC643640D0EEB7B74B4D8B12C8C203D6B
          2382F446BF6BA8EBF33A9E76968B1281A250489206BD24A998E3174634B847BC
          68355B453AEDC1E183F148D81C0B8FC787070D0EC1D66BA976B6976D9F785E5D
          2F092A544221CB0406492018767D85DD364EA7263F3CF4D86EDFC8B97EF7C5A7
          290A87FDADDF7D196ABB383DD6330140E084FB04192A65501402EC28E86209D9
          75CFA292F2F62C3439917B8B7A163B03471777A40500427717B65A930B3BD9D6
          938D560088080C19030FC5B8D845EDAB474C5633A20F34014010278CB392B3FC
          FFFFC69F43966D3643BB4D970000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002C744558745469746C65004E6578743B446F75626C653B4172726F77
          3B466173743B526577696E643B496E637265617365C977401F000002A4494441
          54785EA5937F2C947F00C73F59FA4145B1564C368DFAA3560B49E12F27B34EAD
          E5BEFB2E6B5487B14493CC8F6A213BD250A11885EE34CDF97147256EA2E3B843
          E28E76A8CC6EDCA8DCE122DE3DCFB3E30FFACF677BFFF1BCB6F7EBD93EEFE721
          00D695750BE8634265933126E1057D6B98CFCD26E215F996B85D1191801429F1
          4F6C21CB8C3E9BE3042A843F5548CEDF2A75A3C0162A5BEFBC1E5CCD4C5C2E8B
          C885E48F841D2F21AC9846E219F1861198C594F4A37D588724FEC06220AFB9FC
          C869EED1EAF65148D5BF5698FB7F4907E897D1A26EED0291690CE454683D2330
          8F2AFA8CEFB3C0F0F412848A0970B3E47309056D908F6831A09D43A57C1CDC6C
          F9AC6F7445A6BDF3393BA368C389103123D816F1B407CAA92588BF2DA255B388
          4ECD3C1ED40C8173EF03E29ECB51AFD2423AAA4746B51A67121A275D2FE6C553
          BD9DC63B223BB88F145068FFA07C701E2F9506F0550688870DA856E9702DBF07
          ACEB75887DA18050F573851D0FAAF8E2E89312440B2C02D365681E5B4071DF1C
          0A7B0DC8ED9A4176870E8F3B7528E9D5234B328EC3FF578227195BC368816540
          722BC443BFF1A47B06399D7A64CAF4784809D29A26C1E175C09D5B85E0EC56F0
          5A2656D8218EE0AB9D67E2555AB08B9D2081A07F16E96DD35459878C962904E7
          F5C2234C044EDA7BDCAD53E37EA306C1B99FE01C24FCB19F957AD7D4CCDAC638
          2FB1624537E0591755944E23AC7800EE212203275688941A2552A96268919261
          4E67728AB6DBBAD0739AD3733AB0F9CC0AD62743EA70E3D508BC221BE0E49F5F
          6B61EFE99DC557208AAFA6D83B86591DF477A52F9CCA467AC2DBEFA7C83EBF32
          46B0F3D8A52A38B20B657B9C43CF1AE7D9EDC1AD5DCD4CE9A2035B40ECFDF8C4
          CEB78CECF52E6504A6C692E5F207F22F66E35D42A830455B5629313EAFFF6FFC
          0B0C0C183FEAAD166E0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002C744558745469746C6500507265763B446F75626C653B4172726F77
          3B536C6F773B526577696E643B44656372656173657A53DE51000002C7494441
          54785EA5917B48937B18C77F5DA5A8437634ED58FFD439A0E18514D48E5A201C
          8E7F2CA39AE1AC855A695E32D363DE466547524E1EBC7496E70CAF34D174B510
          AF73A8D3E69C0E346D738A79094D0AB7DCA6730AF2EDFDEDB010EA3F5FF8C2FB
          7E789ECFEFF73E0F01B0A5105EC324C97E3E41D26BC6C89D2A0DC9AA9FF8CA98
          6707933D4CF6D277EE5FCA6F18C9A8D59234A196A4566BC8EDF21146A4A545DB
          695160447E60486A73CFB9CC2E30EC87CDECF7542965FB484AB59AE82C209F56
          616BB43B1596E97A21BBA93EB6706043D8370F81588D1341E17E94C5140D6E08
          150BF82DA9830AEC49A26094366E63B2DB23F8B20B9BD758105B3260AEEC9E43
          FB3B2344430BC8289523A67870B552F6011D3316B44D99119CD44E050769F34E
          26FBD9592FD2AE172A754F2533783D6D8270681129CF4610F78F0A7CC92C7ADF
          9B211AB7E0EF7E136ADEAEE04C422B153810568A901391D733F6583C09F9EC2A
          DAA757F0F0D538A28B95A0AC976192D975548E9A51A05C466ECF12CADF981078
          A3890A1CC9A53FE5681D334236BF8E5AE68492FE4550D6AC36A06B6ECDCA4A87
          5750A434215F6EC4FDAECF783260846F5423151C2241917C2E2B5D3275A74283
          FF5406142AF4B855358C8B0F64486618BFDF80E2C1653CEA3322A77B09D9521D
          1E2B0CF0B92AA602674287B7D7DEC5D1FFCA535E484ABB3EBE4C83DCCE8F486B
          9C02A7A017AC0C296E5226D3E15EA71EE9123D72985B7871445470980427B47D
          DDBBC3B1805FBCC34ACB4F27B658A2046AFCD13287E4BA5170EE8AC1B0B54881
          06773B74E049F57067D753C14FC4FF5A13E1AB4CD655DA36E2E476D6D72D94DF
          1C10DF8AE8322DF2CA143870D48F45D9AF716D88AE9880EBF93A2A3842987F21
          3E5C31F1E6BE24272FBFB08976D11D3B7B455F3C1EF2AFCA33ACC15ABC99FD1C
          6A1538118F70D1FF091311777603F1BC64FDB689EC98FC48A74D67F55D06604B
          D9B2E00B4EFC1D5F135F05C60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000027744558745469746C650046697273743B4172726F773B4261636B3B
          536B69703B507265763B526577696E64018E90D40000028D49444154785EA593
          5D4854411886DFB3EB6A922D68B56A7A91413F9219FE643FB089149178515090
          46175996601A097B51E84D52E14D255414265EA8650666D4452246B5EA86FDB0
          B63726041586441892BA1ECF9C99F99AB37BA4F6DA81E19DF9CE3B0FEF7798D1
          8808CB1971B6A2B1E73338279004040842484889A80AA994D05A9BEFB0CF58CA
          882C37A0D9C578002E6B7FA13D84DAFB9F50736F0CD5B783B00F2494D6B5EDAD
          B8F2FA55F9D5B704207129BDEB62C798BFFAD647AABA11F05BA05F3A615A4D1B
          1EBFFFF4F5ADC79A06BB7D6D217A1E9AA1A34D430460151145E2389D712E6FF3
          D9EDF0DD7DEFB5F69E442D92AAE850BD272BAFB4213575EDA9E21D99099E3437
          4C09306EC3EDE89AE084911F0C9C4B580936141C5C915F76AE363925CD575C98
          E9CEDEB406537302A19F1CEBDC0E7043C4001C26978A4C100A5F7ABEB5327D7D
          AEAF30273DA328271D61A961FCB7C0AC2EA00B826E28AF90B1094C2EC0549199
          02DEDD3B6FEED9B51170C5E1EBBCC4AC0118AACE149C73C202772815B100C624
          0C2E22E43F6143C5E5E04E07E60D012E084C024CA9A9206153A9F12F81C35A2C
          EA1C561B5C195EBE18A8EFE80C4C8E06BE80192CD29A6EF0680A2EB0C8A06A22
          16A02B23E3042E243EF436768F3EBA541818F45FEEEB1A991B0F7E8314028A0F
          9380059383F35800F4453B012700603393C1E9604F4DF3F8E09DBC40FF9BB6FE
          07C36C72620A2401836BE0CC6EC11E2B4BEA9E0EEDAB1F206F75EF3080A46BFE
          992583D3FAEEC93D5E9475A0E55941651F9D6C9FA09C8A3E02E02152629B9200
          24DBEADC56FE10D947BAB0E570E7FF57DDBD3AF74C594649CBBBCDE54F08408A
          05D0962879271E8338457F9088B623A504915AABFDF7FE2ACD7E2B8936344C44
          E6B29FF35F8A7E791DC98C55400000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002A744558745469746C65004C6173743B4172726F773B466F72776172
          643B536B69703B4E6578743B526577696E643B5B449245000002934944415478
          5EA5935B48555D10C767EB399AA961178D34CE8B45F8701E7D2814CACA820A7A
          AAB07CA80CC98C0A310C4384B0A8C0822C8C48EA80DD03C920132F64A99C13A2
          562A1C022D341F3C712CB57D599769D66EE9F7E1AB1B8659336BE6B7FEB358DB
          404458CAE751CEA08F5CACCEC992FA01293882400152227086208504EEE6A4BB
          7E5195F38FA01578CF0786B0B82ED47EE0E2B32D14C791C51CAD0D41E1B52014
          5CE98583353DEE59641EBDEF75630D882F7BF01987C767B1FAF1081EB9DCD1B8
          F3445DD63CA87F8A4170D2720FAA080C7415DFEAC3A2DA9E2E17A401CBCEDE1F
          C4A88338FA1BB1E5D34F2CADEBB7F65F7873C7BFB364BD0619AAAEF2D110466D
          C4E33743AA312146CF6D7021C06208C3510989A9295074C81FBF2FDF7F322BB7
          6028EFD4D3CAD40D9B572B90BA9BEE71073897A0D479E6018201581261C61230
          3D479B845EEB5B03C70EAF5AD1FD31B5CABBBCBA68EAFBC80D468D8CEA045B04
          501B730E82C904086980C3054428A724666665802F332DBDB73BED3AA3BC2324
          384CB87DFF0128316B23FC21B292E948A042044E8B191B002D06B3A60D711E2F
          D8046142BA80853BB02D0ED3247F8E4C414C9B8394125030180C7E85E70F3B26
          42ADCDE596C941A9E56C1140C9FA4500D396A0D450278407C6E055E3BB99BEB6
          CE4BE196EAECB1CE9A80693B341E02D70A3C0B0022462D3709DFC293F0251876
          223FC6029191E6ABD3A3ED1394B6C9924D4B2B20C8FF5F624A7E791B963D19C5
          9C92D7B871CFEDA6347F6136E513F513372A5A23A0E26DA79BDE6F3FD78AB9C5
          2F3F509C340F48DE7AE62D6EDA5BDFBB2EBB74B78AF593357CF90D90B1E31EA4
          E7DD050D4B225BA97DACA10086E18E92A0C7B1C8B86F57034A2900258224A3C0
          F552485775A4A7D42D5EF2EFFC17EABC8B701AFC8B800000000049454E44AE42
          6082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000011744558745469746C6500446F776E3B4172726F773BBDFC82580000
          029049444154785E65926B48935118C78FD3564A46F4C5BE04E13E6846376390
          45E85022304A717611C9D034BB41855DE665B39517C4795D5898B70CA9B40F5E
          E78DCD255E3237C2FA5239B7D499A2656AA3E5947FE7BC4C51DF033FDE87F3FC
          DF1FCF39EF4B00900DCB8522A0B86DC095EBAD5900C8AA405963240F292C28AF
          1A6897571B9056F5012995039095BDC7CD425D07135DC9D592B8EC0EBEE05E69
          3FF9B9B8CCCA4DB79EF480D6EB8852B4B0A09065A4B246BEE04E492F99B12FB1
          72F38DA26E4CDB97D0396943E70F1B067FD97136B58905B7D07D127EB79E2710
          303B7B99E299A8EAC2D45F079ABECF73F44CD91071BF8105B753DC9D39C15A81
          F05A811E89797A24E476E1728E16569B03755F6751F76516DAD10544A5B7E1BC
          5C83C8540DA4C9CDDC34EB046149AF5BDEF6596099FB87D1F9458EEA4FD3A81E
          9A81C63447F9CDF56AB4DF70E482BA954DB1EE08E2D349BED1690D0B6F8C5328
          78370E759F154F0726F18C52DC3301957E0CC5FA518424542D880262FDD8D75A
          2B6008832E163F5094F542DD3D8EF496118A190AFA54348F205F3786988C56EC
          0F55CA9C7740360A5C285B0363CB062B75263CD29891D668E25052517AED100E
          85A90CEC9229029E4012FF823DDCFC24D78F4624D53A2AFAAD486E18464AFD30
          F23A2D90C4953B768B2F1D63997DA7F2094F703CA67C650A77FFB0EC027694AC
          363332E8243159EDF00D4E2DA43D0F96D97352C51704443F271F276CAC146CF3
          F2F51247AA474A7566C8EB3E636F688ED963876827EB19AC7F88CF896CBE407C
          AE8418699305E8127A075C954A6FBF5A0E89AF58DE753856CAF6588F210ACEE4
          0BFC23D4E460B89A1C3853B472144F9F10658D77A0EC25ABD99E48924944920C
          220A7ACC17F021AECEDFD683ABF98B13FC07806FBA055103A92F000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000F744558745469746C650055703B4172726F773BC85E281400000275
          49444154785E7D527D485351143FEF4DF7219399A9690EA1AF592409936A546C
          5242DA871F907D424C8288502144C706111641909052A0564890454A655F5011
          14EC8FA6188404D11F6111441AA331DBF7EEBBB7732F7BF09CD2E1FDE09EF7FB
          9DDF3DE7BC078C31F84F4802CB87A895D5C43B32059EDB53D07D7312BA86DF8B
          E2CEEBFEC143BE2737F8B9C53301CDDD8FA1B1EB111C3837BED88547CFAD497E
          5673E94CDF1BD7B587338A6FD0AFECEFBC5BCB4D54BEBE636C6907845050A3BE
          EDA23157AF1F6E76AD93DD4DD5B25E9F3754B5E7B449E5A946BBC4409224D96A
          DBE6ABABA9A84C180C90329BA065B7ADB26CFD4E2F723AA155C832068A0212C6
          51EFFDCDA5C5059E9A6A2BCCC752F02B9202E72E1B58CB567AB6B75EA9E21A85
          D0253B50379EEBBEFC3AF0E9FB1FF6EEE75FF6EC5B58E0E58F0536FD658E39DB
          4602A8D10B6DF60E10F2F1F313EDB5F60A47CA648060340DB1041108470924F3
          CDD0E8DAE4D87A78A01DB5BAEC11E4BDA7FAD6141716F6DAB794C387D9300443
          498827148821420B4998FE1A02976B23941615F5DA9C1D6BD5DA9C8C81CE52BA
          61A0B5CE96FF793E011203900885D9DF3141AE5E6104638E0C337309387BC261
          F65D0DF623D18C48A90632C8FA7DFD0F3E02A31428655077D00E84316E26F2A7
          6301A098230D9692550DD91DA4C72F359832B3198F5D781534EA64A00A56E343
          38140A6F878E94201F47505EA3DD016DEA799E608C45314912C2790684221815
          371334C3E09AC80EF7289F4DD1760084885C404131D797E3EC186204EDDFA760
          2E426B904E1368E97921F87864C17FEF8EDF892388DB19EF2415F323471C2747
          D170F91F49FB69F3101644410616F14E708B6BFF01189337125152162A000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001B744558745469746C65004E6578743B506C61793B4172726F773B52
          6967687416E40EAE000002AF49444154785EA5925D6895751CC73FCFD14D46BE
          B41AF6C20A870425152C2F82A08B0ABD295D05416F572184045D2644082A425A
          831A62128E2E448C59108D9430D84A1C81DBD4D6B6D05C3B739B5B3BB1EDAC73
          CEF33CFFDF4BCFE1807076DB173E7CF95FFC3E7C2FFE91BB136501D600D556C0
          3F3839EC8262062A86A9A3E2881B224AE9DF949E032F90A396B5877A46C3BEAF
          0687DF3DDABB0B683CBAE7A99C064352458212AA484053218943F55D3BA4969C
          A8B2E7C5C71E3FF7EBFAEFDEEBFAA56FE1D6C4FECFF73E7D1908638BC1821A6A
          10D439DCD58FA8D7092255A3A5B9898EE71F213FBBF9B99F06365D7CFBE0F9AF
          676E0C1FDED6DC70030803B3154B122388616AF582204A2A30B562DCD5BC8137
          3AB6716DEC9ED7FBD76F7C75C3E6B3DD7F0EF67EFCCC834D7380EC78BFD7D457
          2D90E0A46A9412A5583688E081875A78B3F5DEC6CBD75AF636346D7AAB65EBB3
          9DBF5F387EE242D7AE2520D0E59EBBB320552AC1A8A4423938C58A905F4C3302
          AD5BEE67F72BDB373EB1BDFDC0932F7D34D4FE5AE73B4063DD822408A5D4AB20
          6224197195580966AC6B8878B47D0B0F6FBDAFB5E754F205701A48EE082AA540
          A124148A29E6206A04ABC9725184C6C6D0C84D4606AF2FAE14663E03A47E811A
          CB15214E0D7343CC897211EBD6464C8C4F73F5D278BCFCF7ADEEF93F7A3B97A7
          06E680A44E90A6CA526CC4C18822674D2EC7FCC43C570646AD3033F5CD3F13FD
          870AD7CFFD05C480B5ED3CEEAB048195B262EE141796B87A7194DBF97CDFCAF4
          9583B77F3B35045400FDF0C7593F7DE45B4484D50B982B14B3C33126C76F8E94
          1646F74F0F7ED9079401D9F7C3AC03A880AA60AB7EA2A6B1F27DF7F9A9CAE2E4
          91C94B9F9C014A4068DB71CCCD9C339F9EA5DAA686BB634E9DA0FCF38997EFA6
          961848DB761E7337C7CC5071DC0C73C7AB4419A60044EECEFFC97FFDEAC21326
          FC988F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000011F144D086C48FF086C48FF086C48FF086C
          48FF011F144D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000124185A0D734EFF0D734EFF0D734EFF0D73
          4EFF0124185A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000124185A137953FF137953FF137953FF1379
          53FF0124185A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000124185A1A8059FF1A8059FF1A8059FF1A80
          59FF0124185A000000000000000000000000000000000000000000000000011C
          1246012216550122165501221655023B279121865FFF21865FFF21865FFF2186
          5FFF023B2791012216550122165501221655011D134900000000000000001C7E
          58FA288E66FF288E66FF288E66FF288E66FF288E66FF288E66FF288E66FF288E
          66FF288E66FF288E66FF288E66FF288E66FF1C825BFF00000001000000002183
          5CFA31956DFF31956DFF31956DFF31956DFF31956DFF31956DFF31956DFF3195
          6DFF31956DFF31956DFF31956DFF31956DFF22875FFF00000000000000002688
          61FA399E74FF399E74FF399E74FF399E74FF399E74FF399E74FF399E74FF399E
          74FF399E74FF399E74FF399E74FF399E74FF278C64FF00000000000000002D93
          6AFA46B185FF46B185FF46B185FF46AF84FF42A67CFF42A57BFF42A57BFF42A6
          7CFF46AF84FF46B185FF46B185FF46B185FF2F976DFF0000000000000000011C
          12460122165501221655012216550239268E4AAE84FF49AD84FF49AD84FF4AAE
          84FF033C2791012216550122165501221655011D134900000000000000000000
          00000000000000000000000000000122165550B38AFF50B38AFF50B38AFF50B3
          8AFF0225185A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000122165557BA90FF57BA90FF57BA90FF57BA
          90FF0225185A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000012216555DBF94FF5DBF94FF5DBF94FF5DBF
          94FF0225185A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000011D134947B085FF48B286FF48B286FF47B1
          85FF0220154D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000710
          344608143F5508143F5508143F5508143F5508143F5508143F5508143F550814
          3F5508143F5508143F5508143F5508143F550711364900000000000000000C33
          BDFA062FC2FF062FC2FF062FC2FF062FC2FF062FC2FF062FC2FF062FC2FF062F
          C2FF062FC2FF062FC2FF062FC2FF062FC2FF0C34C1FF00000001000000001343
          C5FA1148CFFF1148CFFF1148CFFF1148CFFF1148CFFF1148CFFF1148CFFF1148
          CFFF1148CFFF1148CFFF1148CFFF1148CFFF1344C9FF00000000000000001C55
          CEFA1E65DDFF1E65DDFF1E65DDFF1E65DDFF1E65DDFF1E65DDFF1E65DDFF1E65
          DDFF1E65DDFF1E65DDFF1E65DDFF1E65DDFF1C58D3FF0000000000000000266C
          D9FA2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8D
          F0FF2E8DF0FF2E8DF0FF2E8DF0FF2E8DF0FF266FDFFF00000000000000000710
          344608143F5508143F5508143F5508143F5508143F5508143F5508143F550814
          3F5508143F5508143F5508143F5508143F550711364900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000233227D054E33BB0005030D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000033624820E734EFF0E744EFF065437C40005030D0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000004382584147953FF157B55FF157B55FF157B54FF09563AC40005
          030D000000000000000000000000000000000000000000000000000000000000
          0000063A26851B815AFF1E845CFF1E845CFF1E845CFF1E845CFF1D835CFF0B58
          3CC40005030D000000000000000000000000000000000000000000000000073C
          2886248961FF278C64FF278C64FF278C64FF278C64FF278C64FF278C64FF268B
          63FF0E5B3FC50005030D00000000000000000000000000000000062F20692D92
          6AFF30956CFF30956CFF30956DFF2D966CFF21855EF031966EFF30956CFF3095
          6CFF30946CFF115D41C50005030D00000000000000000000000000130C302385
          5EEC3BA176FF3A9F75FF359F73FF0737257A01150D33268861EE3BA076FF3A9E
          75FF3A9E75FF399E74FF146043C50005030D0000000000000000000000000013
          0C2E298963EB3EA97DFF07362578000000000000000001150E342C8F67EF44A9
          80FF44A77DFF44A77DFF43A77DFF176446C50005030E00000000000000000000
          000000100A2804261A560000000000000000000000000000000001160E353394
          6DEF4DB188FF4DB086FF4DB086FF4CAF85FF1A6749C50005030E000000000000
          0000000000000000000000000000000000000000000000000000000000000116
          0E35389A72EF56B98FFF55B78EFF55B78EFF4BB187FF021E1449000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001160F363DA077F05DC095FF55BC90FF0939287900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001170F373C9F76F00C3E2B7E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000030208000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000061034460103090D0000000000000000000000000000
          00000103090D0610344700000000000000000000000000000000000000000000
          0000000000000919526F062BBFFF0D2892C50103090D00000000000000000103
          090D0D2892C5062BBFFF091A5471000000000000000000000000000000000000
          0000091A526F0830C1FF042DC2FF052DC2FF0D2B93C50103090D0103090D0D2B
          93C5052DC2FF042DC2FF0830C1FF091A526F0000000000000000000000000611
          34470C37C6FF0935C5FF0935C5FF0935C5FF0935C5FF0F2D95C50F2D95C50935
          C5FF0935C5FF0935C5FF0935C5FF0C37C6FF0610344600000000000000000103
          0B0F1032A0C70D40D1FF0C3ECAFF0C3ECAFF0C3ECAFF0C3EC9FF0C3EC9FF0C3E
          CAFF0C3ECAFF0C3ECAFF0D40D2FF1032A0C701030A0E00000000000000000000
          000001030B0F1136A3C7124AD6FF1147CEFF1147CEFF1147CEFF1147CEFF1147
          CEFF1147CEFF124AD7FF1135A2C701030A0E0000000000000000000000000000
          00000000000001030B0F133AA4C71653D8FF1551D3FF1551D3FF1551D3FF1551
          D3FF1653D8FF1339A4C701030A0E000000000000000000000000000000000000
          0000000000000103090D14389BC51A5BD8FF1A5CD9FF1A5CD9FF1A5CD9FF1A5C
          D9FF1A5BD8FF133899C40103090D000000000000000000000000000000000000
          00000103090D153C9CC51E65DDFF1E66DDFF1E66DDFF1E66DDFF1E66DDFF1E66
          DDFF1E66DDFF1E65DDFF153B9BC40103090D0000000000000000000000000103
          090D173F9DC5236FE2FF2370E3FF2370E3FF2370E3FF2473E8FF2473E8FF2370
          E3FF2370E3FF2370E3FF236FE2FF163E9CC40103090D00000000000000000710
          33452673E8FF2779E8FF2779E7FF2779E7FF287DEEFF1946A6C51946A6C5287D
          EEFF2779E7FF2779E7FF2779E7FF2675E9FF0712374A00000000000000000000
          00000C1F566F2B7EEEFF2B82EBFF2C86F1FF1A49A6C501030A0E01030A0E1A49
          A6C52C86F1FF2B82EBFF2B81F0FF0E235E780000000000000000000000000000
          0000000000000C2057702E89F0FF1B4CA6C501030A0E00000000000000000103
          0A0E1B4CA6C52F8BF2FF0E245E78000000000000000000000000000000000000
          000000000000000000000712354701030A0E0000000000000000000000000000
          000001030A0E0713374A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000020101000100000000000000000101
          0001000000020000000200000001000000000000000000000000000000000000
          00000301000546361369684F1D9B60461D9B483416770604010A0604010A4935
          167860461D9B684E1D9B46361369030100050000000000000000000000000000
          00000806010E7C6121C4A4802DFFA4802DFF896A25D8100C0419100C0419896A
          25D8A4802DFFA4802DFF7C6121C40806010E0000000000000000000000000000
          00000806020E826726C5A98432FFA98432FF8F6F29D9110E041A110E041A8F6F
          29D9A98432FFA98432FF826726C50806020E0000000000000000000000000000
          00000806020E866A29C5AF8836FFAF8836FF91732ED9110E051A110E051A9173
          2ED9AF8836FFAF8836FF866A29C50806020E0000000000000000000000000000
          00000A07020E896D2DC5B48D3BFFB48D3BFF967830D9120F051A120F051A9678
          30D9B48D3BFFB48D3BFF896D2DC50A07020E0000000000000000000000000000
          00000A07030E8F7130C5B99140FFB99140FF9B7A35D9120F061A120F061A9B7A
          35D9B99140FFB99140FF8F7130C50A07030E0000000000000000000000000000
          00000A07030E927434C5BE9644FFBE9644FFA07F39D9140F061A140F061AA07F
          39D9BE9644FFBE9644FF927434C50A07030E0000000000000000000000000000
          00000A07030E967737C5C39A49FFC39A49FFA4813ED9140F071A140F071AA481
          3ED9C39A49FFC39A49FF967737C50A07030E0000000000000000000000000000
          00000A08030E9A7B3BC5C99F4EFFC99F4EFFA98541D9140F071A140F071AA985
          41D9C99F4EFFC99F4EFF9A7B3BC50A08030E0000000000000000000000000000
          00000A08040EA07E40C5CEA352FFCEA352FFAD8B46D91410081A1410081AAD8B
          46D9CEA352FFCEA352FFA07E40C50A08040E0000000000000000000000000000
          00000A08040EA48242C5D3A857FFD3A857FFB28D4AD91510081A1510081AB28D
          4AD9D3A857FFD3A857FFA48242C50A08040E0000000000000000000000000000
          00000B08040EA48545C4D8AC5BFFD8AC5BFFB78F4DD81511081915110819B78F
          4DD8D8AC5BFFD8AC5BFFA48545C40B08040E0000000000000000000000000000
          0000040301045C4C31658B71509682714F966256397207070409070704096256
          397282714F968B7150965C4C3165040301040000000000000000000000000000
          0000000000000000000101010001010100010100000100000000000000000100
          0001010100010101000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000027744558745469746C6500526566726573683B5265706561743B4261
          72733B526962626F6E3B52656C6F6164CD4DF6E90000037749444154785E6593
          6B4C537718C69F73E885622F4069C9B02DA1ADB60C2133D471DDD451D8257C02
          2661B3719912A3092163898BDBF8B06422DB74612612CDE64CDCE2A698CC2DA2
          0C541C9918645BB701EB3414B99536E08022A597737ADE71927E58C693BCFFBC
          F9E5799E2FFFBC0C364A64FFE794988DE6CF6F55032034567433EF7596AB37E7
          A85AC0302FB22C1C448020D02F3C47BD8F3C4B9F76BC3314FCE44A05AD330844
          585F80B3BDAF00007BB2CBE9BC70C73533E0F998BCF33F5030FA9B38343EFF3D
          F58F1EA7737D0DB347CF943A456F44F06085BF87F7BF28054470A2AB72CFE5C1
          43F4C07F999EC4876989FB891E477B6921DA438BDC6D5A37D398EF22755EDD4B
          CD271DF5626689BB83B74E3920693AB643AF516BCFE7659723439B0E6F6008D7
          6F0F60E46F0F44E5DB6D28DABE1DF9D66750F8F4F3989B0F7C597DC0329026DD
          153878BC80D8CCEC4D2DD9FADC145D8606EE078338FBF5377CFFDDC10FA7C717
          AC33138FAD3F0F0D1FB976EBC798D7EF86C1900AAB292F45A393BE0D800DADC5
          20E1E3F4B22E3D13ABDC1CDC7F8D61666EAEADEFCCEC31001C44011DCA237266
          F88FB18F5277CB91AE27C438FE2500EF46C25C9CE5B9B84DA10462F12798F64D
          63C5C79D17C3CBDC5D4A7C27EBEE5BF86ABD18E3C11E90F2112251CE044071E5
          84572E0947F8C8C44A8F54A94843B24C0685542E88414E0893B3DEACCA2FD6FB
          08B4492661118AFD038A876032EA5587DB75CB828065361CE2A67D8100FC2137
          AC66234C76CD7E00529DDCC9DCBC34115E5E8C746CCBCD455DCD0B880B1C1809
          8FC6FDB5D0E9B4181B9D6D4FB239B45B55AA9462953E0C8D3C0B6BAB5462B029
          42AA34B94FFB540A3B726FFE7E7246AC9E74BF6B92A4045EE0F170E657F47C37
          35E5BEBE788029ADDE6CDE569239BA65475461B66402410BA6BC8B989CF46375
          758DF38E2E952B53E5B6AD858A0BF93BA31075B32B04CFF08ACBDD1DBC240259
          952BA7F1607B01B575DBE9DB87657463B281067CCD7471701FD535E7F603D0D7
          34D9FBDB6ED8A8F5AA899EAD4D1599120083C4935C5663A8AF6BD9E26FEAB4D0
          07D72C74EABE95CEB94BE8707B1155BC96E372546595B85AF3B8CA43199CA558
          510440E278550D54BD99932881D468571BCA6A0D9FED6C308EECDE6BA25DAF9B
          E8B93DC63F2BDFB0B4025057ED339F2EA8569E06A0103385752A301BCF1832B1
          1D4052820B006200E2FF615C82E35FC02B8FD5CBC3AEEB0000000049454E44AE
          426082}
      end>
  end
  object popDBAction: TPopupMenu
    Images = imgNav16
    Left = 140
    Top = 190
    object Addnewcontactdetail1: TMenuItem
      Action = actInsert
    end
    object Editselectedcontactdetail1: TMenuItem
      Action = actEdit
    end
    object Deleteselectedcontactdetail1: TMenuItem
      Action = actDelete
    end
  end
  object actDB: TActionList
    Images = imgNav16
    Left = 135
    Top = 255
    object actInsert: TAction
      Caption = 'Add new contact detail'
      ImageIndex = 9
      ShortCut = 45
      OnExecute = DoDBAction
    end
    object actEdit: TAction
      Tag = 1
      Caption = 'Edit selected contact detail'
      ImageIndex = 13
      ShortCut = 13
      OnExecute = DoDBAction
    end
    object actDelete: TAction
      Tag = 2
      Caption = 'Delete selected contact detail'
      ImageIndex = 10
      ShortCut = 46
      OnExecute = DoDBAction
    end
  end
  object styLegend: TcxEditStyleController
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Verdana'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Left = 235
    Top = 185
    PixelsPerInch = 96
  end
  object dlgFireDACError: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 320
    Top = 185
  end
  object barManager: TdxBarManager
    AllowReset = False
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = False
    Left = 410
    Top = 185
    PixelsPerInch = 96
  end
  object dlgFileSave: TSaveDialog
    Filter = 'Excel Files (*.xlsx)|*.xlsx'
    Left = 211
    Top = 255
  end
  object dlgPrint: TdxPrintDialog
    ButtonsEnabled = [pdbPrinterProperties, pdbNetwork, pdbPreview, pdbPageSetup]
    ButtonsVisible = [pdbPrinterProperties, pdbNetwork, pdbPageSetup]
    OptionsEnabled = [pdoPrintToFile, pdoAllPages, pdoCurrentPage, pdoPageRange]
    Left = 290
    Top = 255
  end
end
