class Kind < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '就寝' },
    { id: 3, name: '起床' },
    { id: 4, name: '眠気' },
    { id: 5, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :posts
  end