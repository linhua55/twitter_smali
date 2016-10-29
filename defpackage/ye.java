package defpackage;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.twitter.android.dm.i;

/* compiled from: Twttr */
/* renamed from: ye */
class ye implements OnGlobalLayoutListener {
    final /* synthetic */ ya a;

    ye(ya yaVar) {
        this.a = yaVar;
    }

    public void onGlobalLayout() {
        if (this.a.y.getViewTreeObserver() != null) {
            this.a.y.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            i.a(this.a.y);
        }
    }
}
