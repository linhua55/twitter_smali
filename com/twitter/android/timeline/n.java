package com.twitter.android.timeline;

import android.support.annotation.VisibleForTesting;
import com.twitter.android.widget.NewItemBannerView;
import com.twitter.config.c;
import com.twitter.config.d;

/* compiled from: Twttr */
class n extends c {
    static final String b;

    static {
        b = n.class.getName() + "_saved_state_id";
    }

    n(NewItemBannerView newItemBannerView, bk bkVar, NewTweetsBannerState newTweetsBannerState) {
        super(newItemBannerView, bkVar, newTweetsBannerState);
    }

    protected boolean h() {
        return super.h() && b();
    }

    protected boolean e() {
        return super.e() && !b();
    }

    protected boolean q() {
        return d.a("new_home_new_tweets_banner_android");
    }

    @VisibleForTesting
    boolean b() {
        return !c.a("new_home_new_tweets_banner_display_4388", new String[]{"updated_trigger_logic"});
    }

    @VisibleForTesting
    boolean n() {
        return c.c("new_tweets_notification_server_control_android_4539");
    }

    public void g() {
        super.g();
        if (h()) {
            p();
        }
    }

    public void l() {
        super.l();
        if (s()) {
            r();
        }
    }

    public void m() {
        super.m();
        t();
        s();
    }

    public String aF_() {
        return b;
    }
}
