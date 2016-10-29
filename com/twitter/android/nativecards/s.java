package com.twitter.android.nativecards;

import amo;
import android.content.Context;
import com.twitter.library.av.playback.ai;
import com.twitter.library.media.manager.am;
import com.twitter.library.media.manager.an;
import com.twitter.library.media.manager.ao;
import com.twitter.library.media.manager.l;
import com.twitter.media.model.VideoFile;
import com.twitter.media.request.ResourceResponse;
import com.twitter.util.aj;
import java.util.concurrent.Future;

/* compiled from: Twttr */
public class s implements amo, aw, ao {
    private final ai a;
    private am b;
    private VideoPlayerView c;
    private Future<?> d;

    public s() {
        this.a = ai.a();
    }

    public void a(Context context, VideoPlayerView videoPlayerView) {
        this.c = videoPlayerView;
    }

    public synchronized boolean a(Context context, String str) {
        boolean z = false;
        synchronized (this) {
            if (!aj.a(str)) {
                if (this.c != null) {
                    this.c.a(context);
                }
                an a = am.a(str);
                a.a(this);
                this.b = a.a();
                this.d = l.a(context.getApplicationContext()).e().f(this.b);
                if (!this.d.isDone()) {
                    z = true;
                }
            }
        }
        return z;
    }

    public synchronized void a(ResourceResponse<am, VideoFile> resourceResponse) {
        if (this.b != null) {
            this.b = null;
            VideoFile videoFile = (VideoFile) resourceResponse.f();
            if (!(videoFile == null || videoFile.d == null)) {
                String absolutePath = videoFile.d.getAbsolutePath();
                if (aj.b(absolutePath)) {
                    a(absolutePath);
                }
            }
        }
    }

    public synchronized void a() {
        this.b = null;
        if (this.d != null) {
            this.d.cancel(true);
            this.d = null;
        }
        if (this.c != null) {
            this.c.e();
            this.c = null;
        }
    }

    public void e() {
        if (this.c != null) {
            this.c.b();
            this.c.c();
        }
    }

    private void a(String str) {
        this.a.b();
        if (this.c != null) {
            this.c.a(str);
        }
    }
}
