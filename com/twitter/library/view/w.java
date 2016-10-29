package com.twitter.library.view;

import android.content.res.Resources;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import defpackage.bcu;

/* compiled from: Twttr */
public class w {
    private final String a;
    private final String b;
    private final Spannable c;

    public w(String str) {
        this.b = null;
        this.a = str;
        this.c = new SpannableString(this.a);
    }

    public w(Resources resources, String str, String str2) {
        this.b = str2;
        this.a = str;
        Object format = String.format(str, new Object[]{str2});
        this.c = new SpannableString(format);
        int indexOf = format.indexOf(str2);
        if (indexOf >= 0) {
            this.c.setSpan(new ForegroundColorSpan(resources.getColor(bcu.strong_white)), indexOf, str2.length() + indexOf, 33);
        }
    }

    public Spannable a() {
        return this.c;
    }
}
