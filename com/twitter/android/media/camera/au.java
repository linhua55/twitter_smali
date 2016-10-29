package com.twitter.android.media.camera;

import android.graphics.Rect;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.twitter.android.media.widget.cc;
import com.twitter.media.model.VideoFile;
import java.util.Collections;

/* compiled from: Twttr */
class au extends cc {
    final /* synthetic */ ah a;
    private int c;

    private au(ah ahVar) {
        this.a = ahVar;
    }

    public int getCount() {
        return (this.a.M == 0 ? 0 : 1) + this.a.N.size();
    }

    public int a() {
        return this.a.p();
    }

    protected int a(int i) {
        if (i < this.a.N.size()) {
            return i == this.a.R ? 2 : 0;
        } else {
            switch (this.a.M) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    return 4;
                case Util.TYPE_OTHER /*3*/:
                    return 5;
                default:
                    return 3;
            }
        }
    }

    protected VideoFile b(int i) {
        return i < this.a.N.size() ? (VideoFile) this.a.N.get(i) : null;
    }

    protected boolean c(int i) {
        return i < this.a.N.size();
    }

    protected boolean a(Rect rect) {
        return this.a.q.getGarbageCanState() != 2;
    }

    protected boolean d(int i) {
        if (!this.a.q()) {
            return true;
        }
        int size = this.a.N.size();
        if (size <= 1 || i != size - 1) {
            return true;
        }
        b(i, 0);
        b(i - 1, 2);
        return false;
    }

    protected void e(int i) {
        if (i == this.a.N.size()) {
            this.a.M = 0;
            return;
        }
        VideoFile videoFile = (VideoFile) this.a.N.remove(i);
        ah.b(this.a, videoFile.g);
        this.a.w.setMax(this.a.J);
        this.a.K = true;
        this.a.X = true;
        this.a.a("twitter_camera::video:segment:delete", this.a.a(this.c, (long) videoFile.g));
        int size = this.a.N.size();
        if (size == 0) {
            if (this.a.q()) {
                this.a.E();
            }
            this.a.C();
            this.a.r.setShutterButtonMode(0);
        } else if (this.a.q()) {
            VideoTextureView a = this.a.a(Math.min(this.a.Q, size - 1), 0);
            if (this.a.V) {
                a.b();
                this.a.r();
            } else {
                a.a();
            }
        } else {
            this.a.t.a(false);
        }
        this.a.w();
        if (this.a.q()) {
            this.a.d.c().setFlashEnabled(false);
        }
        this.a.z();
    }

    protected void a(int i, int i2) {
        Collections.swap(this.a.N, i, i2);
        this.a.X = true;
    }

    protected void f(int i) {
        this.a.s();
        if (this.a.q()) {
            this.a.Q = i;
            if (this.a.R == i) {
                this.a.z.c();
            } else {
                this.a.U = 0;
                this.a.a(i, 0).b();
            }
        } else {
            this.a.t.a(true);
        }
        b(this.a.R, 1);
        this.c = i;
        this.a.R = -1;
        this.a.b(false);
    }

    protected void b(Rect rect) {
        this.a.q.a(this.a.d.b(), rect);
    }

    protected boolean a(int i, Rect rect) {
        boolean z = this.a.q.getGarbageCanState() == 2;
        this.a.q.a();
        if (!this.a.q()) {
            this.a.b(true);
        }
        return z;
    }

    protected void g(int i) {
        if (i != this.c) {
            this.a.a("twitter_camera::video:segment:change", this.a.a(i, (long) ((VideoFile) this.a.N.get(i)).g).b(this.c));
        }
        if (this.a.q()) {
            VideoTextureView a = this.a.a(i, this.a.U);
            if (this.a.V) {
                this.a.r();
                return;
            } else {
                a.a();
                return;
            }
        }
        this.a.t.a(false);
    }
}
