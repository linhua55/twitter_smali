package com.twitter.android.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.twitter.android.client.c;

/* compiled from: Twttr */
class cx implements OnClickListener {
    final /* synthetic */ int a;
    final /* synthetic */ boolean b;
    final /* synthetic */ NotificationSettingsDialogFragment c;

    cx(NotificationSettingsDialogFragment notificationSettingsDialogFragment, int i, boolean z) {
        this.c = notificationSettingsDialogFragment;
        this.a = i;
        this.b = z;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == 0) {
            if (this.a != -1) {
                NotificationSettingsDialogFragment.a(this.c, this.a);
                c.a(this.c.f).a(this.c.c.d(), this.c.d);
                this.c.b(this.b ? "unsubscribe" : "subscribe");
            }
        } else if (1 == i) {
            this.c.b("cancel");
        }
    }
}
