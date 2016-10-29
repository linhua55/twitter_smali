package defpackage;

import android.annotation.TargetApi;
import android.view.Choreographer;
import android.view.Choreographer.FrameCallback;

@TargetApi(16)
/* compiled from: Twttr */
/* renamed from: ase */
class ase extends asd implements FrameCallback {
    private Choreographer c;
    private boolean d;

    ase() {
    }

    public void doFrame(long j) {
        if (this.d) {
            this.b.a(j);
            this.c.postFrameCallback(this);
        }
    }

    public void a() {
        this.a.post(new asf(this));
    }

    public void b() {
        this.a.post(new asg(this));
    }
}
