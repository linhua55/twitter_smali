package com.twitter.android.av;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.twitter.android.widget.EngagementActionBar;
import com.twitter.android.widget.ToggleImageButton;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.model.core.Tweet;
import com.twitter.util.t;
import com.twitter.util.y;
import com.twitter.util.z;
import defpackage.bcu;

/* compiled from: Twttr */
public class af implements OnClickListener {
    Tweet a;
    private final EngagementActionBar b;
    private final ai c;
    private final Session d;
    private Context e;
    private final ToggleImageButton f;
    private final TextView g;
    private final TextView h;
    private final ah i;
    private final ak j;
    private final y<Tweet> k;
    private FragmentActivity l;
    private final z<Tweet> m;

    public af(Tweet tweet, EngagementActionBar engagementActionBar, ai aiVar) {
        this(tweet, engagementActionBar, aiVar, new y());
    }

    @VisibleForTesting
    af(Tweet tweet, EngagementActionBar engagementActionBar, ai aiVar, y<Tweet> yVar) {
        this(tweet, engagementActionBar, engagementActionBar.getContext(), aiVar, bg.a().c(), yVar, new ah(yVar, aiVar), new ak());
    }

    af(Tweet tweet, EngagementActionBar engagementActionBar, Context context, ai aiVar, Session session, y<Tweet> yVar, ah ahVar, ak akVar) {
        this.m = new ag(this);
        this.a = tweet;
        this.b = engagementActionBar;
        this.k = yVar;
        this.c = aiVar;
        this.k.a(this.m);
        this.i = ahVar;
        this.j = akVar;
        this.e = context;
        this.d = session;
        this.g = (TextView) this.b.findViewById(2131952631);
        this.f = (ToggleImageButton) this.b.findViewById(2131951911);
        this.h = (TextView) this.b.findViewById(2131952630);
    }

    public void a(Context context) {
        this.e = context;
    }

    public void a(FragmentActivity fragmentActivity) {
        this.l = fragmentActivity;
    }

    public void a(Tweet tweet) {
        b(tweet);
        this.b.setOnClickListener(this);
    }

    protected void b(Tweet tweet) {
        this.a = tweet;
        this.b.setTweet(this.a);
        a();
    }

    public void onClick(View view) {
        if (this.a != null) {
            if (this.d.d()) {
                int id = view.getId();
                if (id == 2131951909) {
                    this.i.a(this.e, this.a, this.d);
                } else if (id == 2131951911) {
                    this.i.b(this.e, this.a, this.d);
                } else if (id == 2131951910) {
                    this.i.a(this.e, this.a);
                } else if (id == 2131951913) {
                    this.i.b(this.e, this.a);
                }
                this.b.a();
                a();
                return;
            }
            switch (view.getId()) {
                case 2131951909:
                    this.j.a(this.l, this.a.d());
                case 2131951910:
                    this.j.b(this.l, this.a.d());
                case 2131951911:
                    this.j.c(this.l, this.a.d());
                    this.f.a();
                case 2131951912:
                    this.j.d(this.l, this.a.d());
                case 2131951913:
                    this.j.a(this.l, this.a);
                    a("share");
                default:
            }
        }
    }

    protected void a() {
        int i = bcu.white;
        Resources resources = this.e.getResources();
        int i2 = this.a.o;
        int i3 = this.a.l;
        this.g.setText(i2 > 0 ? t.a(resources, (long) i2) : TtmlNode.ANONYMOUS_REGION_ID);
        TextView textView = this.g;
        if (this.a.a) {
            i2 = bcu.medium_red;
        } else {
            i2 = bcu.white;
        }
        textView.setTextColor(resources.getColor(i2));
        this.h.setText(i3 > 0 ? t.a(resources, (long) i3) : TtmlNode.ANONYMOUS_REGION_ID);
        TextView textView2 = this.h;
        if (this.a.d) {
            i = bcu.medium_green;
        }
        textView2.setTextColor(resources.getColor(i));
    }

    protected void a(String str) {
        this.c.a(str);
    }
}
