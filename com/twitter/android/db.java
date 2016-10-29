package com.twitter.android;

import android.database.Cursor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.twitter.library.widget.PageableListView;
import defpackage.bii;

/* compiled from: Twttr */
class db implements OnItemClickListener {
    final /* synthetic */ cd a;
    final /* synthetic */ PageableListView b;
    final /* synthetic */ de c;
    final /* synthetic */ DMConversationFragment d;

    db(DMConversationFragment dMConversationFragment, cd cdVar, PageableListView pageableListView, de deVar) {
        this.d = dMConversationFragment;
        this.a = cdVar;
        this.b = pageableListView;
        this.c = deVar;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Cursor cursor = (Cursor) this.a.getItem(i - this.b.getHeaderViewsCount());
        if (cursor != null && cursor.getInt(5) == 1) {
            DMMessageDialog.a(772, (bii) DMConversationFragment.a(cursor), this.c).a(this.d).a(this.d.getActivity().getSupportFragmentManager());
        }
    }
}
