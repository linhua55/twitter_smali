package com.twitter.model.core;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class am {
    public static final n<am> a;
    public final int b;
    public final String c;
    public final String d;
    public final String e;

    static {
        a = new ao();
    }

    public am(String str, String str2, int i) {
        this(str, a(str2), i, b(str2));
    }

    public am(String str, String str2, int i, String str3) {
        this.c = str;
        this.b = i;
        this.d = str2;
        this.e = str3;
    }

    private static String a(String str) {
        if (str == null) {
            return "";
        }
        int indexOf = str.indexOf(";");
        return indexOf > 0 ? str.substring(0, indexOf) : str;
    }

    private static String b(String str) {
        if (str == null) {
            return "";
        }
        int indexOf = str.indexOf("codecs=\"");
        if (indexOf < 0) {
            return "";
        }
        indexOf += "codecs=\"".length();
        int indexOf2 = str.indexOf("\"", indexOf);
        if (indexOf2 < 0) {
            return "";
        }
        return str.substring(indexOf, indexOf2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        am amVar = (am) obj;
        if (this.b == amVar.b && this.c.equals(amVar.c) && this.d.equals(amVar.d) && this.e.equals(amVar.e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((ObjectUtils.b(this.c) * 31) + this.b) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.b(this.e);
    }
}
