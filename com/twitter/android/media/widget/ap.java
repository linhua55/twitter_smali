package com.twitter.android.media.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.twitter.model.media.foundmedia.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
class ap extends BaseAdapter {
    final /* synthetic */ GifGalleryView a;
    private boolean b;
    private Iterable<f> c;
    private List<as> d;
    private int e;

    ap(GifGalleryView gifGalleryView, Iterable<f> iterable, boolean z) {
        this.a = gifGalleryView;
        this.d = Collections.emptyList();
        this.b = z;
        this.c = iterable;
    }

    public int getCount() {
        int size = this.d.size();
        if (!this.b || size <= 1) {
            return size;
        }
        return size - 1;
    }

    public Object getItem(int i) {
        return this.d.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (this.b && this.a.f != null && i >= this.d.size() - 2) {
            this.a.f.a();
        }
        view = view instanceof ar ? (ar) view : new ar(this.a, this.a.getContext());
        view.a((as) this.d.get(i));
        return view;
    }

    void a(Iterable<f> iterable, boolean z) {
        this.b = z;
        this.c = iterable;
        c(this.e);
    }

    void a(int i) {
        if (this.e != i) {
            this.e = i;
            c(i);
        }
    }

    int b(int i) {
        int i2 = 0;
        for (as asVar : this.d) {
            int i3 = i - asVar.b;
            if (i3 >= 0 && i3 < asVar.a.size()) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private void c(int i) {
        List arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List list = arrayList2;
        float f = 0.0f;
        int i2 = 0;
        for (f fVar : this.c) {
            List list2;
            float f2;
            int i3;
            float e = fVar.h.c.e();
            if (((float) (i - (list.size() * this.a.c))) / (f + e) > ((float) this.a.d)) {
                list.add(fVar);
                int i4 = i2;
                list2 = list;
                f2 = f + e;
                i3 = i4;
            } else if (list.isEmpty()) {
                arrayList.add(new as(i2, Collections.singletonList(fVar)));
                i3 = i2 + 1;
                list2 = list;
                f2 = 0.0f;
            } else {
                list.trimToSize();
                arrayList.add(new as(i2, list));
                i2 += list.size();
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(fVar);
                i3 = i2;
                Object obj = arrayList3;
                f2 = e;
            }
            f = f2;
            list = list2;
            i2 = i3;
        }
        if (!list.isEmpty()) {
            arrayList.add(new as(i2, list));
        }
        this.d = arrayList;
        notifyDataSetChanged();
        if (this.a.f != null) {
            this.a.f.c();
        }
    }
}
