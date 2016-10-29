package com.twitter.android.platform;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: Twttr */
public class AccountsChangedReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        new b(context).execute(new Void[0]);
    }
}
