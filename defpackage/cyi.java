package defpackage;

import android.os.Looper;
import cym;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.an;

/* compiled from: Twttr */
/* renamed from: cyi */
public abstract class cyi implements an {
    private final AtomicBoolean a;

    protected abstract void c();

    public cyi() {
        this.a = new AtomicBoolean();
    }

    public final boolean b() {
        return this.a.get();
    }

    public final void K_() {
        if (!this.a.compareAndSet(false, true)) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            c();
        } else {
            cym.a().a().a(new cyj(this));
        }
    }
}
