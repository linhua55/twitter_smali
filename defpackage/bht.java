package defpackage;

import com.twitter.util.object.e;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: bht */
public class bht extends f<bhs> {
    private String a;
    private int b;
    private String c;

    protected /* synthetic */ Object c() {
        return d();
    }

    public bht a(String str) {
        this.a = str;
        return this;
    }

    public bht a(Integer num) {
        this.b = ((Integer) e.b(num, Integer.valueOf(-1))).intValue();
        return this;
    }

    public bht b(String str) {
        this.c = str;
        return this;
    }

    protected bht() {
        this.b = -1;
    }

    protected bhs d() {
        return new bhs(this);
    }
}
