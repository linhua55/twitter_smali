package defpackage;

import cga;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.t;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cgc */
public final class cgc extends f<cga> {
    private int a;
    private long b;
    private long c;
    private long d;
    private int e;
    private int f;
    private cfl<TwitterUser> g;
    private int h;
    private int i;
    private cfl j;
    private int k;
    private int l;
    private cfl m;

    public cgc() {
        this.f = 0;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public cgc a(int i) {
        this.a = i;
        return this;
    }

    public cgc a(long j) {
        this.b = j;
        return this;
    }

    public cgc b(long j) {
        this.c = j;
        return this;
    }

    public cgc c(long j) {
        this.d = j;
        return this;
    }

    public cgc b(int i) {
        this.e = i;
        return this;
    }

    public cgc c(int i) {
        this.f = i;
        return this;
    }

    public cgc a(List<TwitterUser> list) {
        if (list != null) {
            this.g = new cfl(list);
        }
        return this;
    }

    public cgc d(int i) {
        this.h = i;
        return this;
    }

    public cgc e(int i) {
        this.i = i;
        return this;
    }

    public <T extends t> cgc b(List<T> list) {
        if (list != null) {
            this.j = new cfl(list);
        }
        return this;
    }

    public cgc f(int i) {
        this.k = i;
        return this;
    }

    public cgc g(int i) {
        this.l = i;
        return this;
    }

    public <T extends t> cgc c(List<T> list) {
        if (list != null) {
            this.m = new cfl(list);
        }
        return this;
    }

    protected cga d() {
        return new cga(this, null);
    }

    public boolean bo_() {
        return this.a == 8 || !(this.f == 0 || this.g == null || this.i == 0 || this.j == null || (this.l != 0 && this.m == null));
    }
}
