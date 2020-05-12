inherited LookupDM: TLookupDM
  OldCreateOrder = True
  Height = 772
  Width = 1026
  object cdsCountry: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
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
    Left = 530
    Top = 10
    object cdsCountryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCountryNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
    object cdsCountryDIALING_CODE: TStringField
      DisplayLabel = 'Dial Code'
      FieldName = 'DIALING_CODE'
      Origin = 'DIALING_CODE'
      Size = 10
    end
  end
  object dtsCountry: TDataSource
    DataSet = cdsCountry
    Left = 530
    Top = 60
  end
  object cdsCustomerGroup: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
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
    Left = 620
    Top = 10
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
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Customer Status name must have a value'
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
    Left = 135
    Top = 130
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
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Customer Type name must have a value'
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
    Left = 235
    Top = 130
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
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Jab Function name must have a value'
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
    Left = 335
    Top = 130
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
      end
      item
        Active = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soUnique]
      end>
    IndexName = 'idxID'
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
    Left = 430
    Top = 130
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
  object dtsCustomerGroup: TDataSource
    DataSet = cdsCustomerGroup
    Left = 620
    Top = 60
  end
  object dtsCustomerStatus: TDataSource
    DataSet = cdsCustomerStatus
    Left = 135
    Top = 180
  end
  object dtsCustomerType: TDataSource
    DataSet = cdsCustomerType
    Left = 235
    Top = 180
  end
  object dtsJobFunction: TDataSource
    DataSet = cdsJobFunction
    Left = 335
    Top = 180
  end
  object dtsMonthOfyear: TDataSource
    DataSet = cdsMonthOfYear
    Left = 430
    Top = 180
  end
  object cdsRateUnit: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
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
    Left = 685
    Top = 255
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
    object cdsRateUnitABBREVIATION: TStringField
      DisplayLabel = 'Abbr'
      FieldName = 'ABBREVIATION'
      Size = 5
    end
  end
  object cdsSalutation: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Salutation name must have a value'
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
        Options = [ixUnique]
      end>
    IndexName = 'idxName'
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
    Left = 130
    Top = 255
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
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
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
    Left = 230
    Top = 255
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
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
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
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxName'
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
    Left = 330
    Top = 255
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
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
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
    Left = 525
    Top = 255
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
  object dtsRateUnit: TDataSource
    DataSet = cdsRateUnit
    Left = 685
    Top = 305
  end
  object dtsSalutation: TDataSource
    DataSet = cdsSalutation
    Left = 130
    Top = 305
  end
  object dtsStdActivityType: TDataSource
    DataSet = cdsStdActivity
    Left = 230
    Top = 305
  end
  object dtsTaxOffice: TDataSource
    DataSet = cdsTaxOffice
    Left = 330
    Top = 305
  end
  object dtsVehicleMake: TDataSource
    DataSet = cdsVehicleMake
    Left = 525
    Top = 305
  end
  object FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink
    Left = 925
    Top = 240
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 925
    Top = 185
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 925
    Top = 125
  end
  object cdsBank: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Bank name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
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
    Left = 140
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
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Bank  Account Type name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
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
    Left = 335
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
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Contact Type name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
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
    Left = 435
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
  object dtsBank: TDataSource
    DataSet = cdsBank
    Left = 140
    Top = 60
  end
  object dtsBankAccountType: TDataSource
    DataSet = cdsBankAccountType
    Left = 335
    Top = 60
  end
  object dtsContactType: TDataSource
    DataSet = cdsContactType
    Left = 435
    Top = 60
  end
  object cdsARMonthOfYear: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
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
      end
      item
        Active = True
        Name = 'idxName'
        Fields = 'NAME'
        CaseInsFields = 'NAME'
        Options = [soUnique]
      end>
    IndexName = 'idxID'
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
    Left = 525
    Top = 130
    object IntegerField1: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 10
    end
  end
  object dtsARMonthOfyear: TDataSource
    DataSet = cdsARMonthOfYear
    Left = 525
    Top = 180
  end
  object cdsVATOffice: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
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
        CaseInsFields = 'NAME'
        Options = [soNoCase, soUnique]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxName'
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
    Top = 255
    object IntegerField2: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField2: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 40
    end
  end
  object dtsVATOffice: TDataSource
    DataSet = cdsVATOffice
    Left = 430
    Top = 305
  end
  object cdsBFSalutation: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Salutation name must have a value'
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
        Options = [ixUnique]
      end>
    IndexName = 'idxName'
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
    Left = 125
    Top = 370
    object IntegerField4: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField4: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
    end
  end
  object dtsBFSalutation: TDataSource
    DataSet = cdsBFSalutation
    Left = 125
    Top = 420
  end
  object cdsDirectorSalutation: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Salutation name must have a value'
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
        Options = [ixUnique]
      end>
    IndexName = 'idxName'
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
    Left = 237
    Top = 370
    object IntegerField5: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField5: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
    end
  end
  object dtsDirectorSalutation: TDataSource
    DataSet = cdsDirectorSalutation
    Left = 237
    Top = 420
  end
  object cdsVATMonth: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Salutation name must have a value'
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
      end
      item
        Active = True
        Name = 'idxName'
        Fields = 'NAME'
        Options = [soNoCase]
        FilterOptions = [ekNoCase]
      end>
    IndexName = 'idxID'
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
    Left = 625
    Top = 130
    object IntegerField6: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField6: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
    end
  end
  object dtsVATMonth: TDataSource
    DataSet = cdsVATMonth
    Left = 625
    Top = 180
  end
  object cdsCompany: TFDMemTable
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
    Left = 685
    Top = 370
    object cdsCompanyID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
    end
    object cdsCompanyCUSTOMER_TYPE_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C ID'
      FieldName = 'CUSTOMER_TYPE_ID'
      Origin = 'CUSTOMER_TYPE_ID'
    end
    object cdsCompanyCOMPANY: TStringField
      DisplayLabel = 'Company'
      FieldName = 'COMPANY'
      Origin = 'COMPANY'
      Size = 100
    end
  end
  object dtsCompany: TDataSource
    DataSet = cdsCompany
    Left = 685
    Top = 420
  end
  object VbdevConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Data\Firebird\VB\VB.FDB'
      'ConnectionDef=VB Live')
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtCurrency
      end
      item
        SourceDataType = dtSingle
        TargetDataType = dtDouble
      end>
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 919
    Top = 7
  end
  object cdsHeirSalutation: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Salutation name must have a value'
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
        Options = [ixUnique]
      end>
    IndexName = 'idxName'
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
    Left = 349
    Top = 370
    object cdsHeirSalutationID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsHeirSalutationNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
    end
  end
  object dtsHeirSalutation: TDataSource
    DataSet = cdsHeirSalutation
    Left = 349
    Top = 420
  end
  object cdsSHSalutation: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Salutation name must have a value'
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
        Options = [ixUnique]
      end>
    IndexName = 'idxName'
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
    Left = 461
    Top = 370
    object cdsSHSalutationID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSHSalutationNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
    end
  end
  object dtsSHSalutation: TDataSource
    DataSet = cdsSHSalutation
    Left = 461
    Top = 420
  end
  object cdsAccHolderSalutation: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Salutation name must have a value'
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
        Options = [ixUnique]
      end>
    IndexName = 'idxName'
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
    Left = 573
    Top = 370
    object IntegerField3: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField3: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
    end
  end
  object dtsAccHolderSalutation: TDataSource
    DataSet = cdsAccHolderSalutation
    Left = 573
    Top = 420
  end
  object cdsHeirBank: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Bank name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
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
    Left = 225
    Top = 10
    object cdsHeirBankID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsHeirBankNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
  end
  object dtsHeirBank: TDataSource
    DataSet = cdsHeirBank
    Left = 225
    Top = 60
  end
  object cdsHeirBankAccountType: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Bank  Account Type name must have a value'
        FromDictionary = False
      end>
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
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
    Left = 120
    Top = 490
    object cdsHeirBankAccountTypeID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsHeirBankAccountTypeNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 50
    end
  end
  object dtsHeirBankAccountType: TDataSource
    DataSet = cdsHeirBankAccountType
    Left = 120
    Top = 540
  end
  object cdsTrusteeSalutation: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Salutation name must have a value'
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
        Options = [ixUnique]
      end>
    IndexName = 'idxName'
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
    Left = 250
    Top = 490
    object cdsTrusteeSalutationID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTrusteeSalutationNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
    end
  end
  object dtsTrusteeSalutation: TDataSource
    DataSet = cdsTrusteeSalutation
    Left = 250
    Top = 540
  end
  object cdsCustomer: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FilterOptions = [foCaseInsensitive]
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
    Left = 730
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
    object cdsCustomerPAYE_NO: TStringField
      DisplayLabel = 'PAYE No'
      FieldName = 'PAYE_NO'
      Origin = 'PAYE_NO'
    end
    object cdsCustomerUIF_NO: TStringField
      DisplayLabel = 'UIF No'
      FieldName = 'UIF_NO'
      Origin = 'UIF_NO'
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
  object dtsCustomer: TDataSource
    DataSet = cdsCustomer
    Left = 730
    Top = 60
  end
  object cdsCustomerStatusRpt: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    Constraints = <
      item
        CustomConstraint = 'CHAR_LENGTH(NAME) > 0'
        ErrorMessage = 'Customer Status name must have a value'
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
    Left = 25
    Top = 130
    object cdsCustomerStatusRptID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustomerStatusRptNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
    end
  end
  object dtsCustomerStatusRpt: TDataSource
    DataSet = cdsCustomerStatusRpt
    Left = 25
    Top = 180
  end
end
