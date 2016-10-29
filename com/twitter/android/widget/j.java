package com.twitter.android.widget;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import cgu;
import cvi;

/* compiled from: Twttr */
public class j<T> extends PagerAdapter {
    protected cgu<T> a;
    private final Context b;
    private final l<T> c;
    private float d;

    public j(Context context, l<T> lVar) {
        this.a = cgu.f();
        this.d = 0.9f;
        this.b = context;
        this.c = lVar;
    }

    public int getCount() {
        return a();
    }

    public int a() {
        return this.a.aU_();
    }

    public boolean isViewFromObject(View view, Object obj) {
        return ((k) obj).a == view;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Object a = a(i);
        View a2 = this.c.a(this.b, a, i);
        viewGroup.addView(a2);
        return new k(a2, i, a);
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        k kVar = (k) obj;
        this.c.a(kVar.a, kVar.c, i);
        viewGroup.removeView(kVar.a);
    }

    public int getItemPosition(Object obj) {
        k kVar = (k) obj;
        int a = a(kVar.b, kVar.c);
        if (a >= 0) {
            Object a2 = a(a);
            this.c.b(kVar.a, a2, a);
            kVar.c = a2;
            kVar.b = a;
        }
        return a;
    }

    public float getPageWidth(int i) {
        return this.d;
    }

    public void a(float f) {
        this.d = f;
    }

    public void a(cgu<T> cgu_T) {
        a((cgu) cgu_T, true);
    }

    private void a(cgu<T> cgu_T, boolean z) {
        cgu<T> cgu_T2 = this.a;
        if (cgu_T2 != cgu_T) {
            this.a = cgu_T;
            if (z) {
                notifyDataSetChanged();
            }
            if (cgu_T2 != null) {
                cvi.a(cgu_T2);
            }
        }
    }

    public void b(cgu<T> cgu_T) {
        a((cgu) cgu_T, false);
    }

    public T a(int i) {
        return this.a.a(i);
    }

    private int a(int i, T t) {
        if (i >= 0 && i < a() && a(i).equals(t)) {
            return i;
        }
        for (int i2 = 0; i2 < a(); i2++) {
            if (a(i2).equals(t)) {
                return i2;
            }
        }
        return -2;
    }
}
