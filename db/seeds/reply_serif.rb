# coding: utf-8
ActiveRecord::Base.connection.execute("TRUNCATE reply_serifs")
ReplySerif.create([
                   {:word => "アハハハハハ" }
])
