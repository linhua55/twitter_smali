package com.twitter.library.api;

import android.net.Uri;

/* compiled from: Twttr */
public class q {
    private static final String[] a;
    private static String b;
    private final String c;
    private final String d;
    private final Uri e;

    static {
        a = new String[]{"_mdpi", "_hdpi", "_xhdpi", "_xxhdpi"};
    }

    q(String str, Uri uri, String str2) {
        this.d = str;
        this.e = uri;
        this.c = str2;
    }

    public String a() {
        return this.d;
    }

    public Uri a(int i) {
        String uri = this.e.toString();
        int lastIndexOf = uri.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return null;
        }
        String substring = uri.substring(lastIndexOf, uri.length());
        switch (i) {
            case 120:
            case 160:
                b = a[0];
                break;
            case 240:
                b = a[1];
                break;
            case 320:
                b = a[2];
                break;
            default:
                b = a[3];
                break;
        }
        Uri parse = Uri.parse(uri.substring(0, lastIndexOf) + b + substring);
        if (parse == null) {
            return this.e;
        }
        return parse;
    }
}
