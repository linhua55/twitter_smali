package com.twitter.android.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.twitter.android.TabbedVitFollowersActivity;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.users.UsersActivity;
import com.twitter.app.users.q;
import com.twitter.config.d;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.TwitterUser;
import defpackage.bbu;
import java.text.DecimalFormat;

/* compiled from: Twttr */
public class u {
    public static Intent a(Context context, long j, TwitterUser twitterUser, Uri uri) {
        boolean z;
        boolean z2;
        int i = 0;
        long j2 = twitterUser != null ? twitterUser.c : -1;
        if (twitterUser == null || !twitterUser.n) {
            z = false;
        } else {
            z = true;
        }
        if (j2 == j) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean a = a(z, z2);
        Intent putExtra = new q().a(j2).a(1).d(twitterUser != null ? twitterUser.d : null).c(true).a(true).a(context, a ? TabbedVitFollowersActivity.class : UsersActivity.class).putExtra("followers_count", twitterUser != null ? twitterUser.P : 0);
        String str = "fast_followers_count";
        if (twitterUser != null) {
            i = twitterUser.u;
        }
        putExtra = putExtra.putExtra(str, i);
        if (a && uri != null) {
            putExtra.putExtra("extra_start_tab", uri.toString());
        }
        return putExtra;
    }

    private static boolean a(boolean z, boolean z2) {
        return ((z && d.a("vit_verified_followers_view_enabled")) || (!z && d.a("vit_verified_followers_for_non_verified_users_enabled"))) && z2;
    }

    public static void a(TwitterFragmentActivity twitterFragmentActivity, long j) {
        long g = bg.a().c().g();
        int i = (j == -1 || j != g) ? 0 : 1;
        StringBuilder stringBuilder = new StringBuilder(twitterFragmentActivity.getTitle());
        if (i != 0 && d.a("followers_count_for_title_enabled")) {
            i = d.a("followers_count_for_title_minimum", 10000);
            int intExtra = twitterFragmentActivity.getIntent().getIntExtra("followers_count", -1);
            if (intExtra >= i) {
                CharSequence a = a(intExtra);
                twitterFragmentActivity.b(a);
                stringBuilder.append(' ').append(a);
                bbu.a(new TwitterScribeLog(g).b("followers:::vit_verified_followers_subtitle:impression"));
            }
        }
        ToolBar X = twitterFragmentActivity.X();
        if (X != null) {
            X.setContentDescription(stringBuilder.toString());
        }
    }

    public static String a(int i) {
        return new DecimalFormat("#,###").format((long) i);
    }
}
