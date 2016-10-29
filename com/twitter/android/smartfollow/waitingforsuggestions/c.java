package com.twitter.android.smartfollow.waitingforsuggestions;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import com.google.android.exoplayer.util.Util;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class c extends BroadcastReceiver {
    private final WeakReference<a> a;

    c(a aVar) {
        this.a = new WeakReference(aVar);
    }

    public void onReceive(Context context, Intent intent) {
        a aVar = (a) this.a.get();
        if (aVar != null) {
            String action = intent.getAction();
            Object obj = -1;
            switch (action.hashCode()) {
                case 180360391:
                    if (action.equals("upload_success_broadcast")) {
                        obj = null;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case Util.TYPE_DASH /*0*/:
                    if (aVar.w()) {
                        LocalBroadcastManager.getInstance(aVar.g()).unregisterReceiver(this);
                    }
                default:
            }
        }
    }
}
