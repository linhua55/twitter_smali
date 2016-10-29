package com.twitter.model.drafts;

import com.twitter.model.core.as;
import com.twitter.model.geo.g;
import com.twitter.util.collection.n;
import com.twitter.util.object.f;
import defpackage.cgf;
import defpackage.cni;
import java.util.List;

/* compiled from: Twttr */
public final class e extends f<d> {
    long a;
    String b;
    List<DraftAttachment> c;
    long d;
    g e;
    long f;
    List<Long> g;
    cni h;
    as i;
    String j;
    cgf k;
    boolean l;

    protected /* synthetic */ Object c() {
        return l();
    }

    public e() {
        this.c = n.g();
    }

    public e(d dVar) {
        this.c = n.g();
        this.a = dVar.b;
        this.b = dVar.c;
        this.c = dVar.d;
        this.d = dVar.e;
        this.e = dVar.g;
        this.f = dVar.a();
        this.g = dVar.b();
        this.h = dVar.h;
        this.i = dVar.i;
        this.j = dVar.j;
        this.k = dVar.k;
        this.l = dVar.f;
    }

    public long d() {
        return this.a;
    }

    public e a(long j) {
        this.a = j;
        return this;
    }

    public String e() {
        return this.b;
    }

    public e a(String str) {
        this.b = str;
        return this;
    }

    public List<DraftAttachment> g() {
        return this.c;
    }

    public e a(List<DraftAttachment> list) {
        this.c = n.a((List) list);
        return this;
    }

    public long h() {
        return this.d;
    }

    public e b(long j) {
        this.d = j;
        return this;
    }

    public boolean i() {
        return this.l;
    }

    public e a(boolean z) {
        this.l = z;
        return this;
    }

    public e a(g gVar) {
        this.e = gVar;
        return this;
    }

    public e a(List<Long> list, long j) {
        this.g = list;
        this.f = j;
        return this;
    }

    public e b(String str) {
        this.j = str;
        return this;
    }

    public e a(cgf cgf) {
        this.k = cgf;
        return this;
    }

    public cgf j() {
        return this.k;
    }

    public e a(cni cni) {
        this.h = cni;
        return this;
    }

    public as k() {
        return this.i;
    }

    public e a(as asVar) {
        this.i = asVar;
        return this;
    }

    protected d l() {
        return new d(this);
    }
}
