package com.twitter.ui.widget;

import android.app.Dialog;
import android.content.Context;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;

/* compiled from: Twttr */
class as extends Dialog implements aw {
    ListView a;
    final /* synthetic */ TwitterSelection b;

    as(TwitterSelection twitterSelection, Context context, int i, int i2) {
        this.b = twitterSelection;
        super(context, i);
        setCanceledOnTouchOutside(true);
        setContentView(i2);
        this.a = (ListView) findViewById(16908298);
    }

    public void show() {
        this.a.setSelection(this.b.g);
        super.show();
    }

    public void setAdapter(ListAdapter listAdapter) {
        this.a.setAdapter(listAdapter);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.a.setOnItemClickListener(onItemClickListener);
    }
}
