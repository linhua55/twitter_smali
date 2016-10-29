package com.twitter.android.client;

import android.support.annotation.IdRes;
import android.support.annotation.LayoutRes;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutManager;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class au<T extends au<T>> {
    @LayoutRes
    private int a;
    @IdRes
    private int b;
    private LayoutManager c;
    private ItemDecoration d;

    @LayoutRes
    public int a() {
        return this.a;
    }

    public T a(@LayoutRes int i) {
        this.a = i;
        return (au) ObjectUtils.a((Object) this);
    }

    public T a(ItemDecoration itemDecoration) {
        this.d = itemDecoration;
        return (au) ObjectUtils.a((Object) this);
    }

    public ItemDecoration b() {
        return this.d;
    }

    @IdRes
    public int c() {
        return this.b;
    }

    public T b(@IdRes int i) {
        this.b = i;
        return (au) ObjectUtils.a((Object) this);
    }

    public LayoutManager d() {
        if (this.c != null) {
            return this.c;
        }
        throw new IllegalStateException("layout manager not set");
    }

    public T a(LayoutManager layoutManager) {
        this.c = layoutManager;
        return (au) ObjectUtils.a((Object) this);
    }
}
