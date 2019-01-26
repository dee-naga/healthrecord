class CreateBodyCompositions < ActiveRecord::Migration[5.2]
  def change
    create_table :body_compositions do |t|
      t.timestamp :date, comment: '日時'
      t.decimal :waist,  precision: 5, scale: 2, comment: 'ウエスト(cm)'
      t.decimal :weight, precision: 5, scale: 2, comment: '体重(kg)'
      t.decimal :body_fat, precision: 5, scale: 2, comment: '体脂肪率(%)'
      t.decimal :fat_by_kg, precision: 5, scale: 2, comment: '体脂肪量(kg)'
      t.decimal :lbm, precision: 5, scale: 2, comment: '除脂肪体重(kg)'
      t.decimal :bmi, precision: 5, scale: 2, comment: 'BMI'
      t.decimal :basal_metabolism, precision: 6, scale: 2, comment: '基礎代謝'
      t.decimal :physical_age, precision: 5, scale: 2, comment: '身体年齢(歳)'
      t.decimal :skeletal_muscle_level, precision: 5, scale: 2, comment: '骨格筋レベル'
      t.decimal :bone_level, precision: 5, scale: 2, comment: '骨レベル'
      t.decimal :visceral_fat_level, precision: 5, scale: 2, comment: '内臓脂肪レベル'
      t.decimal :water_content, precision: 5, scale: 2, comment: '水分量 (%)'
      t.text :memo, comment: 'メモ'

      t.timestamps
    end
  end
end
