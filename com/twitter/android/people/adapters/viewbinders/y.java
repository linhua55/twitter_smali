package com.twitter.android.people.adapters.viewbinders;

import android.graphics.PorterDuff.Mode;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.twitter.android.people.adapters.i;
import com.twitter.android.people.adapters.s;
import defpackage.bcu;

/* compiled from: Twttr */
public class y implements aj<s> {
    public boolean a(i iVar) {
        return iVar instanceof s;
    }

    public View a(s sVar, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2130969002, viewGroup, false);
        ((ImageView) inflate.findViewById(2131952732)).setColorFilter(ContextCompat.getColor(viewGroup.getContext(), bcu.border_color), Mode.SRC_IN);
        return inflate;
    }

    public void a(View view, s sVar) {
    }

    public boolean a(s sVar) {
        return false;
    }
}
