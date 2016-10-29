package com.twitter.android.people.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.widget.l;
import com.twitter.library.view.QuoteView;
import com.twitter.model.core.as;

/* compiled from: Twttr */
public class aq implements l<as> {
    public /* synthetic */ void a(View view, Object obj, int i) {
        b(view, (as) obj, i);
    }

    public /* synthetic */ void b(View view, Object obj, int i) {
        a(view, (as) obj, i);
    }

    public View a(Context context, as asVar, int i) {
        View inflate = LayoutInflater.from(context).inflate(2130968667, null, false);
        as asVar2 = new as(null);
        inflate.setTag(asVar2);
        asVar2.a.setAlwaysExpandMedia(true);
        a(inflate, asVar, i);
        return inflate;
    }

    public void a(View view, as asVar, int i) {
        QuoteView quoteView = ((as) view.getTag()).a;
        Context context = view.getContext();
        quoteView.setQuoteData(asVar);
        quoteView.setOnClickListener(new ar(this, asVar, context));
    }

    public void b(View view, as asVar, int i) {
    }
}
