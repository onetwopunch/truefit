User.seed do |ryan|
    ryan.id = 2
    ryan.first_name = 'Ryan'
    ryan.last_name = 'Canty'
    ryan.email = 'jrcanty@gmail.com'
    ryan.password= 'password'
    ryan.isAdmin = true
    ryan.isArtist = false
end

User.seed do |justin|
    justin.id = 3
    justin.first_name = 'Justin'
    justin.last_name = 'Scott'
    justin.email = 'justin@truefittattoosd.com'
    justin.password= 'password'
    justin.isAdmin = true
    justin.isArtist = false
end