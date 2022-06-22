require 'sqlite3'
require 'singleton'

class PlayDBConnection < SQLite3::Database
  include Singleton

  def initialize
    super('plays.db')
    self.type_translation = true
    self.results_as_hash = true
  end
end

class Play
  attr_accessor :id, :title, :year, :playwright_id

  def self.all
    data = PlayDBConnection.instance.execute("SELECT * FROM plays")
    data.map { |datum| Play.new(datum) }
  end

  def self.find_by_title(title)
    titles = PlayDBConnection.instance.execute("SELECT * FROM plays WHERE title = #{title}")

  end

  def self.find_by_playwright(name)
    names = PlayDBConnection.instance.execute("SELECT * FROM plays WHERE playwright_id=(
      SELECT
        *
      FROM
        playwrights
      WHERE
        name = #{name}
    )")

  end

  def initialize(options)
    @id = options['id']
    @title = options['title']
    @year = options['year']
    @playwright_id = options['playwright_id']
  end

  def create
    raise "#{self} already in database" if self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id)
      INSERT INTO
        plays (title, year, playwright_id)
      VALUES
        (?, ?, ?)
    SQL
    self.id = PlayDBConnection.instance.last_insert_row_id
  end

  def update
    raise "#{self} not in database" unless self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id, self.id)
      UPDATE
        plays
      SET
        title = ?, year = ?, playwright_id = ?
      WHERE
        id = ?
    SQL
  end
end

class Playwright 

  def self.all
    playwrights = PlayDBConnection.instance.execute("SELECT * FROM playwrights")
    playwrights.map { |datum| Playwright.new(playwright)}
  end

  def self.find_by_name(name)
    plays = PlayDBConnection.instance.execute("SELECT * FROM playwrights WHERE name = #{name}")

  end

  def new(options)
    @id = options['id']
    @name = options['name']
    @birth_year = options['ibirth_year']
  end

  def create
    raise "error already in database" if @id
    PlayDBConnection.instance.execute(<<-SQL, @name, @birth_year, @id)
      INSERT INTO
        playwrights (name, birth_year, id)
      VALUES
        (? , ? , ?)
    SQL
    @id = PlayDBConnection.insntance.last_insert_row_id
  end

  def update
    raise "error not in database" unless @id
    PlayDBConnection.instance.execute(<<-SQL, @name, @birth_year, @id)
      UPDATE
        playwrights
      SET
        name = ?, birth_year = ?
      WHERE
        id = ?
    SQL
  end

  def get_plays
    plays = PlayDBConnection.instance.execute("SELECT * FROM plays WHERE name = (
      SELECT
        *
      FROM
        plays
      WHERE
        playwright_id = @id
        
        "))

  end

end