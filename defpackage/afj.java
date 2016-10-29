package defpackage;

import android.view.ViewTreeObserver.OnPreDrawListener;

/* compiled from: Twttr */
/* renamed from: afj */
class afj implements OnPreDrawListener {
    final /* synthetic */ afh a;

    afj(afh afh) {
        this.a = afh;
    }

    public boolean onPreDraw() {
        this.a.c.getViewTreeObserver().removeOnPreDrawListener(this);
        this.a.c.setTranslationY((float) this.a.a.getHeight());
        return true;
    }
}
