# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# villages = Village.create([{ name:'Tanjungsari'}, { name: 'Kranggan'}])
# villages = Village.all

# users = User.create([
# 	{name:"", role:"Supplier", password:"jojo123", phone:"0808979809", gender:"male", village: villages.first},
# 	{name:"Sugeng Wijoyo", role:"Supplier", password:"sugeng123", phone:"0897099754", gender:"male", village: villages.first},
# 	{name:"Nur Ningsih", role:"Supplier", password:"ningsih123", phone:"0878172637", gender:"female", village: villages.first},
# 	{name:"Aji Permana", role:"Supplier", password:"Maruf123", phone:"0812838490", gender:"male", village: villages.first},
# 	{name:"Dian Maruf", role:"Supplier", password:"Permana123", phone:"0987535678", gender:"male", village: villages.first},
# 	{name:"Eka Suliaswati", role:"Supplier", password:"Suliswati123", phone:"0896239249", gender:"female", village: villages.first},

# 	{name:"Andre Purnama", role:"Customer", password:"andre123", phone:"0896239123", gender:"male", village: villages.first},
# 	{name:"Uly Lailiya", role:"Customer", password:"uly123", phone:"08962345642", gender:"female", village: villages.first},
# 	{name:"Burhanudin Yusuf", role:"Customer", password:"yusuf123", phone:"08129582372", gender:"male", village: villages.first},
# 	{name:"Arif Rahman", role:"Customer", password:"arif123", phone:"082234538294", gender:"male", village: villages.first}
# ])
# users = User.all

# products = Product.create ([
	# {product_type:"Product", name:"Sapi", highest_price:"10000000", status:"pending", description:"Harga sapi perekor", user_id:2, village_id:1}
	# {product_type:"Product", name:"Padi", highest_price:"50000", status:"active", user_id:1, village_id:1},
	# {product_type:"Product", name:"Baju", highest_price:"40000", status:"decline", description:"Harga disamping, adalah harga perbaju. Untuk pembelian 10 baju, dpt potongan 10%", user_id:2, village_id:1},
	# {product_type:"Product", name:"Tanah", highest_price:"2000000", status:"pending", description:"Untuk harga permeternya 2.000.000, tanah yang dijual ada 10 meter. 10 meter x 2.000.000 = 20.000.000", user_id:2, village_id:1},
	# {product_type:"Product", name:"Ubi Ungu", highest_price:"150000", status:"active", description:"Harga perkarung", user_id:5, village_id:1},
	# {product_type:"Product", name:"Kambing", highest_price:"4000000", status:"active", description:"Harga kambing perekor", user_id:2, village_id:1},
	# {product_type:"Product", name:"Ubi Orange", highest_price:"140000", status:"pending", description:"Harga perkarung", user_id:5, village_id:1},
	# {product_type:"Product", name:"Ikan Lele", highest_price:"50000", status:"active", description:"Harga lele perkilo", user_id:1, village_id:1},
	# {product_type:"Product", name:"Ikan Nila", highest_price:"60000", status:"decline", description:"Harga nila perkilo", user_id:6, village_id:1},
	# {product_type:"Product", name:"Bibit Ikan Lele", highest_price:"500", status:"active", description:"Harga perekor", user_id:4, village_id:1},
	# {product_type:"Product", name:"Tomat", highest_price:"30000", status:"active", description:"Harga perkilo", user_id:1, village_id:1},
	# {product_type:"Product", name:"Singkong", highest_price:"100000", status:"active", description:"Harga ubi perkarung", user_id:6, village_id:1},
	# {product_type:"Product", name:"Kentang", highest_price:"180000", status:"active", description:"Harga perkarung", user_id:4, village_id:1},
	# {product_type:"Product", name:"Wortel", highest_price:"90000", status:"active", description:"Harga perkarung", user_id:5, village_id:1},
	# {product_type:"Product", name:"Terong", highest_price:"80000", status:"pending", description:"Harga perkarung", user_id:5, village_id:1},
	# {product_type:"Product", name:"Cabe Rawit", highest_price:"130000", status:"nonactive", description:"Harga perkarung", user_id:3, village_id:1},
	# {product_type:"Product", name:"Kacang Panjang", highest_price:"80000", status:"nonactive", description:"Harga perkarung", user_id:3, village_id:1},
	# {product_type:"Product", name:"Tebu", highest_price:"70000", status:"nonactive", description:"Harga perkarung", user_id:1, village_id:1},
	# {product_type:"Product", name:"Rumah", highest_price:"80000000", status:"nonactive", description:"Spesifikasi = Luas tanah:60m2, Luas bangunan:36m2, Lantai:1, Kamar tidur:2, Kamar mandi:1, Sertifikasi:SHM-Sertifikat Hak Milik", user_id:3, village_id:1},
	# {product_type:"Product", name:"Keramik", highest_price:"170000", status:"decline", description:"kondisi barang mulus cocok untuk pajangan dan koleksi harga tercantum umtuk 2 barang nego.halus.", user_id:3, village_id:1},
	# {product_type:"Product", name:"Guci", highest_price:"1200000", status:"active", description:"guci ok...mulus masih... !! harga nego", user_id:2, village_id:1}

	# {product_type: "", name:"Baju", lowest_price:"20000", highest_price:"500000", status:"", description:"Untuk pemesanan di atas 5 baju, mndapatkan potongan 5%", user: ""},
	# {product_type: "", name:"TV", lowest_price:"3000", highest_price:"250000", status:"", description:"Garansi satu minggu jika terjadi kerusakan lagi.", user: ""},
	# {product_type: "", name:"Gali Kubur", lowest_price:"100000", highest_price:"200000", status:"", user: ""},
	# {product_type: "", name:"Bangun Rumah", lowest_price:"1000000", highest_price:"2000000", status:"", description:"Harga jasa untuk satu orang", user: ""},
	# {product_type: "", name:"Celana", lowest_price:"30000", highest_price:"500000", status:"", user: ""},
	# {product_type: "", name:"Pembantu", lowest_price:"200000", highest_price:"300000", status:"", description:"Biaya bersih-bersih untuk satu minggu", user: ""},
	# {product_type: "", name:"Babysitter", lowest_price:"1000000", highest_price:"2500000", status:"", description:"Biaya untuk mengasuh selama sebulan", user: ""},
	# {product_type: "", name:"Bersihkan Rumput", lowest_price:"50000", highest_price:"100000", status:"", user: ""},
	# {product_type: "", name:"Service Hp", lowest_price:"20000", highest_price:"200000", status:"", description:"Untuk service hp, garansi 2 minggu setelah perbaikan", user: ""},
	# {product_type: "", name:"Service Kipas Angin", lowest_price:"25000", highest_price:"350000", status:"", user: ""},
	# {product_type: "", name:"Service Kulkas", lowest_price:"100000", highest_price:"700000", status:"", description:"Tidak menerima service.an kulkas 3 pintu", user: ""},
	# {product_type: "", name:"Gali Sumur", lowest_price:"1000000", highest_price:"3000000", status:"", description:"Terima jasa gali sumur, dengan hasil yg memuaskan", user: ""},
	# {product_type: "", name:"Tukang Cat Bangunan/Rumah", lowest_price:"100000", highest_price:"200000", status:"", user: ""},
	# {product_type: "", name:"Tukang Kayu", lowest_price:"100000", highest_price:"1000000", status:"", description:"Terima orderan, pembuatan meja, kursi, dan lemari serta trima pmmbuatan ukiran kayu di pintu, pagar rumah, dan patung", user: ""},
	# {product_type: "", name:"Bersih-bersih Rumah", lowest_price:"50000", highest_price:"200000", status:"", description:"Biaya perhari bersih-bersih rumah", user: ""},
	# {product_type: "", name:"Tukang Cuci Baju", lowest_price:"20000", highest_price:"50000", status:"", user: ""},
	# {product_type: "", name:"Tukang Pijat/urut", lowest_price:"50000", highest_price:"100000", status:"", description:"Tidak menerima pijat plus2", user: ""},
	# {product_type: "", name:"Kuli", lowest_price:"50000", highest_price:"200000", status:"", user: ""}

# ])

# product_barters = ProductBarter.create ([
# 	{name:"Telur", description:"Telur 24 butir", user_id:1},
# 	{name:"Beras", description:"Beras 5kg", user_id:4},
# 	{name:"Kambing", description:"1 ekor", user_id:4},
# 	{name:"Ayam", description:"5 ekor ayam jago", user_id:1},
# 	{name:"Minyak Makan", description:"Minyak makan 2kg", user_id:2},
# 	{name:"Ikan Asin", description:"Ikan Asin 1kg", user_id:3},
# 	{name:"Pisang", description:"Pisang 1 tandan", user_id:2},
# 	{name:"Tikar Pandan", description:"1 tikar pandan masih baru", user_id:3},
# 	{name:"Tepung", description:"Tepung 10kg", user_id:3}

# ])

# barters = Barter.create ([
# 	{product_barter_id:1, product_id:12, status:"done"},
# 	{product_barter_id:2, product_id:9, status:"done"},
# 	{product_barter_id:3, product_id:1, status:"decline"},
# 	{product_barter_id:4, product_id:20, status:"pending"},
# 	{product_barter_id:5, product_id:2, status:"pending"},
# 	{product_barter_id:6, product_id:8, status:"process"},
# 	{product_barter_id:7, product_id:5, status:"decline"},
# 	{product_barter_id:8, product_id:2, status:"process"},
# 	{product_barter_id:9, product_id:7, status:"done"}
# ])