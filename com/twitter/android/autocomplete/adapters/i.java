package com.twitter.android.autocomplete.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.library.api.TwitterLocation;

/* compiled from: Twttr */
public class i extends h<String, TwitterLocation> {
    public i(Context context) {
        super(context);
    }

    public View a(Context context, TwitterLocation twitterLocation, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(2130969394, viewGroup, false);
        inflate.setTag(new j(inflate));
        return inflate;
    }

    public void a(View view, Context context, TwitterLocation twitterLocation) {
        ((j) view.getTag()).a.setText(twitterLocation.a());
    }

    public long getItemId(int i) {
        TwitterLocation twitterLocation = (TwitterLocation) getItem(i);
        return twitterLocation != null ? twitterLocation.d() : -1;
    }
}
