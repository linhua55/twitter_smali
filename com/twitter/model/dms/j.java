package com.twitter.model.dms;

import com.twitter.util.object.f;
import java.util.Collection;

/* compiled from: Twttr */
public class j extends f<h> {
    private String a;
    private int b;
    private long c;
    private Collection<Participant> d;
    private String e;
    private String f;
    private boolean g;
    private long h;
    private long i;
    private long j;
    private long k;
    private boolean l;

    public j() {
        this.b = -1;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public j a(String str) {
        this.e = str;
        return this;
    }

    public j b(String str) {
        this.f = str;
        return this;
    }

    public j a(int i) {
        this.b = i;
        return this;
    }

    public j a(long j) {
        this.c = j;
        return this;
    }

    public j a(Collection<Participant> collection) {
        this.d = collection;
        return this;
    }

    public j c(String str) {
        this.a = str;
        return this;
    }

    public j a(boolean z) {
        this.g = z;
        return this;
    }

    public j b(long j) {
        this.h = j;
        return this;
    }

    public j c(long j) {
        this.k = j;
        return this;
    }

    public j d(long j) {
        this.i = j;
        return this;
    }

    public j e(long j) {
        this.j = j;
        return this;
    }

    public j b(boolean z) {
        this.l = z;
        return this;
    }

    public boolean bo_() {
        return this.b == 0 || this.b == 1;
    }

    protected void X_() {
        super.X_();
        if (this.j <= 0) {
            this.j = -1;
        }
    }

    protected h d() {
        return new h(this, null);
    }
}
