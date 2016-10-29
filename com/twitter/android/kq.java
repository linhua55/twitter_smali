package com.twitter.android;

import android.support.v4.app.FragmentManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.widget.NotificationSettingsDialogFragment;

/* compiled from: Twttr */
public class kq implements OnClickListener {
    private final FragmentManager a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private NotificationSettingsDialogFragment f;

    public kq(FragmentManager fragmentManager, String str, String str2, String str3, String str4) {
        this.a = fragmentManager;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public void onClick(View view) {
        if (this.f == null) {
            this.f = NotificationSettingsDialogFragment.a(this.b, this.c, this.d, this.e);
        }
        this.f.show(this.a, "notification_setting");
    }
}
