package com.twitter.ui.widget;

import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

/* compiled from: Twttr */
interface aw {
    void dismiss();

    boolean isShowing();

    void setAdapter(ListAdapter listAdapter);

    void setOnItemClickListener(OnItemClickListener onItemClickListener);

    void show();
}
