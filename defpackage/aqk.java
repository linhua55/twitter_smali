package defpackage;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
/* renamed from: aqk */
class aqk implements OnGlobalLayoutListener {
    final /* synthetic */ View a;
    final /* synthetic */ int b;
    final /* synthetic */ aqj c;

    aqk(aqj aqj, View view, int i) {
        this.c = aqj;
        this.a = view;
        this.b = i;
    }

    public void onGlobalLayout() {
        this.c.a = this.a.getRootView().getHeight() - this.a.getHeight() > this.b;
        this.c.a(Boolean.valueOf(this.c.a));
    }
}
