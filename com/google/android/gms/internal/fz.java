package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import java.util.Map;

public class fz implements fj {
    private final ga a;

    public fz(ga gaVar) {
        this.a = gaVar;
    }

    public static void a(sz szVar, ga gaVar) {
        szVar.l().a("/reward", new fz(gaVar));
    }

    private void a(Map<String, String> map) {
        RewardItemParcel rewardItemParcel;
        try {
            int parseInt = Integer.parseInt((String) map.get("amount"));
            String str = (String) map.get("type");
            if (!TextUtils.isEmpty(str)) {
                rewardItemParcel = new RewardItemParcel(str, parseInt);
                this.a.b(rewardItemParcel);
            }
        } catch (Throwable e) {
            qd.d("Unable to parse reward amount.", e);
        }
        rewardItemParcel = null;
        this.a.b(rewardItemParcel);
    }

    private void b(Map<String, String> map) {
        this.a.E();
    }

    public void a(sz szVar, Map<String, String> map) {
        String str = (String) map.get("action");
        if ("grant".equals(str)) {
            a(map);
        } else if ("video_start".equals(str)) {
            b(map);
        }
    }
}
