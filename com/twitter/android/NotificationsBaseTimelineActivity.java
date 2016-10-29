package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.twitter.android.client.z;
import com.twitter.app.common.base.t;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.client.navigation.w;

/* compiled from: Twttr */
public abstract class NotificationsBaseTimelineActivity extends ListFragmentActivity {
    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.d(2130969137);
        return a;
    }

    protected void onStart() {
        super.onStart();
        z.a((Context) this).c(ab().e());
    }

    public int b(w wVar) {
        super.b(wVar);
        return 2;
    }

    protected CharSequence a(Intent intent) {
        return getString(2131363171);
    }

    protected ic a(Intent intent, t tVar) {
        return null;
    }

    public static boolean a(Context context, bg bgVar) {
        String e = bgVar.c().e();
        if (e != null) {
            return new l(context, e).getBoolean("notifications_follow_only", false);
        }
        return false;
    }
}
