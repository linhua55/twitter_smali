package com.twitter.android;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.LayoutRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.twitter.android.widget.ActivityUserView;
import com.twitter.internal.android.widget.HighlightedLinearLayout;
import com.twitter.internal.android.widget.TypefacesSpan;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.aq;
import com.twitter.library.widget.ActionButton;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.ui.a;
import defpackage.buf;

/* compiled from: Twttr */
public class jn {
    public final UserImageView a;
    public final TextView b;
    public final View c;
    public final ActionButton d;
    public int e;
    public String f;
    public Tweet g;
    public TwitterUser h;

    @SuppressLint({"WrongViewCast"})
    jn(View view, View view2) {
        this.a = (UserImageView) view.findViewById(2131951736);
        this.b = (TextView) view.findViewById(2131951918);
        this.d = (ActionButton) view.findViewById(2131951619);
        this.c = view2;
        if (this.a != null) {
            a.a(this.a, 2);
        }
    }

    public void a(Context context, FriendshipCache friendshipCache) {
        String c = this.h.c();
        String str = this.h.k;
        TypefacesSpan[] typefacesSpanArr = new TypefacesSpan[]{new TypefacesSpan(context, 1)};
        Resources resources = context.getResources();
        this.b.setText(aq.a(typefacesSpanArr, resources.getString(2131362841, new Object[]{c, str}), '\"'));
        Session c2 = bg.a().c();
        jl jlVar = (jl) this.c.getTag();
        jlVar.c = this.e;
        jlVar.d = this.g;
        jlVar.e = this.h;
        jlVar.a.setText(resources.getString(2131364013, new Object[]{c}));
        ((LayoutParams) jlVar.b.getLayoutParams()).leftMargin = resources.getDimensionPixelSize(2131690060) + buf.a().c();
        jlVar.b.requestLayout();
        ActivityUserView.a(this.d, this.h, friendshipCache, true, c2.g());
        ((jm) this.d.getTag()).a = this.h;
        this.d.setUsername(this.h.c());
    }

    public static View a(LayoutInflater layoutInflater, Context context, OnClickListener onClickListener, OnClickListener onClickListener2, @LayoutRes int i) {
        View inflate = layoutInflater.inflate(i, null);
        View inflate2 = layoutInflater.inflate(2130968919, null);
        jl jlVar = new jl(inflate2);
        inflate2.setTag(jlVar);
        jlVar.b.setTag(jlVar);
        jlVar.b.setOnClickListener(onClickListener2);
        jn jnVar = new jn(inflate, inflate2);
        inflate.setTag(jnVar);
        ActionButton actionButton = jnVar.d;
        if (actionButton != null) {
            actionButton.setTag(new jm());
            actionButton.a(2130837689);
            actionButton.setOnClickListener(onClickListener);
        }
        View highlightedLinearLayout = new HighlightedLinearLayout(context);
        ViewGroup.LayoutParams b = ji.b();
        highlightedLinearLayout.setTag(jnVar);
        highlightedLinearLayout.setLayoutParams(ji.a());
        highlightedLinearLayout.setOrientation(1);
        highlightedLinearLayout.addView(inflate, b);
        highlightedLinearLayout.addView(inflate2, b);
        return highlightedLinearLayout;
    }

    public static void a(Context context, View view, TwitterUser twitterUser, Tweet tweet, int i, FriendshipCache friendshipCache) {
        jn jnVar = (jn) view.getTag();
        jnVar.a.a(twitterUser);
        jnVar.a.setSize(buf.a().b());
        jnVar.e = i;
        jnVar.h = twitterUser;
        jnVar.g = tweet;
        jnVar.f = TtmlNode.ANONYMOUS_REGION_ID;
        jnVar.a(context, friendshipCache);
    }
}
