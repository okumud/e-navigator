# frozen_string_literal: true

class User < ApplicationRecord
  enum sex_type: { na: 0, male: 1, female: 2, another: 9 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
