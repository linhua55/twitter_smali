package com.twitter.android.businessprofiles;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.twitter.android.profiles.as;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.businessprofiles.m;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.TwitterButton;
import defpackage.bbu;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
abstract class b implements OnClickListener {
    protected final ViewGroup a;
    protected final WeakReference<Activity> b;
    protected final m c;
    protected final TwitterUser d;
    protected final long e;
    protected final String f;
    protected final TwitterButton g;

    protected abstract TwitterUser a();

    protected abstract void b();

    b(ViewGroup viewGroup, Activity activity, m mVar, TwitterUser twitterUser, long j, String str) {
        this.a = viewGroup;
        this.b = new WeakReference(activity);
        this.c = mVar;
        this.d = twitterUser;
        this.e = j;
        this.f = str;
        this.g = (TwitterButton) this.a.findViewById(2131952030);
        this.g.setOnClickListener(this);
        this.a.setVisibility(8);
        this.g.setVisibility(8);
        b();
    }

    public boolean c() {
        if (((Activity) this.b.get()) == null) {
            return false;
        }
        a("business_profile:" + this.f + "::impression");
        this.a.setVisibility(0);
        this.g.setVisibility(0);
        return true;
    }

    public void onClick(View view) {
        Context context = (Context) this.b.get();
        if (context != null) {
            a("business_profile:" + this.f + "::click");
            as.a(context, a());
        }
    }

    private void a(String str) {
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.e);
        String[] strArr = new String[1];
        strArr[0] = as.a(as.a(this.d.bf_() == this.e), str);
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) twitterScribeLog.b(strArr)).j(String.valueOf(this.c.b))).b(true));
    }
}
