package defpackage;

import bhc;
import com.twitter.android.bz;
import com.twitter.android.dm.aa;
import com.twitter.library.network.w;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.view.m;
import com.twitter.util.object.ObjectUtils;
import java.text.SimpleDateFormat;

/* compiled from: Twttr */
/* renamed from: yo */
public abstract class yo<H extends yp, B extends yo<H, B>> extends xf<bhc, H, yo<H, B>> {
    private boolean c;
    private boolean d;
    private aa e;
    private bz f;
    private m g;
    private TwitterScribeAssociation h;
    private w i;
    private SimpleDateFormat j;
    private SimpleDateFormat k;
    private SimpleDateFormat l;
    private boolean m;

    public boolean bo_() {
        return (!super.bo_() || this.e == null || this.f == null || this.g == null || this.h == null || this.i == null || this.j == null || this.k == null || this.l == null) ? false : true;
    }

    protected void X_() {
        super.X_();
        this.b = ((bhc) this.b).a(!this.d);
    }

    public B a(boolean z) {
        this.c = z;
        return (yo) ObjectUtils.a(this);
    }

    public B b(boolean z) {
        this.d = z;
        return (yo) ObjectUtils.a(this);
    }

    public B a(aa aaVar) {
        this.e = aaVar;
        return (yo) ObjectUtils.a(this);
    }

    public B a(bz bzVar) {
        this.f = bzVar;
        return (yo) ObjectUtils.a(this);
    }

    public B a(m mVar) {
        this.g = mVar;
        return (yo) ObjectUtils.a(this);
    }

    public B a(TwitterScribeAssociation twitterScribeAssociation) {
        this.h = twitterScribeAssociation;
        return (yo) ObjectUtils.a(this);
    }

    public B a(w wVar) {
        this.i = wVar;
        return (yo) ObjectUtils.a(this);
    }

    public B a(SimpleDateFormat simpleDateFormat) {
        this.j = simpleDateFormat;
        return (yo) ObjectUtils.a(this);
    }

    public B b(SimpleDateFormat simpleDateFormat) {
        this.k = simpleDateFormat;
        return (yo) ObjectUtils.a(this);
    }

    public B c(SimpleDateFormat simpleDateFormat) {
        this.l = simpleDateFormat;
        return (yo) ObjectUtils.a(this);
    }

    public B c(boolean z) {
        this.m = z;
        return (yo) ObjectUtils.a(this);
    }
}
