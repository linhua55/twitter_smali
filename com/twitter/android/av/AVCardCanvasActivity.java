package com.twitter.android.av;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.PointF;
import android.os.Bundle;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.twitter.android.io;
import com.twitter.android.widget.ExpandableViewHost;
import com.twitter.android.widget.aq;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.ah;
import com.twitter.library.av.playback.ai;
import com.twitter.library.av.playback.am;
import com.twitter.library.av.playback.ar;
import com.twitter.library.av.playback.au;
import com.twitter.library.client.bg;
import com.twitter.library.client.d;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.c;
import com.twitter.model.core.Tweet;
import defpackage.bqk;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class AVCardCanvasActivity<TCardCanvasView extends i> extends TwitterFragmentActivity implements OnGlobalLayoutListener, ai, am, aq, am {
    protected TCardCanvasView a;
    protected boolean b;
    protected ExpandableViewHost c;
    protected TweetEngagementView d;
    protected Tweet e;
    protected TwitterScribeAssociation f;
    protected PointF g;
    protected PointF h;
    protected PointF i;
    protected PointF j;
    protected au k;
    protected String l;
    protected AVPlayerAttachment m;
    protected AVPlayer n;
    protected final ai o;
    private final ah p;
    private int q;

    protected abstract au a(Bundle bundle);

    public AVCardCanvasActivity() {
        this.o = ai.a();
        this.p = new ah();
        this.q = 0;
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        overridePendingTransition(0, 0);
        if (io.a()) {
            a.c(false);
        }
        return a;
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        Bundle extras = getIntent().getExtras();
        this.e = (Tweet) extras.getParcelable("tweet");
        this.g = (PointF) extras.getParcelable("initial_top_left_coords");
        this.h = (PointF) extras.getParcelable("initial_size");
        this.i = (PointF) extras.getParcelable("return_top_left_coords");
        this.j = (PointF) extras.getParcelable("return_size");
        this.l = extras.getString("media_source_url");
        this.d = (TweetEngagementView) findViewById(2131951986);
        a(getResources().getConfiguration());
        this.d.setContext(this);
        this.d.setFragmentActivity(this);
        this.d.setTweet(this.e);
        this.d.setScriber(this);
        this.f = b(extras);
        this.k = a(extras);
        if (this.k != null) {
            this.m = new ar(this.o).a(this.k).a(this.f).a(i()).a((Context) this).b(true).a(false).a();
            this.n = this.m.a();
            this.m.i();
            this.o.a(this.m.h());
            this.n.a(bg.a());
            this.a = (i) findViewById(2131951985);
            c();
            this.c = (ExpandableViewHost) findViewById(2131951984);
            this.c.setListener(this);
            AVMediaPlaylist M = this.n.M();
            if (M == null || !M.a()) {
                f();
            } else {
                h();
            }
            e();
        }
    }

    protected void c() {
    }

    protected void e() {
    }

    protected void f() {
        if (this.n != null) {
            this.n.a((am) this);
        }
    }

    protected void h() {
        if (this.n != null) {
            this.n.k();
            Configuration configuration = getResources().getConfiguration();
            this.a.a(this.m, configuration);
            this.a.setPartner(this.k.c().h());
            this.a.getContentView().setVisibility(0);
            a(configuration);
        }
    }

    public static TwitterScribeAssociation b(Bundle bundle) {
        TwitterScribeAssociation twitterScribeAssociation = (TwitterScribeAssociation) bundle.getParcelable("association");
        if (twitterScribeAssociation == null) {
            return (TwitterScribeAssociation) new TwitterScribeAssociation().b("tweet");
        }
        return twitterScribeAssociation;
    }

    public void onGlobalLayout() {
        this.c.setVisibility(0);
        if (this.h == null || this.g == null) {
            this.c.c(null);
        } else {
            this.c.b(this.g, this.h, null);
        }
        this.c.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    protected void onResume() {
        super.onResume();
        if (this.m != null) {
            this.m.i();
        }
    }

    protected void onStop() {
        super.onStop();
        if (this.m != null) {
            this.m.j();
        }
    }

    protected bqk i() {
        return bqk.c;
    }

    public void onDestroy() {
        super.onDestroy();
        this.p.a(false, this.m, this.o);
        this.n = null;
        if (this.d != null) {
            this.d.a();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a(configuration);
    }

    protected void a(Configuration configuration) {
        switch (configuration.orientation) {
            case WireMessage.WIRE_CONTROL /*2*/:
                this.d.setVisibility(8);
            default:
                this.d.setVisibility(0);
        }
    }

    public void a(ExpandableViewHost expandableViewHost) {
        this.q = 1;
        finish();
    }

    public void b(ExpandableViewHost expandableViewHost) {
        this.q = 2;
        finish();
    }

    public void onBackPressed() {
        this.q = 0;
        super.onBackPressed();
    }

    public void finish() {
        if (this.n == null || this.b) {
            super.finish();
            return;
        }
        Runnable fVar = new f(this);
        if (this.c == null) {
            return;
        }
        if (this.q == 1) {
            this.c.a(fVar);
        } else {
            this.c.b(fVar);
        }
    }

    public void j() {
        h();
    }

    public void a(c cVar) {
        finish();
    }

    public void ai_() {
    }

    public void a(boolean z) {
        if (this.n != null) {
            Bundle i = this.n.i();
            boolean z2 = i.getBoolean("impression_scribed", false);
            boolean z3 = i.getBoolean("cta_availability", false);
            if (!z2 || z3 != z) {
                i.putBoolean("impression_scribed", true);
                i.putBoolean("cta_availability", z);
                this.n.a(z ? "cta_impression_open" : "cta_impression_signup");
            }
        }
    }

    public void b(boolean z) {
        if (this.n != null) {
            this.n.a(z ? "cta_click_signup" : "cta_click_open");
        }
    }

    public void a(String str) {
        if (this.n != null) {
            this.n.a(str);
        }
    }
}
