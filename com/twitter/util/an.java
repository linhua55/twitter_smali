package com.twitter.util;

import android.content.res.Resources;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* compiled from: Twttr */
class an {
    private String a;
    private SimpleDateFormat b;
    private String c;
    private SimpleDateFormat d;

    private an() {
    }

    public synchronized String a(Resources resources, Date date) {
        String string = resources.getString(ah.date_format_long);
        if (!string.equals(this.a)) {
            this.b = new SimpleDateFormat(string, Locale.ENGLISH);
            this.a = string;
        }
        return this.b.format(date);
    }

    public synchronized String b(Resources resources, Date date) {
        String string = resources.getString(ah.date_format_short);
        if (!string.equals(this.c)) {
            this.d = new SimpleDateFormat(string, Locale.ENGLISH);
            this.c = string;
        }
        return this.d.format(date);
    }
}
