package com.twitter.badge;

/* compiled from: Twttr */
public class a {
    private final String[] a;

    public a(String[] strArr) {
        this.a = strArr;
    }

    public boolean a(String str) {
        return str == null || this.a[0].equals(str);
    }

    public boolean b(String str) {
        return !c(str);
    }

    public String a(String str, String[] strArr) {
        int i = 0;
        String str2 = strArr[0];
        if (str != null) {
            while (i < this.a.length) {
                if (this.a[i].equals(str)) {
                    return strArr[i];
                }
                i++;
            }
        }
        return str2;
    }

    public boolean c(String str) {
        return this.a[2].equals(str);
    }
}
