package defpackage;

import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.view.View;

/* compiled from: Twttr */
/* renamed from: cpv */
class cpv implements ViewPropertyAnimatorUpdateListener {
    final /* synthetic */ cpt a;
    final /* synthetic */ cpu b;

    cpv(cpu cpu, cpt cpt) {
        this.b = cpu;
        this.a = cpt;
    }

    public void onAnimationUpdate(View view) {
        this.a.a();
    }
}
