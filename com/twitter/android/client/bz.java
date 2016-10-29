package com.twitter.android.client;

import android.content.Context;
import android.content.Intent;
import android.preference.PreferenceManager;
import com.twitter.android.BouncerWebViewActivity;
import com.twitter.android.DialogActivity;
import com.twitter.android.PhoneMTFlowActivity;
import com.twitter.android.dialog.PhoneVerificationDialogFragmentActivity;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.m;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;

/* compiled from: Twttr */
public class bz {
    private static bz a;
    private final Context b;
    private final bg c;

    public static synchronized bz a(Context context) {
        bz bzVar;
        synchronized (bz.class) {
            if (a == null) {
                a = new bz(context.getApplicationContext());
            }
            bzVar = a;
        }
        return bzVar;
    }

    private bz(Context context) {
        this.b = context;
        this.c = bg.a();
    }

    public void a(int[] iArr) {
        a(iArr, false);
    }

    public void a(int[] iArr, boolean z) {
        TwitterUser f = this.c.c().f();
        if (a(f)) {
            a(z);
        } else if (f != null && a(f, iArr)) {
            c(f);
        }
    }

    public static boolean a(TwitterUser twitterUser) {
        return twitterUser != null && b(twitterUser) && twitterUser.I;
    }

    public void a() {
        PreferenceManager.getDefaultSharedPreferences(this.b).edit().putLong("age_gating_failure_time", m.b()).apply();
    }

    public void a(Session session, aa aaVar) {
        bg bgVar = this.c;
        if (bgVar.d(session) && !bgVar.b(session) && aaVar != null) {
            BouncerWebViewActivity.a(this.b, an.b(aaVar), an.c(aaVar));
        }
    }

    boolean b() {
        return Math.abs(m.b() - PreferenceManager.getDefaultSharedPreferences(this.b).getLong("age_gating_failure_time", 0)) < 86400000;
    }

    private static boolean b(TwitterUser twitterUser) {
        return twitterUser != null && twitterUser.l;
    }

    private static boolean b(int[] iArr) {
        return iArr != null && CollectionUtils.a(iArr, 64);
    }

    private static boolean a(TwitterUser twitterUser, int[] iArr) {
        return b(twitterUser) || b(iArr);
    }

    public void a(boolean z) {
        Intent flags = new Intent(this.b, PhoneVerificationDialogFragmentActivity.class).setFlags(268435456);
        if (z) {
            flags.putExtra(PhoneVerificationDialogFragmentActivity.b, true);
        }
        this.b.startActivity(flags);
    }

    private void c(TwitterUser twitterUser) {
        this.b.startActivity(new Intent(this.b, DialogActivity.class).setAction("blocked_suspended").putExtra(UsernameError.USERNAME_ERROR_FIELD, twitterUser.k).setFlags(268435456));
    }

    public static Intent a(Context context, boolean z) {
        return new Intent(context, PhoneMTFlowActivity.class).putExtra(PhoneMTFlowActivity.a, z);
    }
}
