Pod::Spec.new do |s|
  s.name                      = 'C7'
  s.version                   = '0.1.12'
  s.license                   = 'MIT'
  s.homepage                  = 'https://github.com/SwiftX/C7'
  s.authors                   = { 'Logan Wright' => 'logan.william.wright@gmail.com',
                                  'Paulo Faria' => 'paulo.faria.rl@gmail.com' }
  s.summary                   = 'Core standards for Swift.'
  s.source                    = { :git => 'https://github.com/SwiftX/C7.git', :tag => s.version }

  s.ios.deployment_target     = '8.0'
  s.osx.deployment_target     = '10.9'
  s.tvos.deployment_target    = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files              = 'Sources/*.swift'
end