package defpackage;

import android.content.Context;
import android.preference.PreferenceManager;
import bdf;
import com.twitter.android.platform.TwitterAccessCwcNotificationReceiver;
import com.twitter.library.api.al;

/* compiled from: Twttr */
/* renamed from: ry */
public class ry extends bdf {
    private final Context a;

    public ry(Context context) {
        this.a = context;
    }

    public void a(al alVar, al alVar2) {
        if (!PreferenceManager.getDefaultSharedPreferences(this.a).getBoolean("twitter_access_cwc_notifications_schedule_started", false) && TwitterAccessCwcNotificationReceiver.a(this.a)) {
            TwitterAccessCwcNotificationReceiver.b(this.a);
        }
    }
}
