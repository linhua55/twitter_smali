package com.twitter.library.provider;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cg;
import com.twitter.model.core.t;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class a implements t {
    public static final n<a> a;
    public final long b;
    public final String c;
    public final String d;
    public final long e;

    static {
        a = new c();
    }

    public a(cg cgVar) {
        this.b = cgVar.bf_();
        this.c = cgVar.h;
        this.d = cgVar.i;
        TwitterUser twitterUser = cgVar.n;
        this.e = twitterUser == null ? 0 : twitterUser.c;
    }

    private a(long j, String str, String str2, long j2) {
        this.b = j;
        this.c = str;
        this.d = str2;
        this.e = j2;
    }

    public long bf_() {
        return this.b;
    }

    public String bg_() {
        return String.valueOf(bf_());
    }

    public static byte[] a(List<cg> list) {
        List arrayList = new ArrayList(list.size());
        for (cg aVar : list) {
            arrayList.add(new a(aVar));
        }
        return m.a(arrayList, s.a(a));
    }

    public static ArrayList<a> a(byte[] bArr) {
        List list = (List) m.a(bArr, s.a(a));
        return list == null ? null : new ArrayList(list);
    }
}
