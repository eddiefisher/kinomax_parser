require 'spec_helper'

describe KinomaxParser::Movie do
  let(:default) { KinomaxParser::Announce.new test: true }
  # let!(:default) { KinomaxParser::Announce.new cinema: :vladimir }
  let!(:movie) { default.movies.first }
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
      cast: 'Лили Джеймс, Кейт Бланшетт, Ричард Мэдден, Хейли Этвелл, Хелена Бонем Картер',
      schedules: [
        { session_id: 875757, time: "10:00", passed: "true", type: "2D", plan: "http://kinomax.ru/order/hallplan?session=875757", hall: "Зал 1", price: "от 108р." },
        { session_id: 875770, time: "11:10", passed: "true", type: "2D", plan: "http://kinomax.ru/order/hallplan?session=875770", hall: "Зал 4", price: "от 108р." },
        { session_id: 882473, time: "12:45", passed: "true", type: "2D", plan: "http://kinomax.ru/order/hallplan?session=882473", hall: "Зал 3", price: "от 108р." },
        { session_id: 882462, time: "14:40", passed: "true", type: "2D", plan: "http://kinomax.ru/order/hallplan?session=882462", hall: "Зал 1", price: "от 180р." },
        { session_id: 882478, time: "15:50", passed: "true", type: "2D", plan: "http://kinomax.ru/order/hallplan?session=882478", hall: "Зал 4", price: "от 180р." },
        { session_id: 875773, time: "18:10", passed: "false", type: "2D", plan: "http://kinomax.ru/order/hallplan?session=875773", hall: "Зал 4", price: "от 225р." },
        { session_id: 875774, time: "20:30", passed: "false", type: "2D", plan: "http://kinomax.ru/order/hallplan?session=875774", hall: "Зал 4", price: "от 225р." },
        { session_id: 882465, time: "21:50", passed: "false", type: "2D", plan: "http://kinomax.ru/order/hallplan?session=882465", hall: "Зал 1", price: "от 225р." }
      ]
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
  it { expect(movie.schedules).to eq(data[:schedules]) }
end
