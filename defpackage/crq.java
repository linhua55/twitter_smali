package defpackage;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;
import crm;

/* compiled from: Twttr */
/* renamed from: crq */
class crq extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ crm a;

    crq(crm crm) {
        this.a = crm;
    }

    public void onAnimationEnd(View view) {
        crm.b(this.a).a();
        if (crm.d(this.a) != null) {
            crm.d(this.a).b();
        }
    }
}
