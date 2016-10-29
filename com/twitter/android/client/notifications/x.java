package com.twitter.android.client.notifications;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.android.client.NotificationService;
import com.twitter.library.provider.cy;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class x {
    private final Context a;
    private final Intent b;

    public x(Context context, StatusBarNotif statusBarNotif, String str) {
        this.a = context;
        this.b = new Intent(context, NotificationService.class).setAction(str).setData(Uri.withAppendedPath(cy.a, String.valueOf(statusBarNotif.a.r))).putExtra("sb_account_name", statusBarNotif.c).putExtra("sb_notification", statusBarNotif);
    }

    public x a(TwitterScribeLog twitterScribeLog, TwitterScribeLog twitterScribeLog2) {
        this.b.putExtra("notif_scribe_log", twitterScribeLog);
        this.b.putExtra("notif_scribe_log_from_background", twitterScribeLog2);
        return this;
    }

    public x a(boolean z) {
        this.b.putExtra("notif_scribe_action_tap", z);
        return this;
    }

    public x a(int i, String str) {
        if (i != 0 && aj.b(str)) {
            this.b.putExtra("undo_allowed", true);
            this.b.putExtra("undo_icon", i);
            this.b.putExtra("undo_text", str);
        }
        return this;
    }

    public x a(PendingIntent pendingIntent) {
        this.b.putExtra("action_intent", pendingIntent);
        return this;
    }

    public x a(Bundle bundle) {
        this.b.putExtras(bundle);
        return this;
    }

    public Intent a() {
        return new Intent(this.b);
    }

    public PendingIntent b() {
        return PendingIntent.getService(this.a, 0, a(), 268435456);
    }
}
