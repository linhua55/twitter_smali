package defpackage;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import zv;

/* compiled from: Twttr */
/* renamed from: zx */
class zx implements OnPreDrawListener {
    final /* synthetic */ zv a;

    zx(zv zvVar) {
        this.a = zvVar;
    }

    public boolean onPreDraw() {
        ViewTreeObserver viewTreeObserver = zv.c(this.a).getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this);
        }
        this.a.a(zv.d(this.a), zv.e(this.a), zv.b(this.a));
        return true;
    }
}
