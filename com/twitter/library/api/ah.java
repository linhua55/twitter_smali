package com.twitter.library.api;

import cnm;
import com.twitter.model.timeline.ag;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bk;
import com.twitter.util.collection.n;
import com.twitter.util.object.f;
import defpackage.cgd;
import defpackage.cho;
import defpackage.cjl;
import java.util.List;

/* compiled from: Twttr */
public final class ah extends f<ag> {
    List<av> a;
    List<cnm> b;
    ag c;
    cho d;
    cgd e;
    bk f;
    cjl g;
    boolean h;

    public ah() {
        this.a = n.g();
        this.b = n.g();
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public ah a(List<av> list) {
        this.a = list;
        return this;
    }

    public ah b(List<cnm> list) {
        this.b = list;
        return this;
    }

    public ah a(ag agVar) {
        this.c = agVar;
        return this;
    }

    public ah a(cho cho) {
        this.d = cho;
        return this;
    }

    public ah a(cgd cgd) {
        this.e = cgd;
        return this;
    }

    public ah a(bk bkVar) {
        this.f = bkVar;
        return this;
    }

    public ah a(cjl cjl) {
        this.g = cjl;
        return this;
    }

    public ah a(boolean z) {
        this.h = z;
        return this;
    }

    public boolean bo_() {
        return (this.a == null || this.b == null) ? false : true;
    }

    protected ag d() {
        return new ag(this);
    }
}
