class Post < ApplicationRecord
    validates:title, presence:true
    validates:started_at, presence:true
    validates:finished_at, presence:true
    validates:memo, length:{maximum: 100}
end
