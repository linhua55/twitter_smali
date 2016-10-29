package com.twitter.app.users;

import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import defpackage.cni;

/* compiled from: Twttr */
public class VerifiedFollowersUsersFragment extends UsersFragment {
    private String a;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = L().n() == 29 ? "verified" : "all";
    }

    void b(String str) {
        bbu.a(new TwitterScribeLog(aT().g()).b("followers:vit_verified_followers", this.a, BuildConfig.VERSION_NAME, str));
    }

    void B() {
    }

    void a(long j, int i, cni cni, String str, String str2, String str3, int i2) {
        bbu.a(b(j, i, cni, str, "followers:vit_verified_followers:" + this.a, str2, i2));
    }

    void b(long j, int i, cni cni, String str, String str2, int i2) {
        long j2 = j;
        int i3 = i;
        cni cni2 = cni;
        String str3 = str;
        bbu.a(a(j2, i3, cni2, str3, ScribeLog.a("followers:vit_verified_followers", this.a, "user:profile_click"), i2));
    }
}
