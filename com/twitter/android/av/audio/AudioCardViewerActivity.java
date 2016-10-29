package com.twitter.android.av.audio;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.twitter.android.av.AVCardCanvasActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.av.playback.au;
import com.twitter.library.av.playback.av;
import com.twitter.library.client.d;
import com.twitter.model.av.Partner;
import com.twitter.model.av.c;
import com.twitter.util.object.ObjectUtils;
import defpackage.bsa;
import java.util.Collections;
import java.util.Map;

/* compiled from: Twttr */
public class AudioCardViewerActivity extends AVCardCanvasActivity<AudioCardPlayerView> {
    private final bsa p;
    private boolean q;
    private Map<String, String> r;
    private Partner s;
    private final Runnable t;
    private final Handler u;
    private c v;

    public AudioCardViewerActivity() {
        this.p = new bsa();
        this.r = Collections.emptyMap();
        this.s = Partner.a;
        this.t = new e(this);
        this.u = new Handler();
    }

    public t a(Bundle bundle, t tVar) {
        super.a(bundle, tVar);
        tVar.d(2130968633);
        return tVar;
    }

    public void a(Bundle bundle, d dVar) {
        this.v = new c(getSupportFragmentManager(), this);
        super.a(bundle, dVar);
        this.m.a(false);
    }

    protected void onResume() {
        super.onResume();
        if (this.m != null) {
            this.m.a().d(false);
        }
    }

    protected void onPause() {
        super.onPause();
        if (this.m != null) {
            this.m.a().r();
        }
    }

    protected void e() {
        this.n.a("click");
    }

    protected void f() {
        this.u.postDelayed(this.t, 499);
        this.d.setVisibility(4);
        ((AudioCardPlayerView) this.a).getContentView().setVisibility(8);
        super.f();
    }

    protected void h() {
        this.u.removeCallbacks(this.t);
        if (!this.q) {
            this.c.setVisibility(4);
            this.c.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
        this.q = false;
        ((AudioCardPlayerView) this.a).setCallToActionListener(this);
        super.h();
    }

    protected au a(Bundle bundle) {
        l();
        return new av().a(this.e);
    }

    private void l() {
        Intent intent = getIntent();
        if (intent != null) {
            Partner partner = (Partner) intent.getParcelableExtra("extra_partner");
            Map map = (Map) ObjectUtils.a(intent.getSerializableExtra("extra_metadata"));
            if (partner != null) {
                this.s = partner;
            }
            if (map != null) {
                this.r = map;
            }
        }
    }

    public void a(c cVar) {
        this.p.a(this.c);
        h();
        if (this.v != null) {
            this.v.a(cVar);
        }
    }

    public void j() {
        this.p.a(this.c);
        super.j();
    }

    public void onDestroy() {
        this.u.removeCallbacks(this.t);
        super.onDestroy();
    }
}
