require 'spec_helper'

describe 'Compass project' do
  context 'new compass project' do
    it 'creates project with purecss-sass' do
      command = 'bundle exec compass create tmp/test-new-compass-project -r purecss-sass --using purecss > /dev/null'
      expect(system(command)).to be true
    end
  end

  context 'existing compass project' do
    it 'adds purecss-sass to the project' do
      command = "bundle exec compass create tmp/test-existing-compass-project > /dev/null;
                 cd tmp/test-existing-compass-project;
                 echo \"require 'purecss-sass'\" >> config.rb;
                 compass install purecss -r purecss-sass > /dev/null"
      expect(system(command)).to be true
    end
  end
end
