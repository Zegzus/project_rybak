Config = {}

Config.fishwebhook = 'https://discord.com/api/webhooks/1066665305142739024/JtkEtUhho93czAijKRFOU9ii7mLviii9G9arj4JYzBQ9aRcjhCv3S16xD0Hwtms-H-Ss' --Caught fishes -log
Config.sellwebhook = 'WEBHOOK HERE' --Shopselling -log
Config.licenses = false --Set to false if you do not use esx_license, this is used to add fishing licenses(permits) for players.

Config.sellitemprices = { --You can add here other stuff too if you i.e add more variety of fishes
  pike = 12,
  bream = 8,
  pike_berch = 20,
  salmon = 19,
  trout = 17,
  cod = 10,
  herring = 7,
}

Config.fishes = {
 --Here are some examples, you can add unlimited brackets
  [1] = { 
    { itemName = 'blowfish', howmany = 1, type = 'item'},
  },
  
  [2] = { 
    { itemName = 'orange_roughy', howmany = 1, type = 'item'},
  },

  [3] = {
    { itemName = 'cod', howmany = 1, type = 'item'},
  },

  [4] = {
    { itemName = 'flounder', howmany = 1, type = 'item'},
  },

  [5] = {
    { itemName = 'mahi_mahi', howmany = 1, type = 'item'},
  },

  [6] = {
    { itemName = 'salmon', howmany = 1, type = 'item'},
  },

  [7] = {
    { itemName = 'grupper', howmany = 1, type = 'item'},
  },

  [8] = {
    { itemName = 'sea_bass', howmany = 1, type = 'item'},
  },

  [9] = {
    { itemName = 'yellowtail', howmany = 1, type = 'item'},
  },

  [10] = {
    { itemName = 'tuna', howmany = 1, type = 'item'},
  },
}