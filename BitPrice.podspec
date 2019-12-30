

Pod::Spec.new do |spec|


  spec.name         = "BitPrice"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of BitPrice"


  spec.description  = <<-DESC
               

  spec.homepage     = "http://EXAMPLE/BitPrice"


  spec.license      = "MIT (example)"

  spec.author             = { "Берн" => "bern_wow@mail.ru" }

  spec.source       = { :git => "http://github.com/bernwow/BitPrice.git", :tag => "#{spec.version}" }




  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

  end
