inherited DirectorFrm: TDirectorFrm
  Caption = 'DirectorFrm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited layMain: TdxLayoutControl
    inherited navMaster: TcxDBNavigator
      Width = 324
    end
    inherited litNavigator: TdxLayoutItem
      ControlOptions.OriginalWidth = 324
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
