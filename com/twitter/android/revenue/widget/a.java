package com.twitter.android.revenue.widget;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.State;

/* compiled from: Twttr */
class a extends LinearLayoutManager {
    a(Context context) {
        super(context);
        setOrientation(0);
    }

    public void smoothScrollToPosition(RecyclerView recyclerView, State state, int i) {
        b bVar = new b(this, recyclerView.getContext());
        bVar.setTargetPosition(i);
        startSmoothScroll(bVar);
    }
}
