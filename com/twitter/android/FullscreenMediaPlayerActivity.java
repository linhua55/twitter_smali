package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.twitter.app.common.base.t;
import com.twitter.library.av.al;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.media.util.ac;
import defpackage.aag;
import defpackage.aai;
import defpackage.aaq;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class FullscreenMediaPlayerActivity extends GalleryActivity {
    protected AVPlayer a;
    private boolean l;
    private boolean m;

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        Intent intent = getIntent();
        this.m = intent.getBooleanExtra("is_from_dock", false);
        this.l = intent.getBooleanExtra("is_from_inline", false);
        if (this.l || this.m) {
            overridePendingTransition(2131034159, 0);
        }
    }

    public void finish() {
        if (this.l) {
            overridePendingTransition(0, 2131034161);
        }
        super.finish();
    }

    protected void a(aag aag, boolean z) {
        super.a(aag, z);
        aai a = this.f.a(aag.a);
        if (a != null) {
            switch (a.b()) {
                case WireMessage.WIRE_CONTROL /*2*/:
                case WireMessage.WIRE_AUTH /*3*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    aaq aaq = (aaq) aag;
                    if (z) {
                        this.a = aaq.f();
                        if (this.a != null && this.i != null && ac.a(this.i)) {
                            View W_ = W_();
                            W_.setOnTouchListener(new al(this.a, W_));
                        }
                    }
                default:
            }
        }
    }
}
