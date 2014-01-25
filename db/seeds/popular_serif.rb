# coding: utf-8
ActiveRecord::Base.connection.execute("TRUNCATE popular_serifs")
PopularSerif.create([
                     {:word => "てへぺろ" }
])
