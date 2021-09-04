class InternDay < ActiveHash::Base
  
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Mon' },
    { id: 3, name: 'Tues' },
    { id: 4, name: 'Wednes' },
    { id: 5, name: 'Thurs' },
    { id: 6, name: 'Fri' },
    { id: 7, name: 'Satur' },
    { id: 8, name: 'Sun' }
  ]

  include ActiveHash::Associations
  has_many :companies

end