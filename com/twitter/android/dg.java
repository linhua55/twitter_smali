package com.twitter.android;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.android.widget.DMAvatar;
import com.twitter.internal.android.widget.HighlightedRelativeLayout;
import com.twitter.library.database.dm.d;
import com.twitter.library.util.ao;
import com.twitter.library.util.q;
import defpackage.bcu;

/* compiled from: Twttr */
class dg {
    public final HighlightedRelativeLayout a;
    public final DMAvatar b;
    public final TextView c;
    public final TextView d;
    public final TextView e;
    public final TextView f;
    public final ImageView g;
    private final Context h;

    dg(Context context, View view) {
        this.h = context;
        this.b = (DMAvatar) view.findViewById(2131952266);
        this.g = (ImageView) view.findViewById(2131952337);
        this.c = (TextView) view.findViewById(2131952336);
        this.d = (TextView) view.findViewById(2131952335);
        this.e = (TextView) view.findViewById(2131951683);
        this.f = (TextView) view.findViewById(2131951738);
        this.a = (HighlightedRelativeLayout) view;
    }

    public void a(d dVar) {
        this.b.a(dVar, new dh(this, dVar));
    }

    public void a(boolean z) {
        this.a.setHighlighted(z);
        if (z) {
            this.c.setTextColor(ContextCompat.getColor(this.h, 2131886332));
            this.d.setTextColor(ContextCompat.getColor(this.h, 2131886332));
            return;
        }
        this.c.setTextColor(ContextCompat.getColor(this.h, bcu.deep_gray));
        this.d.setTextColor(ContextCompat.getColor(this.h, bcu.deep_gray));
    }

    public void a(CharSequence charSequence) {
        this.c.setTextSize(0, ao.a);
        q.a(this.h, this.c, charSequence);
    }

    public void a(String str, String str2) {
        int i = 0;
        this.e.setTextSize(0, ao.a);
        q.a(this.h, this.e, (CharSequence) str);
        if (str2 == null) {
            i = 8;
        }
        this.f.setVisibility(i);
        this.f.setText(str2);
    }
}
