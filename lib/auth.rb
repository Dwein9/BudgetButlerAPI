class Auth

  ALGORITHM = 'HS256'

  def self.encrypt(hash)
    JWT.encode(hash, secret_key, ALGORITHM)
  end

  def self.secret_key
    "2af3e32ec36da3738303e50797f66b73eb02be189649fa2878d619d23bf5d036d5a4afed14f99ce77cbdf9813c3f4c0ab88b12d00bfef6eda42c594614259587"
  end

  def self.decode()

  end

end
