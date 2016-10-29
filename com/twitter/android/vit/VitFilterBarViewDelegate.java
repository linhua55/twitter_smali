package com.twitter.android.vit;

import android.content.Context;
import android.support.annotation.ColorInt;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.android.widget.DropDownListView;
import defpackage.bct;
import defpackage.bcu;
import defpackage.chd;
import java.util.List;

/* compiled from: Twttr */
public class VitFilterBarViewDelegate {
    private final TextView a;
    private final TextView b;
    private final TextView c;
    private final View d;
    private final View e;
    private final PopupWindow f;
    private final j g;
    private final DropDownListView h;
    @ColorInt
    private final int i;
    @ColorInt
    private final int j;

    /* compiled from: Twttr */
    public enum VitFilter {
        ALL,
        MENTIONS,
        VERIFIED
    }

    public VitFilterBarViewDelegate(Context context) {
        this.e = LayoutInflater.from(context).inflate(2130969531, null);
        this.a = (TextView) this.e.findViewById(2131953379);
        this.b = (TextView) this.e.findViewById(2131953380);
        this.c = (TextView) this.e.findViewById(2131953381);
        this.d = this.e.findViewById(2131953382);
        this.i = ContextCompat.getColor(context, bcu.twitter_blue);
        this.j = ContextCompat.getColor(context, bcu.seamful_deep_grey);
        this.h = new DropDownListView(context, null, bct.dropDownListViewStyle);
        this.g = new j(context);
        this.h.setFocusable(true);
        this.h.setFocusableInTouchMode(true);
        this.h.setAdapter(this.g);
        this.h.setSelection(-1);
        this.f = new PopupWindow(context, null, bct.toolBarPopupWindowStyle);
        this.f.setWindowLayoutMode(-2, -2);
        this.f.setInputMethodMode(2);
        this.f.setOutsideTouchable(true);
        this.f.setContentView(this.h);
        this.f.setFocusable(true);
        this.d.setOnClickListener(new f(this));
    }

    public View a() {
        return this.e;
    }

    private TextView b(VitFilter vitFilter) {
        switch (i.a[vitFilter.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return this.a;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return this.b;
            case Util.TYPE_OTHER /*3*/:
                return this.c;
            default:
                throw new IllegalArgumentException("Unknown filter: " + vitFilter);
        }
    }

    public void a(VitFilter vitFilter) {
        this.a.setTextColor(this.j);
        this.b.setTextColor(this.j);
        this.c.setTextColor(this.j);
        b(vitFilter).setTextColor(this.i);
    }

    public void a(VitFilter vitFilter, OnClickListener onClickListener) {
        b(vitFilter).setOnClickListener(new g(this, vitFilter, onClickListener));
    }

    public void a(List<k> list) {
        this.g.a(new chd(list));
        this.h.setOnItemClickListener(new h(this, list));
    }
}
