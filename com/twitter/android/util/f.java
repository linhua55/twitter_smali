package com.twitter.android.util;

import com.twitter.library.scribe.TwitterScribeLog;
import java.util.HashMap;

/* compiled from: Twttr */
public class f {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    boolean g;

    public f(HashMap<String, String> hashMap) {
        this.g = false;
        for (String containsKey : AppEventTrack.a.keySet()) {
            if (hashMap.containsKey(containsKey)) {
                this.g = true;
            }
        }
        this.c = (String) hashMap.get(this.g ? "twsrc" : "utm_source");
        this.d = (String) hashMap.get(this.g ? "twgr" : "utm_medium");
        this.a = (String) hashMap.get(this.g ? "twcamp" : "utm_campaign");
        this.e = (String) hashMap.get(this.g ? "twterm" : "utm_term");
        this.b = (String) hashMap.get(this.g ? "twcon" : "utm_content");
        this.f = (String) hashMap.get(this.g ? null : "gclid");
    }

    public f(String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
        this.a = str;
        this.b = str2;
        this.e = str3;
        this.c = str4;
        this.d = str5;
        this.g = z;
        if (z) {
            str6 = null;
        }
        this.f = str6;
    }

    public HashMap<String, String> a() {
        HashMap hashMap = new HashMap();
        a(hashMap, this.a, "twcamp");
        a(hashMap, this.b, "twcon");
        a(hashMap, this.e, "twterm");
        a(hashMap, this.c, "twsrc");
        a(hashMap, this.d, "twgr");
        if (!this.g) {
            hashMap.put("gclid", this.f);
        }
        return hashMap;
    }

    public void a(TwitterScribeLog twitterScribeLog, int i, String str) {
        twitterScribeLog.a(i, this.c, this.d, this.a, this.e, this.b, this.f, str);
    }

    private void a(HashMap<String, String> hashMap, String str, String str2) {
        if (str != null) {
            if (!this.g) {
                str2 = (String) AppEventTrack.a.get(str2);
            }
            hashMap.put(str2, str);
        }
    }
}
