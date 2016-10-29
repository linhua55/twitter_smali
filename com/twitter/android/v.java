package com.twitter.android;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.DrawableRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.library.provider.a;
import com.twitter.library.util.q;
import com.twitter.library.view.QuoteView;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.as;
import com.twitter.ui.widget.TypefacesTextView;
import java.util.List;

/* compiled from: Twttr */
public class v {
    public final ImageView a;
    public final TextView b;
    public final TextView c;
    public final ViewGroup d;
    public final View[] e;
    public final View[] f;
    public final ViewGroup g;
    public final View h;
    public long i;
    public int j;
    public List<TwitterUser> k;
    public a l;
    private final int m;
    private final int n;
    private final OnClickListener o;

    public v(View view, OnClickListener onClickListener) {
        this.a = (ImageView) view.findViewById(2131951669);
        this.h = view.findViewById(2131951919);
        this.b = (TextView) view.findViewById(2131951918);
        this.d = (ViewGroup) view.findViewById(2131951634);
        this.g = (ViewGroup) view.findViewById(2131951920);
        this.c = (TextView) view.findViewById(2131951921);
        this.o = onClickListener;
        this.e = new View[this.d.getChildCount()];
        this.f = new View[this.e.length];
        Resources resources = view.getContext().getResources();
        this.m = resources.getDimensionPixelSize(2131689654);
        this.n = resources.getDimensionPixelSize(2131689656);
        if (this.g != null) {
            com.twitter.util.ui.a.a(this.g, 4);
        }
        for (int i = 0; i < this.e.length; i++) {
            this.e[i] = this.d.getChildAt(i);
            this.f[i] = this.e[i].findViewById(2131952729);
        }
    }

    public static View a(LayoutInflater layoutInflater, OnClickListener onClickListener, int i) {
        View inflate = layoutInflater.inflate(2130968613, null);
        v vVar = new v(inflate, onClickListener);
        vVar.j = i;
        inflate.setTag(vVar);
        return inflate;
    }

    public static void a(Context context, View view, @DrawableRes int i, List<TwitterUser> list, List<Tweet> list2, boolean z, long j, int i2, boolean z2, boolean z3) {
        v vVar = (v) view.getTag();
        vVar.i = j;
        vVar.j = i2;
        vVar.k = list;
        vVar.a.setImageResource(i);
        if (z) {
            vVar.c.setVisibility(0);
            view.setPadding(view.getPaddingLeft(), vVar.m, view.getPaddingRight(), vVar.n);
        } else {
            vVar.c.setVisibility(8);
        }
        int size = list2 == null ? 0 : list2.size();
        if (size > 0) {
            vVar.d.setVisibility(0);
            int length = vVar.e.length;
            int min = Math.min(size, length);
            for (int i3 = 0; i3 < min; i3++) {
                View view2 = vVar.e[i3];
                if (view2 instanceof QuoteView) {
                    a(context, (QuoteView) view2, (Tweet) list2.get(i3), z2, vVar.o, z3);
                } else {
                    a(context, (TypefacesTextView) vVar.f[i3], (Tweet) list2.get(i3), z2);
                }
                view2.setVisibility(0);
            }
            for (size = min; size < length; size++) {
                View view3 = vVar.e[size];
                view3.setVisibility(8);
                view3.setTag(null);
            }
            return;
        }
        vVar.d.setVisibility(8);
    }

    private static void a(Context context, TypefacesTextView typefacesTextView, Tweet tweet, boolean z) {
        typefacesTextView.setVisibility(0);
        if (z) {
            typefacesTextView.setGravity(5);
        }
        q.a(context, (TextView) typefacesTextView, tweet.g());
    }

    private static void a(Context context, QuoteView quoteView, Tweet tweet, boolean z, OnClickListener onClickListener, boolean z2) {
        quoteView.setDisplayMode(0);
        quoteView.setDisplaySensitiveMedia(z2);
        quoteView.setQuoteData(new as(tweet));
        quoteView.setRenderRtl(z);
        quoteView.setOnClickListener(onClickListener);
        quoteView.setTag(tweet);
    }
}
