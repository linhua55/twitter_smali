package com.twitter.library.view;

import android.content.Context;
import android.view.View;
import bcx;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class g {
    private int a;
    private boolean b;
    private final WeakReference<View> c;
    private final WeakReference<Context> d;

    g(Context context, View view) {
        this.c = new WeakReference(view);
        this.d = new WeakReference(context);
        if (view != null) {
            view.setTag(bcx.hashflag_view_tag, Integer.valueOf(System.identityHashCode(this)));
        }
    }

    public Context a() {
        return (Context) this.d.get();
    }

    public void b() {
        this.a++;
        this.b = true;
    }

    public void c() {
        this.b = false;
    }

    public void d() {
        this.a--;
        if (!this.b && this.a == 0) {
            View view = (View) this.c.get();
            if (b(view)) {
                view.invalidate();
            }
        }
    }

    private boolean b(View view) {
        if (view == null) {
            return false;
        }
        Integer num = (Integer) view.getTag(bcx.hashflag_view_tag);
        boolean z = num != null && num.intValue() == System.identityHashCode(this);
        return z;
    }

    public static void a(View view) {
        view.setTag(bcx.hashflag_view_tag, null);
    }
}
