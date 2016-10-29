package com.twitter.android.widget;

import android.view.ViewParent;
import com.twitter.library.view.r;

/* compiled from: Twttr */
public class m<T> extends r {
    private final CarouselRowView a;
    private final n<T> b;
    private int c;

    public m(CarouselRowView carouselRowView, ViewParent viewParent, int i, n<T> nVar) {
        super(viewParent, i);
        this.b = nVar;
        this.a = carouselRowView;
    }

    public void onPageSelected(int i) {
        super.onPageSelected(i);
        j carouselAdapter = this.a.getCarouselAdapter();
        if (carouselAdapter != null) {
            Object a = carouselAdapter.a(i);
            if (a != null) {
                a(i, a);
                if (this.c != i) {
                    a(i, a, this.c < i);
                }
            }
        }
        this.c = i;
    }

    public void a(int i, T t) {
        if (this.b.a(t)) {
            this.b.a((Object) t, i);
        }
    }

    public void a(int i, T t, boolean z) {
        if (this.b.a(t)) {
            this.b.a((Object) t, z);
        }
    }
}
