package com.twitter.android.interestpicker;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import com.twitter.internal.android.widget.aa;

/* compiled from: Twttr */
public class q extends aa {
    public q(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
        if (recyclerView.getChildViewHolder(view) instanceof s) {
            super.getItemOffsets(rect, view, recyclerView, state);
        }
    }
}
