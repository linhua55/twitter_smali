package com.twitter.library.client;

import android.net.Uri;
import android.support.v4.app.FragmentManager;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.g;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public final class at {
    public final Uri a;
    public final Class<? extends BaseFragment> b;
    public final CharSequence c;
    public final int d;
    public final String e;
    public final int f;
    public final Object g;
    public boolean h;
    public int i;
    public int j;
    private g k;
    private String l;
    private WeakReference<BaseFragment> m;

    at(au auVar) {
        this.a = auVar.a;
        this.b = auVar.b;
        this.k = (g) e.b(auVar.c, g.a);
        this.c = auVar.d;
        this.d = auVar.i;
        this.e = auVar.e;
        this.f = auVar.g;
        this.h = auVar.h;
        this.g = auVar.f;
    }

    public void a(BaseFragment baseFragment) {
        this.m = new WeakReference(baseFragment);
        this.l = baseFragment.getTag();
    }

    public BaseFragment a(FragmentManager fragmentManager) {
        BaseFragment baseFragment = null;
        if (this.m != null) {
            baseFragment = (BaseFragment) this.m.get();
            if (baseFragment == null) {
                baseFragment = (BaseFragment) fragmentManager.findFragmentByTag(this.l);
                if (baseFragment != null) {
                    this.m = new WeakReference(baseFragment);
                }
            }
        }
        return baseFragment;
    }

    public g a() {
        return this.k;
    }

    public String b() {
        return this.l;
    }

    public int c() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        at atVar = (at) obj;
        if (this.d == atVar.d && this.f == atVar.f && this.h == atVar.h && this.i == atVar.i && this.j == atVar.j && ObjectUtils.a(this.a, atVar.a) && ObjectUtils.a(this.b, atVar.b) && ObjectUtils.a(this.c, atVar.c) && ObjectUtils.a(this.e, atVar.e) && ObjectUtils.a(this.k, atVar.k) && ObjectUtils.a(this.l, atVar.l) && ObjectUtils.a(this.m, atVar.m)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(this.a, this.b, this.c, Integer.valueOf(this.d), this.e, Integer.valueOf(this.f), Boolean.valueOf(this.h), Integer.valueOf(this.i), this.k, this.l, this.m, Integer.valueOf(this.j));
    }
}
