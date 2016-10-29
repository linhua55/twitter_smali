package com.twitter.android;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.twitter.model.geo.TwitterPlace;

/* compiled from: Twttr */
class ii extends ArrayAdapter<TwitterPlace> {
    ii(Context context, int i) {
        super(context, i);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) super.getView(i, view, viewGroup);
        textView.setText(((TwitterPlace) getItem(i)).d);
        return textView;
    }
}
