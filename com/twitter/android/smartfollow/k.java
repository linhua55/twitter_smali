package com.twitter.android.smartfollow;

import com.twitter.android.twitterflows.d;
import com.twitter.android.twitterflows.j;

/* compiled from: Twttr */
public class k extends j {
    public int a() {
        return 2130969410;
    }

    public String b() {
        return "presenter_waiting_for_suggestions";
    }

    public d a(SmartFollowFlowData smartFollowFlowData) {
        return c(smartFollowFlowData);
    }

    public d b(SmartFollowFlowData smartFollowFlowData) {
        return c(smartFollowFlowData);
    }

    protected static d c(SmartFollowFlowData smartFollowFlowData) {
        if (smartFollowFlowData.c().size() == 0) {
            return new i();
        }
        return new j();
    }
}
