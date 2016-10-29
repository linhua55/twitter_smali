package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@oi
public class lu extends lv implements fj {
    DisplayMetrics a;
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    private final sz h;
    private final Context i;
    private final WindowManager j;
    private final bw k;
    private float l;
    private int m;

    public lu(sz szVar, Context context, bw bwVar) {
        super(szVar);
        this.b = -1;
        this.c = -1;
        this.d = -1;
        this.e = -1;
        this.f = -1;
        this.g = -1;
        this.h = szVar;
        this.i = context;
        this.k = bwVar;
        this.j = (WindowManager) context.getSystemService("window");
    }

    private void g() {
        this.a = new DisplayMetrics();
        Display defaultDisplay = this.j.getDefaultDisplay();
        defaultDisplay.getMetrics(this.a);
        this.l = this.a.density;
        this.m = defaultDisplay.getRotation();
    }

    private void h() {
        int[] iArr = new int[2];
        this.h.getLocationOnScreen(iArr);
        a(aa.a().b(this.i, iArr[0]), aa.a().b(this.i, iArr[1]));
    }

    private lr i() {
        return new lt().b(this.k.a()).a(this.k.b()).c(this.k.f()).d(this.k.c()).e(this.k.d()).a();
    }

    void a() {
        this.b = aa.a().b(this.a, this.a.widthPixels);
        this.c = aa.a().b(this.a, this.a.heightPixels);
        Activity f = this.h.f();
        if (f == null || f.getWindow() == null) {
            this.d = this.b;
            this.e = this.c;
            return;
        }
        int[] a = ar.e().a(f);
        this.d = aa.a().b(this.a, a[0]);
        this.e = aa.a().b(this.a, a[1]);
    }

    public void a(int i, int i2) {
        b(i, i2 - (this.i instanceof Activity ? ar.e().d((Activity) this.i)[0] : 0), this.f, this.g);
        this.h.l().a(i, i2);
    }

    public void a(sz szVar, Map<String, String> map) {
        c();
    }

    void b() {
        if (this.h.k().e) {
            this.f = this.b;
            this.g = this.c;
            return;
        }
        this.h.measure(0, 0);
        this.f = aa.a().b(this.i, this.h.getMeasuredWidth());
        this.g = aa.a().b(this.i, this.h.getMeasuredHeight());
    }

    public void c() {
        g();
        a();
        b();
        e();
        f();
        h();
        d();
    }

    void d() {
        if (b.a(2)) {
            b.c("Dispatching Ready Event.");
        }
        c(this.h.o().b);
    }

    void e() {
        a(this.b, this.c, this.d, this.e, this.l, this.m);
    }

    void f() {
        this.h.b("onDeviceFeaturesReceived", i().a());
    }
}
