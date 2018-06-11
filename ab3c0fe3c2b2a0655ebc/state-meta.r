 state_adjacencies <- 
   structure(list(ak = list(), al = c("ms", "tn", "ga", "fl"), ar = c("mo", 
"tn", "ms", "la", "tx", "ok"), az = c("ca", "nv", "ut", "co", 
"nm"), ca = c("or", "nv", "az"), co = c("wy", "ne", "ks", "ok", 
"nm", "az", "ut"), ct = c("ny", "ma", "ri"), dc = c("md", "va"
), de = c("md", "pa", "nj"), fl = c("al", "ga"), ga = c("fl", 
"al", "tn", "nc", "sc"), hi = list(), ia = c("mn", "wi", "il", 
"mo", "ne", "sd"), id = c("mt", "wy", "ut", "nv", "or", "wa"), 
    il = c("in", "ky", "mo", "ia", "wi"), `in` = c("mi", "oh", 
    "ky", "il"), ks = c("ne", "mo", "ok", "co"), ky = c("in", 
    "oh", "wv", "va", "tn", "mo", "il"), la = c("tx", "ar", "ms"
    ), ma = c("ri", "ct", "ny", "nh", "vt"), md = c("va", "wv", 
    "pa", "dc", "de"), me = "nh", mi = c("wi", "in", "oh"), mn = c("wi", 
    "ia", "sd", "nd"), mo = c("ia", "il", "ky", "tn", "ar", "ok", 
    "ks", "ne"), ms = c("la", "ar", "tn", "al"), mt = c("nd", 
    "sd", "wy", "id"), nc = c("va", "tn", "ga", "sc"), nd = c("mn", 
    "sd", "mt"), ne = c("sd", "ia", "mo", "ks", "co", "wy"), 
    nh = c("vt", "me", "ma"), nj = c("de", "pa", "ny"), nm = c("az", 
    "ut", "co", "ok", "tx"), nv = c("id", "ut", "az", "ca", "or"
    ), ny = c("nj", "pa", "vt", "ma", "ct"), oh = c("pa", "wv", 
    "ky", "in", "mi"), ok = c("ks", "mo", "ar", "tx", "nm", "co"
    ), or = c("ca", "nv", "id", "wa"), pa = c("ny", "nj", "de", 
    "md", "wv", "oh"), ri = c("ct", "ma"), sc = c("ga", "nc"), 
    sd = c("nd", "mn", "ia", "ne", "wy", "mt"), tn = c("ky", 
    "va", "nc", "ga", "al", "ms", "ar", "mo"), tx = c("nm", "ok", 
    "ar", "la"), ut = c("id", "wy", "co", "nm", "az", "nv"), 
    va = c("nc", "tn", "ky", "wv", "md", "dc"), vt = c("ny", 
    "nh", "ma"), wa = c("id", "or"), wi = c("mi", "mn", "ia", 
    "il"), wv = c("oh", "pa", "md", "va", "ky"), wy = c("mt", 
    "sd", "ne", "co", "ut", "id")), .Names = c("ak", "al", "ar", 
"az", "ca", "co", "ct", "dc", "de", "fl", "ga", "hi", "ia", "id", 
"il", "in", "ks", "ky", "la", "ma", "md", "me", "mi", "mn", "mo", 
"ms", "mt", "nc", "nd", "ne", "nh", "nj", "nm", "nv", "ny", "oh", 
"ok", "or", "pa", "ri", "sc", "sd", "tn", "tx", "ut", "va", "vt", 
"wa", "wi", "wv", "wy"))

 state_refs <- 
   structure(list(Name = c("Alabama", "Alaska", "Arizona", "Arkansas", 
"California", "Colorado", "Connecticut", "Delaware", "Florida", 
"Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", 
"Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", 
"Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", 
"Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", 
"New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", 
"Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", 
"Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", 
"West Virginia", "Wisconsin", "Wyoming"), ISO = c("US-AL", "US-AK", 
"US-AZ", "US-AR", "US-CA", "US-CO", "US-CT", "US-DE", "US-FL", 
"US-GA", "US-HI", "US-ID", "US-IL", "US-IN", "US-IA", "US-KS", 
"US-KY", "US-LA", "US-ME", "US-MD", "US-MA", "US-MI", "US-MN", 
"US-MS", "US-MO", "US-MT", "US-NE", "US-NV", "US-NH", "US-NJ", 
"US-NM", "US-NY", "US-NC", "US-ND", "US-OH", "US-OK", "US-OR", 
"US-PA", "US-RI", "US-SC", "US-SD", "US-TN", "US-TX", "US-UT", 
"US-VT", "US-VA", "US-WA", "US-WV", "US-WI", "US-WY"), ANSI_CHAR = c("AL", 
"AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", 
"IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", 
"MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", 
"OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", 
"VA", "WA", "WV", "WI", "WY"), ANSI_NUM = c("1", "2", "4", "5", 
"6", "8", "9", "10", "12", "13", "15", "16", "17", "18", "19", 
"20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", 
"31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", 
"42", "44", "45", "46", "47", "48", "49", "50", "51", "53", "54", 
"55", "56"), USPS = c("AL", "AK", "AZ", "AR", "CA", "CO", "CT", 
"DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", 
"ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", 
"NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", 
"SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"), 
    USCG = c("AL", "AK", "AZ", "AR", "CF", "CL", "CT", "DL", 
    "FL", "GA", "HA", "ID", "IL", "IN", "IA", "KA", "KY", "LA", 
    "ME", "MD", "MS", "MC", "MN", "MI", "MO", "MT", "NB", "NV", 
    "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", 
    "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WN", "WV", 
    "WS", "WY"), Old_GPO = c("Ala.", "Alaska", "Ariz.", "Ark.", 
    "Calif.", "Colo.", "Conn.", "Del.", "Fla.", "Ga.", "Hawaii", 
    "Idaho", "Ill.", "Ind.", "Iowa", "Kans.", "Ky.", "La.", "Maine", 
    "Md.", "Mass.", "Mich.", "Minn.", "Miss.", "Mo.", "Mont.", 
    "Nebr.", "Nev.", "N.H.", "N.J.", "N. Mex.", "N.Y.", "N.C.", 
    "N. Dak.", "Ohio", "Okla.", "Oreg.", "Pa.", "R.I.", "S.C.", 
    "S. Dak.", "Tenn.", "Tex.", "Utah", "Vt.", "Va.", "Wash.", 
    "W. Va.", "Wis.", "Wyo."), AP = c("Ala.", "Alaska", "Ariz.", 
    "Ark.", "Calif.", "Colo.", "Conn.", "Del.", "Fla.", "Ga.", 
    "Hawaii", "Idaho", "Ill.", "Ind.", "Iowa", "Kan.", "Ky.", 
    "La.", "Maine", "Md.", "Mass.", "Mich.", "Minn.", "Miss.", 
    "Mo.", "Mont.", "Neb.", "Nev.", "N.H.", "N.J.", "N.M.", "N.Y.", 
    "N.C.", "N.D.", "Ohio", "Okla.", "Ore.", "Pa.", "R.I.", "S.C.", 
    "S.D.", "Tenn.", "Texas", "Utah", "Vt.", "Va.", "Wash.", 
    "W.Va.", "Wis.", "Wyo.")), .Names = c("Name", "ISO", "ANSI_CHAR", 
"ANSI_NUM", "USPS", "USCG", "Old_GPO", "AP"), class = "data.frame", row.names = c(NA, 
-50L), comment = "iso ISO 3166 codes. 2-letter, 3-letter and 3-digit codes are from ISO 3166-1; 2+2-letter codes are from ISO 3166-2.\nansi 2-letter and 2-digit codes from the ANSI standard INCITS 38:2009\nusps 2-letter codes used by the United States Postal Service\nuscg 2-letter codes used by the United States Coast Guard\nolg_gpo Official, older, variable length US Government abbreviations\nap Abbreviations are from the AP Stylebook")
