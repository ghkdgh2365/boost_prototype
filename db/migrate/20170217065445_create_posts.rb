class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, comment: "목표"
      t.text :content, comment: "자세한 목표설정"
      t.string :racer_name, comment: "목표 설정자 이름"
      t.date :start_day, comment: "목표 시작 날짜"
      t.date :end_day, comment: "목표 종료 날짜"
      t.integer :set_money, comment: "건 돈"
      t.string :checker_name, comment: "확인자 이름"
      t.string :receiver_name, comment: "금액 수령자 이름"

      t.timestamps null: false
    end
  end
end
