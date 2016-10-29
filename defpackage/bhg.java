package defpackage;

import com.twitter.model.core.bg;
import com.twitter.model.dms.c;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;
import csz;

/* compiled from: Twttr */
/* renamed from: bhg */
public abstract class bhg<B extends bhg<B, D>, D extends bhe> extends f<D> {
    long a;
    String b;
    bg c;
    c d;
    String e;
    boolean f;
    boolean g;
    int h;

    public B a(boolean z) {
        this.f = z;
        return (bhg) ObjectUtils.a(this);
    }

    public B a(String str) {
        this.e = str;
        return (bhg) ObjectUtils.a(this);
    }

    public B a(c cVar) {
        this.d = cVar;
        return (bhg) ObjectUtils.a(this);
    }

    public B a(bg bgVar) {
        this.c = bgVar;
        return (bhg) ObjectUtils.a(this);
    }

    public B b(String str) {
        this.b = str;
        return (bhg) ObjectUtils.a(this);
    }

    public B a(long j) {
        this.a = j;
        return (bhg) ObjectUtils.a(this);
    }

    B b(boolean z) {
        this.g = z;
        return (bhg) ObjectUtils.a(this);
    }

    B a(int i) {
        this.h = i;
        return (bhg) ObjectUtils.a(this);
    }

    protected bhg() {
    }

    protected bhg(bhe bhe) {
        this.a = bhe.a;
        this.b = bhe.b;
        this.c = bhe.c;
        this.d = bhe.d;
        this.e = bhe.e;
        this.f = bhe.f;
    }

    protected void X_() {
        super.X_();
        if (!aj.b(this.b) || this.b.length() > 20) {
            this.g = false;
            this.h = 0;
            return;
        }
        this.g = csz.a(this.b);
        this.h = csz.b(this.b);
    }
}
