package defpackage;

import com.twitter.util.object.e;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cln */
public final class cln extends f<cll> {
    String a;
    private long b;
    private List<clp> c;
    private List<String> d;
    private String e;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cln a(String str) {
        this.a = e.b(str);
        return this;
    }

    public cln a(List<String> list) {
        this.d = list;
        return this;
    }

    public cln b(List<clp> list) {
        this.c = list;
        return this;
    }

    public cln b(String str) {
        this.e = str;
        return this;
    }

    public cln a(long j) {
        this.b = j;
        return this;
    }

    protected void X_() {
        super.X_();
        if (this.e == null) {
            this.e = "UNDEFINED";
        }
    }

    protected cll d() {
        return new cll(this);
    }
}
