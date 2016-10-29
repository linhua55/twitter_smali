package com.twitter.library.client.navigation;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.DrawableRes;
import android.support.annotation.LayoutRes;
import android.support.annotation.StringRes;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class b implements ac {
    private final Context a;
    private final int b;
    private final int c;
    private final int d;
    private c e;
    private CharSequence f;
    private int g;
    private Intent h;
    private boolean i;
    private boolean j;
    private View k;

    public /* synthetic */ ac e(boolean z) {
        return b(z);
    }

    public /* synthetic */ ac f(boolean z) {
        return a(z);
    }

    public /* synthetic */ ac g(@StringRes int i) {
        return a(i);
    }

    public b(Context context, int i, int i2, int i3) {
        this.a = context;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public b a(c cVar) {
        this.e = cVar;
        return this;
    }

    public b a(boolean z) {
        if (this.i != z) {
            this.i = z;
            if (this.e != null) {
                this.e.a();
            }
        }
        return this;
    }

    public boolean b() {
        return this.i;
    }

    public Intent m() {
        return this.h;
    }

    public int a() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public int e() {
        return this.d;
    }

    public b b(boolean z) {
        if (this.j != z) {
            this.j = z;
            if (this.e != null) {
                this.e.a();
            }
        }
        return this;
    }

    public b a(@StringRes int i) {
        return a(this.a.getString(i));
    }

    public b a(CharSequence charSequence) {
        this.f = charSequence;
        if (this.e != null) {
            this.e.a();
        }
        return this;
    }

    public CharSequence f() {
        return this.f;
    }

    public b b(@DrawableRes int i) {
        if (this.g != i) {
            this.g = i;
            if (this.e != null) {
                this.e.a();
            }
        }
        return this;
    }

    public int g() {
        return this.g;
    }

    public b c(@LayoutRes int i) {
        if (i != 0) {
            this.k = LayoutInflater.from(this.a).inflate(i, null, false);
        }
        return this;
    }

    public View d() {
        return this.k;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.b == bVar.b && this.c == bVar.c && this.d == bVar.d && a(bVar) && ObjectUtils.a(this.h, bVar.h) && ObjectUtils.a(this.e, bVar.e) && this.i == bVar.i && this.j == bVar.j) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{Integer.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.d), this.f, Integer.valueOf(this.g), Integer.valueOf(this.g), this.e, Boolean.valueOf(this.i), Boolean.valueOf(this.j)});
    }

    public boolean a(b bVar) {
        return bVar != null && this.f.equals(bVar.f) && this.g == bVar.g;
    }
}
