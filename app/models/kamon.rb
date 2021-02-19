class Kamon < ActiveHash::Base
  self.data = [
    { id: 0, name: '-----' },
    { id: 1, name: '分からない' },
    { id: 2, name: '＜ア行＞' },
    { id: 3, name: '葵（あおい）' },
    { id: 4, name: '麻（あさ）' },
    { id: 5, name: '井桁（いげた）' },
    { id: 6, name: '石（いし）' },
    { id: 7, name: '板屋貝（いたやがい）' },
    { id: 8, name: '銀杏（いちょう）' },
    { id: 9, name: '井筒（いづつ）' },
    { id: 10, name: '糸巻（いとまき）' },
    { id: 11, name: '稲妻（いなづま）' },
    { id: 12, name: '稲（いね）' },
    { id: 13, name: '兎（うさぎ）' },
    { id: 14, name: '団扇（うちわ）' },
    { id: 15, name: '馬（うま）' }
  ]

  include ActiveHash::Associations
  belongs_to :users
end
