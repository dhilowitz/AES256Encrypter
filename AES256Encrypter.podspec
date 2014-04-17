Pod::Spec.new do |s|

  s.name         = "AES256Encrypter"
  s.version      = "0.0.1"
  s.summary      = "A simple category on NSData for AES256 encryption."

  s.description  = <<-DESC
                   AES256Encrypter provides methods to encrypt/decrypt NSData with a given key.

                   * It's based on the CommonCrypto framework included both in iOS and Mac OS.
                   * The task like encrypting a plist in Mac then decrypting it in iOS app 
                   * can be naturally done by it.
                   * 
                   DESC

  s.homepage     = "https://github.com/dhilowitz/AES256Encrypter"
  s.license      = "Unknown"
  s.author       = "David Hilowitz??"

  s.source       = { :git => "git@github.com:dhilowitz/AES256Encrypter.git", :tag => "0.0.1" }

  s.source_files  = 'AES256Encrypter/NSDataAES256.{h,m}' 
  s.requires_arc  = true
end
