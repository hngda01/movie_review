# Add some ordinary users
Movie.destroy_all
Movie.create!(name: "On Your Wedding Day",picture: "phim1.jpg",
            info: "Câu chuyện tình yêu 10 năm rất đỗi ngọt ngào của anh chàng si tình Woo-yeon 
            và cô gái tin vào định mệnh 3 giây đầu gặp gỡ Seung-hee. 
            Những kỷ niệm ngọt ngào về mối tình đầu xen lẫn với những tiếc nuối về tình yêu 
            không đúng lúc. Liệu Woo-yeon sẽ có những cảm xúc và hành động như thế nào 
            khi cầm trên tay tấm thiệp cưới của người con gái mà mình thương yêu nhất?", 
            date: "16101996")
Movie.create!(name: "Ant-Man and the Wasp",picture: "phim2.jpg",
            info: "Sau trận nội chiến khốc liệt, Scott Lang – anh hùng Người Kiến với khả năng 
            phóng to, thu nhỏ lại phải đối mặt với sự lựa chọn khó khăn trong cuộc sống đời 
            thường: làm siêu anh hùng gánh vác những trách nhiệm nặng nề của thế giới hay 
            làm một người cha có trách nhiệm. Trong lúc ấy, Scott được tiến sĩ Hank Pym 
            và Hope Van Dyne – Chiến Binh Ong triệu tập để thực hiện một nhiệm vụ 
            cấp bách mới. Scott sẽ phải mặc vào bộ áo Người Kiến một lần nữa và 
            chiến đấu bên cạnh chiến binh ong để lật mở những bí ẩn trong quá khứ.", 
            date: "16101999")
Actor.create!(name: "Paul Rudd,Evangeline Lilly,Walton Goggins,Judy Greer,Michael Peña")
Actor.create!(name: "Demian Bichir,Evangeline Lilly,Bonnie Aarons,Judy Greer,Taissa Farmiga")

MovieCharacter.create!(movie_id: 1, actor_id: 1 )
