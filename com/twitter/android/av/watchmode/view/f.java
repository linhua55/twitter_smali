package com.twitter.android.av.watchmode.view;

import android.content.res.Configuration;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.support.v7.widget.RecyclerView.ViewHolder;
import com.twitter.android.av.bm;
import com.twitter.android.av.bo;
import com.twitter.app.common.inject.c;

/* compiled from: Twttr */
public class f extends OnScrollListener implements bo, c {
    private final bm a;
    private final RecyclerView b;
    private final LinearLayoutManager c;

    public f(RecyclerView recyclerView, bm bmVar) {
        this.b = recyclerView;
        this.c = (LinearLayoutManager) this.b.getLayoutManager();
        this.a = bmVar;
        this.a.a(this);
        this.a.a(3000);
    }

    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        if (i == 0) {
            this.a.a(3000);
        } else {
            this.a.a();
        }
    }

    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        a();
    }

    public void q() {
        b();
    }

    private void a(boolean z) {
        int findLastVisibleItemPosition = this.c.findLastVisibleItemPosition() + 1;
        for (int findFirstVisibleItemPosition = this.c.findFirstVisibleItemPosition() - 1; findFirstVisibleItemPosition < findLastVisibleItemPosition; findFirstVisibleItemPosition++) {
            ViewHolder findViewHolderForAdapterPosition = this.b.findViewHolderForAdapterPosition(findFirstVisibleItemPosition);
            if (findViewHolderForAdapterPosition != null && (findViewHolderForAdapterPosition.itemView instanceof x)) {
                ((x) findViewHolderForAdapterPosition.itemView).setActive(z);
            }
        }
    }

    public void a(Configuration configuration) {
        if (configuration.orientation == 1) {
            a();
        }
    }

    private void a() {
        a(true);
    }

    private void b() {
        a(false);
    }
}
