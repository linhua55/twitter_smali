package com.twitter.android.client;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.support.customtabs.CustomTabsIntent;
import android.support.design.widget.Snackbar;
import android.view.View;
import com.twitter.config.c;
import com.twitter.library.client.aj;
import com.twitter.library.network.forecaster.NetworkQuality;
import com.twitter.library.network.forecaster.b;
import com.twitter.model.core.Tweet;
import com.twitter.ui.widget.u;
import com.twitter.util.h;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class BrowserLoadingStatus {
    private Status a;
    private CustomTabsIntent b;
    private String c;
    private Tweet d;
    private WeakReference<Snackbar> e;

    public BrowserLoadingStatus() {
        this.a = Status.a;
    }

    public void a(CustomTabsIntent customTabsIntent, String str, Tweet tweet, Activity activity) {
        h.a();
        View findViewById = activity.findViewById(2131952025);
        if (findViewById != null) {
            aj.a((Context) activity).a(str);
            this.a = Status.b;
            this.c = str;
            this.d = tweet;
            this.b = customTabsIntent;
            long a = LinkFetchDelayTime.a.a();
            NetworkQuality b = b.a().b();
            if (b == NetworkQuality.c) {
                a = LinkFetchDelayTime.b.a();
            } else if (b == NetworkQuality.d) {
                a = LinkFetchDelayTime.c.a();
            }
            new Handler().postDelayed(new k(this, str, activity), a);
            a(findViewById, activity);
            return;
        }
        aj.a((Context) activity).a(activity, str, customTabsIntent, tweet);
    }

    public boolean a() {
        return this.a != Status.a;
    }

    public void a(View view, Activity activity) {
        if (a() && view != null) {
            c();
            Snackbar a = u.a(view.getContext(), view, this.a.a(view.getResources()), -2);
            a.setAction(view.getResources().getString(2131361898), new l(this, activity));
            a.setCallback(new m(this));
            a.show();
            this.e = new WeakReference(a);
        }
    }

    private void a(String str, Activity activity) {
        boolean a = c.a("link_fetch_3760", "design_b");
        if (this.a == Status.b && str.equals(this.c)) {
            this.a = Status.c;
            if (this.e != null) {
                Snackbar snackbar = (Snackbar) this.e.get();
                if (a && this.b != null && activity.hasWindowFocus()) {
                    aj.a((Context) activity).a(activity, this.c, this.b, this.d);
                    b();
                } else if (snackbar != null) {
                    snackbar.setText(this.a.a(snackbar.getView().getResources()));
                }
            }
        }
    }

    private void b() {
        this.a = Status.a;
        this.c = null;
        this.d = null;
        this.b = null;
        c();
    }

    private void c() {
        if (this.e != null) {
            Snackbar snackbar = (Snackbar) this.e.get();
            if (snackbar != null) {
                snackbar.dismiss();
                this.e = null;
            }
        }
    }
}
