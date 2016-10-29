package com.twitter.android.revenue;

import com.twitter.util.al;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public abstract class a implements Comparable<a> {
    public final long a;
    public final long b;
    public final long c;
    public final String d;
    public final long e;
    private String f;
    private long g;

    public abstract Set<String> e();

    public abstract String f();

    public /* synthetic */ int compareTo(Object obj) {
        return a((a) obj);
    }

    protected a(b bVar) {
        this.a = bVar.a;
        this.b = bVar.b;
        this.d = bVar.c;
        this.e = bVar.e;
        this.c = bVar.g;
        this.f = bVar.d;
        this.g = bVar.f;
    }

    public long a() {
        return this.a;
    }

    public void a(String str) {
        this.f = str;
    }

    public String b() {
        return this.f;
    }

    public void a(long j) {
        this.g = j;
    }

    public long c() {
        return this.g;
    }

    public boolean d() {
        return this.g + TimeUnit.SECONDS.toMillis(this.e) <= al.b();
    }

    public int a(a aVar) {
        return (int) Math.signum((float) (this.b - aVar.b));
    }
}
