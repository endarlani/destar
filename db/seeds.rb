# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin.create(username:"sutrisno", password:"Sutrisno123")

# Village.create(name:"Tanjung Sari", admin_id: 1)
# Village.create(name:"Condong Catur", admin_id: 1)

# VillageUser.create(name:"Jojo Widodo", username:"jojo", password:"jojo123", phone:"0808979809", location:"Jln. Sari manis, RT/RW 03/03, no.rumah 59", village_id: 1 )
# VillageUser.create(name:"Sugeng Wijoyo", username:"sugeng", password:"sugeng123", phone:"0897099754", location:"Jln. Sari manis, RT/RW 03/03, no.rumah 50", village_id: 1 )
# VillageUser.create(name:"Nur Ningsih", username:"ningsih", password:"ningsih123", phone:"0878172637", location:"Jln. Sari manis, RT/RW 03/04, no.rumah 29", village_id: 1 )
# VillageUser.create(name:"Aji Permana", username:"aji", password:"Maruf123", phone:"0812838490", location:"Jln. Sari manis, RT/RW 03/04, no.rumah 12", village_id: 1 )
# VillageUser.create(name:"Dian Maruf", username:"dian", password:"Permana123", phone:"0987535678", location:"Jln. Sari manis, RT/RW 03/03, no.rumah 55", village_id: 1 )
# VillageUser.create(name:"Eka Suliaswati", username:"sulis", password:"Suliswati123", phone:"0896239249", location:"Jln. Sari manis, RT/RW 03/04, no.rumah 28", village_id: 1 )

# Category.create(name:"Hasil Bumi")
# Category.create(name:"Barang")
# Category.create(name:"Ternak")
# Category.create(name:"Properti")
# Category.create(name:"Menjahit")
# Category.create(name:"ELektronik")
# Category.create(name:"Bangunan")
# Category.create(name:"Rumah Tangga")
# Category.create(name:"Serabutan")

# Product.create(name:"Sapi", price:"10000000", date:"January 21, 2018", rating:"5", info:"Harga sapi perekor", category_id: 3 )
# Product.create(name:"Padi", price:"50000", date:"January 22, 2018", rating:"5", category_id: 1 )
# Product.create(name:"Baju", price:"40000", date:"January 30, 2018", rating:"4", info:"Harga disamping, adalah harga perbaju. Untuk pembelian 10 baju, dpt potongan 10%", category_id: 2 )
# Product.create(name:"Tanah", price:"2000000", date:"February 10, 2018", rating:"4", info:"Untuk harga permeternya 2.000.000, tanah yang dijual ada 10 meter. 10 meter x 2.000.000 = 20.000.000", category_id: 4 )
# Product.create(name:"Ubi Ungu", price:"150000", date:"February 21, 2018", rating:"5", info:"Harga perkarung", category_id: 1 )
# Product.create(name:"Kambing", price:"4000000", date:"Maret 05, 2018", rating:"4", info:"Harga kambing perekor", category_id: 3 )


# Service.create(name:"Baju", lowest_price:"20000", highest_price:"500000", date:"Maret 05, 2018", rating:"4", info:"Untuk pemesanan di atas 5 baju, mndapatkan potongan 5%", category_id: 5 )
# Service.create(name:"TV", lowest_price:"3000", highest_price:"250000", date:"Maret 05, 2018", rating:"4", info:"Garansi satu minggu jika terjadi kerusakan lagi.", category_id: 6 )
# Service.create(name:"Gali Kubur", lowest_price:"100000", highest_price:"200000", date:"Maret 05, 2018", rating:"4", category_id: 9 )
# Service.create(name:"Bangun Rumah", lowest_price:"1000000", highest_price:"2000000", date:"Maret 05, 2018", rating:"4", info:"Harga jasa untuk satu orang", category_id: 7 )
# Service.create(name:"Celana", lowest_price:"30000", highest_price:"500000", date:"Maret 05, 2018", rating:"4", category_id: 5 )
# Service.create(name:"Pembantu", lowest_price:"200000", highest_price:"300000", date:"Maret 05, 2018", rating:"4", info:"Biaya bersih-bersih untuk satu minggu", category_id: 8 )
# Service.create(name:"Babysitter", lowest_price:"1000000", highest_price:"2500000", date:"Maret 05, 2018", rating:"4", info:"Biaya untuk mengasuh selama sebulan", category_id: 8 )
# Service.create(name:"Bersihkan Rumput", lowest_price:"50000", highest_price:"100000", date:"Maret 05, 2018", rating:"4", category_id: 9 )

# DetailUser.create(village_user_id: 1, product_id: 1 )
# DetailUser.create(village_user_id: 3, product_id: 2 )
# DetailUser.create(village_user_id: 5, product_id: 3 )
# DetailUser.create(village_user_id: 2, product_id: 4 )
# DetailUser.create(village_user_id: 5, product_id: 5 )
# DetailUser.create(village_user_id: 1, product_id: 6 )
# DetailUser.create(village_user_id: 5, service_id: 1 )
# DetailUser.create(village_user_id: 2, service_id: 2 )
# DetailUser.create(village_user_id: 3, service_id: 3 )
# DetailUser.create(village_user_id: 5, service_id: 4 )
# DetailUser.create(village_user_id: 2, service_id: 5 )
# DetailUser.create(village_user_id: 4, service_id: 6 )
# DetailUser.create(village_user_id: 1, service_id: 7 )
# DetailUser.create(village_user_id: 6, service_id: 8 )