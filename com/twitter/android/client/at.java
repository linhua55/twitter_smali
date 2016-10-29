package com.twitter.android.client;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.OnItemTouchListener;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.app.common.inject.v;
import com.twitter.util.object.ObjectUtils;
import defpackage.cgu;

/* compiled from: Twttr */
public class at<I, V extends View> extends v {
    public final RecyclerView b;

    public at(LayoutInflater layoutInflater, au auVar) {
        View inflate = layoutInflater.inflate(auVar.a(), null, false);
        this.b = (RecyclerView) inflate.findViewById(auVar.c());
        this.b.setLayoutManager(auVar.d());
        ItemDecoration b = auVar.b();
        if (b != null) {
            this.b.addItemDecoration(b);
        }
        a(inflate);
    }

    public final void a(av<I, V> avVar) {
        this.b.setAdapter(avVar);
    }

    public void a(cgu<I> cgu_I) {
        ((av) ObjectUtils.a(this.b.getAdapter())).a(cgu_I);
    }

    public final void a(OnScrollListener onScrollListener) {
        this.b.addOnScrollListener(onScrollListener);
    }

    public final void a(OnItemTouchListener onItemTouchListener) {
        this.b.addOnItemTouchListener(onItemTouchListener);
    }
}
