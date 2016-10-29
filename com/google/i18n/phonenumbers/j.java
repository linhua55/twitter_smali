package com.google.i18n.phonenumbers;

import java.util.regex.Pattern;

/* compiled from: Twttr */
public class j {
    private k<String, Pattern> a;

    public j(int i) {
        this.a = new k(i);
    }

    public Pattern a(String str) {
        Pattern pattern = (Pattern) this.a.a((Object) str);
        if (pattern != null) {
            return pattern;
        }
        pattern = Pattern.compile(str);
        this.a.a(str, pattern);
        return pattern;
    }
}
