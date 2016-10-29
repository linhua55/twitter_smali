package com.twitter.android;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class ra {
    public final Class<?> a;
    public final Bundle b;
    public final String c;
    private String d;
    private WeakReference<Fragment> e;

    ra(Class<?> cls, Bundle bundle, String str) {
        this.a = cls;
        this.b = bundle;
        this.c = str;
    }

    void a(Fragment fragment) {
        this.e = new WeakReference(fragment);
        this.d = fragment.getTag();
    }

    Fragment a(FragmentManager fragmentManager) {
        Fragment fragment = null;
        if (this.e != null) {
            fragment = (Fragment) this.e.get();
            if (fragment == null) {
                fragment = fragmentManager.findFragmentByTag(this.d);
                if (fragment != null) {
                    this.e = new WeakReference(fragment);
                }
            }
        }
        return fragment;
    }

    public String a() {
        return this.d;
    }
}
