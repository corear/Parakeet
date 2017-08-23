var map = {
     "<3": "\u2764\uFE0F",
         "</3": "\uD83D\uDC94",
         ":D": "\uD83D\uDE00",
         ";)": "\uD83D\uDE09",
         "c;": "\uD83D\uDE09",
         "C;": "\uD83D\uDE09",
         "cx": "\uD83D\uDE02",
         "xD": "\uD83D\uDE02",
         ":p":  "\uD83D\uDE1D" ,
         ";p":  "\uD83D\uDE1D" ,
         ":P":  "\uD83D\uDE1D" ,
         ";P":  "\uD83D\uDE1D" ,
         ":'(": "\uD83D\uDE22",
         ";c": "\uD83D\uDE22",
         ";C": "\uD83D\uDE22",
         ";_;": "\uD83D\uDE22",
         ";-;": "\uD83D\uDE22",
         "/poop": "\uD83D\uDCA9",
         ">.<":  "\uD83D\uDE23",
         ":/ ": "\uD83D\uDE16",
         "^.^": "\uD83D\uDE0A",
         ">:(": "\uD83D\uDE20",
         ";o":  "\uD83D\uDE31",
         ":o":  "\uD83D\uDE31",
         ".k": "\uD83D\uDE18"
 };
 
    function func(){
    var sub = document.getElementById("pass")
    var pass = document.getElementById("cor").title
    var rm = document.getElementById("but").title
    
    if (sub.value == pass) {
        document.cookie = rm + "=1";
        window.location.reload();
    }
    }

function fi(){
    if (document.getElementById(document.getElementById("valu").value.toLowerCase()) !== null) {
        window.location="/room/" + document.getElementById(document.getElementById("valu").value).title
    } else {
        alert("No such room found! Create one now!");
    }
}

function runScript(e) {
    if (e.keyCode == 13) {
        fi()
    }
}

function runScript2(e) {
    if (e.keyCode == 13) {
        func()
    }
}

  function urlify(text) {
    var urlRegex = /(https?:\/\/[^\s]+)/g;
    return text.replace(urlRegex, function(url) {
        return '<a target="_blank" style = "color:white;text-decoration: none;border-radius: 5px;background: #337ab7;padding-left: 8px;padding-right: 8px;" href="' + url + '">VIEW LINK</a>';
    })
}

function escapeSpecialChars(regex) {
     return regex.replace(/([()[{*+.$^\\|?])/g, '\\$1');
 }