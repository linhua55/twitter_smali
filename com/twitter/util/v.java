package com.twitter.util;

import java.text.NumberFormat;
import java.util.Locale;

/* compiled from: Twttr */
class v {
    private Locale a;
    private NumberFormat b;

    private v() {
    }

    public final NumberFormat a(Locale locale) {
        if (locale.equals(this.a) && this.b != null) {
            return this.b;
        }
        this.a = locale;
        this.b = NumberFormat.getNumberInstance(locale);
        return this.b;
    }
}
