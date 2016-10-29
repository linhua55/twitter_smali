package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.model.core.as;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class fv {
    @VisibleForTesting
    RelativeLayout a;
    @VisibleForTesting
    TextView b;
    @VisibleForTesting
    TextView c;
    @VisibleForTesting
    TextView d;
    private final ViewGroup e;

    public fv(ViewGroup viewGroup) {
        this.e = viewGroup;
    }

    public void a(as asVar) {
        a();
        Context context = this.e.getContext();
        e.a(this.b);
        this.e.setVisibility(0);
        this.b.setText(asVar.g);
        e.a(this.d);
        this.d.setText(context.getString(2131364279, new Object[]{asVar.d}));
        e.a(this.c);
        this.c.setText(asVar.c);
        ((RelativeLayout) e.a(this.a)).setOnClickListener(new fw(this, asVar, context));
    }

    @VisibleForTesting
    void a() {
        if (this.a == null) {
            LayoutInflater.from(this.e.getContext()).inflate(2130969058, this.e);
            this.a = (RelativeLayout) this.e.findViewById(2131952817);
            this.b = (TextView) this.e.findViewById(2131952064);
            this.c = (TextView) this.e.findViewById(2131952818);
            this.d = (TextView) this.e.findViewById(2131952819);
        }
    }
}
