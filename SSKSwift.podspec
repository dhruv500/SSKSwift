Pod::Spec.new do |spec|
  spec.name          = 'SSKSwift'
  spec.version       = '1.1.0'
 spec.license      = { :type => 'MIT', :file => 'LICENSE.md' }
     spec.homepage     = 'https://github.com/dhruv500'
  spec.authors       = { 'Dhruv Jaiswal' => 'dhruvjaiswal5@gmail.com' }
  spec.summary       = 'A simple Swift implementation of Shamirs Secret Sharing scheme. SSKSwift is a library that exposes an API to split secret Integer into a number of different shares. With the possession of some or all of these shares, the original secret can be restored.
'
  spec.source        = { :git => 'https://github.com/dhruv500/SSKSwift.git', :tag => '1.0.0' }
  spec.module_name   = 'SSKSwift'
  spec.swift_version = '5.0'

  spec.ios.deployment_target  = '13.0'

  spec.source_files = 'Sources/SSKSwift/*.swift'
end
