shared_examples_for 'single resource' do
  let(:response) { JSON.parse(subject) }

  it 'should returns correct response' do
    response.should be_a_kind_of(Hash)
  end
end

shared_examples_for 'multiply resources' do
  let(:response) { JSON.parse(subject) }

  it 'should returns correct response' do
    response.should be_a_kind_of(Array)
    response.each do |item|
      item.should be_a_kind_of(Hash)
    end
  end
end
