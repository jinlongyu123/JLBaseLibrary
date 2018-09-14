

Pod::Spec.new do |s|

  s.name         = "JLBaseLibrary"
  s.version      = "0.0.1"
  s.summary      = "添加UIButton、UILable等基础控件的分类，方便进行开发工作"

  s.description  = <<-DESC
                   DESC
  s.homepage     = "https://github.com/search?q=JLBaseLibrary"
  s.license      = "MIT"

  s.author             = { "wjl" => "jlwang19@best-inc.com" }
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/jinlongyu123/JLBaseLibrary.git", :tag => "#{s.version}" }
s.source_files  = "JLBaseLibraryDemo/JLBaseLibrary/JLBaseLibrary/*.{h,m}"

end
