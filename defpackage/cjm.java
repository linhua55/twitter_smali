package defpackage;

import com.twitter.model.core.MediaEntity;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: cjm */
public final class cjm extends f<cjl> {
    String a;
    long b;
    long c;
    String d;
    String e;
    MediaEntity f;

    public cjm() {
        this.a = TtmlNode.ANONYMOUS_REGION_ID;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public cjm a(String str) {
        this.a = str;
        return this;
    }

    public cjm a(long j) {
        this.b = j;
        return this;
    }

    public cjm b(long j) {
        this.c = j;
        return this;
    }

    public cjm b(String str) {
        this.e = str;
        return this;
    }

    public cjm c(String str) {
        this.d = str;
        return this;
    }

    public cjm a(MediaEntity mediaEntity) {
        this.f = mediaEntity;
        return this;
    }

    protected cjl d() {
        return new cjl(this);
    }
}
