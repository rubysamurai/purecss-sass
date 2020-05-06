RSpec.describe 'Rails app' do
  it 'adds stylesheet files' do
    expect(Rails.application.assets.find_asset('custom'))
      .to be_instance_of(Sprockets::Asset)
  end
end
