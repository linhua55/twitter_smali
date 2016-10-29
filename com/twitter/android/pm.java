package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.google.android.gcm.b;
import com.twitter.library.platform.c;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.platform.notifications.w;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
class pm implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ SecuritySettingsActivity b;

    pm(SecuritySettingsActivity securitySettingsActivity, String str) {
        this.b = securitySettingsActivity;
        this.a = str;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        bbu.a(new TwitterScribeLog(this.b.b).b(this.a));
        w a = w.a(this.b.getApplicationContext(), this.b.a);
        if (!c.a(this.b.getApplicationContext())) {
            this.b.f();
        } else if (!b.g(this.b)) {
            this.b.f = true;
            PushRegistration.d(this.b);
        } else if (a.a()) {
            this.b.f();
        } else {
            a.a(true);
            this.b.f();
        }
    }
}
