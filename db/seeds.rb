# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Image.destroy_all
Board.destroy_all
BoardImage.destroy_all
User.destroy_all

tom = User.create(username: "Tom", password: "1234", email: "whatever@email.com")
Board.create(title: "Test1", user_id: 1)
Board.create(title: "Test2", user_id: 1)
Board.create(title: "Test3", user_id: 1)

# img = Image.new(title: 'Img_1')
# img.img_src.attach(
#   io: File.open('storage/websocket.jpg'),
#   filename: 'test.jpg',
#   content_type: 'image/jpg'
# )
# img.save
# img.img_url = url_for(img.img_src)
# img.save

Image.create(title: 'Img_2')
Image.create(title: 'Img_3')
Image.create(title: 'Img_4')
Image.create(title: 'Img_5')
Image.create(title: 'Img_6')
Image.create(title: 'Img_7')
Image.create(title: 'Img_8')
Image.create(title: 'Img_9')
Image.create(title: 'Img_10')
Image.create(title: 'Img_11')
Image.create(title: 'Img_12')
Image.create(title: 'Img_13')

BoardImage.create(board_id: 1, image_id: 1)
BoardImage.create(board_id: 1, image_id: 2)
BoardImage.create(board_id: 1, image_id: 3)
BoardImage.create(board_id: 1, image_id: 4)
BoardImage.create(board_id: 2, image_id: 5)
BoardImage.create(board_id: 2, image_id: 6)
BoardImage.create(board_id: 2, image_id: 7)
BoardImage.create(board_id: 3, image_id: 8)
BoardImage.create(board_id: 3, image_id: 9)
BoardImage.create(board_id: 3, image_id: 10)
BoardImage.create(board_id: 3, image_id: 11)
BoardImage.create(board_id: 3, image_id: 12)
BoardImage.create(board_id: 2, image_id: 13)
