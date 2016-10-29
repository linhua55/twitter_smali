package com.twitter.android.moments.ui.fullscreen;

import adg;
import afm;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;
import com.twitter.model.moments.MomentPageDisplayMode;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.j;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.moments.core.ui.widget.capsule.b;
import com.twitter.util.object.e;
import com.twitter.util.y;
import com.twitter.util.z;
import rx.an;

/* compiled from: Twttr */
public class aj implements OnPageChangeListener, ft, t, z<Event> {
    private final afm a;
    private final b b;
    private final j c;
    private final dz d;
    private final y<Event> e;
    private final ef f;
    private final adg g;
    private an h;
    private boolean i;

    public aj(afm afm, y<Event> yVar, j jVar, b bVar, dz dzVar, ef efVar, adg adg) {
        this.a = afm;
        this.b = bVar;
        this.c = jVar;
        this.d = dzVar;
        this.f = efVar;
        this.g = adg;
        a(this.b.a(), 0);
        this.e = yVar;
        yVar.a(this);
    }

    public void onPageScrolled(int i, float f, int i2) {
        a(i, i2);
    }

    public void onPageSelected(int i) {
    }

    public void onPageScrollStateChanged(int i) {
        if (i == 0) {
            a(this.b.a(), 0);
        }
    }

    public void a() {
        this.e.b(this);
        if (this.h != null) {
            this.h.K_();
        }
    }

    private void a(int i, int i2) {
        int b = this.b.b();
        if (i == -1) {
            b -= i2;
        } else if (i >= -1) {
            b = i == this.c.b() + -1 ? -i2 : i >= this.c.b() ? -b : 0;
        }
        this.a.a(this.a.m() ? (float) (-b) : (float) b);
        this.a.a(0);
    }

    private void b(Event event) {
        switch (am.a[event.a().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.i = this.a.h();
                this.a.a(8);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.i) {
                    this.a.a(0);
                }
            default:
        }
    }

    public void a(Event event) {
        MomentPage c = this.c.c(this.b.a());
        b(event);
        if (c != null) {
            switch (am.a[event.a().ordinal()]) {
                case Util.TYPE_OTHER /*3*/:
                    if (c.g() == MomentPageDisplayMode.b && (c instanceof o)) {
                        o oVar = (o) c;
                        Tweet n = oVar.n();
                        if (n != null) {
                            this.d.a(TweetActionType.b, oVar.n());
                            if (n.a) {
                                this.a.i();
                            } else {
                                this.a.j();
                            }
                        }
                    }
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    this.a.b(true);
                case EbmlReader.TYPE_FLOAT /*5*/:
                    this.a.b(false);
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    this.a.a(true);
                default:
            }
        }
    }

    public void a(dp dpVar) {
        MomentPage c = this.c.c(this.b.a());
        if (c != null && (c instanceof o)) {
            a(((Tweet) e.a(((o) c).n())).b, dpVar);
        }
    }

    public void a(long j, dp dpVar) {
        this.f.b();
        this.f.a(null);
        this.h = this.g.a(j).b(new ak(this));
        this.f.a(new al(this, dpVar));
        this.f.a();
    }
}
