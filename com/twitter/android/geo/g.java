package com.twitter.android.geo;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.geo.PlaceAttribution;
import com.twitter.util.aj;
import com.twitter.util.h;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class g {
    private final LinearLayout a;
    private final List<View> b;
    private final View c;
    private final TextView d;
    private final Context e;

    public g(Context context, ViewGroup viewGroup) {
        this.e = context;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(2130969199, viewGroup, false);
        this.a = linearLayout;
        this.b = new ArrayList();
        this.c = linearLayout.findViewById(2131951647);
        this.d = (TextView) linearLayout.findViewById(2131953074);
        this.d.setTag("footer_text_tag");
        a(8);
    }

    public void a(List<PlaceAttribution> list) {
        View a;
        for (View a2 : this.b) {
            this.a.removeView(a2);
        }
        this.b.clear();
        for (PlaceAttribution a3 : list) {
            a2 = a(a3);
            this.b.add(a2);
            this.a.addView(a2);
        }
    }

    public void a() {
        a(null);
    }

    public void a(CharSequence charSequence) {
        this.d.setText(charSequence);
        if (aj.b(charSequence)) {
            a(0);
        } else {
            a(8);
        }
    }

    public void a(OnClickListener onClickListener) {
        this.d.setOnClickListener(onClickListener);
    }

    public View b() {
        return this.a;
    }

    private void a(int i) {
        this.d.setVisibility(i);
        this.c.setVisibility(i);
    }

    private View a(PlaceAttribution placeAttribution) {
        switch (h.a[placeAttribution.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return LayoutInflater.from(this.e).inflate(2130969201, this.a, false);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return LayoutInflater.from(this.e).inflate(2130969204, this.a, false);
            default:
                h.a("Illegal attribution " + placeAttribution);
                return new Space(this.e);
        }
    }
}
