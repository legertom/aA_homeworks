require 'sqlite3'
require 'singleton'

class Playwrights
    include Singleton
    def self.all
        data = PlayDBConnection.instance.execute("SELECT * FROM playwrights")
        data.map { |datum| Play.new(datum) }
    end

    def self.find_by_name(name)
        data = PlayDBConnection.instance.execute("SELECT * FROM playwrights WHERE name=#{name}")
        data.map { |datum| Play.new(datum) }
    end

    def new(options)
        @id = options['id']
        @name = options['name']
        @birth_year = options['year']
    end

    def create
        raise "#{self} already in database" if self.id
        PlayDBConnection.instance.execute(<<-SQL, self.name, self.birth_year)
            INSERT INTO
                playwrights (name, birth_year )
            VALUES
                (?, ?)
        SQL
        self.id = PlayDBConnection.instance.last_insert_row_id
    end

    def update
        raise "#{self} not in database" unless self.id
        PlayDBConnection.instance.execute(<<-SQL, self.name, self.birth_year, self.id)
            UPDATE
                playwrights
            SET
                name = ?, birth_year = ?
            WHERE
                id = ?
    SQL

    end

    def get_plays
        data = PlayDBConnection.instance.execute("SELECT * FROM plays")
        data.map { |datum| Play.new(datum) }

    end

end