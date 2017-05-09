Pod::Spec.new do |s|
  s.name               = "TezButton"
  s.version            = "0.2"
  s.summary            = "TezButton is easily support customized button for using"
  s.homepage           = "https://github.com/tezpark/TezButton"
  s.screenshots        = "https://cloud.githubusercontent.com/assets/389004/25770963/5abfdf1c-327e-11e7-8432-187f28a3bb81.png"
  s.license            = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Tez Park" => "ptswin@gmail.com" }
  s.source             = { :git => "https://github.com/tezpark/TezButton.git", :tag => s.version.to_s }
  s.platform           = :ios, "8.0"

  s.source_files  = "TezButton/**/*.{h,m}"
end
