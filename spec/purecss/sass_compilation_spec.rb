require 'spec_helper'

RSpec.describe 'Sass compilation' do
  before do
    gem_path = File.expand_path('../..', File.dirname(__FILE__))
    tmp_dir_path = File.join(gem_path, 'tmp')
    FileUtils.mkdir_p(tmp_dir_path)
  end

  after do
    FileUtils.rm_rf('.sass-cache', secure: true)
    FileUtils.rm_rf('tmp', secure: true)
  end

  it 'compiles scss to css' do
    path = 'vendor/assets/stylesheets'
    file = '_purecss'
    sass_engine = Sass::Engine.for_file("#{path}/#{file}.scss", syntax: :scss, load_paths: [path])
    expect {
      File.open("tmp/#{file}.css", 'w') { |f| f.write(sass_engine.render) }
    }.not_to raise_error
  end
end
