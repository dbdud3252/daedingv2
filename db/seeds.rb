# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Type.create(name:"디자인")
Type.create(name:"개발")


Smalltype.create(name:"웹/앱", type_id: Type.find_by(name:"디자인").id)
Smalltype.create(name:"포스터", type_id: Type.find_by(name:"디자인").id)
Smalltype.create(name:"PPT", type_id: Type.find_by(name:"디자인").id)
Smalltype.create(name:"로고", type_id: Type.find_by(name:"디자인").id)
Smalltype.create(name:"3D", type_id: Type.find_by(name:"디자인").id)
Smalltype.create(name:"카드뉴스", type_id: Type.find_by(name:"디자인").id)

Smalltype.create(name:"웹", type_id: Type.find_by(name:"개발").id)
Smalltype.create(name:"Android 앱", type_id: Type.find_by(name:"개발").id)
Smalltype.create(name:"IOS 앱", type_id: Type.find_by(name:"개발").id)
Smalltype.create(name:"프로그램", type_id: Type.find_by(name:"개발").id)
Smalltype.create(name:"아두이노", type_id: Type.find_by(name:"개발").id)