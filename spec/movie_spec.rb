require 'spec_helper'

describe KinomaxParser::Movie do
  let(:default) { KinomaxParser::Announce.new test: true }
  let(:movie) { default.movies.first }
  let!(:data) {
    {
      id: 2409,
      title: 'Золушка',
      length: 105,
      description: 'Отец молодой девушки по имени Элла, овдовев, женится во второй раз, и вскоре Элла оказывается один на один с жадными и завистливыми новыми родственницами – мачехой Леди Тремэйн и ее дочерьми - Анастасией и Дризеллой. Из хозяйки дома она превращается в служанку, вечно испачканную золой, за что и получает от своих сварливых сводных сестриц прозвище – Золушка. Несмотря на злоключения, выпавшие на ее долю, Золушка не отчаивается, ведь даже в самые тяжелые моменты находится что-то, что помогает ей думать о хорошем: например, случайная встреча на лесной тропинке с прекрасным юношей. Элла даже не предполагает, что встретилась с самим принцем, и что вскоре Фея-крестная навсегда поменяет её жизнь к лучшему.',
      genres: 'Фэнтези, Драма, Мелодрама, Приключения, Семейный',
      rating: 4.34,
      rating_count: 195,
      poster: 'http://kinomax.ru/data/films/2015/km2-2409.jpg',
      trailer: 'http://www.youtube.com/watch?v=nynI4BoCdeA',
      director: 'Кеннет Брана',
      cast: 'Лили Джеймс, Кейт Бланшетт, Ричард Мэдден, Хейли Этвелл, Хелена Бонем Картер'
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
