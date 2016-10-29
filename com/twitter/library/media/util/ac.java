package com.twitter.library.media.util;

import android.support.annotation.VisibleForTesting;
import com.twitter.config.d;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;
import defpackage.asp;
import defpackage.bvj;
import defpackage.cpb;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class ac implements asp {
    private static ac b;
    @VisibleForTesting
    Set<String> a;

    public static ac a() {
        if (b == null) {
            b = new ac();
        }
        return b;
    }

    private ac() {
        bvj.a((asp) this);
    }

    public void a(long j) {
        b();
    }

    public boolean a(String str) {
        if (aj.a((CharSequence) str)) {
            return false;
        }
        if (this.a == null) {
            b();
        }
        String toLowerCase = str.toLowerCase();
        for (String contains : this.a) {
            if (toLowerCase.contains(contains)) {
                return true;
            }
        }
        return false;
    }

    private void b() {
        this.a = new HashSet();
        for (String toLowerCase : d.c("ad_formats_snapreel_sources")) {
            this.a.add(toLowerCase.toLowerCase());
        }
    }

    public static boolean a(Tweet tweet) {
        return tweet != null && d.a("ad_formats_snapreel_enabled") && tweet.O() && a().a(tweet.C);
    }

    public static boolean a(MediaEntity mediaEntity, String str) {
        return mediaEntity != null && d.a("ad_formats_snapreel_enabled") && cpb.a(mediaEntity) && a().a(str);
    }
}
