package com.twitter.android;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.ui.widget.TypefacesTextView;

/* compiled from: Twttr */
class ha extends ArrayAdapter<gz> {
    ha(Context context, gz[] gzVarArr) {
        super(context, 0, gzVarArr);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(2130968882, viewGroup, false);
        }
        ((TypefacesTextView) view.findViewById(2131952533)).setText(((gz) getItem(i)).a);
        ((MediaImageView) view.findViewById(2131952535)).a(a.a(((gz) getItem(i)).b));
        view.findViewById(2131952534).setVisibility(((gz) getItem(i)).c ? 0 : 8);
        return view;
    }
}
