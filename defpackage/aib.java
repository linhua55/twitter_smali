package defpackage;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
/* renamed from: aib */
class aib implements OnGlobalLayoutListener {
    final /* synthetic */ aia a;

    aib(aia aia) {
        this.a = aia;
    }

    public void onGlobalLayout() {
        this.a.b.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        this.a.e();
    }
}
