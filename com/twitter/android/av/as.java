package com.twitter.android.av;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.twitter.android.io;
import com.twitter.android.widget.EngagementActionBar;
import com.twitter.config.d;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class as implements ai {
    private EngagementActionBar a;
    private af b;
    private AVPlayer c;

    public EngagementActionBar a(Context context, ViewGroup viewGroup) {
        this.a = (EngagementActionBar) LayoutInflater.from(context).inflate(2130968977, viewGroup, false);
        return this.a;
    }

    public void a(Context context, AVPlayer aVPlayer) {
        this.c = aVPlayer;
        Tweet b = this.c != null ? this.c.e().c().b() : null;
        if (b != null) {
            this.b = new af(b, this.a, this);
            if (io.a() && (context instanceof FragmentActivity)) {
                this.b.a((FragmentActivity) context);
            }
            a();
            return;
        }
        this.b = null;
    }

    public boolean a(Context context) {
        return d.a("amplify_fullscreen_engagement_enabled") && context.getResources().getConfiguration().orientation != 2;
    }

    public void a() {
        Tweet b = this.c.e().c().b();
        if (this.b != null && b != null) {
            this.b.a(b);
        }
    }

    public void a(String str) {
        if (this.c != null) {
            this.c.a(str);
        }
    }
}
