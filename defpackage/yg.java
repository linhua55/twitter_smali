package defpackage;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
/* renamed from: yg */
class yg implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ ya b;

    yg(ya yaVar, String str) {
        this.b = yaVar;
        this.a = str;
    }

    public void onClick(View view) {
        this.b.F.c(this.a);
    }
}
