package com.twitter.android.widget;

import android.support.annotation.IdRes;
import android.support.annotation.LayoutRes;
import android.widget.BaseAdapter;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class bt<T extends bt> {
    private final BaseAdapter a;
    private final BaseAdapter b;
    private final int c;
    private boolean d;
    @LayoutRes
    private int e;
    private boolean f;
    @LayoutRes
    private int g;
    @IdRes
    private int h;
    private String i;
    private String j;

    public bt(BaseAdapter baseAdapter, BaseAdapter baseAdapter2, int i) {
        this.e = 2130969379;
        this.g = 2130969381;
        this.h = 2131951868;
        this.a = baseAdapter;
        this.b = baseAdapter2;
        this.c = i;
    }

    public T a(boolean z) {
        this.d = z;
        return (bt) ObjectUtils.a(this);
    }

    public T a(@LayoutRes int i) {
        this.e = i;
        return (bt) ObjectUtils.a(this);
    }

    public br b() {
        return new br(this);
    }
}
