#
# Be sure to run `pod lib lint CHOMontage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CHOMontage'
  s.version          = '0.1.0'
  s.summary          = 'Montage'

  s.description      = <<-DESC
    I am a Director;
                       DESC

  s.homepage         = 'https://github.com/chojd/CHOMontage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gene' => 'jingda.cao@gmail.com' }
  s.source           = { :git => 'https://github.com/chojd/CHOMontage.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/JingdaCao'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/*'

  s.subspec 'Base' do |ss|
    ss.source_files = 'Sources/Base/*'

    ss.subspec 'Cell' do |sss|
      sss.source_files = 'Sources/Base/Cell/*'
    end

    ss.subspec 'Controller' do |sss|
      sss.source_files = 'Sources/Base/Controller/*'
    end

    ss.subspec 'Item' do |sss|
      sss.source_files = 'Sources/Base/Item/*'
    end

    ss.subspec 'Layout' do |sss|
      sss.source_files = 'Sources/Base/Layout/*'
    end

    ss.dependency 'CHOMontage/Director'
  end

  s.subspec 'Annotation' do |ss|
    ss.source_files = 'Sources/Annotation/*'
    ss.dependency 'CHOMontage/Director'
  end

  s.subspec 'Director' do |ss|
    ss.source_files = 'Sources/Director/*'
    ss.dependency 'CHOMontage/Interfaces'
  end

  s.subspec 'Defines' do |ss|
    ss.source_files = 'Sources/Defines/*'
  end

  s.subspec 'Interfaces' do |ss|
    ss.source_files = 'Sources/Interfaces/*'
    ss.dependency 'CHOMontage/Defines'
  end

end
