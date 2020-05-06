RSpec.describe 'Sass C compilation' do
  it 'compiles scss to css' do
    path = '../../vendor/assets/stylesheets'
    file = '_purecss'
    sass_engine = SassC::Engine.new(
      File.read(File.expand_path("#{path}/#{file}.scss", __dir__)),
      cache_location: 'tmp/.sassc-cache',
      load_paths: [path],
      syntax: :scss
    )
    expect {
      File.open("tmp/#{file}.css", 'w') { |f| f.write(sass_engine.render) }
    }.not_to raise_error
  end
end
