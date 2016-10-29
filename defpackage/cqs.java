package defpackage;

import android.graphics.Bitmap;
import android.support.annotation.UiThread;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import com.twitter.util.c;
import com.twitter.util.math.Size;
import dbd;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.am;
import rx.o;
import rx.t;

/* compiled from: Twttr */
/* renamed from: cqs */
public class cqs {
    @VisibleForTesting
    int a;
    @VisibleForTesting
    crb b;
    @VisibleForTesting
    List c;
    private final View d;
    private final Runnable e;
    private final Runnable f;
    private cra g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private am<Bitmap> l;
    private t m;

    public cqs(View view) {
        this.h = 60;
        this.d = view;
        this.e = new cqt(this);
        this.f = new cqu(this);
    }

    public synchronized cqs a(cra cra) {
        this.g = cra;
        return this;
    }

    @UiThread
    public synchronized cqs a(List<Integer> list) {
        this.c = list;
        this.b = new crc(this.d.getResources(), list);
        this.b.a();
        return this;
    }

    @UiThread
    public synchronized cqs b(List<String> list) {
        this.c = list;
        this.b = new cqz(this.d.getResources(), list);
        this.b.a();
        return this;
    }

    public synchronized void a() {
        if (this.c == null || this.b == null) {
            throw new IllegalStateException("No frames have been set to this animation.");
        } else if (this.d.isShown()) {
            if (this.k) {
                e();
            } else {
                this.a = (int) (TimeUnit.SECONDS.toMillis(1) / ((long) this.h));
                this.j = true;
                this.k = true;
                this.i = 0;
                if (this.g != null) {
                    this.g.a();
                }
                this.m = c();
                this.l = d();
                a(this.m).b(this.m).a(this.m).b(this.l);
            }
        }
    }

    public Size b() {
        if (this.b != null) {
            return this.b.b();
        }
        throw new IllegalStateException("FrameDecoder not initialized! Call setFrames first");
    }

    @VisibleForTesting
    t c() {
        return dbd.b();
    }

    private o<Bitmap> a(t tVar) {
        return o.a(new cqv(this, tVar));
    }

    @VisibleForTesting
    am<Bitmap> d() {
        return new cqx(this);
    }

    public synchronized void e() {
        g();
        if (c.a()) {
            this.f.run();
        } else {
            this.d.post(this.f);
        }
    }

    public synchronized void f() {
        if (this.k) {
            h();
        } else {
            g();
        }
    }

    private void g() {
        this.j = false;
        this.k = false;
        if (this.l != null && !this.l.b()) {
            this.l.K_();
            this.l = null;
        }
    }

    private synchronized void h() {
        g();
        if (c.a()) {
            this.e.run();
        } else {
            this.d.post(this.e);
        }
    }
}
