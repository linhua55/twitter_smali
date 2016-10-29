package tv.periscope.android.ui.broadcast;

import android.app.Activity;
import android.os.Message;
import android.support.annotation.Nullable;
import defpackage.dcs;

/* compiled from: Twttr */
class d extends dcs<Activity> {
    c a;

    public d(Activity activity, @Nullable c cVar) {
        super(activity);
        this.a = cVar;
    }

    public void a(c cVar) {
        this.a = cVar;
    }

    protected void a(Message message, Activity activity) {
        this.a.a();
        sendMessageDelayed(Message.obtain(this, 123), a.a);
    }
}
