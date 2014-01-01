require 'spec_helper'

describe HelloGemWithExtensions do
  subject { HelloGemWithExtensions.new }
  it { expect(subject.hello('C extension')).to eq "Hello, C extension" }
end