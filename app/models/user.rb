class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
          validates :nickname
          validates :birth_date
          validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include a hyphen (-)' }
          validates :municipalities
          validates :address
         end

         #validates :area_id, numericality: { other_than: 0, message: 'select' }
       
         with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]/, message: 'full width' } do
           validates :first_name
           validates :family_name
         end
       
         with_options presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: 'full width katakana' } do
           validates :first_name_kana
           validates :family_name_kana
         end
       
         validates :email, presence: true, format: { with: /\A\S+@\S+\.\S+\z/ }
       
         VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
         validates :password, format: { with: VALID_PASSWORD_REGEX, message: 'Include both letters and numbers' }
       
         
end
