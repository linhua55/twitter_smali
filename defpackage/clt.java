package defpackage;

import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: clt */
public class clt extends f<clr> {
    private long a;
    private String b;
    private clu c;

    public /* synthetic */ Object c() {
        return d();
    }

    public clt a(long j) {
        this.a = j;
        return this;
    }

    public clt a(String str) {
        this.b = str;
        return this;
    }

    public clt a(clu clu) {
        this.c = clu;
        return this;
    }

    protected void X_() {
        super.X_();
        if (this.b == null) {
            this.b = TtmlNode.ANONYMOUS_REGION_ID;
        }
    }

    public clr d() {
        return new clr(this);
    }
}
