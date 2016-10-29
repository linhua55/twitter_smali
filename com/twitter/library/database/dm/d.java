package com.twitter.library.database.dm;

import bie;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.e;
import defpackage.cca;
import java.util.List;

/* compiled from: Twttr */
public class d {
    public static final com.twitter.util.serialization.d<d, f> a;
    public final String b;
    public final long c;
    public final String d;
    public final String e;
    public final String f;
    public final boolean g;
    public final long h;
    public final boolean i;
    public final List<TwitterUser> j;
    public final boolean k;
    public final boolean l;
    public final bie m;

    static {
        a = new g(null);
    }

    public d(cca cca) {
        boolean z;
        long j;
        String string = cca.getString(1);
        long j2 = cca.j();
        String f = cca.f();
        String g = cca.g();
        String h = cca.h();
        if (cca.getInt(4) > 0) {
            z = true;
        } else {
            z = false;
        }
        if (cca.isNull(6)) {
            j = 0;
        } else {
            j = cca.getLong(6);
        }
        this(string, j2, f, g, h, z, j, cca.i(), cca.a(), cca.l(), cca.k(), cca.c());
    }

    private d(String str, long j, String str2, String str3, String str4, boolean z, long j2, boolean z2, List<TwitterUser> list, boolean z3, boolean z4, bie bie) {
        this.b = str;
        this.c = j;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = z;
        this.h = j2;
        this.i = z2;
        this.j = list;
        this.k = z3;
        this.l = z4;
        this.m = bie;
    }

    private d(f fVar) {
        this.b = fVar.a;
        this.c = fVar.b;
        this.d = fVar.c;
        this.e = fVar.d;
        this.f = fVar.e;
        this.g = fVar.f;
        this.h = fVar.g;
        this.i = fVar.h;
        this.j = e.a(fVar.i);
        this.k = fVar.j;
        this.l = fVar.k;
        this.m = fVar.l;
    }
}
