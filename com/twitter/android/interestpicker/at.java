package com.twitter.android.interestpicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.twitter.android.util.CategoryListItem;

/* compiled from: Twttr */
public class at extends ArrayAdapter<CategoryListItem> {
    public at(Context context, int i) {
        super(context, i);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(2130969432, viewGroup, false);
        }
        ((TextView) view.findViewById(2131951868)).setText(((CategoryListItem) getItem(i)).a());
        view.findViewById(2131953267).setVisibility(8);
        return view;
    }
}
