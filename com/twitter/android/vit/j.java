package com.twitter.android.vit;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import bdl;
import defpackage.bcy;

/* compiled from: Twttr */
class j extends bdl<k> {
    protected j(Context context) {
        super(context);
    }

    protected View a(Context context, k kVar, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(bcy.overflow_drop_down_item, viewGroup, false);
    }

    protected void a(View view, Context context, k kVar) {
        ((TextView) view.findViewById(2131953010)).setText(kVar.a);
    }
}
