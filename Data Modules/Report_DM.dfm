inherited ReportDM: TReportDM
  OldCreateOrder = True
  OnDestroy = DataModuleDestroy
  Height = 823
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
    OnCalcFields = cdsCustomerCalcFields
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
    IndexDefs = <
      item
        Name = 'idxCustID'
        Fields = 'ID'
      end
      item
        Name = 'idxCustName'
        Fields = 'NAME'
        Options = [ixCaseInsensitive]
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
    Left = 634
    Top = 10
    object cdsCustomerID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsCustomerCUSTOMER_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
    end
    object cdsCustomerYEAR_END_MONTH_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'YEM ID'
      FieldName = 'YEAR_END_MONTH_ID'
      Origin = 'YEAR_END_MONTH_ID'
    end
    object cdsCustomerTAX_OFFICE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'TO ID'
      FieldName = 'TAX_OFFICE_ID'
      Origin = 'TAX_OFFICE_ID'
    end
    object cdsCustomerAR_MONTH_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'ARM ID'
      FieldName = 'AR_MONTH_ID'
      Origin = 'AR_MONTH_ID'
    end
    object cdsCustomerVAT_MONTH_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'VATM ID'
      FieldName = 'VAT_MONTH_ID'
      Origin = 'VAT_MONTH_ID'
    end
    object cdsCustomerVAT_COUNTRY_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'VATC ID'
      FieldName = 'VAT_COUNTRY_ID'
      Origin = 'VAT_COUNTRY_ID'
    end
    object cdsCustomerVAT_OFFICE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'VATO ID'
      FieldName = 'VAT_OFFICE_ID'
      Origin = 'VAT_OFFICE_ID'
    end
    object cdsCustomerSTATUS_ID: TIntegerField
      DisplayLabel = 'ST ID'
      FieldName = 'STATUS_ID'
      Origin = 'STATUS_ID'
    end
    object cdsCustomerCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsCustomerNAME: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'NAME'
      Origin = 'NAME'
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
      DisplayLabel = 'Bill To'
      FieldName = 'BILL_TO'
      Origin = 'BILL_TO'
      Size = 100
    end
    object cdsCustomerCO_NO: TStringField
      DisplayLabel = 'Co No'
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
      DisplayLabel = 'VAT Code'
      FieldName = 'VAT_CUSTOMS_CODE'
      Origin = 'VAT_CUSTOMS_CODE'
    end
    object cdsCustomerPAYE_UIF_NO: TStringField
      DisplayLabel = 'PAYE/UIF'
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
      DisplayLabel = 'AR Date'
      FieldName = 'AR_COMPLETION_DATE'
      Origin = 'AR_COMPLETION_DATE'
    end
    object cdsCustomerPASTEL_ACC_CODE: TStringField
      DisplayLabel = 'Pastel Acc'
      FieldName = 'PASTEL_ACC_CODE'
      Origin = 'PASTEL_ACC_CODE'
      Size = 25
    end
    object cdsCustomerVB_TAX_ACC_CODE: TStringField
      DisplayLabel = 'VB Tax Code'
      FieldName = 'VB_TAX_ACC_CODE'
      Origin = 'VB_TAX_ACC_CODE'
      Size = 25
    end
    object cdsCustomerIS_PROV_TAX_PAYER: TIntegerField
      DisplayLabel = 'Prov Tax'
      FieldName = 'IS_PROV_TAX_PAYER'
      Origin = 'IS_PROV_TAX_PAYER'
    end
    object cdsCustomerHAS_LIVING_WILL: TIntegerField
      DisplayLabel = 'LIv Will'
      FieldName = 'HAS_LIVING_WILL'
      Origin = 'HAS_LIVING_WILL'
    end
    object cdsCustomerIS_ORGAN_DONOR: TIntegerField
      DisplayLabel = 'Org Don'
      FieldName = 'IS_ORGAN_DONOR'
      Origin = 'IS_ORGAN_DONOR'
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
      DisplayLabel = 'Active'
      FieldName = 'IS_ACTIVE'
      Origin = 'IS_ACTIVE'
    end
    object cdsCustomerEFILING: TStringField
      DisplayLabel = 'E Filing'
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
    object cdsCustomerYEAR_END_MONTH: TStringField
      DisplayLabel = 'Year End'
      FieldName = 'YEAR_END_MONTH'
      Size = 10
    end
    object cdsCustomerTAX_OFFICE: TStringField
      DisplayLabel = 'Tax Office'
      FieldName = 'TAX_OFFICE'
      Origin = 'TAX_OFFICE'
      Size = 40
    end
    object cdsCustomerVAT_MONTH: TStringField
      DisplayLabel = 'VAT Month'
      FieldName = 'VAT_MONTH'
      Origin = 'VAT_MONTH'
      Size = 10
    end
    object cdsCustomerVAT_COUNTRY: TStringField
      DisplayLabel = 'VAT Country'
      FieldName = 'VAT_COUNTRY'
      Origin = 'VAT_COUNTRY'
      Size = 50
    end
    object cdsCustomerVAT_OFFICE: TStringField
      DisplayLabel = 'VAT Office'
      FieldName = 'VAT_OFFICE'
      Origin = 'VAT_OFFICE'
      Size = 40
    end
    object cdsCustomerAR_MONTH: TStringField
      DisplayLabel = 'AR Month'
      FieldName = 'AR_MONTH'
      Origin = 'AR_MONTH'
      Size = 10
    end
    object cdsCustomerCUSTOMER_STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CUSTOMER_STATUS'
      Origin = 'CUSTOMER_STATUS'
    end
    object cdsCustomerIS_ACTIVE_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Active'
      FieldKind = fkCalculated
      FieldName = 'IS_ACTIVE_STR'
      Size = 1
      Calculated = True
    end
    object cdsCustomerIS_PROV_TAX_PAYER_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Prov Tax'
      FieldKind = fkCalculated
      FieldName = 'IS_PROV_TAX_PAYER_STR'
      Size = 1
      Calculated = True
    end
    object cdsCustomerHAS_LIVING_WILL_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Liv Will'
      FieldKind = fkCalculated
      FieldName = 'HAS_LIVING_WILL_STR'
      Size = 1
      Calculated = True
    end
    object cdsCustomerIS_ORGAN_DONOR_STR: TStringField
      Alignment = taCenter
      DisplayLabel = 'Org Don'
      FieldKind = fkCalculated
      FieldName = 'IS_ORGAN_DONOR_STR'
      Size = 1
      Calculated = True
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
    object cdsPricelistRATE_UNIT: TStringField
      DisplayLabel = 'Rate Unit'
      FieldName = 'RATE_UNIT'
      Size = 30
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
    Left = 634
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
    Left = 980
    Top = 120
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 980
    Top = 65
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 980
    Top = 5
  end
  object cdsMasterList: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
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
    Left = 40
    Top = 290
  end
  object dtsCountry: TDataSource
    DataSet = cdsCountry
    Left = 40
    Top = 340
  end
  object cdsContactDetailCo: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <
      item
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
    Left = 85
    Top = 575
    object cdsContactDetailCoCONTACT_DETAIL_CO_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CDCO ID'
      FieldName = 'CONTACT_DETAIL_CO_ID'
      Origin = 'CONTACT_DETAIL_CO_ID'
    end
    object cdsContactDetailCoCONTACT_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CT ID'
      FieldName = 'CONTACT_TYPE_ID'
      Origin = 'CONTACT_TYPE_ID'
    end
    object cdsContactDetailCoCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
    end
    object cdsContactDetailCoCONTACT_TYPE: TStringField
      DisplayLabel = 'Contact Type'
      FieldName = 'CONTACT_TYPE'
      Origin = 'CONTACT_TYPE'
      Size = 30
    end
    object cdsContactDetailCoVALUE: TStringField
      DisplayLabel = 'Value'
      FieldName = 'VALUE'
      Origin = '"VALUE"'
      Size = 75
    end
  end
  object dtsContactDetailCo: TDataSource
    DataSet = cdsContactDetailCo
    Left = 85
    Top = 625
  end
  object dtsAddress: TDataSource
    DataSet = cdsAddress
    Left = 186
    Top = 625
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
    IndexDefs = <
      item
        Name = 'idxID'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idxCustID'
        Fields = 'CUSTOMER_ID;CONTACT_PERSON_ID;CONTACT_TYPE'
      end>
    IndexName = 'idxCustID'
    ConstraintsEnabled = True
    MasterSource = dtsContactPerson
    MasterFields = 'CUSTOMER_ID'
    DetailFields = 'CONTACT_PERSON_ID;CUSTOMER_ID'
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
    UpdateOptions.GeneratorName = 'CONTACT_DETAIL_PERSON_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CONTACT_DETAIL_PERSON'
    StoreDefs = True
    Left = 515
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
    object cdsContactDetailPersonCONTACT_TYPE: TStringField
      DisplayLabel = 'Contact Type'
      FieldName = 'CONTACT_TYPE'
      Size = 30
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
    Left = 515
    Top = 625
  end
  object cdsBankingDetail: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    OnCalcFields = cdsBankingDetailCalcFields
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
        Name = 'idxBankingDetail'
        Fields = 'CUSTOMER_ID;BANK_ID;ACCOUNT_TYPE_ID;ACCOUNT_NO'
      end>
    IndexName = 'idxBankingDetail'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
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
    UpdateOptions.GeneratorName = 'BANKING_DETAIL_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'BANKING_DETAIL'
    StoreDefs = True
    Left = 287
    Top = 575
    object cdsBankingDetailID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBankingDetailBANK_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Bank'
      FieldName = 'BANK_ID'
      Origin = 'BANK_ID'
      Required = True
    end
    object cdsBankingDetailCUSTOMER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_ID'
      Origin = 'CUSTOMER_ID'
      Required = True
    end
    object cdsBankingDetailBRANCH_CODE: TStringField
      DisplayLabel = 'Branch Code'
      FieldName = 'BRANCH_CODE'
      Origin = 'BRANCH_CODE'
      Size = 10
    end
    object cdsBankingDetailACCOUNT_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Account Type'
      FieldName = 'ACCOUNT_TYPE_ID'
      Origin = 'ACCOUNT_TYPE_ID'
      Required = True
    end
    object cdsBankingDetailACCOUNT_NO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCOUNT_NO'
      Origin = 'ACCOUNT_NO'
      Required = True
    end
    object cdsBankingDetailFIRST_NAME: TStringField
      DisplayLabel = 'First Name'
      DisplayWidth = 100
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
    object cdsBankingDetailBANK_NAME: TStringField
      DisplayLabel = 'Bank Name'
      FieldName = 'BANK_NAME'
      Size = 30
    end
    object cdsBankingDetailACCOUNT_TYPE: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'ACCOUNT_TYPE'
      Size = 50
    end
    object cdsBankingDetailACCOUNT_HOLDER: TStringField
      DisplayLabel = 'Account Holder'
      FieldKind = fkCalculated
      FieldName = 'ACCOUNT_HOLDER'
      Size = 100
      Calculated = True
    end
  end
  object dtsBankingDetail: TDataSource
    DataSet = cdsBankingDetail
    Left = 287
    Top = 625
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
    IndexDefs = <
      item
        Name = 'idxID'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idxCustID'
        Fields = 'CUSTOMER_ID'
      end>
    IndexName = 'idxCustID'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
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
    UpdateOptions.GeneratorName = 'CONTACT_PERSON_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CONTACT_PERSON'
    StoreDefs = True
    Left = 389
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
    object cdsContactPersonJOB_FUNCTION_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Job Function'
      DisplayWidth = 10
      FieldName = 'JOB_FUNCTION_ID'
      Origin = 'JOB_FUNCTION_ID'
    end
    object cdsContactPersonSALUTATION: TStringField
      DisplayLabel = 'Sal'
      FieldName = 'SALUTATION'
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
    object cdsContactPersonJOB_FUNCTION: TStringField
      DisplayLabel = 'Job Function'
      FieldName = 'JOB_FUNCTION'
      Size = 50
    end
    object cdsContactPersonIS_PRIMARY_CONTACT: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Prim'
      DisplayWidth = 10
      FieldName = 'IS_PRIMARY_CONTACT'
      Origin = 'IS_PRIMARY_CONTACT'
      Required = True
    end
  end
  object dtsContactPerson: TDataSource
    DataSet = cdsContactPerson
    Left = 389
    Top = 625
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
    IndexDefs = <
      item
        Name = 'idxDirName'
        Fields = 'CUSTOMER_ID;FIRST_NAME;LAST_NAME'
        Options = [ixUnique]
      end>
    IndexName = 'idxDirName'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
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
    UpdateOptions.GeneratorName = 'DIRECTOR_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'DIRECTOR'
    StoreDefs = True
    Left = 617
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
    object cdsDirectorSALUTATION: TStringField
      DisplayLabel = 'Sal'
      FieldName = 'SALUTATION'
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
    Left = 617
    Top = 625
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
    IndexDefs = <
      item
        Name = 'idxBID'
        Fields = 'ID'
        Options = [ixPrimary]
      end
      item
        Name = 'idxBCustID'
        Fields = 'CUSTOMER_ID'
        Options = [ixNonMaintained]
      end
      item
        Name = 'idxBName'
        Fields = 'CUSTOMER_ID;FIRST_NAME;LAST_NAME'
        Options = [ixUnique]
      end>
    IndexName = 'idxBName'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
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
    UpdateOptions.GeneratorName = 'BENEFICIARY_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'BENEFICIARY'
    StoreDefs = True
    Left = 718
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
    object cdsBeneficiarySALUTATION: TStringField
      DisplayLabel = 'Sal'
      FieldName = 'SALUTATION'
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
    Left = 718
    Top = 625
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
        Selected = True
        Name = 'idxCustID'
        Fields = 'CUSTOMER_ID;VEHICLE_MAKE;VEHICLE_MODEL'
        Options = [soNoCase]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxCustID'
    ConstraintsEnabled = True
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
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
    UpdateOptions.GeneratorName = 'VEHICLE_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'VEHICLE'
    StoreDefs = True
    Left = 820
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
    object cdsVehicleVEHICLE_MAKE: TStringField
      DisplayLabel = 'Make'
      FieldName = 'VEHICLE_MAKE'
      Size = 30
    end
  end
  object dtsVehicle: TDataSource
    DataSet = cdsVehicle
    Left = 820
    Top = 625
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
    UserName = 'CustomerListing'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CUSTOMER_TYPE_ID=CUSTOMER_TYPE_ID'
      'YEAR_END_MONTH_ID=YEAR_END_MONTH_ID'
      'TAX_OFFICE_ID=TAX_OFFICE_ID'
      'AR_MONTH_ID=AR_MONTH_ID'
      'VAT_MONTH_ID=VAT_MONTH_ID'
      'VAT_COUNTRY_ID=VAT_COUNTRY_ID'
      'VAT_OFFICE_ID=VAT_OFFICE_ID'
      'STATUS_ID=STATUS_ID'
      'CUSTOMER_TYPE=CUSTOMER_TYPE'
      'NAME=NAME'
      'TRADING_AS=TRADING_AS'
      'CO_NO=CO_NO'
      'TAX_NO=TAX_NO'
      'VAT_NO=VAT_NO'
      'CUSTOMER_STATUS=CUSTOMER_STATUS'
      'IS_ACTIVE_STR=IS_ACTIVE_STR')
    DataSet = cdsCustomerListing
    BCDToCurrency = False
    Left = 749
    Top = 125
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
    ReportOptions.LastChange = 43850.606150729200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 749
    Top = 170
    Datasets = <
      item
        DataSet = fdsCustomerListing
        DataSetName = 'CustomerListing'
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
        Height = 39.685039370000000000
        Top = 185.196970000000000000
        Width = 1046.929810000000000000
        DataSet = fdsCustomerListing
        DataSetName = 'CustomerListing'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 366.614358740000000000
          Height = 18.897650000000000000
          DataField = 'NAME'
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[CustomerListing."NAME"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 18.897637800000000000
          Width = 366.614358740000000000
          Height = 18.897650000000000000
          DataField = 'TRADING_AS'
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[CustomerListing."TRADING_AS"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          GapX = 10.000000000000000000
          Memo.UTF8W = (
            'Customer')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897637800000000000
          Width = 79.370078740157500000
          Height = 18.897650000000000000
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          GapX = 10.000000000000000000
          Memo.UTF8W = (
            'Trading As')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataField = 'CO_NO'
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[CustomerListing."CO_NO"]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 18.897637800000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataField = 'TAX_NO'
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[CustomerListing."TAX_NO"]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Co No')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 18.897637800000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Tax No')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Top = 0.000014650000000005
          Width = 139.842558740000000000
          Height = 18.897650000000000000
          DataField = 'CUSTOMER_TYPE'
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[CustomerListing."CUSTOMER_TYPE"]')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Type')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Top = 18.897637800000000000
          Width = 139.842558740000000000
          Height = 18.897650000000000000
          DataField = 'CUSTOMER_STATUS'
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[CustomerListing."CUSTOMER_STATUS"]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 18.897637800000000000
          Width = 49.133816770000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Top = 0.000014650000000005
          Width = 18.897637800000000000
          Height = 37.795275590551200000
          DataField = 'IS_ACTIVE_STR'
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[CustomerListing."IS_ACTIVE_STR"]')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 854.173780000000000000
          Width = 49.133858270000000000
          Height = 37.795275590551200000
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Active:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 22.677180000000000000
        Top = 287.244280000000000000
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
        Height = 37.795275590551200000
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
      end
      object bndcustomerTypeGroup: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 139.842610000000000000
        Width = 1046.929810000000000000
        Condition = 'CustomerListing."CUSTOMER_TYPE"'
        ResetPageNumbers = True
        StartNewPage = True
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomerListing
          DataSetName = 'CustomerListing'
          Frame.Typ = []
          Memo.UTF8W = (
            '[(<CustomerListing."CUSTOMER_TYPE">)]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Customer Type:')
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
    ReportOptions.LastChange = 43845.363629583330000000
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
          ParentFont = False
        end
        object lblRate2: TfrxMemoView
          AllowVectorExport = True
          Left = 443.562844610000000000
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
          ParentFont = False
        end
        object lblRate3: TfrxMemoView
          AllowVectorExport = True
          Left = 510.952219220000000000
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
          ParentFont = False
        end
        object lblRate4: TfrxMemoView
          AllowVectorExport = True
          Left = 578.341593833333000000
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
          ParentFont = False
        end
        object lblRate5: TfrxMemoView
          AllowVectorExport = True
          Left = 645.730968444444000000
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
          ParentFont = False
        end
        object lblRate6: TfrxMemoView
          AllowVectorExport = True
          Left = 713.120343055556000000
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
          ParentFont = False
        end
        object lblRate7: TfrxMemoView
          AllowVectorExport = True
          Left = 780.509717666667000000
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
          ParentFont = False
        end
        object lblRate8: TfrxMemoView
          AllowVectorExport = True
          Left = 847.899092277778000000
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
          ParentFont = False
        end
        object lblRate9: TfrxMemoView
          AllowVectorExport = True
          Left = 915.288466888889000000
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
          ParentFont = False
        end
        object lblRate10: TfrxMemoView
          AllowVectorExport = True
          Left = 982.677841500000000000
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
        Height = 60.472440940000000000
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
          Width = 374.173228350000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Price Item')
        end
        object lblHeader1: TfrxMemoView
          AllowVectorExport = True
          Left = 376.173470000000000000
          Top = 41.574830000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '')
        end
        object lblHeader2: TfrxMemoView
          AllowVectorExport = True
          Left = 443.562844610000000000
          Top = 41.574830000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
        end
        object lblHeader3: TfrxMemoView
          AllowVectorExport = True
          Left = 510.952219220000000000
          Top = 41.574830000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
        end
        object lblHeader4: TfrxMemoView
          AllowVectorExport = True
          Left = 578.341593830000000000
          Top = 41.574830000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
        end
        object lblHeader5: TfrxMemoView
          AllowVectorExport = True
          Left = 645.730968440000000000
          Top = 41.574830000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
        end
        object lblHeader6: TfrxMemoView
          AllowVectorExport = True
          Left = 713.120343060000000000
          Top = 41.574830000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
        end
        object lblHeader7: TfrxMemoView
          AllowVectorExport = True
          Left = 780.509717670000000000
          Top = 41.574830000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
        end
        object lblHeader8: TfrxMemoView
          AllowVectorExport = True
          Left = 847.899092280000000000
          Top = 41.574830000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
        end
        object lblHeader9: TfrxMemoView
          AllowVectorExport = True
          Left = 915.288466890000000000
          Top = 41.574830000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
        end
        object lblHeader10: TfrxMemoView
          AllowVectorExport = True
          Left = 982.677841500000000000
          Top = 41.574830000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
          GapX = 5.000000000000000000
          HAlign = haRight
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
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RATE_UNIT_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 200
      end
      item
        Name = 'DESCRIPTION'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'RATE_UNIT'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 30
      end
      item
        Name = '2020'
        Attributes = [faReadonly]
        DataType = ftFloat
        Precision = 8
      end
      item
        Name = '2019'
        Attributes = [faReadonly]
        DataType = ftFloat
        Precision = 8
      end>
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
  object VbdevConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=VB Dev')
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end>
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 1003
    Top = 245
  end
  object cdsCustomerListing: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxCustName'
        Fields = 'NAME'
        Options = [soNoCase]
        FilterOptions = [ekNoCase]
      end
      item
        Active = True
        Name = 'idxTypeName'
        Fields = 'CUSTOMER_TYPE;NAME'
        Options = [soNoCase]
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
    Left = 749
    Top = 10
    object cdsCustomerListingID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsCustomerListingCUSTOMER_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'CT ID'
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
    end
    object cdsCustomerListingYEAR_END_MONTH_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'YE ID'
      FieldName = 'YEAR_END_MONTH_ID'
      Origin = 'YEAR_END_MONTH_ID'
    end
    object cdsCustomerListingTAX_OFFICE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'TO ID'
      FieldName = 'TAX_OFFICE_ID'
      Origin = 'TAX_OFFICE_ID'
    end
    object cdsCustomerListingAR_MONTH_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'ARM ID'
      FieldName = 'AR_MONTH_ID'
      Origin = 'AR_MONTH_ID'
    end
    object cdsCustomerListingVAT_MONTH_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'VM ID'
      FieldName = 'VAT_MONTH_ID'
      Origin = 'VAT_MONTH_ID'
    end
    object cdsCustomerListingVAT_COUNTRY_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'VC ID'
      FieldName = 'VAT_COUNTRY_ID'
      Origin = 'VAT_COUNTRY_ID'
    end
    object cdsCustomerListingVAT_OFFICE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'VO ID'
      FieldName = 'VAT_OFFICE_ID'
      Origin = 'VAT_OFFICE_ID'
    end
    object cdsCustomerListingSTATUS_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'ST ID'
      FieldName = 'STATUS_ID'
      Origin = 'STATUS_ID'
    end
    object cdsCustomerListingCUSTOMER_TYPE: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object cdsCustomerListingNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object cdsCustomerListingTRADING_AS: TStringField
      DisplayLabel = 'Trading As'
      FieldName = 'TRADING_AS'
      Origin = 'TRADING_AS'
      Size = 100
    end
    object cdsCustomerListingCO_NO: TStringField
      DisplayLabel = 'Co No'
      FieldName = 'CO_NO'
      Origin = 'CO_NO'
    end
    object cdsCustomerListingTAX_NO: TStringField
      DisplayLabel = 'Tax No'
      FieldName = 'TAX_NO'
      Origin = 'TAX_NO'
    end
    object cdsCustomerListingVAT_NO: TStringField
      DisplayLabel = 'VAT No'
      FieldName = 'VAT_NO'
      Origin = 'VAT_NO'
    end
    object cdsCustomerListingCUSTOMER_STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CUSTOMER_STATUS'
      Origin = 'CUSTOMER_STATUS'
    end
    object cdsCustomerListingIS_ACTIVE_STR: TStringField
      DisplayLabel = 'Active'
      FieldName = 'IS_ACTIVE_STR'
      Origin = 'IS_ACTIVE_STR'
      FixedChar = True
      Size = 1
    end
  end
  object dtsCustomerListing: TDataSource
    DataSet = cdsCustomerListing
    Left = 749
    Top = 60
  end
  object fdsCustomer: TfrxDBDataset
    UserName = 'Customer'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CUSTOMER_TYPE_ID=CUSTOMER_TYPE_ID'
      'YEAR_END_MONTH_ID=YEAR_END_MONTH_ID'
      'TAX_OFFICE_ID=TAX_OFFICE_ID'
      'AR_MONTH_ID=AR_MONTH_ID'
      'VAT_MONTH_ID=VAT_MONTH_ID'
      'VAT_COUNTRY_ID=VAT_COUNTRY_ID'
      'VAT_OFFICE_ID=VAT_OFFICE_ID'
      'STATUS_ID=STATUS_ID'
      'CUSTOMER_TYPE=CUSTOMER_TYPE'
      'NAME=NAME'
      'FIRST_NAME=FIRST_NAME'
      'LAST_NAME=LAST_NAME'
      'INITIALS=INITIALS'
      'TRADING_AS=TRADING_AS'
      'BILL_TO=BILL_TO'
      'CO_NO=CO_NO'
      'TAX_NO=TAX_NO'
      'VAT_NO=VAT_NO'
      'VAT_CUSTOMS_CODE=VAT_CUSTOMS_CODE'
      'PAYE_UIF_NO=PAYE_UIF_NO'
      'SDL_NO=SDL_NO'
      'WC_NO=WC_NO'
      'AR_COMPLETION_DATE=AR_COMPLETION_DATE'
      'PASTEL_ACC_CODE=PASTEL_ACC_CODE'
      'VB_TAX_ACC_CODE=VB_TAX_ACC_CODE'
      'IS_PROV_TAX_PAYER=IS_PROV_TAX_PAYER'
      'HAS_LIVING_WILL=HAS_LIVING_WILL'
      'IS_ORGAN_DONOR=IS_ORGAN_DONOR'
      'DATE_CREATED=DATE_CREATED'
      'DATE_MODIFIED=DATE_MODIFIED'
      'IS_ACTIVE=IS_ACTIVE'
      'EFILING=EFILING'
      'EF_USER_NAME=EF_USER_NAME'
      'EF_PASSWORD=EF_PASSWORD'
      'YEAR_END_MONTH=YEAR_END_MONTH'
      'TAX_OFFICE=TAX_OFFICE'
      'VAT_MONTH=VAT_MONTH'
      'VAT_COUNTRY=VAT_COUNTRY'
      'VAT_OFFICE=VAT_OFFICE'
      'AR_MONTH=AR_MONTH'
      'CUSTOMER_STATUS=CUSTOMER_STATUS'
      'IS_ACTIVE_STR=IS_ACTIVE_STR'
      'IS_PROV_TAX_PAYER_STR=IS_PROV_TAX_PAYER_STR'
      'HAS_LIVING_WILL_STR=HAS_LIVING_WILL_STR'
      'IS_ORGAN_DONOR_STR=IS_ORGAN_DONOR_STR')
    DataSet = cdsCustomer
    BCDToCurrency = False
    Left = 634
    Top = 125
  end
  object rptCustomer: TfrxReport
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
    ReportOptions.LastChange = 43859.694679571760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 634
    Top = 170
    Datasets = <
      item
        DataSet = fdsAddress
        DataSetName = 'Address'
      end
      item
        DataSet = fdsBankingDetail
        DataSetName = 'BankingDetail'
      end
      item
        DataSet = fdsBeneficiary
        DataSetName = 'Beneficiary'
      end
      item
        DataSet = fdsContactDetailCo
        DataSetName = 'ContactDetailCo'
      end
      item
        DataSet = fdsContactDetailPerson
        DataSetName = 'ContactDetailPerson'
      end
      item
        DataSet = fdsContactPerson
        DataSetName = 'ContactPerson'
      end
      item
        DataSet = fdsCustomer
        DataSetName = 'Customer'
      end
      item
        DataSet = fdsDirector
        DataSetName = 'Director'
      end
      item
        DataSet = fdsVehicle
        DataSetName = 'Vehicle'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object repCustomer: TfrxReportPage
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
      PrintIfEmpty = False
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
      end
      object bndMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Height = 83.149606300000000000
        Top = 139.842610000000000000
        Width = 1046.929810000000000000
        Child = rptCustomer.bndSpace6
        DataSet = fdsCustomer
        DataSetName = 'Customer'
        RowCount = 0
        StartNewPage = True
        Stretched = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 355.275590550000000000
          Height = 18.897650000000000000
          DataField = 'NAME'
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[Customer."NAME"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 18.897637800000000000
          Width = 355.275590550000000000
          Height = 18.897650000000000000
          DataField = 'TRADING_AS'
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[Customer."TRADING_AS"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Customer:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897637800000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Trading As:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          DataField = 'CO_NO'
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Customer."CO_NO"]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118102910000000000
          Top = 18.897637800000000000
          Width = 128.503937007874000000
          Height = 18.897650000000000000
          DataField = 'TAX_NO'
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Customer."TAX_NO"]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740157480000000000
          Width = 41.574803149606300000
          Height = 18.897650000000000000
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Co No:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 18.897637800000000000
          Width = 49.133858267716540000
          Height = 18.897650000000000000
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tax No:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118102910000000000
          Top = 0.000014650000000005
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          DataField = 'CUSTOMER_TYPE'
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Customer."CUSTOMER_TYPE"]')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Type')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 854.173780000000000000
          Top = -0.000012199999986251
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          DataField = 'CUSTOMER_STATUS'
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Customer."CUSTOMER_STATUS"]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 808.819420000000000000
          Top = -0.000012200000000004
          Width = 45.354330708661420000
          Height = 18.897650000000000000
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 982.457330000000000000
          Width = 41.574803150000000000
          Height = 18.897637800000000000
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Active:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 37.795300000000000000
          Width = 355.275590550000000000
          Height = 18.897650000000000000
          DataField = 'BILL_TO'
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[Customer."BILL_TO"]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Bill To:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 37.795300000000000000
          Width = 128.503937007874000000
          Height = 18.897650000000000000
          DataField = 'VAT_NO'
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Customer."VAT_NO"]')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 37.795300000000000000
          Width = 49.133858267716540000
          Height = 18.897650000000000000
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VAT No:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Top = 60.472480000000000000
          Width = 1046.929133860000000000
          Height = 1.889763779527560000
          Frame.Typ = [ftTop]
        end
        object subAddress: TfrxSubreport
          AllowVectorExport = True
          Top = 60.850393700000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = rptCustomer.repAddress
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tax Month:')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 808.819420000000000000
          Top = 18.897650000000000000
          Width = 68.031496062992130000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tax Office:')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551181100000000000
          Top = 18.897650000000000000
          Width = 90.708661417322830000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[(<Customer."YEAR_END_MONTH">)]')
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 876.850960000000000000
          Top = 18.897650000000000000
          Width = 151.181102362204700000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[(<Customer."TAX_OFFICE">)]')
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VAT Month:')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 808.819420000000000000
          Top = 37.795300000000000000
          Width = 68.031496062992130000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VAT Office:')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551181100000000000
          Top = 37.795300000000000000
          Width = 90.708661417322830000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[(<Customer."VAT_MONTH">)]')
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 876.850955120000000000
          Top = 37.795300000000000000
          Width = 151.181102362204700000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[(<Customer."VAT_OFFICE">)]')
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          DataField = 'IS_ACTIVE_STR'
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Customer."IS_ACTIVE_STR"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = [ftTop]
        Height = 22.677180000000000000
        Top = 737.008350000000000000
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
          Left = 854.173780000000100000
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
        Height = 37.795275590000000000
        ParentFont = False
        Top = 41.574830000000000000
        Width = 1046.929810000000000000
        object lblReportTypeName: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 604.724800000000100000
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
      end
      object bndContactDetailCo: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 1046.929810000000000000
        Child = rptCustomer.bndSpace1
        PrintChildIfInvisible = True
        ToNRows = 0
        ToNRowsMode = rmCount
        object subContactDetailCo: TfrxSubreport
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = rptCustomer.repContactDetailCo
        end
      end
      object bndBankingDetail: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 427.086890000000000000
        Width = 1046.929810000000000000
        Child = rptCustomer.bndspace3
        ToNRows = 0
        ToNRowsMode = rmCount
        object subBankingDetail: TfrxSubreport
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = rptCustomer.repBankingDetail
        end
      end
      object bndContactDetailPerson: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 351.496290000000000000
        Width = 1046.929810000000000000
        Child = rptCustomer.bndSpace2
        ToNRows = 0
        ToNRowsMode = rmCount
        object subContactDetailPerson: TfrxSubreport
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = rptCustomer.repContactDetailPerson
        end
      end
      object bndDirecor: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 502.677490000000000000
        Width = 1046.929810000000000000
        Child = rptCustomer.bndSpace4
        ToNRows = 0
        ToNRowsMode = rmCount
        object subDirector: TfrxSubreport
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = rptCustomer.repDirector
        end
      end
      object bndSpace1: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 7.559055120000000000
        Top = 321.260050000000000000
        Width = 1046.929810000000000000
        Child = rptCustomer.bndContactDetailPerson
        ToNRows = 0
        ToNRowsMode = rmCount
      end
      object bndSpace2: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 7.559055120000000000
        Top = 396.850650000000000000
        Width = 1046.929810000000000000
        Child = rptCustomer.bndBankingDetail
        ToNRows = 0
        ToNRowsMode = rmCount
      end
      object bndSpace5: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 7.559055120000000000
        Top = 623.622450000000000000
        Width = 1046.929810000000000000
        Child = rptCustomer.bndvehicle
        ToNRows = 0
        ToNRowsMode = rmCount
      end
      object bndSpace4: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 7.559055120000000000
        Top = 548.031850000000000000
        Width = 1046.929810000000000000
        Child = rptCustomer.bndBeneficiary
        ToNRows = 0
        ToNRowsMode = rmCount
      end
      object bndBeneficiary: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 578.268090000000000000
        Width = 1046.929810000000000000
        Child = rptCustomer.bndSpace5
        ToNRows = 0
        ToNRowsMode = rmCount
        object subbeneficiary: TfrxSubreport
          AllowVectorExport = True
          Left = -0.000000000000000210
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = rptCustomer.repbeneficiary
        end
      end
      object bndspace3: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 7.559055120000000000
        Top = 472.441250000000000000
        Width = 1046.929810000000000000
        Child = rptCustomer.bndDirecor
        ToNRows = 0
        ToNRowsMode = rmCount
      end
      object bndvehicle: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 653.858690000000000000
        Width = 1046.929810000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object subvehicle: TfrxSubreport
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = rptCustomer.repvehicle
        end
      end
      object bndSpace6: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Height = 7.559055120000000000
        Top = 245.669450000000000000
        Width = 1046.929810000000000000
        Child = rptCustomer.bndContactDetailCo
        ToNRows = 0
        ToNRowsMode = rmCount
      end
    end
    object repAddress: TfrxReportPage
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
      object bndSubAddress: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 98.267780000000000000
        Top = 60.472480000000000000
        Width = 1046.929810000000000000
        DataSet = fdsAddress
        DataSetName = 'Address'
        RowCount = 0
        Stretched = True
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 394.960588430000000000
          Width = 192.755905510000000000
          Height = 98.267716540000000000
          StretchMode = smMaxHeight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight]
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 202.204707320000000000
          Width = 192.755905510000000000
          Height = 98.267716540000000000
          StretchMode = smMaxHeight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          ParentFont = False
        end
        object lblPhysical1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'PHYSICAL1'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."PHYSICAL1"]')
          ParentFont = False
        end
        object lblPhysical2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 18.897637800000000000
          Width = 188.976377952756000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'PHYSICAL2'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."PHYSICAL2"]')
          ParentFont = False
        end
        object AddressPHYSICAL3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 37.795275590000000000
          Width = 188.976377952756000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'PHYSICAL3'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."PHYSICAL3"]')
          ParentFont = False
        end
        object AddressPHYSICAL4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 56.692913390000000000
          Width = 188.976377952756000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'PHYSICAL4'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."PHYSICAL4"]')
          ParentFont = False
        end
        object AddressPHYSICAL_CODE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 75.590551181102400000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PHYSICAL_CODE'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."PHYSICAL_CODE"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 56.692913390000000000
          Width = 188.976377952756000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'POSTAL4'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."POSTAL4"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 75.590551180000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'POSTAL_CODE'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."POSTAL_CODE"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 204.094620000000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'POSTAL1'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."POSTAL1"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 18.897637800000000000
          Width = 188.976377952756000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'POSTAL2'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."POSTAL2"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 37.795275590000000000
          Width = 188.976377952756000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'POSTAL3'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."POSTAL3"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 56.692913390000000000
          Width = 188.976377952756000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'BILLING4'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."BILLING4"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 75.590551180000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'BILLING_CODE'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."BILLING_CODE"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 396.850650000000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'BILLING1'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."BILLING1"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 18.897637800000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'BILLING2'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."BILLING2"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 37.795275590000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'BILLING3'
          DataSet = fdsAddress
          DataSetName = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Address."BILLING3"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 18.897650000000000000
          Width = 45.354311180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EFiling:')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 914.646260000000000000
          Top = 18.897650000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EF PW:')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 744.567414880000000000
          Top = 18.897649999999990000
          Width = 49.133841180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EF User:')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386214880000000000
          Top = 37.795300000000000000
          Width = 66.141732280000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pastel Acc:')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 18.897650000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[(<Customer."EFILING">)]')
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 797.480830000000000000
          Top = 18.897650000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[(<Customer."EF_USER_NAME">)]')
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 960.000620000000000000
          Top = 18.897650000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[(<Customer."EF_PASSWORD">)]')
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 659.417750000000000000
          Top = 37.795300000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[(<Customer."PASTEL_ACC_CODE">)]')
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Prov:')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Width = 49.133868030000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Liv Will:')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 721.890230000000000000
          Top = -0.000000000000004181
          Width = 52.913398030000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Org Don:')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 789.921770000000000000
          Top = 37.795300000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VB Tax:')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 835.276125120000000000
          Top = 37.795300000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[(<Customer."VB_TAX_ACC_CODE">)]')
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401574803149500000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Customer."IS_PROV_TAX_PAYER_STR"]')
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Customer."HAS_LIVING_WILL_STR"]')
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 778.582679610000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          DataSet = fdsCustomer
          DataSetName = 'Customer'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Customer."IS_ORGAN_DONOR_STR"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Height = 18.897637800000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object lblPhysicalTitle: TfrxMemoView
          AllowVectorExport = True
          Width = 124.724490000000000000
          Height = 18.897637800000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            'Physical Address')
          ParentFont = False
        end
        object lblPostalTitle: TfrxMemoView
          AllowVectorExport = True
          Left = 202.094488190000000000
          Width = 124.724490000000000000
          Height = 18.897637800000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            'Postal Address')
          ParentFont = False
        end
        object lblBillingTitle: TfrxMemoView
          AllowVectorExport = True
          Left = 394.850393700000000000
          Width = 193.511811023622000000
          Height = 18.897637800000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            'Billing Address')
          ParentFont = False
        end
      end
    end
    object repContactDetailCo: TfrxReportPage
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
      PrintIfEmpty = False
      object bndSubContactDetailCo: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 60.472480000000000000
        Width = 1046.929810000000000000
        DataSet = fdsContactDetailCo
        DataSetName = 'ContactDetailCo'
        RowCount = 0
        object CntactDetailCoCONTACT_TYPE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataField = 'CONTACT_TYPE'
          DataSet = fdsContactDetailCo
          DataSetName = 'ContactDetailCo'
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContactDetailCo."CONTACT_TYPE"]')
        end
        object CntactDetailCoVALUE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.826776540000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'VALUE'
          DataSet = fdsContactDetailCo
          DataSetName = 'ContactDetailCo'
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContactDetailCo."VALUE"]')
        end
      end
      object bndContactDetailCoHeader: TfrxHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop]
        Height = 18.897637800000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contact Details')
          ParentFont = False
        end
      end
    end
    object repBankingDetail: TfrxReportPage
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
      PrintIfEmpty = False
      object bndBankingDetailHeader: TfrxHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.795275590000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 18.897637800000000000
          Width = 185.196850390000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bank')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 192.755903070000000000
          Top = 18.897637800000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Account Type')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582655200000000000
          Top = 18.897637800000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Acc No')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732244410000000000
          Top = 18.897637800000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Branch')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 449.763781970000000000
          Top = 18.897637800000000000
          Width = 207.874015750000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Account Holder')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Banking Details')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929133860000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftTop]
        end
      end
      object bndSubBankingDetail: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 79.370130000000000000
        Width = 1046.929810000000000000
        DataSet = fdsBankingDetail
        DataSetName = 'BankingDetail'
        RowCount = 0
        object BankingDetailBANK_NAME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 185.196850390000000000
          Height = 18.897650000000000000
          DataField = 'BANK_NAME'
          DataSet = fdsBankingDetail
          DataSetName = 'BankingDetail'
          Frame.Typ = []
          Memo.UTF8W = (
            '[BankingDetail."BANK_NAME"]')
        end
        object BankingDetailACCOUNT_TYPE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          DataField = 'ACCOUNT_TYPE'
          DataSet = fdsBankingDetail
          DataSetName = 'BankingDetail'
          Frame.Typ = []
          Memo.UTF8W = (
            '[BankingDetail."ACCOUNT_TYPE"]')
        end
        object BankingDetailACCOUNT_NO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 298.582870000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'ACCOUNT_NO'
          DataSet = fdsBankingDetail
          DataSetName = 'BankingDetail'
          Frame.Typ = []
          Memo.UTF8W = (
            '[BankingDetail."ACCOUNT_NO"]')
        end
        object BankingDetailBRANCH_CODE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DataField = 'BRANCH_CODE'
          DataSet = fdsBankingDetail
          DataSetName = 'BankingDetail'
          Frame.Typ = []
          Memo.UTF8W = (
            '[BankingDetail."BRANCH_CODE"]')
        end
        object BankingDetailFIRST_NAME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 449.764070000000000000
          Width = 226.771653540000000000
          Height = 18.897650000000000000
          DataField = 'ACCOUNT_HOLDER'
          DataSet = fdsBankingDetail
          DataSetName = 'BankingDetail'
          Frame.Typ = []
          Memo.UTF8W = (
            '[BankingDetail."ACCOUNT_HOLDER"]')
        end
      end
    end
    object repContactDetailPerson: TfrxReportPage
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
      Frame.Typ = [ftLeft, ftRight]
      PrintIfEmpty = False
      object bndContactDetailPersonHeader: TfrxHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop]
        Height = 18.897637795275600000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        PrintChildIfInvisible = True
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contact Person Contact details')
          ParentFont = False
        end
      end
      object bndContactDetailPersonMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 60.472480000000000000
        Width = 1046.929810000000000000
        DataSet = fdsContactPerson
        DataSetName = 'ContactPerson'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[(<ContactPerson."FIRST_NAME">)]  [(<ContactPerson."LAST_NAME">)' +
              ']')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object bndContactDetailPersonDetail: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 18.897637800000000000
        Top = 102.047310000000000000
        Width = 1046.929810000000000000
        DataSet = fdsContactDetailPerson
        DataSetName = 'ContactDetailPerson'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'CONTACT_TYPE'
          DataSet = fdsContactDetailPerson
          DataSetName = 'ContactDetailPerson'
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContactDetailPerson."CONTACT_TYPE"]')
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'VALUE'
          DataSet = fdsContactDetailPerson
          DataSetName = 'ContactDetailPerson'
          Frame.Typ = []
          Memo.UTF8W = (
            '[ContactDetailPerson."VALUE"]')
        end
      end
    end
    object repDirector: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftTop]
      PrintIfEmpty = False
      object bndDirectorHeader: TfrxHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.795275590000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sal')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 18.897650000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'First Name')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 18.897650000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Last Name')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 18.897650000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tax No')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 18.897650000000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mobile Phone')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 18.897650000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Email Address')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Directors')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929133860000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftTop]
        end
      end
      object bndDirectorMaster: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Height = 18.897637800000000000
        Top = 79.370130000000000000
        Width = 1046.929810000000000000
        DataSet = fdsDirector
        DataSetName = 'Director'
        RowCount = 0
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'SALUTATION'
          DataSet = fdsDirector
          DataSetName = 'Director'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Director."SALUTATION"]')
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          DataField = 'FIRST_NAME'
          DataSet = fdsDirector
          DataSetName = 'Director'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Director."FIRST_NAME"]')
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          DataField = 'LAST_NAME'
          DataSet = fdsDirector
          DataSetName = 'Director'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Director."LAST_NAME"]')
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'TAX_NO'
          DataSet = fdsDirector
          DataSetName = 'Director'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Director."TAX_NO"]')
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'MOBILE_PHONE'
          DataSet = fdsDirector
          DataSetName = 'Director'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Director."MOBILE_PHONE"]')
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          DataField = 'EMAIL_ADDRESS'
          DataSet = fdsDirector
          DataSetName = 'Director'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Director."EMAIL_ADDRESS"]')
        end
      end
    end
    object repbeneficiary: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      PrintIfEmpty = False
      object bndbeneficiaryheader: TfrxHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.795275590000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929133860000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftTop]
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sal')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 18.897650000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'First Name')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 18.897650000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Last Name')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598425196850000000
          Top = 18.897650000000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Mobile Phone')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866141732283000000
          Top = 18.897650000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Email Address')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Beneficiaries')
          ParentFont = False
        end
      end
      object bndBeneficiaryDetail: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Height = 18.897637800000000000
        Top = 79.370130000000000000
        Width = 1046.929810000000000000
        DataSet = fdsBeneficiary
        DataSetName = 'Beneficiary'
        RowCount = 0
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559055120000000000
          Width = 45.354330708661400000
          Height = 18.897650000000000000
          DataField = 'SALUTATION'
          DataSet = fdsBeneficiary
          DataSetName = 'Beneficiary'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Beneficiary."SALUTATION"]')
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Width = 132.283464566929000000
          Height = 18.897650000000000000
          DataField = 'FIRST_NAME'
          DataSet = fdsBeneficiary
          DataSetName = 'Beneficiary'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Beneficiary."FIRST_NAME"]')
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          DataField = 'LAST_NAME'
          DataSet = fdsBeneficiary
          DataSetName = 'Beneficiary'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Beneficiary."LAST_NAME"]')
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Width = 90.708661417322800000
          Height = 18.897650000000000000
          DataField = 'MOBILE_PHONE'
          DataSet = fdsBeneficiary
          DataSetName = 'Beneficiary'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Beneficiary."MOBILE_PHONE"]')
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          DataField = 'EMAIL_ADDRESS'
          DataSet = fdsBeneficiary
          DataSetName = 'Beneficiary'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Beneficiary."EMAIL_ADDRESS"]')
        end
      end
    end
    object repvehicle: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      PrintIfEmpty = False
      object bndVehicleHeader: TfrxHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 37.795275590000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929133860000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftTop]
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 117.165354330709000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Make')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 128.503937010000000000
          Top = 18.897650000000000000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Model')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448818900000000000
          Top = 18.897650000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Reg No')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291338580000000000
          Top = 18.897650000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ren Date')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118110240000000000
          Top = 18.897650000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Comment')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vehicle Details')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 18.897650000000000000
          Width = 52.913385826771700000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Year')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 18.897650000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Maintm')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 823.937540000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Legend: M = Maintenance Plan')
          ParentFont = False
        end
      end
      object bndVehicleDetail: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        Height = 18.897637800000000000
        Top = 79.370130000000000000
        Width = 1046.929810000000000000
        DataSet = fdsVehicle
        DataSetName = 'Vehicle'
        RowCount = 0
        Stretched = True
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559055120000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'VEHICLE_MAKE'
          DataSet = fdsVehicle
          DataSetName = 'Vehicle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Vehicle."VEHICLE_MAKE"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'VEHICLE_MODEL'
          DataSet = fdsVehicle
          DataSetName = 'Vehicle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Vehicle."VEHICLE_MODEL"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'REG_NO'
          DataSet = fdsVehicle
          DataSetName = 'Vehicle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Vehicle."REG_NO"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'RENEWAL_DATE'
          DataSet = fdsVehicle
          DataSetName = 'Vehicle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Vehicle."RENEWAL_DATE"]')
          ParentFont = False
        end
        object CheckBox2: TfrxCheckBoxView
          AllowVectorExport = True
          Left = 472.440944880000000000
          Width = 18.897650000000000000
          Height = 18.897637800000000000
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'MAINTENANCE_PLAN'
          DataSet = fdsVehicle
          DataSetName = 'Vehicle'
          Frame.Typ = []
          UncheckStyle = usCross
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'COMMENT'
          DataSet = fdsVehicle
          DataSetName = 'Vehicle'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Vehicle."COMMENT"]')
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Width = 52.913385826771700000
          Height = 18.897650000000000000
          DataField = 'THE_YEAR'
          DataSet = fdsVehicle
          DataSetName = 'Vehicle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Vehicle."THE_YEAR"]')
          ParentFont = False
        end
      end
    end
  end
  object View_customerView: TFDQuery
    Connection = VbdevConnection
    SQL.Strings = (
      'SELECT * FROM VIEW_CUSTOMER')
    Left = 1055
    Top = 325
    object View_customerViewID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object View_customerViewCUSTOMER_TYPE_ID: TIntegerField
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
    end
    object View_customerViewYEAR_END_MONTH_ID: TIntegerField
      FieldName = 'YEAR_END_MONTH_ID'
      Origin = 'YEAR_END_MONTH_ID'
    end
    object View_customerViewTAX_OFFICE_ID: TIntegerField
      FieldName = 'TAX_OFFICE_ID'
      Origin = 'TAX_OFFICE_ID'
    end
    object View_customerViewAR_MONTH_ID: TIntegerField
      FieldName = 'AR_MONTH_ID'
      Origin = 'AR_MONTH_ID'
    end
    object View_customerViewVAT_MONTH_ID: TIntegerField
      FieldName = 'VAT_MONTH_ID'
      Origin = 'VAT_MONTH_ID'
    end
    object View_customerViewVAT_COUNTRY_ID: TIntegerField
      FieldName = 'VAT_COUNTRY_ID'
      Origin = 'VAT_COUNTRY_ID'
    end
    object View_customerViewVAT_OFFICE_ID: TIntegerField
      FieldName = 'VAT_OFFICE_ID'
      Origin = 'VAT_OFFICE_ID'
    end
    object View_customerViewSTATUS_ID: TIntegerField
      FieldName = 'STATUS_ID'
      Origin = 'STATUS_ID'
    end
    object View_customerViewCUSTOMER_TYPE: TStringField
      FieldName = 'CUSTOMER_TYPE'
      Origin = 'CUSTOMER_TYPE'
      Size = 30
    end
    object View_customerViewNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object View_customerViewFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Size = 30
    end
    object View_customerViewLAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Size = 30
    end
    object View_customerViewINITIALS: TStringField
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      Size = 5
    end
    object View_customerViewTRADING_AS: TStringField
      FieldName = 'TRADING_AS'
      Origin = 'TRADING_AS'
      Size = 100
    end
    object View_customerViewBILL_TO: TStringField
      FieldName = 'BILL_TO'
      Origin = 'BILL_TO'
      Size = 100
    end
    object View_customerViewCO_NO: TStringField
      FieldName = 'CO_NO'
      Origin = 'CO_NO'
    end
    object View_customerViewTAX_NO: TStringField
      FieldName = 'TAX_NO'
      Origin = 'TAX_NO'
    end
    object View_customerViewVAT_NO: TStringField
      FieldName = 'VAT_NO'
      Origin = 'VAT_NO'
    end
    object View_customerViewVAT_CUSTOMS_CODE: TStringField
      FieldName = 'VAT_CUSTOMS_CODE'
      Origin = 'VAT_CUSTOMS_CODE'
    end
    object View_customerViewPAYE_UIF_NO: TStringField
      FieldName = 'PAYE_UIF_NO'
      Origin = 'PAYE_UIF_NO'
    end
    object View_customerViewSDL_NO: TStringField
      FieldName = 'SDL_NO'
      Origin = 'SDL_NO'
    end
    object View_customerViewWC_NO: TStringField
      FieldName = 'WC_NO'
      Origin = 'WC_NO'
    end
    object View_customerViewAR_COMPLETION_DATE: TSQLTimeStampField
      FieldName = 'AR_COMPLETION_DATE'
      Origin = 'AR_COMPLETION_DATE'
    end
    object View_customerViewPASTEL_ACC_CODE: TStringField
      FieldName = 'PASTEL_ACC_CODE'
      Origin = 'PASTEL_ACC_CODE'
      Size = 25
    end
    object View_customerViewVB_TAX_ACC_CODE: TStringField
      FieldName = 'VB_TAX_ACC_CODE'
      Origin = 'VB_TAX_ACC_CODE'
      Size = 25
    end
    object View_customerViewIS_PROV_TAX_PAYER: TIntegerField
      FieldName = 'IS_PROV_TAX_PAYER'
      Origin = 'IS_PROV_TAX_PAYER'
    end
    object View_customerViewHAS_LIVING_WILL: TIntegerField
      FieldName = 'HAS_LIVING_WILL'
      Origin = 'HAS_LIVING_WILL'
    end
    object View_customerViewIS_ORGAN_DONOR: TIntegerField
      FieldName = 'IS_ORGAN_DONOR'
      Origin = 'IS_ORGAN_DONOR'
    end
    object View_customerViewDATE_CREATED: TSQLTimeStampField
      FieldName = 'DATE_CREATED'
      Origin = 'DATE_CREATED'
    end
    object View_customerViewDATE_MODIFIED: TSQLTimeStampField
      FieldName = 'DATE_MODIFIED'
      Origin = 'DATE_MODIFIED'
    end
    object View_customerViewIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
      Origin = 'IS_ACTIVE'
    end
    object View_customerViewEFILING: TStringField
      FieldName = 'EFILING'
      Origin = 'EFILING'
      Size = 30
    end
    object View_customerViewEF_USER_NAME: TStringField
      FieldName = 'EF_USER_NAME'
      Origin = 'EF_USER_NAME'
      Size = 30
    end
    object View_customerViewEF_PASSWORD: TStringField
      FieldName = 'EF_PASSWORD'
      Origin = 'EF_PASSWORD'
    end
    object View_customerViewYEAR_END_MONTH: TStringField
      FieldName = 'YEAR_END_MONTH'
      Origin = 'YEAR_END_MONTH'
      Size = 10
    end
    object View_customerViewTAX_OFFICE: TStringField
      FieldName = 'TAX_OFFICE'
      Origin = 'TAX_OFFICE'
      Size = 40
    end
    object View_customerViewVAT_MONTH: TStringField
      FieldName = 'VAT_MONTH'
      Origin = 'VAT_MONTH'
      Size = 10
    end
    object View_customerViewVAT_COUNTRY: TStringField
      FieldName = 'VAT_COUNTRY'
      Origin = 'VAT_COUNTRY'
      Size = 50
    end
    object View_customerViewVAT_OFFICE: TStringField
      FieldName = 'VAT_OFFICE'
      Origin = 'VAT_OFFICE'
      Size = 40
    end
    object View_customerViewAR_MONTH: TStringField
      FieldName = 'AR_MONTH'
      Origin = 'AR_MONTH'
      Size = 10
    end
    object View_customerViewCUSTOMER_STATUS: TStringField
      FieldName = 'CUSTOMER_STATUS'
      Origin = 'CUSTOMER_STATUS'
    end
    object View_customerViewIS_ACTIVE_STR: TStringField
      FieldName = 'IS_ACTIVE_STR'
      Origin = 'IS_ACTIVE_STR'
      FixedChar = True
      Size = 1
    end
    object View_customerViewIS_PROV_TAX_PAYER_STR: TStringField
      FieldName = 'IS_PROV_TAX_PAYER_STR'
      Origin = 'IS_PROV_TAX_PAYER_STR'
      FixedChar = True
      Size = 1
    end
    object View_customerViewHAS_LIVING_WILL_STR: TStringField
      FieldName = 'HAS_LIVING_WILL_STR'
      Origin = 'HAS_LIVING_WILL_STR'
      FixedChar = True
      Size = 1
    end
    object View_customerViewIS_ORGAN_DONOR_STR: TStringField
      FieldName = 'IS_ORGAN_DONOR_STR'
      Origin = 'IS_ORGAN_DONOR_STR'
      FixedChar = True
      Size = 1
    end
  end
  object fdsContactDetailCo: TfrxDBDataset
    UserName = 'ContactDetailCo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CONTACT_DETAIL_CO_ID=CONTACT_DETAIL_CO_ID'
      'CONTACT_TYPE_ID=CONTACT_TYPE_ID'
      'CUSTOMER_ID=CUSTOMER_ID'
      'CONTACT_TYPE=CONTACT_TYPE'
      'VALUE=VALUE')
    DataSet = cdsContactDetailCo
    BCDToCurrency = False
    Left = 85
    Top = 675
  end
  object fdsAddress: TfrxDBDataset
    UserName = 'Address'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ADDRESS_ID=ADDRESS_ID'
      'CUSTOMER_ID=CUSTOMER_ID'
      'CUSTOMER_TYPE_ID=CUSTOMER_TYPE_ID'
      'CUSTOMER_TYPE=CUSTOMER_TYPE'
      'NAME=NAME'
      'TRADING_AS=TRADING_AS'
      'PHYSICAL1=PHYSICAL1'
      'PHYSICAL2=PHYSICAL2'
      'PHYSICAL3=PHYSICAL3'
      'PHYSICAL4=PHYSICAL4'
      'PHYSICAL_CODE=PHYSICAL_CODE'
      'POSTAL1=POSTAL1'
      'POSTAL2=POSTAL2'
      'POSTAL3=POSTAL3'
      'POSTAL4=POSTAL4'
      'POSTAL_CODE=POSTAL_CODE'
      'BILLING1=BILLING1'
      'BILLING2=BILLING2'
      'BILLING3=BILLING3'
      'BILLING4=BILLING4'
      'BILLING_CODE=BILLING_CODE')
    DataSet = cdsAddress
    BCDToCurrency = False
    Left = 186
    Top = 675
  end
  object fdsBankingDetail: TfrxDBDataset
    UserName = 'BankingDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'BANK_ID=BANK_ID'
      'CUSTOMER_ID=CUSTOMER_ID'
      'BRANCH_CODE=BRANCH_CODE'
      'ACCOUNT_TYPE_ID=ACCOUNT_TYPE_ID'
      'ACCOUNT_NO=ACCOUNT_NO'
      'FIRST_NAME=FIRST_NAME'
      'LAST_NAME=LAST_NAME'
      'BANK_NAME=BANK_NAME'
      'ACCOUNT_TYPE=ACCOUNT_TYPE'
      'ACCOUNT_HOLDER=ACCOUNT_HOLDER')
    DataSet = cdsBankingDetail
    BCDToCurrency = False
    Left = 287
    Top = 675
  end
  object fdsContactPerson: TfrxDBDataset
    UserName = 'ContactPerson'
    CloseDataSource = False
    DataSet = cdsContactPerson
    BCDToCurrency = False
    Left = 389
    Top = 675
  end
  object fdsContactDetailPerson: TfrxDBDataset
    UserName = 'ContactDetailPerson'
    CloseDataSource = False
    DataSet = cdsContactDetailPerson
    BCDToCurrency = False
    Left = 515
    Top = 675
  end
  object fdsDirector: TfrxDBDataset
    UserName = 'Director'
    CloseDataSource = False
    DataSet = cdsDirector
    BCDToCurrency = False
    Left = 617
    Top = 675
  end
  object fdsBeneficiary: TfrxDBDataset
    UserName = 'Beneficiary'
    CloseDataSource = False
    DataSet = cdsBeneficiary
    BCDToCurrency = False
    Left = 718
    Top = 675
  end
  object fdsVehicle: TfrxDBDataset
    UserName = 'Vehicle'
    CloseDataSource = False
    DataSet = cdsVehicle
    BCDToCurrency = False
    Left = 820
    Top = 675
  end
  object cdsAddress: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <
      item
        Name = 'idxCustID'
        Fields = 'CUSTOMER_ID'
      end>
    IndexName = 'idxCustID'
    MasterSource = dtsCustomer
    MasterFields = 'ID'
    DetailFields = 'CUSTOMER_ID'
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
    Left = 185
    Top = 575
    object cdsAddressID: TIntegerField
      FieldName = 'ID'
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
end
