package com.twitter.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.widget.Toast;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.platform.notifications.PushRegistration;
import defpackage.bdc;

/* compiled from: Twttr */
public class GCMChangeReceiver extends BroadcastReceiver {
    public static final IntentFilter a;

    static {
        a = new IntentFilter();
        a.addAction(PushRegistration.b);
        a.addAction(PushRegistration.c);
        a.addAction(PushRegistration.d);
        a.addAction(PushRegistration.a);
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (a.hasAction(action)) {
            boolean booleanExtra = intent.getBooleanExtra("show_toast_message", false);
            int intExtra = intent.getIntExtra("push_return_code", 3);
            int intExtra2 = intent.getIntExtra("requested_push_flags", 0);
            int intExtra3 = intent.getIntExtra("applied_push_flags", 0);
            String stringExtra = intent.getStringExtra("account");
            if (PushRegistration.b.equals(action)) {
                a(context, intExtra, booleanExtra, stringExtra, intExtra2, intExtra3);
            } else if (PushRegistration.c.equals(action)) {
                a(context, stringExtra, intExtra2, intExtra3);
            } else if (PushRegistration.a.equals(action)) {
                b(context, intExtra, booleanExtra, stringExtra, intExtra2, intExtra3);
            } else if (PushRegistration.d.equals(action)) {
                a(context, intExtra, booleanExtra, stringExtra);
            }
        }
    }

    protected void a(Context context, int i, boolean z, String str, int i2, int i3) {
        a(context, i, z);
    }

    protected void a(Context context, String str, int i, int i2) {
    }

    protected void b(Context context, int i, boolean z, String str, int i2, int i3) {
        a(context, i, z);
    }

    protected void a(Context context, int i, boolean z, String str) {
        a(context, i, z);
    }

    protected void a(Context context, int i, boolean z) {
        if (z) {
            int i2;
            switch (i) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    i2 = bdc.preference_notification_success;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    i2 = bdc.preference_notification_too_many_devices;
                    break;
                default:
                    i2 = bdc.preference_notification_error;
                    break;
            }
            Toast.makeText(context, i2, 0).show();
        }
    }
}
