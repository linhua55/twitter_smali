package com.twitter.ui.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

/* compiled from: Twttr */
class ar implements OnItemClickListener {
    final /* synthetic */ TwitterSelection a;

    ar(TwitterSelection twitterSelection) {
        this.a = twitterSelection;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.a.setSelectedPosition(i);
        this.a.b();
    }
}
