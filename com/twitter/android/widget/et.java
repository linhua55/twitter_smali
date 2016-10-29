package com.twitter.android.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

/* compiled from: Twttr */
public class et extends BaseAdapter {
    private final View a;

    public et(View view) {
        this.a = view;
    }

    public Object getItem(int i) {
        return this.a;
    }

    public long getItemId(int i) {
        return 0;
    }

    public int getCount() {
        return this.a != null ? 1 : 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        return this.a;
    }
}
