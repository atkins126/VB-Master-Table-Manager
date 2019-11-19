inherited MTDM: TMTDM
  Height = 672
  Width = 1097
  object cdsActivityType: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
  end
  object cdsAgePeriod: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    UpdateOptions.GeneratorName = 'AGE_PERIOD_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'AGE_PERIOD'
    StoreDefs = True
    Left = 235
    Top = 10
  end
  object cdsBank: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    BeforePost = cdsActivityTypeBeforePost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    BeforePost = cdsActivityTypeBeforePost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    BeforePost = cdsActivityTypeBeforePost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 140
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
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 140
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
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 140
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
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 140
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
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    UpdateOptions.GeneratorName = 'MONTH_OF_YEAR_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'MONTH_OF_YEAR'
    StoreDefs = True
    Left = 635
    Top = 140
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
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 140
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
  end
  object cdsRateUnit: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 285
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
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 285
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
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 285
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
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
    FilterOptions = [foCaseInsensitive]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(TRIM(NAME)) > 0'
        ErrorMessage = 'Tax Office name must have a value'
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
        Name = 'idxName'
        CaseInsFields = 'NAME'
        Fields = 'NAME'
        Options = [ixUnique, ixCaseInsensitive]
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
    Top = 285
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
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 285
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
    Top = 190
  end
  object dtsCustomerStatus: TDataSource
    DataSet = cdsCustomerStatus
    Left = 235
    Top = 190
  end
  object dtsCustomerType: TDataSource
    DataSet = cdsCustomerType
    Left = 335
    Top = 190
  end
  object dtsJobFunction: TDataSource
    DataSet = cdsJobFunction
    Left = 435
    Top = 190
  end
  object dtsMonthOfyear: TDataSource
    DataSet = cdsMonthOfYear
    Left = 635
    Top = 190
  end
  object dtsPriceList: TDataSource
    DataSet = cdsPricelist
    Left = 720
    Top = 190
  end
  object dtsRateUnit: TDataSource
    DataSet = cdsRateUnit
    Left = 130
    Top = 335
  end
  object dtsSalutation: TDataSource
    DataSet = cdsSalutation
    Left = 230
    Top = 335
  end
  object dtsStdActivityType: TDataSource
    DataSet = cdsStdActivity
    Left = 330
    Top = 335
  end
  object dtsTaxOffice: TDataSource
    DataSet = cdsTaxOffice
    Left = 430
    Top = 335
  end
  object dtsVehicleMake: TDataSource
    DataSet = cdsVehicleMake
    Left = 530
    Top = 335
  end
  object FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink
    Left = 960
    Top = 240
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 960
    Top = 185
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 960
    Top = 125
  end
  object cdsMasterList: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 140
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
    Top = 190
  end
  object cdsCountry: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
        Name = 'idxCID'
        Fields = 'CUSTOMER_ID'
      end
      item
        Active = True
        Name = 'idxContactdetailValue'
        Fields = 'CUSTOMER_ID;CONTACT_TYPE_ID;VALUE'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
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
    UpdateOptions.GeneratorName = 'CONTACT_DETAIL_CO_ID_GEN'
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'CONTACT_DETAIL_CO'
    StoreDefs = True
    Left = 130
    Top = 425
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
    Top = 485
  end
  object cdsAddress: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 425
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
    Top = 485
  end
  object cdsContactDetailPerson: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 425
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
    Top = 485
  end
  object cdsBankingDetail: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 425
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
    Top = 485
  end
  object cdsContactPerson: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 425
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
    Top = 485
  end
  object cdsDirector: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 425
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
    Top = 485
  end
  object cdsBeneficiary: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 425
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
    Top = 485
  end
  object cdsVehicle: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    BeforePost = cdsActivityTypeBeforePost
    AfterPost = cdsActivityTypeAfterPost
    AfterDelete = cdsActivityTypeAfterDelete
    OnNewRecord = cdsActivityTypeNewRecord
    OnPostError = cdsActivityTypePostError
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
    Top = 425
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
    Top = 485
  end
end
