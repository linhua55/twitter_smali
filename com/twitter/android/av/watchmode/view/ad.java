package com.twitter.android.av.watchmode.view;

import android.content.Context;
import android.content.res.Configuration;
import android.support.annotation.VisibleForTesting;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.support.v7.widget.RecyclerView.ViewHolder;
import com.twitter.app.common.inject.c;

/* compiled from: Twttr */
public class ad extends OnScrollListener implements c {
    @VisibleForTesting
    int a;

    public ad(Context context) {
        a(context.getResources().getConfiguration());
    }

    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        a(recyclerView);
    }

    public void a(RecyclerView recyclerView) {
        LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            ViewHolder findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(findFirstVisibleItemPosition);
            int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition() + 1;
            for (int i = findFirstVisibleItemPosition - 1; i < findLastVisibleItemPosition; i++) {
                ViewHolder findViewHolderForAdapterPosition2 = recyclerView.findViewHolderForAdapterPosition(i);
                if (findViewHolderForAdapterPosition2 != null && (findViewHolderForAdapterPosition2.itemView instanceof x)) {
                    a((x) findViewHolderForAdapterPosition2.itemView, i, findViewHolderForAdapterPosition, findFirstVisibleItemPosition);
                }
            }
        }
    }

    private void a(x xVar, int i, ViewHolder viewHolder, int i2) {
        if (this.a == 2) {
            xVar.setExpandedFraction(1.0f);
        } else if (i <= i2) {
            xVar.setExpandedFraction(1.0f);
        } else if (i == i2 + 1) {
            float height = (float) viewHolder.itemView.getHeight();
            xVar.setExpandedFraction(1.0f - (Math.min((float) viewHolder.itemView.getBottom(), height) / height));
        } else {
            xVar.setExpandedFraction(0.0f);
        }
    }

    public void a(Configuration configuration) {
        this.a = configuration.orientation;
    }
}
