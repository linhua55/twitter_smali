package com.twitter.model.topic;

import cok;
import com.twitter.model.core.bg;
import com.twitter.util.h;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import defpackage.cor;
import defpackage.cox;
import java.util.List;

/* compiled from: Twttr */
public class i extends d {
    public static final n<i> b;
    public cok c;
    public cox d;
    public cor e;
    public List<bg> f;
    public int g;
    public String h;
    public int i;
    public boolean j;
    public int k;

    static {
        b = new j();
    }

    public i(List<bg> list, cok cok, cox cox, cor cor, String str, int i, int i2) {
        this.c = cok;
        this.d = cox;
        this.e = cor;
        if (list != null) {
            for (bg bgVar : list) {
                boolean z = (bgVar == null || bgVar.d.c()) ? false : true;
                h.b(z);
            }
            this.f = list;
        }
        this.h = str;
        this.i = i;
        this.k = i2;
    }

    public static String a(boolean z) {
        return z ? "minimal" : "full";
    }

    public int a(i iVar) {
        int i = 1;
        if (iVar == null) {
            if (this.h == null) {
                i = 0;
            }
            if (this.c == null || this.c.d == null) {
                return i;
            }
            return i | 2;
        }
        if (ObjectUtils.a(this.h, iVar.h)) {
            i = 0;
        }
        if (this.j != iVar.j) {
            i |= 16;
        }
        if (this.i != iVar.i) {
            i |= 8;
        }
        if (this.c == null || iVar.c == null) {
            if (this.c == null && iVar.c == null) {
                return i;
            }
            if ((this.c != null ? this.c : iVar.c).d != null) {
                return i | 2;
            }
            return i;
        } else if (ObjectUtils.a(this.c.d, iVar.c.d)) {
            return i;
        } else {
            return i | 2;
        }
    }
}
