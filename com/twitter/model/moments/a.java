package com.twitter.model.moments;

import android.text.TextUtils;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class a {
    public static final n<a> a;
    public final long b;
    public final boolean c;
    public final String d;
    public final String e;
    public final String f;

    static {
        a = new c();
    }

    public a(long j, boolean z, String str, String str2, String str3) {
        this.b = j;
        this.c = z;
        this.d = str;
        this.e = str2;
        this.f = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (this.b != ((a) obj).b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ObjectUtils.a(this.b);
    }

    public static boolean a(a aVar) {
        return (aVar == null || TextUtils.isEmpty(aVar.e) || TextUtils.isEmpty(aVar.d)) ? false : true;
    }
}
