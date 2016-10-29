package defpackage;

import android.view.View;
import android.view.View.OnLayoutChangeListener;
import rx.am;
import rx.an;

/* compiled from: Twttr */
/* renamed from: cvz */
class cvz implements OnLayoutChangeListener, an {
    private final am<? super View> a;
    private View b;

    cvz(View view, am<? super View> amVar) {
        this.b = view;
        this.a = amVar;
        this.b.addOnLayoutChangeListener(this);
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i != i5 || i2 != i6 || i3 != i7 || i4 != i8) {
            this.a.b_(view);
        }
    }

    public void K_() {
        if (this.b != null) {
            this.b.removeOnLayoutChangeListener(this);
            this.b = null;
        }
    }

    public boolean b() {
        return this.b == null;
    }
}
