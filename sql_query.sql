# question 1
# The sales team is looking for a list of names customer from the database, in the form the customer's name and address

select nama_pelanggan , alamat  from ms_pelanggan_dqlab mpd;


# question 2
# The Sales and Marketing want to see product name and price of each the product to make sales strategy to consumers based on product price

select mpd.nama_produk, mpd.harga  from ms_produk_dqlab mpd;


# question 3
# The Sales Team received complaints from customers considering the price of Keychains DQLabs with prices above 15000 are quite expensive, 
# therefore please show them alldata from ms product with DQLab 32gb flash drive priced above 15000

select * from ms_produk_dqlab
where nama_produk = "Flashdisk DQLab 32 GB" and harga > 15000; 


# question 4
# The Marketing Team sees that from the existing database there are 3 products with profit the highest is:
# 1. 84 GB DQLab flash drive
# 2. DigiSkills.id Travel Organizer Bag
# 3. DQLab Keychain
# Bring up all the data regarding the three products from our product database

select * from ms_produk_dqlab mpd
where mpd.nama_produk = "84 GB DQLab flash drive" or mpd.nama_produk = "Tas Travel Organizer DigiSkills.id"
or mpd.nama_produk = "Gantungan Kunci DQLab";


# question 5
# Marketing wants to see all product lists that have prices below 50000, Show all products that are under the price of 50000

select * from ms_produk_dqlab mpd 
where harga < 50000 order by harga desc;


# question 6
# Show the customer code, product name, quantity, price and total price all products that have been transacted, 
# but the output requested is the total minimum price of 200,000 and sorted by total price.

select kode_pelanggan , nama_produk , qty , harga , qty*harga as total  
from tr_penjualan_dqlab where qty*harga >= 200000
order by qty*harga desc;


# question 8
# Show the transaction code, transaction date, order number, and product code merged with the product name with the quantity equal to 5 from the existing database

select kode_transaksi, tgl_transaksi, no_urut, kode_produk, 
concat(kode_produk, ", ",  nama_produk, ",", qty) 
from tr_penjualan_dqlab
where qty = 5;


# question 9 
# Come up with the customer's name, name without a title, and the customer's nickname with the customer code dqlabcust01 
# because the customer is a customer loyalist who will be given a gift by the customer.

select nama_pelanggan, substring_index(nama_pelanggan, ",", 1) namaTanpaGelar,
substring_index(nama_pelanggan, " ", 1) namaPanggilan 
from ms_pelanggan_dqlab where kode_pelanggan  = 'dqlabcust01' ;


# question 10
# Come up with the customer's name, and the customer's initial with the customer's initial starting from the second letter and 
# what is taken is the first 3 letters of the second letter

select nama_pelanggan , substr(nama_pelanggan,2,3)
from ms_pelanggan_dqlab;


