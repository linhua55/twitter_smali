package defpackage;

import android.os.Handler;
import android.os.Looper;

/* compiled from: Twttr */
/* renamed from: asd */
abstract class asd {
    protected final Handler a;
    protected ash b;

    abstract void a();

    abstract void b();

    asd() {
        this.a = new Handler(Looper.getMainLooper());
    }

    public void a(ash ash) {
        this.b = ash;
    }
}
