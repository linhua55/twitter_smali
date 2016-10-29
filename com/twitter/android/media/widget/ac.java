package com.twitter.android.media.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.twitter.android.autocomplete.adapters.h;

/* compiled from: Twttr */
class ac extends h<String, String> {
    final /* synthetic */ FoundMediaSearchView a;

    ac(FoundMediaSearchView foundMediaSearchView, Context context) {
        this.a = foundMediaSearchView;
        super(context);
    }

    protected View a(Context context, String str, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(17367043, viewGroup, false);
    }

    protected void a(View view, Context context, String str) {
        ((TextView) view).setText(str);
    }
}
