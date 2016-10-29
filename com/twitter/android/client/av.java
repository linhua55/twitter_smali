package com.twitter.android.client;

import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.ViewGroup;
import cgu;

/* compiled from: Twttr */
public abstract class av<I, V extends View> extends Adapter<aw<V>> {
    private cgu<I> a;

    protected abstract void a(V v, I i, int i2);

    protected abstract V b(ViewGroup viewGroup, int i);

    public /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
        a((aw) viewHolder, i);
    }

    public /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return c(viewGroup, i);
    }

    public aw<V> c(ViewGroup viewGroup, int i) {
        return new aw(b(viewGroup, i));
    }

    public void a(aw<V> awVar, int i) {
        a(awVar.a, a().a(i), i);
    }

    public cgu<I> a() {
        return this.a != null ? this.a : cgu.f();
    }

    public int getItemCount() {
        return a().aU_();
    }

    public I a(int i) {
        return a().a(i);
    }

    public int a(I i) {
        if (!(i == null || this.a == null)) {
            for (int i2 = 0; i2 < this.a.aU_(); i2++) {
                Object a = this.a.a(i2);
                if (a != null && a.equals(i)) {
                    return i2;
                }
            }
        }
        return -1;
    }

    public cgu<I> a(cgu<I> cgu_I) {
        cgu<I> b = b(cgu_I);
        if (!b.equals(a())) {
            notifyDataSetChanged();
        }
        return b;
    }

    public cgu<I> b(cgu<I> cgu_I) {
        cgu<I> a = a();
        this.a = cgu_I;
        return a;
    }
}
