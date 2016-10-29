package com.twitter.android;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.twitter.library.widget.PageableListView;

/* compiled from: Twttr */
class da implements OnItemLongClickListener {
    final /* synthetic */ PageableListView a;
    final /* synthetic */ DMConversationFragment b;

    da(DMConversationFragment dMConversationFragment, PageableListView pageableListView) {
        this.b = dMConversationFragment;
        this.a = pageableListView;
    }

    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        return this.b.a(i - this.a.getHeaderViewsCount());
    }
}
