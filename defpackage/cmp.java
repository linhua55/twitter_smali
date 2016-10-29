package defpackage;

import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: cmp */
public final class cmp extends f<cmn> {
    String a;
    String b;
    String[] c;
    String[] d;
    String[] e;
    String f;
    boolean g;
    private int h;
    private int i;

    public cmp() {
        this.h = -1;
        this.i = -1;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public cmp a(String str) {
        this.a = str;
        return this;
    }

    public cmp b(String str) {
        this.b = str;
        return this;
    }

    public cmp a(String[] strArr) {
        this.c = strArr;
        return this;
    }

    public cmp b(String[] strArr) {
        this.d = strArr;
        return this;
    }

    public cmp c(String[] strArr) {
        this.e = strArr;
        return this;
    }

    public cmp c(String str) {
        this.f = str;
        return this;
    }

    public cmp a(boolean z) {
        this.g = z;
        return this;
    }

    protected cmn d() {
        this.h = CollectionUtils.b(this.c, "off");
        this.i = this.g ? this.h : CollectionUtils.b(this.c, this.f);
        return new cmn(this.b, this.c, this.d, this.e, this.h, this.i, null);
    }

    public boolean bo_() {
        boolean z = (this.a == null || this.b == null || this.c == null || this.d == null || this.e == null || this.f == null) ? false : true;
        if (z) {
            return CollectionUtils.a(this.c, "off") && CollectionUtils.a(this.c, this.f);
        } else {
            return z;
        }
    }
}
