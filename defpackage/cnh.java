package defpackage;

import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cnh */
public final class cnh extends f<cnf> {
    boolean a;
    int b;
    int c;
    List<cmn> d;
    String e;
    int f;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cnh a(boolean z) {
        this.a = z;
        return this;
    }

    public cnh a(int i) {
        this.b = i;
        return this;
    }

    public cnh b(int i) {
        this.c = i;
        return this;
    }

    public cnh a(List<cmn> list) {
        this.d = list;
        return this;
    }

    public cnh a(String str) {
        this.e = str;
        return this;
    }

    public cnh c(int i) {
        this.f = i;
        return this;
    }

    protected cnf d() {
        return new cnf(this.b, this.c, this.d, this.e, this.f, null);
    }

    public boolean bo_() {
        return !CollectionUtils.b(this.d) && this.e != null && this.b > -1 && this.c > -1;
    }
}
