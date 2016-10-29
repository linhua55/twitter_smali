package com.twitter.android.client.notifications;

import android.content.Intent;
import com.twitter.android.ProfileActivity;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.i;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
class d extends ac {
    final /* synthetic */ DeviceTweetNotif a;

    d(DeviceTweetNotif deviceTweetNotif, ad adVar, String str, long j) {
        this.a = deviceTweetNotif;
        super(adVar, str, j);
    }

    public boolean a() {
        return this.c.v.size() > 1;
    }

    public String d() {
        return this.f.getString(2131363187, new Object[]{Integer.valueOf(b().size())});
    }

    public String e() {
        return "@" + this.d;
    }

    public int f() {
        return 2130839920;
    }

    public Intent g() {
        long j = ((i) this.c.v.get(0)).h;
        Map hashMap = new HashMap();
        int i = 1;
        long j2 = j;
        for (int i2 = 1; i2 < this.c.v.size(); i2++) {
            int intValue;
            Long valueOf = Long.valueOf(((i) this.c.v.get(i2)).h);
            Integer num = (Integer) hashMap.get(valueOf);
            if (num != null) {
                intValue = num.intValue() + 1;
            } else {
                intValue = 1;
            }
            num = Integer.valueOf(intValue);
            hashMap.put(valueOf, num);
            if (num.intValue() > i) {
                j2 = valueOf.longValue();
                i = num.intValue();
            }
        }
        return new Intent(this.f, ProfileActivity.class).putExtra("user_id", j2).setAction("com.twitter.android.home.tw." + this.d);
    }

    public String h() {
        return "tweet";
    }
}
