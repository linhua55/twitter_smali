package defpackage;

import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: chz */
public class chz extends f<chx> {
    private String a;
    private Object b;
    private List<Object> c;
    private boolean d;

    protected /* synthetic */ Object c() {
        return d();
    }

    public chz a(String str) {
        this.a = str;
        return this;
    }

    public chz a(Object obj) {
        this.b = obj;
        return this;
    }

    public chz a(List<Object> list) {
        this.c = list;
        return this;
    }

    public chz a(boolean z) {
        this.d = z;
        return this;
    }

    protected chx d() {
        return new chx(this);
    }
}
