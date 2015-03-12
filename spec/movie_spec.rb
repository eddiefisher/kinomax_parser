require 'spec_helper'

describe KinomaxParser::Movie do
  let(:default) { KinomaxParser::Announce.new test: true }
  let(:movie) { default.movies.first }
  let!(:data) {
    {
      id: 2379,
      title: 'Тупой и еще тупее 2',
      length: 108,
      description: 'Гарри Данн и Ллойд Кристмас отправляются в путешествие, чтобы разыскать ребенка Гарри, о существовании которого он не подозревал.',
      genres: 'Комедия',
      rating: 3.86,
      rating_count: 90,
      poster: 'http://kinomax.ru/data/films/2014/km2-2379.jpg',
      trailer: 'http://www.youtube.com/watch?v=zGeEFklw108',
      director: 'Питер Фаррелли, Бобби Фаррелли',
      cast: 'Джим Керри, Джефф Дэниелс, Роб Риггл, Лори Холден, Рэйчел Мелвин'
    }
  }

  it { expect(movie.id).to eq(data[:id]) }
  it { expect(movie.title).to eq(data[:title]) }
  it { expect(movie.length).to eq(data[:length]) }
  it { expect(movie.description).to eq(data[:description]) }
  it { expect(movie.genres).to eq(data[:genres]) }
  it { expect(movie.rating).to eq(data[:rating]) }
  it { expect(movie.rating_count).to eq(data[:rating_count]) }
  it { expect(movie.poster).to eq(data[:poster]) }
  it { expect(movie.trailer).to eq(data[:trailer]) }
  it { expect(movie.director).to eq(data[:director]) }
  it { expect(movie.cast).to eq(data[:cast]) }
end
