require 'spec_helper'

describe Api::Docs::Dsl do
  subject { Api::Docs::Dsl.new }

  describe '#response' do
    it 'adds code, responseModel and message to response_messages' do
      subject.response(:success, 'Some sample text', 'Tag')
      expect(subject.response_messages).to eq([{
                                                code: 200,
                                                responseModel: 'Tag',
                                                message: 'Some sample text',
                                              }])
    end
  end
end
