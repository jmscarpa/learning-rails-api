Post.destroy_all
User.destroy_all

u1 = User.create(username: 'jmscarpa', bio: "Programador dodói da cabeça")
u2 = User.create(username: 'unversed', bio: "Futuro estagiário senior")

u1.posts.create(body: "Primeiro post")
u1.posts.create(body: "Segundo post")
u2.posts.create(body: "Primeiro post")


u1 = User.first
u1.posts.create(body: "Post with #hashtag")