package com.twitter.android.people.adapters;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.android.widget.ToggleImageButton;
import com.twitter.library.api.timeline.d;
import com.twitter.library.api.timeline.h;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.view.QuotedViewWithBottomView;
import com.twitter.model.core.as;
import defpackage.bct;

/* compiled from: Twttr */
public class FavoriteQuotedView extends QuotedViewWithBottomView {
    private final ToggleImageButton b;

    public FavoriteQuotedView(Context context) {
        this(context, null);
    }

    public FavoriteQuotedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.quoteViewStyle);
    }

    public FavoriteQuotedView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 2130968817);
        this.b = (ToggleImageButton) findViewById(2131951911);
        this.b.setOnClickListener(new c(this));
    }

    public void setQuoteData(as asVar) {
        super.setQuoteData(asVar);
        if (asVar != null) {
            b(asVar.o);
        }
    }

    public void a() {
        boolean z = false;
        as asVar = this.a;
        Session c = bg.a().c();
        Context context = getContext();
        if (asVar.o) {
            az.a(context).a(new h(context, c, asVar.e).a(asVar.m), new d(this, context));
            b(false);
            return;
        }
        az a = az.a(context);
        d a2 = new d(context, c, asVar.e, asVar.e).a(asVar.m);
        if (!asVar.h.d.c()) {
            z = true;
        }
        a.a(a2.a(Boolean.valueOf(z)), new e(this));
        b(true);
    }

    private void b(boolean z) {
        if (z) {
            this.a.o = true;
            this.b.setToggledOn(true);
            this.b.setContentDescription(getResources().getString(2131362020));
            return;
        }
        this.a.o = false;
        this.b.setToggledOn(false);
        this.b.setContentDescription(getResources().getString(2131361993));
    }
}
