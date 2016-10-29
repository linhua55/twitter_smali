package defpackage;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import crn;
import cro;
import crp;
import crq;
import crr;
import crs;

/* compiled from: Twttr */
/* renamed from: crm */
public class crm {
    private final Activity a;
    private final View b;
    private final cqj c;
    private crr d;
    private boolean e;
    private boolean f;
    private boolean g;
    private final Handler h;
    private final Runnable i;
    private final Runnable j;

    public crm(Activity activity, View view, cqj cqj) {
        this.h = new Handler(Looper.getMainLooper());
        this.i = new crn(this);
        this.j = new cro(this);
        this.a = activity;
        this.b = view;
        this.c = cqj;
        this.b.setVisibility(4);
    }

    public final void a() {
        this.g = true;
        this.c.a(new crp(this));
    }

    public final void b() {
        if (this.g) {
            this.f = true;
        } else if (!this.e) {
            d();
        }
    }

    public final void c() {
        if (!this.e) {
            this.h.postDelayed(this.i, 1000);
        }
    }

    public void a(crr crr) {
        this.d = crr;
    }

    protected void d() {
        this.h.removeCallbacks(this.j);
        this.h.removeCallbacks(this.i);
        this.e = true;
        this.b.setVisibility(0);
        this.c.e();
        crs.a(this.c.b(), 300, new crq(this));
    }

    public boolean e() {
        return this.e;
    }

    public boolean f() {
        return this.g;
    }
}
