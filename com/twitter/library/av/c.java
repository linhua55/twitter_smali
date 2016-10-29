package com.twitter.library.av;

import android.content.Context;
import android.os.Bundle;
import bqk;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.util.object.ObjectUtils;
import java.util.Map;

/* compiled from: Twttr */
public class c {
    public final Context a;
    public final TwitterScribeAssociation b;
    public final String c;
    public final AVMediaPlaylist d;
    public final AVMedia e;
    public final Map<String, String> f;
    public final int g;
    public final boolean h;
    public final int i;
    public final String j;
    public final Boolean k;
    public final String l;
    public final Long m;
    public final bqk n;
    public final Long o;
    public final Bundle p;
    public final Long q;
    public final String r;

    private c(e eVar) {
        this.a = eVar.a;
        this.b = eVar.b;
        this.c = eVar.c;
        this.d = eVar.d;
        this.e = eVar.e;
        this.f = eVar.f;
        this.g = eVar.g;
        this.h = eVar.h;
        this.i = eVar.i;
        this.j = eVar.j;
        this.k = eVar.k;
        this.l = eVar.l;
        this.m = eVar.m;
        this.n = eVar.n;
        this.o = eVar.o;
        this.p = eVar.p;
        this.q = eVar.q;
        this.r = eVar.r;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.g == cVar.g && this.h == cVar.h && ObjectUtils.a(this.n, cVar.n) && this.i == cVar.i && ObjectUtils.a(this.a, cVar.a) && ObjectUtils.a(this.b, cVar.b) && ObjectUtils.a(this.c, cVar.c) && ObjectUtils.a(this.d, cVar.d) && ObjectUtils.a(this.e, cVar.e) && ObjectUtils.a(this.f, cVar.f) && ObjectUtils.a(this.j, cVar.j) && ObjectUtils.a(this.k, cVar.k) && ObjectUtils.a(this.l, cVar.l) && ObjectUtils.a(this.m, cVar.m) && ObjectUtils.a(this.o, cVar.o) && ObjectUtils.a(this.q, cVar.q) && ObjectUtils.a(this.p, cVar.p) && ObjectUtils.a(this.r, cVar.r)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.a, this.b, this.c, this.d, this.e, this.f, Integer.valueOf(this.g), Boolean.valueOf(this.h), this.j, this.k, this.l, this.m, this.n, this.o, this.q, this.p, Integer.valueOf(this.i), this.r});
    }
}
