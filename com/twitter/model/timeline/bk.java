package com.twitter.model.timeline;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class bk {
    public static final n<bk> a;
    public final NotificationType b;
    public final String c;
    public final long d;
    public final long e;

    static {
        a = new bm();
    }

    public bk(NotificationType notificationType, String str, long j, long j2) {
        this.b = notificationType;
        this.c = str;
        this.d = j;
        this.e = j2;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof bk) && a((bk) obj));
    }

    public boolean a(bk bkVar) {
        return this == bkVar || (bkVar != null && ObjectUtils.a(this.b, bkVar.b) && ObjectUtils.a(this.c, bkVar.c) && this.d == bkVar.d && this.e == bkVar.e);
    }

    public int hashCode() {
        return (((((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.a(this.d)) * 31) + ObjectUtils.a(this.e);
    }
}
