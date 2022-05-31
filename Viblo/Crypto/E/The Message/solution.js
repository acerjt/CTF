const emoji = {
    "🍨": "Ice cream",
    "💌": "Love letter",
    "🧡": "Orange heart",
    "📼": "Videocassette",
    "👀": "Eyes",
    "🐒": "Monkey",
    "🃏": "Joker",
    "🥟": "Dumpling",
    "🐢": "Turtle",
    "🐎": "Horse",
    "🦶": "Foot",
    "😠": "Angry Face",
    "🐐": "Goat",
    "🌞": "Sun with Face",
    "🔓": "Unlocked",
    "🍍": "Pineapple",
    "🐏": "Ram",
    "😿": "Crying Cat",
    "💴": "Yen Banknote",
    "🔔": "Bell",
    "🔑": "Key",
    "🌃": "Night with Stars"
}

const messages = ["🍨","💌","🧡","📼","👀","👀","🐒","🧡","🃏","🍨","🥟","🧡","🐢","🐢","🐎","👀","🦶","💌","😠","🐐","🍨","🌞","🔓","🍍","🍍","👀","🐏","😿","😠","🌞","👀","🦶","💌","😠","🐐","😿","🔓","🐏","💌","💴","🔔","🐏","😠","😿","🔑","👀","🐢","👀","🐒","🧡","🃏","🍨","🔓","🌃","🥟","👀","🐏","🌞","😿","🧡","🐏","👀","🍨","🌞","🔓","🌃","🥟","👀","🐏","🌞","😿","🧡","🐏","👀","🌞","🧡","🔓","🌃","🥟","👀","🐏","🌞","😿","🧡","🐏","👀","🦶","🔓","🌃","🌃","💴","😿","🔓","🐏","💌","💴","🔔","🐏","😠","😿","🔑","👀","🐢"]

let decryptMessage = ''
for (let i = 0; i < messages.length; i++) {
    decryptMessage += emoji[messages[i]][0];
}

console.log(decryptMessage);