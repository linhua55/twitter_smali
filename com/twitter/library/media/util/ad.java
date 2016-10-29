package com.twitter.library.media.util;

import com.twitter.media.request.d;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import defpackage.ckl;
import java.util.List;

/* compiled from: Twttr */
public class ad extends d {
    private final ckl a;

    public ad(ckl ckl) {
        this.a = ckl;
    }

    public List<String> a(String str, Size size) {
        n d = n.d();
        if (this.a.d != null && this.a.d.b.b(size)) {
            d.c(this.a.d.c);
        }
        if (this.a.e != null && this.a.e.b.b(size)) {
            d.c(this.a.e.c);
        }
        if (this.a.f != null && this.a.f.b.b(size)) {
            d.c(this.a.f.c);
        }
        if (this.a.g != null && this.a.g.b.b(size)) {
            d.c(this.a.g.c);
        }
        d.c(this.a.c.c);
        return (List) d.q();
    }
}
