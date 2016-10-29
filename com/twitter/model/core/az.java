package com.twitter.model.core;

import android.text.TextUtils;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class az {
    public static final n<az> a;
    public final String b;
    public final long c;
    public final String d;

    static {
        a = new bb();
    }

    public static az a(ap apVar) {
        return new az(apVar.i, apVar.c, apVar.j);
    }

    public static az a(ag agVar) {
        return new az(agVar.d, agVar.b, agVar.c);
    }

    public az(String str, long j, String str2) {
        this.b = str;
        this.c = j;
        this.d = str2;
    }

    public boolean equals(Object obj) {
        return this == obj || (obj != null && getClass() == obj.getClass() && a((az) obj));
    }

    public boolean a(az azVar) {
        return azVar != null && TextUtils.equals(this.b, azVar.b);
    }

    public int hashCode() {
        return ObjectUtils.b(this.b);
    }
}
