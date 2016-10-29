package com.twitter.android.livevideo.player;

import android.os.Bundle;
import com.twitter.android.AVMediaPlayerActivity;
import com.twitter.android.media.camera.aa;
import com.twitter.android.media.camera.ac;
import com.twitter.app.common.base.t;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.control.h;

/* compiled from: Twttr */
public class LiveVideoPlayerActivity extends AVMediaPlayerActivity implements ac {
    private aa f;
    private boolean g;
    private final e h;

    public LiveVideoPlayerActivity() {
        this.h = new c(this);
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        this.g = getIntent().getBooleanExtra("is_from_rotation", false);
        this.f = new aa(getApplicationContext());
    }

    protected VideoPlayerView b() {
        return new VideoPlayerView(this, this.b, Mode.FULLSCREEN_LIVE);
    }

    protected h c() {
        h liveVideoPlayerChrome = new LiveVideoPlayerChrome(this);
        liveVideoPlayerChrome.setOnFullscreenClickListener(this.h);
        return liveVideoPlayerChrome;
    }

    protected boolean j_() {
        return !this.a.y();
    }

    public void onStart() {
        super.onStart();
        if (this.f != null) {
            this.f.a((ac) this);
            this.f.a();
        }
    }

    public void onStop() {
        super.onStop();
        if (this.f != null) {
            this.f.b();
            this.f.a(null);
        }
    }

    public void d_(int i) {
        if (i != 0) {
            return;
        }
        if (this.g) {
            finish();
        } else {
            this.g = true;
        }
    }
}
