package com.twitter.app.users;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.mx;

/* compiled from: Twttr */
class a extends n {
    final /* synthetic */ AddressbookContactsActivity a;

    a(AddressbookContactsActivity addressbookContactsActivity) {
        this.a = addressbookContactsActivity;
        super(addressbookContactsActivity);
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Object obj = -1;
        switch (action.hashCode()) {
            case 1467726543:
                if (action.equals("live_sync_opt_in_failure_broadcast")) {
                    obj = null;
                    break;
                }
                break;
        }
        switch (obj) {
            case mx.View_android_theme /*0*/:
                this.a.u();
            default:
                super.onReceive(context, intent);
        }
    }
}
