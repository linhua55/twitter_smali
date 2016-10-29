package defpackage;

import com.twitter.android.av.GalleryVideoChromeView;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cr;
import com.twitter.model.core.j;

/* compiled from: Twttr */
/* renamed from: aao */
public class aao {
    private final aap a;
    private boolean b;
    private boolean c;
    private Tweet d;
    private int e;

    public aao(aap aap) {
        this.a = aap;
    }

    public void a(aae aae) {
        this.e = aae.c;
        this.c = aae.b;
        a(aae.a);
        a(this.e);
    }

    public void a(Tweet tweet) {
        this.d = tweet;
        a(this.e);
    }

    private void a(int i) {
        int i2;
        int i3;
        j a = this.d != null ? this.d.w.c : j.a();
        if (this.d == null || !this.d.L()) {
            i2 = 0;
        } else {
            i2 = 1;
        }
        if (!this.b) {
            i &= -2;
        }
        if (a.b() != 1) {
            i3 = i & -7;
        } else {
            i3 = i;
        }
        if (i2 == 0 || !this.c) {
            i2 = i3;
        } else {
            i2 = (i3 & -7) | 8;
        }
        if (!((i2 & 4) == 0 || this.b)) {
            this.a.a(((cr) a.a(0)).D);
        }
        this.a.b(i2);
    }

    private void a(boolean z) {
        this.b = z;
        this.a.b(this.b);
    }

    public GalleryVideoChromeView a() {
        return this.a.W_();
    }
}
