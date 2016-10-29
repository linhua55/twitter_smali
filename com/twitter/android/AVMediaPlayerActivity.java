package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.Toast;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.al;
import com.twitter.library.av.control.h;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.ai;
import com.twitter.library.av.playback.ar;
import com.twitter.library.av.playback.au;
import com.twitter.library.av.playback.av;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.util.math.Size;
import defpackage.bqk;

/* compiled from: Twttr */
public class AVMediaPlayerActivity extends TwitterFragmentActivity {
    protected AVPlayer a;
    protected AVPlayerAttachment b;
    protected VideoPlayerView c;
    protected au d;
    protected TwitterScribeAssociation e;
    private final ai f;
    private AVDataSource g;
    private boolean h;
    private boolean i;

    public AVMediaPlayerActivity() {
        this.f = ai.a();
        this.i = false;
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        if (io.a()) {
            a.a(4);
            a.c(false);
        }
        return a;
    }

    public void b(Bundle bundle, t tVar) {
        Intent intent = getIntent();
        this.i = intent.getBooleanExtra("is_from_dock", false);
        this.h = intent.getBooleanExtra("is_from_inline", false);
        if (this.h || this.i) {
            overridePendingTransition(2131034159, 0);
        }
        super.b(bundle, tVar);
        this.e = (TwitterScribeAssociation) intent.getParcelableExtra("association");
        if (bundle == null) {
            this.g = (AVDataSource) intent.getParcelableExtra("ms");
        } else {
            this.g = (AVDataSource) bundle.getParcelable("ms");
        }
        if (a(this.g.c())) {
            this.d = new av().a(this.g);
            ViewGroup frameLayout = new FrameLayout(this);
            a(frameLayout);
            setContentView((View) frameLayout);
            return;
        }
        Toast.makeText(this, 2131363044, 1).show();
        finish();
    }

    protected boolean a(int i) {
        return i == 1 || i == 0 || i == 4 || i == 2 || i == 3 || i == 7;
    }

    protected void a(ViewGroup viewGroup) {
        this.b = new ar(ai.a()).a(this.d).a(this.e).a(getApplicationContext()).a(bqk.b).b(true).a(true).a();
        this.a = this.b.a();
        this.c = b();
        this.c.setId(2131951630);
        if (this.g.d()) {
            this.c.setOnTouchListener(new al(this.a, this.c));
        }
        Size O = this.a.O();
        if (O != Size.b) {
            this.c.a(O.a(), O.b());
        }
        viewGroup.addView(this.c, new LayoutParams(-1, -1));
        h c = c();
        if (c != null) {
            viewGroup.addView(c.getView());
            this.c.setExternalChromeView(c);
            c.a(this.b);
        }
        if (j_()) {
            this.b.a(false);
        }
    }

    protected boolean j_() {
        return true;
    }

    protected VideoPlayerView b() {
        return new VideoPlayerView(this, this.b, Mode.FULLSCREEN);
    }

    protected h c() {
        return null;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("ms", this.g);
    }

    protected void onResume() {
        super.onResume();
        if (this.b != null) {
            this.b.i();
        }
    }

    protected void onStop() {
        super.onStop();
        if (this.b != null) {
            this.b.j();
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.b != null) {
            this.f.a(this.b);
            this.f.b(this.b.h());
        }
    }

    public void finish() {
        super.finish();
        if (this.h) {
            overridePendingTransition(0, 2131034161);
        }
    }
}
