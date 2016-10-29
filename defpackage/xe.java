package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import bgv;
import bie;
import com.twitter.android.dl;
import com.twitter.library.client.bg;

/* compiled from: Twttr */
/* renamed from: xe */
public abstract class xe<T extends bgv> {
    final T a;
    final bie b;
    final bie c;
    final View d;
    final TextView e;
    final Context f;
    final Resources g;
    final long h;
    final dl i;

    public abstract void a();

    xe(xf<T, ? extends xg, ?> xfVar) {
        this.a = xfVar.b;
        this.b = xfVar.c;
        this.c = xfVar.d;
        this.f = xfVar.e;
        this.g = this.f.getResources();
        this.h = bg.a().c().g();
        this.i = xfVar.f;
        xg xgVar = xfVar.a;
        this.d = xgVar.a;
        this.e = xgVar.b;
    }

    void b() {
        if (this.d != null && this.e != null) {
            this.d.setVisibility(8);
            if (this.i.a(this.a.g)) {
                int b = this.i.b();
                this.d.setVisibility(0);
                this.e.setText(this.f.getResources().getQuantityString(2131492869, b, new Object[]{Integer.valueOf(b)}));
            }
        }
    }

    boolean c() {
        return this.a.b(this.h);
    }
}
