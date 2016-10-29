package com.twitter.android.av.watchmode.view;

import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import com.twitter.library.av.playback.AVDataSource;

/* compiled from: Twttr */
public class s {
    private final RecyclerView a;

    protected s(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    public void a(AVDataSource aVDataSource) {
        Adapter adapter = this.a.getAdapter();
        LayoutManager layoutManager = this.a.getLayoutManager();
        if ((adapter instanceof y) && (layoutManager instanceof LinearLayoutManager)) {
            int a = ((y) adapter).a((Object) aVDataSource);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            if (a != -1 && linearLayoutManager.findFirstVisibleItemPosition() != a) {
                this.a.smoothScrollToPosition(a);
            }
        }
    }
}
