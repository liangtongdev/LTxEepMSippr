Pod::Spec.new do |s|
    s.name         = "LTxEepMSippr"
    s.version      = "0.0.1"
    s.summary      = "EEPJ平台服务移动端的接口(SIPPR). "
    s.license      = "MIT"
    s.author             = { "liangtong" => "liangtongdev@163.com" }
    
    s.homepage     = "https://github.com/liangtongdev/LTxEepMSippr"
    s.platform     = :ios, "9.0"
    s.ios.deployment_target = "9.0"
    s.source       = { :git => "https://github.com/liangtongdev/LTxEepMSippr.git", :tag => "#{s.version}", :submodules => true }
    
    # 网络访问，URL地址等
    s.dependency "LTxCore"
    s.dependency "LTxPopup"
    
    s.frameworks = "Foundation", "UIKit"
    
    # ViewModel
    s.subspec 'ViewModel' do |vm|
        vm.source_files  =  "LTxEepMSippr/ViewModel/*.{h,m}"
        vm.public_header_files = "LTxEepMSippr/ViewModel/*.h"
    end
    
    # Util
    s.subspec 'Util' do |util|
        util.source_files  =  "LTxEepMSippr/Util/*.{h,m}"
        util.public_header_files = "LTxEepMSippr/Util/*.h"
    end
    
    # Core
    s.subspec 'Core' do |core|
        core.source_files  =  "LTxEepMSippr/Core/*.{h,m}"
        core.public_header_files = "LTxEepMSippr/Core/*.h"
        core.dependency "LTxEepMSippr/ViewModel"
        core.dependency "LTxEepMSippr/Util"
    end
    
end
