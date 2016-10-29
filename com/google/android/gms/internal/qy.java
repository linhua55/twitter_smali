package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class qy extends BroadcastReceiver {
    final /* synthetic */ qw a;

    private qy(qw qwVar) {
        this.a = qwVar;
    }

    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            qw.a(this.a, true);
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            qw.a(this.a, false);
        }
    }
}
