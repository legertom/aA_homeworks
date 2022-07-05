class User < ApplicationRecord
    validates :username, presence: true
    validates :session_token, presence: true
    validates :password_digest, presence: true, length {minimum: 6}, allow_nil: true
    validate password_check
    before_validation: :ensure_session_token

    attr_reader :password

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        return nil if user.nil?
        user.is_password?(password) ? user : nil

    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)

    end

    def reset_session_token
        #resets the session token and saves the user
        self.session_token = self.class.generate_session_token
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= self.class.generate_session_token

    end

    def password=(password)
        self.password_digest = Bcrypt::Password.create(password)
    end

    private

    def password_check
        if password_digest.empty?
            errors[:password_digest] << 'Password can\'t be blank'
        end
    end
end
