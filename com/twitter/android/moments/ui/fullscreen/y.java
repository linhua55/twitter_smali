package com.twitter.android.moments.ui.fullscreen;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.twitter.android.av.audio.AudioCardError;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.Audio;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.viewmodels.s;
import com.twitter.moments.core.ui.widget.capsule.b;
import com.twitter.util.collection.x;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.z;

/* compiled from: Twttr */
public class y implements OnPageChangeListener {
    static final /* synthetic */ boolean a;
    private final b b;
    private final k c;
    private final df d;
    private final com.twitter.util.y<ae> e;
    private final com.twitter.util.y<ac> f;
    private final cg g;
    private ad h;
    private int i;
    private float j;

    static {
        a = !y.class.desiredAssertionStatus();
    }

    public y(k kVar, b bVar, df dfVar, cg cgVar) {
        this.e = new com.twitter.util.y();
        this.f = new com.twitter.util.y();
        this.c = kVar;
        this.b = bVar;
        this.d = dfVar;
        this.g = cgVar;
        z zVar = new z(this);
        for (int i = 0; i < this.c.a(); i++) {
            s a = this.c.a(i);
            if (!(a == null || a.a())) {
                a.a(zVar);
            }
        }
        cgVar.c().a(new aa(this));
    }

    public Audio a(s sVar) {
        if (this.h != null && this.h.a.equals(sVar)) {
            AVPlayer f = this.h.b.f();
            if (f.u() && (f.D() instanceof Audio)) {
                return (Audio) f.D();
            }
        }
        return null;
    }

    public x<AudioCardError> b(s sVar) {
        if (this.h != null && this.h.a == sVar) {
            AVMediaPlaylist M = this.h.b.f().M();
            if (!(M == null || M.a())) {
                return x.a(AudioCardError.a(M.f()));
            }
        }
        return x.a();
    }

    private com.twitter.android.moments.ui.video.b c(s sVar) {
        Tweet n = sVar.n();
        if (a || n != null) {
            com.twitter.android.moments.ui.video.b b = this.d.b(n);
            b.f().d(this.g.a());
            b.a(new ab(this, b, sVar));
            return b;
        }
        throw new AssertionError();
    }

    private void d(s sVar) {
        if (this.h != null || sVar != null) {
            if (this.h == null || !this.h.a.equals(sVar)) {
                if (this.h != null) {
                    this.h.b.e();
                    this.d.a(this.h.b);
                    this.h = null;
                }
                if (sVar != null) {
                    com.twitter.android.moments.ui.video.b c = c(sVar);
                    c.c();
                    this.h = new ad(sVar, c);
                }
            }
        }
    }

    private void a(int i) {
        s sVar;
        if (i < 0 || i >= this.c.a()) {
            sVar = null;
        } else {
            sVar = this.c.a(i);
        }
        if (sVar == null || !sVar.a()) {
            d(null);
        } else {
            d(sVar);
        }
    }

    private boolean b(int i) {
        return i >= 0 && i < this.c.a();
    }

    private void a(int i, float f) {
        float f2 = 1.0f;
        int i2 = i + 1;
        if (b(i) && b(i2) && ObjectUtils.a(this.c.a(i), this.c.a(i2))) {
            a(i);
        } else if (f < 0.45f && b(i)) {
            a(i);
            f2 = 1.0f - (f / 0.45f);
        } else if (f <= 0.55f || !b(i2)) {
            d(null);
            f2 = 0.0f;
        } else {
            a(i2);
            f2 = (f - 0.55f) / 0.45f;
        }
        if (this.h != null) {
            this.h.b.f().a(h.a(f2));
        }
    }

    public void a(z<ae> zVar, z<ac> zVar2) {
        if (this.h != null && this.h.b.f().u()) {
            zVar.a(new ae(this.h.b.f().D(), this.h.a));
        }
        this.e.a(zVar);
        this.f.a(zVar2);
    }

    public void b(z<ae> zVar, z<ac> zVar2) {
        this.e.b(zVar);
        this.f.b(zVar2);
    }

    public void onPageScrolled(int i, float f, int i2) {
        this.i = i;
        this.j = f;
        a(i, f);
    }

    public void onPageSelected(int i) {
    }

    public void onPageScrollStateChanged(int i) {
        if (i == 0) {
            this.i = this.b.a();
            this.j = 0.0f;
            a(this.i, this.j);
        }
    }
}
