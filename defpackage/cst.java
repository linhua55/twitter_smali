package defpackage;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
/* renamed from: cst */
class cst implements OnClickListener {
    final /* synthetic */ csq a;
    final /* synthetic */ css b;

    cst(css css, csq csq) {
        this.b = css;
        this.a = csq;
    }

    public void onClick(View view) {
        if (this.b.d != null) {
            this.b.d.a(this.a);
        }
    }
}
