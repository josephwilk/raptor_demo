module Demo
  module Presenters
    class Screencast
      takes :subject
      let(:id) { @subject.id }
      let(:title) { @subject.title }
    end

    class ScreencastList
      let(:all) { Records::Screencast.all }
    end
  end

  module Records
    class Screencast < ActiveRecord::Base
    end
  end
end

