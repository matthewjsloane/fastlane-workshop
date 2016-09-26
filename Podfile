source 'https://github.com/CocoaPods/Specs.git'

def test_pods
  pod 'Quick', '~> 0.9'
  pod 'Nimble', '~> 4.1'
end


target 'WhichFruit' do
  use_frameworks!
end

target 'WhichFruitTests' do
  use_frameworks!
  test_pods
end

target 'WhichFruitUITests' do
  use_frameworks!
  test_pods
end
