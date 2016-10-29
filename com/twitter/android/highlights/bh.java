package com.twitter.android.highlights;

import android.view.View;
import android.widget.HeaderViewListAdapter;
import android.widget.ListView;

/* compiled from: Twttr */
public class bh extends at {
    public final ListView l;

    public bh(int i, View view) {
        super(i, view);
        this.l = (ListView) view.findViewById(2131951721);
    }

    public void a(bc bcVar) {
        int i = 0;
        HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) this.l.getAdapter();
        if (headerViewListAdapter == null || headerViewListAdapter.getWrappedAdapter() != bcVar.d) {
            int top;
            View childAt = this.l.getChildAt(0);
            if (childAt != null) {
                i = this.l.getFirstVisiblePosition();
                top = childAt.getTop();
            } else {
                top = 0;
            }
            this.l.setAdapter(bcVar.d);
            this.l.setSelectionFromTop(i, top);
        }
    }
}
