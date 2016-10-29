package defpackage;

import com.twitter.util.collection.r;
import com.twitter.util.object.f;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cnk */
public final class cnk extends f<cni> {
    String a;
    String b;
    long c;
    String d;
    String e;
    boolean f;
    boolean g;
    boolean h;
    long i;
    Set<String> j;
    final r<String, String> k;

    protected /* synthetic */ Object c() {
        return g();
    }

    public cnk() {
        this.k = r.d();
    }

    public cnk(cni cni) {
        this.k = r.d();
        this.a = cni.c;
        this.b = cni.d;
        this.c = cni.e;
        this.d = cni.f;
        this.e = cni.g;
        this.f = cni.h;
        this.g = cni.i;
        this.h = cni.j;
        this.i = cni.k;
        this.j = cni.l;
        this.k.b(cni.m);
    }

    public cnk a(String str) {
        this.a = str;
        return this;
    }

    public cnk b(String str) {
        this.b = str;
        return this;
    }

    public cnk d() {
        this.b = "earned";
        return this;
    }

    public cnk a(long j) {
        this.c = j;
        return this;
    }

    public cnk c(String str) {
        this.d = str;
        return this;
    }

    public cnk d(String str) {
        this.e = str;
        return this;
    }

    public cnk a(boolean z) {
        this.f = z;
        return this;
    }

    public cnk b(boolean z) {
        this.g = z;
        return this;
    }

    public cnk c(boolean z) {
        this.h = z;
        return this;
    }

    public cnk b(long j) {
        this.i = j;
        return this;
    }

    public cnk a(Set<String> set) {
        this.j = set;
        return this;
    }

    public cnk a(String str, String str2) {
        this.k.b(str, str2);
        return this;
    }

    public cnk a(Map<String, String> map) {
        this.k.b((Map) map);
        return this;
    }

    public String e() {
        return this.d;
    }

    protected cni g() {
        return new cni(this);
    }
}
