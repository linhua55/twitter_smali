package com.twitter.android.av;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import com.twitter.android.media.camera.aa;
import com.twitter.android.media.camera.ac;
import com.twitter.app.common.base.t;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.ar;
import com.twitter.library.av.playback.au;
import com.twitter.library.av.playback.av;
import com.twitter.library.client.d;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.c;
import defpackage.bcx;
import defpackage.bqk;

/* compiled from: Twttr */
public abstract class RevenueCardCanvasActivity extends AVCardCanvasActivity<RevenueCardCanvasView> implements ac {
    private aa p;
    private int q;

    protected abstract void b(Bundle bundle, d dVar);

    protected abstract boolean l();

    protected abstract String m();

    protected abstract int p();

    public RevenueCardCanvasActivity() {
        this.q = 0;
    }

    public t a(Bundle bundle, t tVar) {
        super.a(bundle, tVar);
        tVar.d(p());
        return tVar;
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        if (l()) {
            MediaImageView mediaImageView = (MediaImageView) findViewById(2131952396);
            mediaImageView.a(a.a(m()));
            mediaImageView.setAspectRatio(1.7777778f);
            View findViewById = findViewById(bcx.fullscreen);
            if (findViewById != null) {
                findViewById.setOnClickListener(new az(this));
            }
            this.p = new aa(getApplicationContext());
            this.c.getViewTreeObserver().addOnGlobalLayoutListener(this);
            b(getResources().getConfiguration().orientation);
            b(bundle, dVar);
            return;
        }
        finish();
    }

    protected void h() {
        super.h();
        if (this.n != null && !this.n.u()) {
            ((RevenueCardCanvasView) this.a).m();
        }
    }

    public void d_(int i) {
        int i2;
        int i3;
        if (1 == aa.b(this)) {
            i2 = 90;
            i3 = 270;
        } else {
            i2 = 0;
            i3 = 180;
        }
        if (com.twitter.util.math.a.b(i, i2, 10) || com.twitter.util.math.a.b(i, r0, 10)) {
            setRequestedOrientation(4);
        }
    }

    protected void onResume() {
        super.onResume();
        if (2 == getResources().getConfiguration().orientation) {
            c.a(this.c);
        } else {
            c.b(this.c);
        }
    }

    public void onStart() {
        super.onStart();
        this.p.a((ac) this);
    }

    public void onStop() {
        super.onStop();
        this.p.a(null);
    }

    protected bqk i() {
        return bqk.b;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.q != configuration.orientation) {
            this.q = configuration.orientation;
            b(configuration.orientation);
            AVPlayerAttachment aVPlayerAttachment = this.m;
            this.m = new ar(this.o).a(this.k).a(this.f).a(i()).a((Context) this).a(true).a();
            ((RevenueCardCanvasView) this.a).a(this.m, configuration);
            this.o.a(aVPlayerAttachment);
        }
    }

    private void b(int i) {
        int i2;
        LayoutParams layoutParams = (LayoutParams) ((RevenueCardCanvasView) this.a).getLayoutParams();
        if (2 == i) {
            i2 = 0;
            c.a(this.c);
        } else {
            i2 = getResources().getDimensionPixelSize(2131690541);
            c.b(this.c);
        }
        layoutParams.setMargins(i2, i2, i2, i2);
    }

    public void a(com.twitter.model.av.c cVar) {
        ((RevenueCardCanvasView) this.a).p();
    }

    protected au a(Bundle bundle) {
        return new av().a(this.e);
    }
}
