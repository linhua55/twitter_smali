package com.twitter.app.common.list;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

/* compiled from: Twttr */
class c implements OnItemClickListener {
    final /* synthetic */ TwitterListFragment a;

    c(TwitterListFragment twitterListFragment) {
        this.a = twitterListFragment;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.a.a((ListView) adapterView, view, i, j);
    }
}
