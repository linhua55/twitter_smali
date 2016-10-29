package com.twitter.android.autocomplete.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.autocomplete.a;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class g<T> extends h<String, T> {
    protected final a<T> a;
    private final int b;

    public g(Context context, a<T> aVar, int i) {
        super(context);
        this.a = aVar;
        this.b = i;
    }

    public boolean isEnabled(int i) {
        return this.a.b(getItemId(i));
    }

    protected View a(Context context, T t, ViewGroup viewGroup) {
        if (!(t instanceof TwitterUser)) {
            return null;
        }
        View inflate = LayoutInflater.from(context).inflate(this.b, null);
        k kVar = new k(inflate);
        kVar.a.setDefaultDrawable(context.getResources().getDrawable(2130837647));
        inflate.setTag(kVar);
        return inflate;
    }

    protected void a(View view, Context context, T t) {
        View view2 = null;
        if (t instanceof TwitterUser) {
            TwitterUser twitterUser = (TwitterUser) t;
            k kVar = (k) view.getTag();
            kVar.a.a(twitterUser.e);
            kVar.b.setText(twitterUser.d);
            if (twitterUser.n) {
                kVar.c.setVisibility(0);
            } else {
                kVar.c.setVisibility(8);
            }
            kVar.d.setText("@" + twitterUser.k);
            view2 = kVar.f;
        }
        long b = b(t);
        view.setAlpha(this.a.b(b) ? 1.0f : 0.5f);
        a(view2, this.a.b_(b));
    }

    public long getItemId(int i) {
        return b(getItem(i));
    }

    public long b(T t) {
        if (t instanceof TwitterUser) {
            return ((TwitterUser) t).c;
        }
        return -1;
    }

    private static void a(View view, boolean z) {
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }
}
