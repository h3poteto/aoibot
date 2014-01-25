# coding: utf-8
ActiveRecord::Base.connection.execute("TRUNCATE new_serifs")
NewSerif.create([
                 {:word => "あっ・・・（察し）" }
])
