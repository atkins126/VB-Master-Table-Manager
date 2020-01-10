inherited ReportDM: TReportDM
  OldCreateOrder = True
  OnDestroy = DataModuleDestroy
  Height = 737
  Width = 1191
  object cdsActivityType: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(NAME)) > 0'
        ErrorMessage = 'Activity Type name must have a name'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
      end>
    IndexName = 'idxName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'ACTIVITY_TYPE_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'ACTIVITY_TYPE'
    StoreDefs = True
    Left = 135
    Top = 10
    object cdsActivityTypeID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsActivityTypeNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
  end
  object cdsAgePeriod: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(NAME)) > 0'
        ErrorMessage = 'Age Period name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end>
    CachedUpdates = True
    IndexDefs = <
      item
        Name = 'idxID'
        Fields = 'ID'
        Options = [ixPrimary]
      end
      item
        Name = 'idxName'
        CaseInsFields = 'NAME'
        Fields = 'NAME'
        Options = [ixUnique, ixCaseInsensitive]
      end>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxID'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'AGE_PERIOD_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'AGE_PERIOD'
    StoreDefs = True
    Left = 235
    Top = 10
    object cdsAgePeriodID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAgePeriodNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
    end
  end
  object cdsBank: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(NAME)) > 0'
        ErrorMessage = 'Bank name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxBankID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxBankName'
        Fields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxBankName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'BANK_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'BANK'
    StoreDefs = True
    Left = 335
    Top = 10
    object cdsBankID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBankNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
  end
  object cdsBankAccountType: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(NAME)) > 0'
        ErrorMessage = 'Bank  Account Type name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxBankAccTypeID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxBankAccTypeName'
        Fields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxBankAccTypeName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'BANK_ACCOUNT_TYPE_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'BANK_ACCOUNT_TYPE'
    StoreDefs = True
    Left = 435
    Top = 10
    object cdsBankAccountTypeID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBankAccountTypeNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
  end
  object cdsContactType: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(NAME)) > 0'
        ErrorMessage = 'Contact Type name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxCTID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxCTName'
        Fields = 'NAME'
        Options = [soNoCase, soUnique]
      end>
    IndexName = 'idxCTName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'CONTACT_TYPE_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CONTACT_TYPE'
    StoreDefs = True
    Left = 535
    Top = 10
    object cdsContactTypeID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContactTypeNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 30
    end
  end
  object cdsCustomer: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CUSTOMER_TYPE_ID > 0'
        ErrorMessage = 'Customer type must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 
          'CHAR_LENGTH(TRIM(NAME)) > 0 OR (CHAR_LENGTH(TRIM(FIRST_NAME)) > ' +
          '0 AND CHAR_LENGTH(TRIM(LAST_NAME)) > 0)'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxCustomerID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxCustName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxCustName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'CUSTOMER_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CUSTOMER'
    StoreDefs = True
    Left = 635
    Top = 10
    object cdsCustomerID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustomerCUSTOMER_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
      Required = True
    end
    object cdsCustomerYEAR_END_MONTH_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Year End'
      FieldName = 'YEAR_END_MONTH_ID'
      Origin = 'YEAR_END_MONTH_ID'
      Required = True
    end
    object cdsCustomerTAX_OFFICE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tax Office'
      FieldName = 'TAX_OFFICE_ID'
      Origin = 'TAX_OFFICE_ID'
    end
    object cdsCustomerVAT_MONTH_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'VAT Month'
      FieldName = 'VAT_MONTH_ID'
      Origin = 'VAT_MONTH_ID'
    end
    object cdsCustomerVAT_COUNTRY_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'VAT Country'
      FieldName = 'VAT_COUNTRY_ID'
      Origin = 'VAT_COUNTRY_ID'
    end
    object cdsCustomerVAT_OFFICE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'VAT Office'
      FieldName = 'VAT_OFFICE_ID'
      Origin = 'VAT_OFFICE_ID'
    end
    object cdsCustomerAR_MONTH_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'AR Month'
      FieldName = 'AR_MONTH_ID'
      Origin = 'AR_MONTH_ID'
    end
    object cdsCustomerSTATUS_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Status'
      FieldName = 'STATUS_ID'
      Origin = 'STATUS_ID'
      Required = True
    end
    object cdsCustomerNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
    object cdsCustomerFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsCustomerLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object cdsCustomerINITIALS: TStringField
      DisplayLabel = 'Init'
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      Size = 5
    end
    object cdsCustomerTRADING_AS: TStringField
      DisplayLabel = 'Trading As'
      FieldName = 'TRADING_AS'
      Origin = 'TRADING_AS'
      Size = 100
    end
    object cdsCustomerBILL_TO: TStringField
      DisplayLabel = 'Bill To Name'
      FieldName = 'BILL_TO'
      Origin = 'BILL_TO'
      Size = 100
    end
    object cdsCustomerCO_NO: TStringField
      DisplayLabel = 'Company No'
      FieldName = 'CO_NO'
      Origin = 'CO_NO'
    end
    object cdsCustomerTAX_NO: TStringField
      DisplayLabel = 'Tax No'
      FieldName = 'TAX_NO'
      Origin = 'TAX_NO'
    end
    object cdsCustomerVAT_NO: TStringField
      DisplayLabel = 'VAT No'
      FieldName = 'VAT_NO'
      Origin = 'VAT_NO'
    end
    object cdsCustomerVAT_CUSTOMS_CODE: TStringField
      DisplayLabel = 'VAT Customs Code'
      FieldName = 'VAT_CUSTOMS_CODE'
      Origin = 'VAT_CUSTOMS_CODE'
    end
    object cdsCustomerPAYE_UIF_NO: TStringField
      DisplayLabel = 'PAYE/UIF No'
      FieldName = 'PAYE_UIF_NO'
      Origin = 'PAYE_UIF_NO'
    end
    object cdsCustomerSDL_NO: TStringField
      DisplayLabel = 'SDL No'
      FieldName = 'SDL_NO'
      Origin = 'SDL_NO'
    end
    object cdsCustomerWC_NO: TStringField
      DisplayLabel = 'WC No'
      FieldName = 'WC_NO'
      Origin = 'WC_NO'
    end
    object cdsCustomerAR_COMPLETION_DATE: TSQLTimeStampField
      DisplayLabel = 'AR Comp Date'
      FieldName = 'AR_COMPLETION_DATE'
      Origin = 'AR_COMPLETION_DATE'
    end
    object cdsCustomerSARS_AUTHORIZATION_SHEET: TStringField
      FieldName = 'SARS_AUTHORIZATION_SHEET'
      Origin = 'SARS_AUTHORIZATION_SHEET'
    end
    object cdsCustomerPASTEL_ACC_CODE: TStringField
      DisplayLabel = 'Pastel Acc'
      FieldName = 'PASTEL_ACC_CODE'
      Origin = 'PASTEL_ACC_CODE'
      Size = 25
    end
    object cdsCustomerVB_TAX_ACC_CODE: TStringField
      DisplayLabel = 'VB Tax Acc Code'
      FieldName = 'VB_TAX_ACC_CODE'
      Origin = 'VB_TAX_ACC_CODE'
      Size = 25
    end
    object cdsCustomerIS_PROV_TAX_PAYER: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Prov'
      FieldName = 'IS_PROV_TAX_PAYER'
      Origin = 'IS_PROV_TAX_PAYER'
      Required = True
    end
    object cdsCustomerHAS_LIVING_WILL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Liv Will'
      FieldName = 'HAS_LIVING_WILL'
      Origin = 'HAS_LIVING_WILL'
      Required = True
    end
    object cdsCustomerIS_ORGAN_DONOR: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Org Donr'
      FieldName = 'IS_ORGAN_DONOR'
      Origin = 'IS_ORGAN_DONOR'
      Required = True
    end
    object cdsCustomerDATE_CREATED: TSQLTimeStampField
      DisplayLabel = 'Created'
      FieldName = 'DATE_CREATED'
      Origin = 'DATE_CREATED'
    end
    object cdsCustomerDATE_MODIFIED: TSQLTimeStampField
      DisplayLabel = 'Modified'
      FieldName = 'DATE_MODIFIED'
      Origin = 'DATE_MODIFIED'
    end
    object cdsCustomerIS_ACTIVE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Act'
      FieldName = 'IS_ACTIVE'
      Origin = 'IS_ACTIVE'
      Required = True
    end
    object cdsCustomerEFILING: TStringField
      DisplayLabel = 'EFiling'
      FieldName = 'EFILING'
      Origin = 'EFILING'
      Size = 30
    end
    object cdsCustomerEF_USER_NAME: TStringField
      DisplayLabel = 'EF User Name'
      FieldName = 'EF_USER_NAME'
      Origin = 'EF_USER_NAME'
      Size = 30
    end
    object cdsCustomerEF_PASSWORD: TStringField
      DisplayLabel = 'EF Password'
      FieldName = 'EF_PASSWORD'
      Origin = 'EF_PASSWORD'
    end
    object cdsCustomerCUSTOMER_GROUP_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CG ID'
      FieldName = 'CUSTOMER_GROUP_ID'
      Origin = 'CUSTOMER_GROUP_ID'
    end
  end
  object cdsCustomerGroup: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Customer Group name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'CUSTOMER_GROUP_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CUSTOMER_GROUP'
    StoreDefs = True
    Left = 135
    Top = 290
    object cdsCustomerGroupID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustomerGroupNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
  end
  object cdsCustomerStatus: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Customer Status name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'CUSTOMER_STATUS_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CUSTOMER_STATUS'
    StoreDefs = True
    Left = 235
    Top = 290
    object cdsCustomerStatusID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustomerStatusNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
    end
  end
  object cdsCustomerType: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Customer Type name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'CUSTOMER_TYPE_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CUSTOMER_TYPE'
    StoreDefs = True
    Left = 335
    Top = 290
    object cdsCustomerTypeID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustomerTypeNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 30
    end
  end
  object cdsJobFunction: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Jab Function name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'JOB_FUNCTION_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'JOB_FUNCTION'
    StoreDefs = True
    Left = 435
    Top = 290
    object cdsJobFunctionID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsJobFunctionNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
  end
  object cdsMonthOfYear: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Month of Year name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end>
    IndexName = 'idxID'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'MONTH_OF_YEAR_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'MONTH_OF_YEAR'
    StoreDefs = True
    Left = 635
    Top = 290
    object cdsMonthOfYearID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMonthOfYearNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 10
    end
  end
  object cdsPricelist: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Price item name must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'RATE_UNIT_ID <> Null'
        ErrorMessage = 'Rate Uit must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'RATE > 0'
        ErrorMessage = 'Value for rate must be > 0'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(DESCRIPTION) > 0'
        ErrorMessage = 'Item Description must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'PRICE_LIST_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'PRICE_LIST'
    StoreDefs = True
    Left = 720
    Top = 290
    object cdsPricelistID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPricelistRATE_UNIT_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Unit'
      FieldName = 'RATE_UNIT_ID'
      Origin = 'RATE_UNIT_ID'
      Required = True
    end
    object cdsPricelistRATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
    end
    object cdsPricelistNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 200
    end
    object cdsPricelistINVOICE_DESCRIPTION: TStringField
      DisplayLabel = 'Invoice Description'
      FieldName = 'INVOICE_DESCRIPTION'
      Origin = 'INVOICE_DESCRIPTION'
      Size = 200
    end
    object cdsPricelistDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 500
    end
    object cdsPricelistRATE_UNIT: TStringField
      DisplayLabel = 'Rate Unit'
      FieldName = 'RATE_UNIT'
      Size = 30
    end
  end
  object cdsRateUnit: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(NAME)) > 0'
        ErrorMessage = 'Rate Unit name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'RATE_UNIT_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'RATE_UNIT'
    StoreDefs = True
    Left = 130
    Top = 435
    object cdsRateUnitID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRateUnitNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 30
    end
  end
  object cdsSalutation: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(NAME)) > 0'
        ErrorMessage = 'Salutation name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'SALUTATION_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'SALUTATION'
    StoreDefs = True
    Left = 230
    Top = 435
    object cdsSalutationID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSalutationNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
    end
  end
  object cdsStdActivity: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(NAME)) > 0'
        ErrorMessage = 'Std Activity name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'STD_ACTIVITY_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'STD_ACTIVITY'
    StoreDefs = True
    Left = 330
    Top = 435
    object cdsStdActivityID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsStdActivityNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 100
    end
  end
  object cdsTaxOffice: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(NAME)) > 0'
        ErrorMessage = 'Tax Office name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxName'
        Fields = 'NAME'
        Options = [soNoCase, soUnique]
      end>
    IndexName = 'idxName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'TAX_OFFICE_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'TAX_OFFICE'
    StoreDefs = True
    Left = 430
    Top = 435
    object cdsTaxOfficeID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTaxOfficeNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 40
    end
  end
  object cdsVehicleMake: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(NAME)) > 0'
        ErrorMessage = 'Vehicle Make name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soUnique]
      end
      item
        Active = True
        Selected = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'VEHICLE_MAKE_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'VEHICLE_MAKE'
    StoreDefs = True
    Left = 530
    Top = 435
    object cdsVehicleMakeID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVehicleMakeNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 30
    end
  end
  object dtsActivityType: TDataSource
    DataSet = cdsActivityType
    Left = 135
    Top = 60
  end
  object dtsAgePeriod: TDataSource
    DataSet = cdsAgePeriod
    Left = 235
    Top = 60
  end
  object dtsBank: TDataSource
    DataSet = cdsBank
    Left = 335
    Top = 60
  end
  object dtsBankAccountType: TDataSource
    DataSet = cdsBankAccountType
    Left = 435
    Top = 60
  end
  object dtsContactType: TDataSource
    DataSet = cdsContactType
    Left = 535
    Top = 60
  end
  object dtsCustomer: TDataSource
    DataSet = cdsCustomer
    Left = 635
    Top = 60
  end
  object dtsCustomerGroup: TDataSource
    DataSet = cdsCustomerGroup
    Left = 135
    Top = 340
  end
  object dtsCustomerStatus: TDataSource
    DataSet = cdsCustomerStatus
    Left = 235
    Top = 340
  end
  object dtsCustomerType: TDataSource
    DataSet = cdsCustomerType
    Left = 335
    Top = 340
  end
  object dtsJobFunction: TDataSource
    DataSet = cdsJobFunction
    Left = 435
    Top = 340
  end
  object dtsMonthOfyear: TDataSource
    DataSet = cdsMonthOfYear
    Left = 635
    Top = 340
  end
  object dtsPriceList: TDataSource
    DataSet = cdsPricelist
    Left = 720
    Top = 340
  end
  object dtsRateUnit: TDataSource
    DataSet = cdsRateUnit
    Left = 130
    Top = 485
  end
  object dtsSalutation: TDataSource
    DataSet = cdsSalutation
    Left = 230
    Top = 485
  end
  object dtsStdActivityType: TDataSource
    DataSet = cdsStdActivity
    Left = 330
    Top = 485
  end
  object dtsTaxOffice: TDataSource
    DataSet = cdsTaxOffice
    Left = 430
    Top = 485
  end
  object dtsVehicleMake: TDataSource
    DataSet = cdsVehicleMake
    Left = 530
    Top = 485
  end
  object FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink
    Left = 885
    Top = 120
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 885
    Top = 65
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 885
    Top = 5
  end
  object cdsMasterList: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Name = 'idxMasterListID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxMasterListName'
        Fields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxMasterListName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'MASTER_LIST_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'MASTER_LIST'
    Left = 535
    Top = 290
    object cdsMasterListID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMasterListNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 30
    end
    object cdsMasterListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 255
    end
    object cdsMasterListIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
      Origin = 'IS_ACTIVE'
      Required = True
    end
    object cdsMasterListREAD_ONLY: TIntegerField
      FieldName = 'READ_ONLY'
      Origin = 'READ_ONLY'
      Required = True
    end
    object cdsMasterListSCRIPT_ID: TIntegerField
      FieldName = 'SCRIPT_ID'
      Origin = 'SCRIPT_ID'
      Required = True
    end
  end
  object dtsMasterList: TDataSource
    DataSet = cdsMasterList
    Left = 535
    Top = 340
  end
  object cdsCountry: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(NAME)) > 0'
        ErrorMessage = 'Country name must have a vlaue'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxName'
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'COUNTRY_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'COUNTRY'
    StoreDefs = True
    Left = 720
    Top = 10
  end
  object dtsCountry: TDataSource
    DataSet = cdsCountry
    Left = 720
    Top = 60
  end
  object cdsContactDetailCo: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CONTACT_TYPE_ID > 0'
        ErrorMessage = 'Contact type must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(VALUE)) > 0'
        ErrorMessage = 'Contact detail must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Name = 'idxCID'
        Fields = 'CUSTOMER_ID'
      end
      item
        Active = True
        Selected = True
        Name = 'idxContactdetailValue'
        Fields = 'CUSTOMER_ID;CONTACT_TYPE_ID;VALUE'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxContactdetailValue'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FetchOptions.DetailDelay = 450
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'CONTACT_DETAIL_CO_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CONTACT_DETAIL_CO'
    StoreDefs = True
    Left = 130
    Top = 575
    object cdsContactDetailCoID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContactDetailCoCONTACT_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Contac Type'
      FieldName = 'CONTACT_TYPE_ID'
      Origin = 'CONTACT_TYPE_ID'
      Required = True
    end
    object cdsContactDetailCoCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsContactDetailCoCONTACT_PERSON_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CP ID'
      FieldName = 'CONTACT_PERSON_ID'
      Origin = 'CONTACT_PERSON_ID'
      Required = True
    end
    object cdsContactDetailCoVALUE: TStringField
      DisplayLabel = 'Value'
      FieldName = 'VALUE'
      Origin = '"VALUE"'
      Required = True
      Size = 75
    end
    object cdsContactDetailCoCOMMENT: TStringField
      DisplayLabel = 'Comment'
      FieldName = 'COMMENT'
      Origin = '"COMMENT"'
      Size = 255
    end
  end
  object dtsContactDetailCo: TDataSource
    DataSet = cdsContactDetailCo
    Left = 130
    Top = 635
  end
  object cdsAddress: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
      end
      item
        Active = True
        Selected = True
        Name = 'idxCID'
        Fields = 'CUSTOMER_ID'
      end>
    IndexName = 'idxCID'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FetchOptions.DetailDelay = 450
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'ADDRESS_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'ADDRESS'
    StoreDefs = True
    Left = 240
    Top = 575
    object cdsAddressID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAddressCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsAddressPHYSICAL1: TStringField
      DisplayLabel = 'Physical 1'
      FieldName = 'PHYSICAL1'
      Origin = 'PHYSICAL1'
      Size = 50
    end
    object cdsAddressPHYSICAL2: TStringField
      DisplayLabel = 'Physical 2'
      FieldName = 'PHYSICAL2'
      Origin = 'PHYSICAL2'
      Size = 50
    end
    object cdsAddressPHYSICAL3: TStringField
      DisplayLabel = 'Physical 3'
      FieldName = 'PHYSICAL3'
      Origin = 'PHYSICAL3'
      Size = 50
    end
    object cdsAddressPHYSICAL4: TStringField
      DisplayLabel = 'Physical 4'
      FieldName = 'PHYSICAL4'
      Origin = 'PHYSICAL4'
      Size = 50
    end
    object cdsAddressPHYSICAL_CODE: TStringField
      DisplayLabel = 'Post Code'
      FieldName = 'PHYSICAL_CODE'
      Origin = 'PHYSICAL_CODE'
      Size = 10
    end
    object cdsAddressPOSTAL1: TStringField
      DisplayLabel = 'Postal 1'
      FieldName = 'POSTAL1'
      Origin = 'POSTAL1'
      Size = 50
    end
    object cdsAddressPOSTAL2: TStringField
      DisplayLabel = 'Postal 2'
      FieldName = 'POSTAL2'
      Origin = 'POSTAL2'
      Size = 50
    end
    object cdsAddressPOSTAL3: TStringField
      DisplayLabel = 'Postal 3'
      FieldName = 'POSTAL3'
      Origin = 'POSTAL3'
      Size = 50
    end
    object cdsAddressPOSTAL4: TStringField
      DisplayLabel = 'Postal 4'
      FieldName = 'POSTAL4'
      Origin = 'POSTAL4'
      Size = 50
    end
    object cdsAddressPOSTAL_CODE: TStringField
      DisplayLabel = 'Post Code'
      FieldName = 'POSTAL_CODE'
      Origin = 'POSTAL_CODE'
      Size = 10
    end
    object cdsAddressBILLING1: TStringField
      DisplayLabel = 'Billing 1'
      FieldName = 'BILLING1'
      Origin = 'BILLING1'
      Size = 50
    end
    object cdsAddressBILLING2: TStringField
      DisplayLabel = 'Billing 2'
      FieldName = 'BILLING2'
      Origin = 'BILLING2'
      Size = 50
    end
    object cdsAddressBILLING3: TStringField
      DisplayLabel = 'Billing 3'
      FieldName = 'BILLING3'
      Origin = 'BILLING3'
      Size = 50
    end
    object cdsAddressBILLING4: TStringField
      DisplayLabel = 'Billing 4'
      FieldName = 'BILLING4'
      Origin = 'BILLING4'
      Size = 50
    end
    object cdsAddressBILLING_CODE: TStringField
      DisplayLabel = 'Post Code'
      FieldName = 'BILLING_CODE'
      Origin = 'BILLING_CODE'
      Size = 10
    end
  end
  object dtsAddress: TDataSource
    DataSet = cdsAddress
    Left = 235
    Top = 635
  end
  object cdsContactDetailPerson: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CONTACT_TYPE_ID > 0'
        ErrorMessage = 'Contact type must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(VALUE)) > 0'
        ErrorMessage = 'Contact detail must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxCPCustID'
        Fields = 'CONTACT_PERSON_ID;CUSTOMER_ID'
      end>
    IndexName = 'idxCPCustID'
    ConstraintsEnabled = True
    MasterSource = dtsContactPerson
    MasterFields = 'ID'
    DetailFields = 'CONTACT_PERSON_ID;CUSTOMER_ID'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FetchOptions.DetailDelay = 450
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'CONTACT_DETAIL_PERSON_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CONTACT_DETAIL_PERSON'
    StoreDefs = True
    Left = 540
    Top = 575
    object cdsContactDetailPersonID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContactDetailPersonCONTACT_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Contact Type'
      FieldName = 'CONTACT_TYPE_ID'
      Origin = 'CONTACT_TYPE_ID'
      Required = True
    end
    object cdsContactDetailPersonCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object cdsContactDetailPersonCONTACT_PERSON_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Contact Person'
      FieldName = 'CONTACT_PERSON_ID'
      Origin = 'CONTACT_PERSON_ID'
    end
    object cdsContactDetailPersonVALUE: TStringField
      DisplayLabel = 'Value'
      FieldName = 'VALUE'
      Origin = '"VALUE"'
      Required = True
      Size = 75
    end
    object cdsContactDetailPersonCOMMENT: TStringField
      DisplayLabel = 'Comment'
      FieldName = 'COMMENT'
      Origin = '"COMMENT"'
      Size = 255
    end
  end
  object dtsContactDetailPerson: TDataSource
    DataSet = cdsContactDetailPerson
    Left = 540
    Top = 635
  end
  object cdsBankingDetail: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'BANK_ID > 0'
        ErrorMessage = 'Bank name must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'ACCOUNT_TYPE_ID > 0'
        ErrorMessage = 'Account type must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(ACCOUNT_NO)) > 0'
        ErrorMessage = 'Account number must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <
      item
        Name = 'idxID'
        Fields = 'ID'
        Options = [ixPrimary]
      end
      item
        Name = 'idxBDCustomerID'
        Fields = 'CUSTOMER_ID'
      end
      item
        Name = 'idxBankingDetail'
        Fields = 'CUSTOMER_ID;BANK_ID;ACCOUNT_TYPE_ID;ACCOUNT_NO'
        Options = [ixUnique, ixCaseInsensitive]
      end>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxBDCustomerID'
        Fields = 'CUSTOMER_ID'
      end
      item
        Active = True
        Name = 'idxBankingDetail'
        Fields = 'CUSTOMER_ID;BANK_ID;ACCOUNT_TYPE_ID;ACCOUNT_NO'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxBDCustomerID'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FetchOptions.DetailDelay = 450
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'BANKING_DETAIL_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'BANKING_DETAIL'
    StoreDefs = True
    Left = 325
    Top = 575
    object cdsBankingDetailID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBankingDetailCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsBankingDetailBANK_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Bank'
      FieldName = 'BANK_ID'
      Origin = 'BANK_ID'
      Required = True
    end
    object cdsBankingDetailACCOUNT_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Account Type'
      FieldName = 'ACCOUNT_TYPE_ID'
      Origin = 'ACCOUNT_TYPE_ID'
      Required = True
    end
    object cdsBankingDetailBRANCH_CODE: TStringField
      DisplayLabel = 'Branch Code'
      FieldName = 'BRANCH_CODE'
      Origin = 'BRANCH_CODE'
      Size = 10
    end
    object cdsBankingDetailACCOUNT_NO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCOUNT_NO'
      Origin = 'ACCOUNT_NO'
      Required = True
    end
    object cdsBankingDetailFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object cdsBankingDetailLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
  end
  object dtsBankingDetail: TDataSource
    DataSet = cdsBankingDetail
    Left = 320
    Top = 635
  end
  object cdsContactPerson: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(FIRST_NAME)) > 0'
        ErrorMessage = 'Contact person first name must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'JOB_FUNCTION_ID > 0'
        ErrorMessage = 'Contact person job function must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxCPCustID'
        Fields = 'CUSTOMER_ID'
      end>
    IndexName = 'idxCPCustID'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FetchOptions.DetailDelay = 450
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'CONTACT_PERSON_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CONTACT_PERSON'
    StoreDefs = True
    Left = 430
    Top = 575
    object cdsContactPersonID: TIntegerField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContactPersonCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      DisplayWidth = 10
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsContactPersonSALUTATION_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Salutation'
      DisplayWidth = 10
      FieldName = 'SALUTATION_ID'
      Origin = 'SALUTATION_ID'
      Required = True
    end
    object cdsContactPersonFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      DisplayWidth = 30
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Required = True
      Size = 30
    end
    object cdsContactPersonLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      DisplayWidth = 30
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Required = True
      Size = 30
    end
    object cdsContactPersonINITIALS: TStringField
      DisplayLabel = 'Init'
      DisplayWidth = 5
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      Required = True
      Size = 5
    end
    object cdsContactPersonOTHER_NAME: TStringField
      DisplayLabel = 'Other Name'
      DisplayWidth = 50
      FieldName = 'OTHER_NAME'
      Origin = 'OTHER_NAME'
      Size = 50
    end
    object cdsContactPersonDOB: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DOB'
      Origin = 'DOB'
    end
    object cdsContactPersonID_NUMBER: TStringField
      DisplayLabel = 'ID Number'
      DisplayWidth = 20
      FieldName = 'ID_NUMBER'
      Origin = 'ID_NUMBER'
    end
    object cdsContactPersonPASSPORT_NUMBER: TStringField
      DisplayLabel = 'Passport Number'
      DisplayWidth = 20
      FieldName = 'PASSPORT_NUMBER'
      Origin = 'PASSPORT_NUMBER'
    end
    object cdsContactPersonIS_PRIMARY_CONTACT: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Prim'
      DisplayWidth = 10
      FieldName = 'IS_PRIMARY_CONTACT'
      Origin = 'IS_PRIMARY_CONTACT'
      Required = True
    end
    object cdsContactPersonJOB_FUNCTION_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Job Function'
      DisplayWidth = 10
      FieldName = 'JOB_FUNCTION_ID'
      Origin = 'JOB_FUNCTION_ID'
    end
  end
  object dtsContactPerson: TDataSource
    DataSet = cdsContactPerson
    Left = 425
    Top = 635
  end
  object cdsDirector: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(FIRST_NAME)) > 0'
        ErrorMessage = 'Director first name must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(LAST_NAME)) > 0'
        ErrorMessage = 'Director last name must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(MOBILE_PHONE)) > 0'
        ErrorMessage = 'Director mobile phone must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(EMAIL_ADDRESS)) > 0'
        ErrorMessage = 'Director email address must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxDirID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Name = 'idxDirCustID'
        Fields = 'CUSTOMER_ID'
      end
      item
        Active = True
        Selected = True
        Name = 'idxDirName'
        Fields = 'CUSTOMER_ID;FIRST_NAME;LAST_NAME'
        Options = [soUnique]
      end>
    IndexName = 'idxDirName'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FetchOptions.DetailDelay = 450
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'DIRECTOR_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'DIRECTOR'
    StoreDefs = True
    Left = 645
    Top = 575
    object cdsDirectorID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDirectorCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsDirectorSALUTATION_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Salutation'
      FieldName = 'SALUTATION_ID'
      Origin = 'SALUTATION_ID'
    end
    object cdsDirectorFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Required = True
      Size = 30
    end
    object cdsDirectorLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Required = True
      Size = 30
    end
    object cdsDirectorMIDDLE_NAME: TStringField
      DisplayLabel = 'Middle Name'
      FieldName = 'MIDDLE_NAME'
      Origin = 'MIDDLE_NAME'
      Size = 30
    end
    object cdsDirectorTAX_NO: TStringField
      DisplayLabel = 'Tax Number'
      FieldName = 'TAX_NO'
      Origin = 'TAX_NO'
    end
    object cdsDirectorMOBILE_PHONE: TStringField
      DisplayLabel = 'Mobile Phone'
      FieldName = 'MOBILE_PHONE'
      Origin = 'MOBILE_PHONE'
      Size = 15
    end
    object cdsDirectorEMAIL_ADDRESS: TStringField
      DisplayLabel = 'Email Address'
      FieldName = 'EMAIL_ADDRESS'
      Origin = 'EMAIL_ADDRESS'
      Size = 100
    end
  end
  object dtsDirector: TDataSource
    DataSet = cdsDirector
    Left = 640
    Top = 635
  end
  object cdsBeneficiary: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(FIRST_NAME)) > 0'
        ErrorMessage = 'Beneficiary first hame must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(LAST_NAME)) > 0'
        ErrorMessage = 'Beneficiary last name must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(MOBILE_PHONE)) > 0'
        ErrorMessage = 'Beneficiary mobile phone must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(EMAIL_ADDRESS)) > 0'
        ErrorMessage = 'Beneficiary email address must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxBID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Name = 'idxBCustID'
        Fields = 'CUSTOMER_ID'
      end
      item
        Active = True
        Selected = True
        Name = 'idxBName'
        Fields = 'CUSTOMER_ID;FIRST_NAME;LAST_NAME'
        Options = [soUnique]
      end>
    IndexName = 'idxBName'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FetchOptions.DetailDelay = 450
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'BENEFICIARY_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'BENEFICIARY'
    StoreDefs = True
    Left = 720
    Top = 575
    object cdsBeneficiaryID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBeneficiaryCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsBeneficiarySALUTATION_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Salutation'
      FieldName = 'SALUTATION_ID'
      Origin = 'SALUTATION_ID'
      Required = True
    end
    object cdsBeneficiaryFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Required = True
      Size = 30
    end
    object cdsBeneficiaryLAST_NAME: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Required = True
      Size = 30
    end
    object cdsBeneficiaryMOBILE_PHONE: TStringField
      DisplayLabel = 'Mobile Phone'
      FieldName = 'MOBILE_PHONE'
      Origin = 'MOBILE_PHONE'
      Size = 15
    end
    object cdsBeneficiaryEMAIL_ADDRESS: TStringField
      DisplayLabel = 'Email Address'
      FieldName = 'EMAIL_ADDRESS'
      Origin = 'EMAIL_ADDRESS'
      Size = 100
    end
  end
  object dtsBeneficiary: TDataSource
    DataSet = cdsBeneficiary
    Left = 720
    Top = 635
  end
  object cdsVehicle: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(VEHICLE_MODEL)) > 0'
        ErrorMessage = 'Vehicle model must have a value'
        FromDictionary = False
      end
      item
        CustomConstraint = 'THE_YEAR > 1960'
        ErrorMessage = 'Vehicle manufacture year must be > 1960'
        FromDictionary = False
      end
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(REG_NO)) > 0'
        ErrorMessage = 'Vehicle registration number must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'idxVID'
        Fields = 'ID'
        Options = [soPrimary]
      end
      item
        Active = True
        Selected = True
        Name = 'idxVCustID'
        Fields = 'CUSTOMER_ID'
      end
      item
        Active = True
        Name = 'idxVehicle'
        Fields = 'THE_YEAR;VEHICLE_MAKE_ID;VEHICLE_MODEL;REG_NO;RENEWAL_DATE'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxVCustID'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailDelay]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FetchOptions.DetailDelay = 450
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale, fvDataSnapCompatibility]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'VEHICLE_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'VEHICLE'
    StoreDefs = True
    Left = 795
    Top = 575
    object cdsVehicleID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVehicleCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsVehicleTHE_YEAR: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Year'
      FieldName = 'THE_YEAR'
      Origin = 'THE_YEAR'
      Required = True
    end
    object cdsVehicleVEHICLE_MAKE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Make'
      FieldName = 'VEHICLE_MAKE_ID'
      Origin = 'VEHICLE_MAKE_ID'
      Required = True
    end
    object cdsVehicleVEHICLE_MODEL: TStringField
      DisplayLabel = 'Model'
      FieldName = 'VEHICLE_MODEL'
      Origin = 'VEHICLE_MODEL'
      Required = True
      Size = 40
    end
    object cdsVehicleREG_NO: TStringField
      DisplayLabel = 'Reg No'
      FieldName = 'REG_NO'
      Origin = 'REG_NO'
      Required = True
      Size = 15
    end
    object cdsVehicleRENEWAL_DATE: TDateField
      DisplayLabel = 'Renew Date'
      FieldName = 'RENEWAL_DATE'
      Origin = 'RENEWAL_DATE'
      Required = True
    end
    object cdsVehicleMAINTENANCE_PLAN: TIntegerField
      Alignment = taCenter
      DefaultExpression = '0'
      DisplayLabel = 'Mnt Pln'
      FieldName = 'MAINTENANCE_PLAN'
      Origin = 'MAINTENANCE_PLAN'
      Required = True
    end
    object cdsVehicleCOMMENT: TStringField
      DisplayLabel = 'Comment'
      FieldName = 'COMMENT'
      Origin = '"COMMENT"'
      Size = 100
    end
  end
  object dtsVehicle: TDataSource
    DataSet = cdsVehicle
    Left = 795
    Top = 635
  end
  object rptTimesheetByUser: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43498.656623368100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 30
    Top = 435
    Datasets = <
      item
        DataSetName = 'Timesheet'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftBottom]
        Height = 22.677180000000000000
        Top = 260.787570000000000000
        Width = 1046.929810000000000000
        DataSetName = 'Timesheet'
        RowCount = 0
        Stretched = True
        object TimesheetACTIVITY_DATE: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'ACTIVITY_DATE'
          DataSetName = 'Timesheet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Timesheet."ACTIVITY_DATE"]')
        end
        object TimesheetCUSTOMER_NAME: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'CUSTOMER_NAME'
          DataSetName = 'Timesheet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Timesheet."CUSTOMER_NAME"]')
        end
        object TimesheetACTIVITY_TYPE: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 151.181102360000000000
          Height = 18.897650000000000000
          DataField = 'ACTIVITY_TYPE'
          DataSetName = 'Timesheet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Timesheet."ACTIVITY_TYPE"]')
        end
        object TimesheetACTIVITY: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Width = 283.464566929134000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ACTIVITY'
          DataSetName = 'Timesheet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Timesheet."ACTIVITY"]')
        end
        object TimesheetTIME_SPENT: TfrxMemoView
          AllowVectorExport = True
          Left = 831.496731810000000000
          Width = 41.574803150000000000
          Height = 18.897650000000000000
          DataField = 'TIME_SPENT'
          DataSetName = 'Timesheet'
          DisplayFormat.FormatStr = '###0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Timesheet."TIME_SPENT"]')
        end
        object TimesheetRATE: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984256850000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          DataField = 'ACTUAL_RATE'
          DataSetName = 'Timesheet'
          DisplayFormat.FormatStr = '###0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Timesheet."ACTUAL_RATE"]')
        end
        object TimesheetITEM_VALUE: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 990.236896614173200000
          Width = 56.692913385826800000
          Height = 18.897650000000000000
          DataField = 'ITEM_VALUE'
          DataSetName = 'Timesheet'
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Timesheet."ITEM_VALUE"]')
        end
        object TimesheetTIME_HOURS: TfrxMemoView
          AllowVectorExport = True
          Left = 876.850437640000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DataField = 'TIME_HOURS'
          DataSetName = 'Timesheet'
          DisplayFormat.FormatStr = '###0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Timesheet."TIME_HOURS"]')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'WEEK_ENDING'
          DataSetName = 'Timesheet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Timesheet."WEEK_ENDING"]')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          DataField = 'BILLABLE_STR'
          DataSetName = 'Timesheet'
          DisplayFormat.FormatStr = '###0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Timesheet."BILLABLE_STR"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 831.496121570000000000
          Width = 41.574803150000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Timesheet."TIME_SPENT">,bndMaster)]')
        end
        object Memo14: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 990.236896614173200000
          Width = 56.692913385826800000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Timesheet."ITEM_VALUE">,bndMaster)]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 876.850437640000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Timesheet."TIME_HOURS">,bndMaster)]')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Totals for time:')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 143.622047240000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Week Ending: [(<Timesheet."WEEK_ENDING">)]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Tot Amt:')
        end
      end
      object grpMain: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677165350000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        Condition = 'Timesheet."LOGIN_NAME"'
        KeepTogether = True
        ResetPageNumbers = True
        StartNewPage = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'User Name: [(<Timesheet."LOGIN_NAME">)]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 22.677180000000000000
        Top = 434.645950000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 880.630490000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 113.385826770000000000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 86.929190000000000000
          Width = 1046.929133860000000000
          Height = 26.456692910000000000
          Frame.Typ = [ftTop, ftBottom]
        end
        object Memo20: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 823.937540000000000000
          Top = 11.338590000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Visible = False
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Timesheet data grouped by user')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 90.708720000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Date')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 90.708720000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Customer')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 90.708720000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Activity Type')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Description')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 831.496104490000000000
          Top = 90.708720000000000000
          Width = 41.574803150000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Spent')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984251968503900000
          Top = 90.708720000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Rate')
        end
        object Memo27: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 990.236896610000000000
          Top = 90.708720000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Amt')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 876.850437640000000000
          Top = 90.708720000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hours')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Timesheets for: [(<Timesheet."LOGIN_NAME">)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Top = 90.708720000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Week Ending')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260360000000000000
          Top = 90.708720000000000000
          Width = 24.566929130000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bill')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = [ftBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 351.496290000000000000
        Width = 1046.929810000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 831.496600000000000000
          Width = 41.574803150000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Timesheet."TIME_SPENT">,bndMaster)]')
        end
        object Memo6: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 990.236896614173200000
          Width = 56.692913385826800000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Timesheet."ITEM_VALUE">,bndMaster)]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 876.850916070000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Timesheet."TIME_HOURS">,bndMaster)]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 925.985328430000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Tot Amt:')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Grand Totals:')
        end
      end
    end
  end
  object fdsTimesheetByUser: TfrxDBDataset
    UserName = 'TimesheetByUser'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FIRST_NAME=FIRST_NAME'
      'LAST_NAME=LAST_NAME'
      'LOGIN_NAME=LOGIN_NAME'
      'ACTIVITY_DATE=ACTIVITY_DATE'
      'CUSTOMER_TYPE=CUSTOMER_TYPE'
      'CUSTOMER_NAME=CUSTOMER_NAME'
      'ACTIVITY_TYPE=ACTIVITY_TYPE'
      'ACTIVITY=ACTIVITY'
      'PRICE_LIST_ITEM=PRICE_LIST_ITEM'
      'TIME_SPENT=TIME_SPENT'
      'TIME_HOURS=TIME_HOURS'
      'ACTUAL_RATE=ACTUAL_RATE'
      'STD_RATE=STD_RATE'
      'ITEM_VALUE=ITEM_VALUE'
      'THE_PERIOD=THE_PERIOD'
      'WEEK_ENDING=WEEK_ENDING'
      'BILLABLE=BILLABLE'
      'BILLABLE_STR=BILLABLE_STR'
      'INVOICE_ID=INVOICE_ID'
      'CN_ID=CN_ID'
      'LOCKED=LOCKED'
      'LOCKED_STR=LOCKED_STR'
      'INVOICE_DATE=INVOICE_DATE'
      'CARRY_FORWARD=CARRY_FORWARD'
      'CARRY_FORWARD_STR=CARRY_FORWARD_STR'
      'IS_ADDITIONAL_WORK=IS_ADDITIONAL_WORK'
      'IS_ADDITIONAL_WORK_STR=IS_ADDITIONAL_WORK_STR'
      'TOTAL_CARRY_FORWARD=TOTAL_CARRY_FORWARD')
    BCDToCurrency = False
    Left = 30
    Top = 490
  end
  object rptMaster: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43835.443958599540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 35
    Top = 60
    Datasets = <
      item
        DataSet = fdsPriceList
        DataSetName = 'Pricelist'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        DataSet = fdsMaster
        DataSetName = 'MasterDataSet'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 279.685168740000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[(<Pricelist."NAME">)]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Width = 102.047258740000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[(<Pricelist."RATE">)]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Width = 94.488198740000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[(<Pricelist."NAME">)]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Width = 279.685168740000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[(<Pricelist."NAME">)]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 854.173780000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 68.031540000000000000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 1046.929810000000000000
        object lblReportTypeName: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 442.205010000000000000
          Height = 30.236220470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Report Type')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 1.890042050000000000
          Top = 49.133890000000000000
          Width = 1043.149725910000000000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 219.212185910000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Name')
        end
      end
    end
  end
  object fdsCustomerListing: TfrxDBDataset
    UserName = 'CustomeListing'
    CloseDataSource = False
    DataSet = cdsCustomer
    BCDToCurrency = False
    Left = 635
    Top = 115
  end
  object fdsPriceList: TfrxDBDataset
    UserName = 'Pricelist'
    CloseDataSource = False
    DataSet = cdsPricelist
    BCDToCurrency = False
    Left = 720
    Top = 400
  end
  object fdsBank: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = cdsBank
    BCDToCurrency = False
    Left = 330
    Top = 115
  end
  object fdsMaster: TfrxDBDataset
    UserName = 'MasterDataSet'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NAME=NAME')
    DataSet = cdsActivityType
    BCDToCurrency = False
    Left = 35
    Top = 115
  end
  object rptCustomerListing: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43833.439896562500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 635
    Top = 165
    Datasets = <
      item
        DataSet = fdsCustomerListing
        DataSetName = 'CustomeListing'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = fdsCustomerListing
        DataSetName = 'CustomeListing'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 1035.591168740000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[(<MasterDataSet."NAME">)]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 525.354669999999900000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 68.031540000000000000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 718.110700000000000000
        object lblReportTypeName: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 275.905689999999900000
          Width = 442.205010000000000000
          Height = 30.236220470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Report Type')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 718.110236220471900000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 430.866368740000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Name')
        end
      end
    end
  end
  object dtsPriceHistory: TDataSource
    DataSet = cdsPriceHistory
    Left = 805
    Top = 340
  end
  object rptPricelist: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43837.313638425930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 720
    Top = 450
    Datasets = <
      item
        DataSet = fdsPriceList
        DataSetName = 'Pricelist'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 162.519790000000000000
        Width = 1046.929810000000000000
        DataSet = fdsPriceList
        DataSetName = 'Pricelist'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 381.732478740000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = fdsPriceList
          DataSetName = 'Pricelist'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Pricelist."NAME"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = fdsPriceList
          DataSetName = 'Pricelist'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pricelist."RATE"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 94.488198740000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'RATE_UNIT'
          DataSet = fdsPriceList
          DataSetName = 'Pricelist'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Pricelist."RATE_UNIT"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 594.141732280000000000
          Width = 453.543307090000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'DESCRIPTION'
          DataSet = fdsPriceList
          DataSetName = 'Pricelist'
          Frame.Typ = [ftLeft, ftRight]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Pricelist."DESCRIPTION"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 854.173780000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 60.472440944881890000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 1046.929810000000000000
        object lblReportTypeName: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 442.205010000000000000
          Height = 30.236220470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Report Type')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 1046.929810000000000000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 381.732283460000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Price Item')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291341020000000000
          Top = 41.574830000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Rate')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 41.574830000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Rate Unit')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 594.165740000000000000
          Top = 41.574830000000000000
          Width = 453.543307090000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Description')
        end
      end
    end
  end
  object rptPriceHistory: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43494.671348414300000000
    ReportOptions.LastChange = 43837.327643182870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 805
    Top = 450
    Datasets = <
      item
        DataSet = fdsPriceHistory
        DataSetName = 'PriceHistory'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 162.519790000000000000
        Width = 1046.929810000000000000
        DataSet = fdsPriceHistory
        DataSetName = 'PriceHistory'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 374.173228350000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = fdsPriceHistory
          DataSetName = 'PriceHistory'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[PriceHistory."NAME"]')
          ParentFont = False
        end
        object lblRate1: TfrxMemoView
          AllowVectorExport = True
          Left = 376.173470000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = fdsPriceHistory
          DataSetName = 'PriceHistory'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pricelist."RATE"]')
          ParentFont = False
        end
        object lblRate2: TfrxMemoView
          AllowVectorExport = True
          Left = 444.205010000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = fdsPriceHistory
          DataSetName = 'PriceHistory'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pricelist."RATE"]')
          ParentFont = False
        end
        object lblRate3: TfrxMemoView
          AllowVectorExport = True
          Left = 512.236550000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = fdsPriceHistory
          DataSetName = 'PriceHistory'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pricelist."RATE"]')
          ParentFont = False
        end
        object lblRate4: TfrxMemoView
          AllowVectorExport = True
          Left = 580.268090000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = fdsPriceHistory
          DataSetName = 'PriceHistory'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pricelist."RATE"]')
          ParentFont = False
        end
        object lblRate5: TfrxMemoView
          AllowVectorExport = True
          Left = 648.299630000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = fdsPriceHistory
          DataSetName = 'PriceHistory'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pricelist."RATE"]')
          ParentFont = False
        end
        object lblRate6: TfrxMemoView
          AllowVectorExport = True
          Left = 712.551640000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = fdsPriceHistory
          DataSetName = 'PriceHistory'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pricelist."RATE"]')
          ParentFont = False
        end
        object lblRate7: TfrxMemoView
          AllowVectorExport = True
          Left = 780.583180000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = fdsPriceHistory
          DataSetName = 'PriceHistory'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pricelist."RATE"]')
          ParentFont = False
        end
        object lblRate8: TfrxMemoView
          AllowVectorExport = True
          Left = 848.614720000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = fdsPriceHistory
          DataSetName = 'PriceHistory'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pricelist."RATE"]')
          ParentFont = False
        end
        object lblRate9: TfrxMemoView
          AllowVectorExport = True
          Left = 916.646260000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = fdsPriceHistory
          DataSetName = 'PriceHistory'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pricelist."RATE"]')
          ParentFont = False
        end
        object lblRate10: TfrxMemoView
          AllowVectorExport = True
          Left = 980.898270000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = fdsPriceHistory
          DataSetName = 'PriceHistory'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Pricelist."RATE"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed on: [(Date)] at: [(Time)]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 854.173780000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page] of [TotalPages]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 60.472440944881890000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 1046.929810000000000000
        object lblReportTypeName: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 442.205010000000000000
          Height = 30.236220470000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Report Type')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'van Brakel and Associates')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 1046.929810000000000000
          Height = 18.897637800000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 374.173228346456700000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Price Item')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 376.062992130000000000
          Top = 41.574830000000000000
          Width = 668.976768500000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Rate')
        end
      end
    end
  end
  object fdsPriceHistory: TfrxDBDataset
    UserName = 'PriceHistory'
    CloseDataSource = False
    DataSet = cdsPriceHistory
    BCDToCurrency = False
    Left = 805
    Top = 400
  end
  object cdsPriceHistoryYear: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    CachedUpdates = True
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'VIEW_PRICE_HISTORY_YEAR'
    Left = 905
    Top = 290
    object cdsPriceHistoryYearTHE_YEAR: TIntegerField
      DisplayLabel = 'Year'
      FieldName = 'THE_YEAR'
    end
  end
  object dtsPriceHistoryYear: TDataSource
    DataSet = cdsPriceHistoryYear
    Left = 905
    Top = 340
  end
  object cdsPriceHistory: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soNoCase]
      end>
    ConstraintsEnabled = True
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 805
    Top = 290
  end
  object frxPDFExport: TfrxPDFExport
    FileName = 'TimesheetUser.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 43629.686801180560000000
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 30
    Top = 170
  end
  object dlgPrint: TdxPrintDialog
    ButtonsEnabled = [pdbPrinterProperties, pdbNetwork, pdbPreview, pdbPageSetup]
    ButtonsVisible = [pdbPrinterProperties, pdbNetwork, pdbPageSetup]
    OptionsEnabled = [pdoPrintToFile, pdoAllPages, pdoCurrentPage, pdoPageRange]
    Left = 115
    Top = 170
  end
  object dlgFileSave: TFileSaveDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 120
    Top = 115
  end
end
