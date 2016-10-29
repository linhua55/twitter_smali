package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.util.am;
import com.twitter.android.util.aq;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class dy {
    private final String a;
    private final am b;
    private final Context c;

    public static dy a(String str, Context context) {
        return new dy(str, context);
    }

    private dy(String str, Context context) {
        this.a = str;
        this.c = context;
        this.b = aq.a(this.c);
    }

    public void a() {
        a(this.b.h());
    }

    public void a(String str) {
        a(str, true);
    }

    public void a(String str, boolean z) {
        if (!this.b.e()) {
            throw new IllegalStateException("Cannot start Device Registration Service without background SMS read permission");
        } else if (aj.b(str)) {
            this.c.startService(new Intent(this.c, DeviceRegistrationService.class).putExtra("phone_number", str).putExtra("disable_sms_notifications", z).putExtra("scribe_page_term", this.a));
        }
    }
}
