# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Band.destroy_all
Album.destroy_all

bands = Band.create!([
    {name:"Queen"},
    {name:"Guns and Roses"},
    {name:"Nirvana"},
    {name:"Foo Fighters"}
])

albums = Album.create!([
    {band_id: bands[0].id, title: "Queen", year: 1973, studio: true},
    {band_id: bands[0].id, title: "A Night at the Opera", year: 1975, studio: true},
    {band_id: bands[0].id, title: "Innuendo", year: 1991, studio: true},
    {band_id: bands[1].id, title: "Appetite for Destruction", year: 1987, studio: true},
    {band_id: bands[1].id, title: "Chinese Democracy", year: 2008, studio: true},
    {band_id: bands[1].id, title: "Use your Illusion I", year: 1991, studio: true},
    {band_id: bands[1].id, title: "Use your Illusion II", year: 1991, studio: true},
    {band_id: bands[2].id, title: "Nevermind", year: 1991, studio: true},
    {band_id: bands[2].id, title: "MTV Unplugged in New York", year: 1994, studio: true},
    {band_id: bands[3].id, title: "Foo Fighters", year: 1995, studio: true},
    {band_id: bands[3].id, title: "Concrete and Gold", year: 2017, studio: true},
    {band_id: bands[3].id, title: "One by One", year: 2002, studio: true}
])

tracks = Track.create!([
    {title: 'Doing it all right', album_id: albums[0].id, ord: 2, bonus: false, lyrics: "Yesterday my life was in ruin <br>
    Now today I know what I'm doing <br>
    Gotta feeling I should be doing all right <br>
    Doing all right <br>
    Where will I be this time tomorrow <br>
    Jump in joy or sinking in sorrow <br>
    Anyway I should be doing all right <br>
    Doing all right <br>
    Should be waiting for the sun <br>
    Looking round to find the words to say <br>
    Should be waiting for the skies to clear <br>
    There a time in all the world <br>
    Should be waiting for the sun <br>
    And anyway I've got hide away <br>
    Ah ah ah ah <br>
    Yesterday my life was in ruin <br>
    Now today God knows what I'm doing <br>
    Anyway I should be doing all right <br>
    Doing all right <br>
    Doing all right <br>Source: LyricFind"},
    {title: 'Keep yourself alive', album_id: albums[0].id, ord: 1, bonus: false, lyrics: "Take off <br>
    I was told a million times <br>
    Of all the troubles in my way <br>
    Mind you grow a little wiser <br>
    Little better every day <br>
    But if I crossed a million rivers <br>
    And I rode a million miles <br>
    Then I'd still be where I started <br>
    Bread and butter for a smile <br>
    Well I sold a million mirrors <br>
    In a shopping alley way <br>
    But I never saw my face <br>
    In any window any day <br>
    Now they say your folks are telling you <br>
    Be a super star <br>
    But I tell you just be satisfied <br>
    Stay right where you are <br>
    Keep yourself alive, yeah <br>
    Keep yourself alive <br>
    Ooh, it'll take you all your time and money <br>
    Honey you'll survive <br>
    Ow <br>
    Well I've loved a million women <br>
    In a belladonic haze <br>
    And I ate a million dinners <br>
    Brought to me on silver trays <br>
    Give me everything I need <br>
    To feed my body and my soul <br>
    And I'll grow a little bigger <br>
    Maybe that can be my goal <br>
    I was told a million times <br>
    Of all the people in my way <br>
    How I had to keep on trying <br>
    And get better every day <br>
    But if I crossed a million rivers <br>
    And I rode a million miles <br>
    Then I'd still be where I started <br>
    Same as when I started <br>
    Keep yourself alive, come on <br>
    Keep yourself alive <br>
    Ooh, it'll take you all your time and money honey <br>
    You'll survive, shake <br>
    Ow <br>
    Keep yourself alive, wow <br>
    Keep yourself alive <br>
    Oh, it'll take you all your time and money <br>
    To keep me satisfied <br>
    Do you think you're better every day? <br>
    No, I just think I'm two steps nearer to my grave <br>
    Keep yourself alive, c'mon <br>
    Keep yourself alive <br>
    Mm, you take your time and take more money <br>
    Keep yourself alive <br>
    Keep yourself alive <br>
    C'mon keep yourself alive <br>
    All you people keep yourself alive <br>
    Keep yourself alive <br>
    C'mon c'mon keep yourself alive <br>
    It'll take you all your time and a money <br>
    To keep me satisfied <br>
    Keep yourself alive <br>
    Keep yourself alive <br>
    All you people keep yourself alive <br>
    Take you all your time and money honey <br>
    You will survive <br>
    Keep you satisfied <br>Source: LyricFind"},
    {title: 'Smells like teen spirit', album_id: albums[7].id, ord: 1, bonus: false, lyrics: "Load up on guns, bring your friends <br>
    It's fun to lose and to pretend <br>
    She's over-bored and self-assured <br>
    Oh no, I know a dirty word <br>
    Hello, hello, hello, how low <br>
    Hello, hello, hello, how low <br>
    Hello, hello, hello, how low <br>
    Hello, hello, hello <br>
    With the lights out, it's less dangerous <br>
    Here we are now, entertain us <br>
    I feel stupid and contagious <br>
    Here we are now, entertain us <br>
    A mulatto, an albino, a mosquito, my libido <br>
    Yeah, hey <br>
    I'm worse at what I do best <br>
    And for this gift I feel blessed <br>
    Our little group has always been <br>
    And always will until the end <br>
    Hello, hello, hello, how low <br>
    Hello, hello, hello, how low <br>
    Hello, hello, hello, how low <br>
    Hello, hello, hello <br>
    With the lights out, it's less dangerous <br>
    Here we are now, entertain us <br>
    I feel stupid and contagious <br>
    Here we are now, entertain us <br>
    A mulatto, an albino, a mosquito, my libido <br>
    Yeah, hey <br>
    And I forget just why I taste <br>
    Oh yeah, I guess it makes me smile <br>
    I found it hard, it's hard to find <br>
    Oh well, whatever, never mind <br>
    Hello, hello, hello, how low <br>
    Hello, hello, hello, how low <br>
    Hello, hello, hello, how low <br>
    Hello, hello, hello <br>
    With the lights out, it's less dangerous <br>
    Here we are now, entertain us <br>
    I feel stupid and contagious <br>
    Here we are now, entertain us <br>
    A mulatto, an albino, a mosquito, my libido <br>
    A denial, a denial, a denial, a denial, a denial <br>
    A denial, a denial, a denial, a denial <br>Source: LyricFind"}
])