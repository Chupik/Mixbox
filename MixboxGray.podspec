Pod::Spec.new do |s|
  s.name                   = 'MixboxGray'
  s.module_name            = s.name
  s.version                = '0.2.3'
  s.summary                = s.name
  s.homepage               = 'https://github.com/avito-tech/Mixbox'
  s.license                = 'MIT'
  s.author                 = { 'Hive of coders from Avito' => 'avito.ru' }
  s.source                 = { :git => 'https://github.com/avito-tech/Mixbox.git', :tag => "Mixbox-#{s.version}" }
  s.platform               = :ios, '9.0'
  s.ios.deployment_target  = '9.0'
  s.swift_version          = '5.0'
  s.requires_arc           = true
  s.source_files           = 'Frameworks/Gray/**/*.{swift,h,m,mm}'

  s.dependency 'MixboxUiTestsFoundation'
  s.dependency 'MixboxUiKit'
  s.dependency 'MixboxInAppServices'
  s.dependency 'MixboxDi'
  
  s.frameworks = 'XCTest', 'XCTAutomationSupport'
  
  s.xcconfig = {
    'ENABLE_TESTING_SEARCH_PATHS' => 'YES',
    'LD_RUNPATH_SEARCH_PATHS' => '$(inherited) "$(PLATFORM_DIR)/Developer/usr/lib" "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(PLATFORM_DIR)/Developer/Library/PrivateFrameworks"',
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(PLATFORM_DIR)/Developer/Library/PrivateFrameworks"'
  }
end
