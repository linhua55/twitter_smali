package com.twitter.internal.android.widget;

import android.view.View;
import java.util.ArrayList;

/* compiled from: Twttr */
class x {
    final /* synthetic */ HorizontalListView a;
    private final ArrayList<View> b;
    private View[] c;
    private int d;

    x(HorizontalListView horizontalListView) {
        this.a = horizontalListView;
        this.b = new ArrayList();
    }

    public View a(int i) {
        if (this.c != null) {
            int i2 = i - this.d;
            View[] viewArr = this.c;
            if (i2 >= 0 && i2 < viewArr.length) {
                View view = viewArr[i2];
                viewArr[i2] = null;
                return view;
            }
        }
        return null;
    }

    public void a() {
        View[] viewArr = this.c;
        if (viewArr != null) {
            ArrayList arrayList = this.b;
            for (int length = viewArr.length - 1; length >= 0; length--) {
                View view = viewArr[length];
                if (view != null) {
                    HorizontalListView$LayoutParams horizontalListView$LayoutParams = (HorizontalListView$LayoutParams) view.getLayoutParams();
                    viewArr[length] = null;
                    horizontalListView$LayoutParams.b = this.d + length;
                    arrayList.add(view);
                }
            }
            c();
        }
    }

    private void c() {
        int length = this.c.length;
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i = size - length;
        length = size - 1;
        int i2 = length;
        for (size = 0; size < i; size++) {
            HorizontalListView.a(this.a, (View) arrayList.remove(i2), false);
            i2--;
        }
    }

    public void a(int i, int i2) {
        View[] viewArr = this.c;
        if (viewArr == null || viewArr.length < i2) {
            this.c = new View[i2];
            viewArr = this.c;
        }
        this.d = i;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3] = this.a.getChildAt(i3);
        }
    }

    public View b(int i) {
        ArrayList arrayList = this.b;
        if (arrayList.isEmpty()) {
            return null;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = (View) arrayList.get(i2);
            if (((HorizontalListView$LayoutParams) view.getLayoutParams()).b == i) {
                arrayList.remove(i2);
                return view;
            }
        }
        return (View) arrayList.remove(size - 1);
    }

    public void a(View view, int i, boolean z) {
        HorizontalListView$LayoutParams horizontalListView$LayoutParams = (HorizontalListView$LayoutParams) view.getLayoutParams();
        if (horizontalListView$LayoutParams != null) {
            horizontalListView$LayoutParams.b = i;
            horizontalListView$LayoutParams.a = true;
            horizontalListView$LayoutParams.d = z;
            this.b.add(view);
        }
    }

    public void b() {
        ArrayList arrayList = this.b;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            HorizontalListView.b(this.a, (View) arrayList.remove(size), false);
        }
    }
}
