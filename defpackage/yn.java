package defpackage;

import android.view.View;
import android.view.View.OnLongClickListener;

/* compiled from: Twttr */
/* renamed from: yn */
class yn implements OnLongClickListener {
    final /* synthetic */ int a;
    final /* synthetic */ ya b;

    yn(ya yaVar, int i) {
        this.b = yaVar;
        this.a = i;
    }

    public boolean onLongClick(View view) {
        return this.b.G.a(this.a);
    }
}
