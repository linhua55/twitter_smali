package com.twitter.library.metrics;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.support.annotation.VisibleForTesting;
import bbu;
import com.twitter.app.common.util.h;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.library.network.DataUsageEvent;
import com.twitter.library.scribe.performance.PerformanceScribeLog;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import com.twitter.util.math.b;
import com.twitter.util.s;
import com.twitter.util.z;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class DataUsageObserver implements h, z<DataUsageEvent> {
    private final c a;
    private final t b;
    private final SharedPreferences c;
    private final boolean d;
    private volatile boolean e;
    private volatile long f;
    private long g;
    private volatile long h;

    @VisibleForTesting
    /* compiled from: Twttr */
    public enum DataUsageBucket {
        WIFI_RX("wifi_rx"),
        WIFI_TX("wifi_tx"),
        MOBILE_RX("mobile_rx"),
        MOBILE_TX("mobile_tx"),
        WIFI_VIDEO_RX("wifi_video_rx"),
        MOBILE_VIDEO_RX("mobile_video_rx"),
        WIFI_IMAGE_RX("wifi_image_rx"),
        MOBILE_IMAGE_RX("mobile_image_rx"),
        WIFI_PREFETCH_RX("wifi_prefetch_rx"),
        MOBILE_PREFETCH_RX("mobile_prefetch_rx"),
        WIFI_API_RX("wifi_api_rx"),
        MOBILE_API_RX("mobile_api_rx"),
        WIFI_API_TX("wifi_api_tx"),
        MOBILE_API_TX("mobile_api_tx"),
        WIFI_API_ACTIVITY_RX("wifi_api_activity_rx"),
        MOBILE_API_ACTIVITY_RX("mobile_api_activity_rx"),
        WIFI_API_TIMELINE_RX("wifi_api_timeline_rx"),
        MOBILE_API_TIMELINE_RX("mobile_api_timeline_rx"),
        WIFI_API_HELP_RX("wifi_api_help_rx"),
        MOBILE_API_HELP_RX("mobile_api_help_rx"),
        WIFI_API_USERS_RX("wifi_api_users_rx"),
        MOBILE_API_USERS_RX("mobile_api_users_rx"),
        WIFI_API_FRIENDS_RX("wifi_api_friends_rx"),
        MOBILE_API_FRIENDS_RX("mobile_api_friends_rx"),
        WIFI_API_PROMPTS_RX("wifi_api_prompts_rx"),
        MOBILE_API_PROMPTS_RX("mobile_api_prompts_rx"),
        WIFI_API_STATUSES_RX("wifi_api_statuses_rx"),
        MOBILE_API_STATUSES_RX("mobile_api_statuses_rx"),
        WIFI_API_DM_RX("wifi_api_dm_rx"),
        MOBILE_API_DM_RX("mobile_api_dm_rx"),
        WIFI_API_CONVERSATION_RX("wifi_api_conversation_rx"),
        MOBILE_API_CONVERSATION_RX("mobile_api_conversation_rx"),
        WIFI_API_ADS_RX("wifi_api_ads_rx"),
        MOBILE_API_ADS_RX("mobile_api_ads_rx"),
        WIFI_API_OTHER_RX("wifi_api_other_rx"),
        MOBILE_API_OTHER_RX("mobile_api_other_rx"),
        WIFI_IMAGE_FOUND_MEDIA_RX("wifi_image_found_media_rx"),
        MOBILE_IMAGE_FOUND_MEDIA_RX("mobile_image_found_media_rx");
        
        final String mMetricName;

        private DataUsageBucket(String str) {
            this.mMetricName = "du_" + str;
        }
    }

    public DataUsageObserver(Context context, s sVar) {
        this.c = context.getSharedPreferences("data_usage_observer", 0);
        this.b = PlatformContext.f().a();
        this.d = d.a("disable_new_date_usage_scribe");
        this.a = new c(this.c);
        this.f = this.c.getLong("last_report_ms", -1);
        if (this.f <= 0) {
            this.f = this.b.a();
            b();
        }
        this.h = this.c.getLong("time_in_foreground_ms", 0);
        this.e = true;
        a();
        long a = b.a(86400000 - (this.b.a() - this.f), 0, 86400001);
        if (!this.d) {
            sVar.a(new a(this, sVar), a + 1);
        }
    }

    public void b(Activity activity) {
        this.g = this.b.b();
        this.e = false;
        a();
    }

    public void a(Activity activity) {
        this.e = true;
        if (this.g > 0) {
            this.h += this.b.b() - this.g;
            this.g = 0;
        }
        a();
        b();
    }

    public void a(DataUsageEvent dataUsageEvent) {
        if (!this.d) {
            this.a.a(dataUsageEvent);
            a();
            if (this.e) {
                b();
            }
        }
    }

    void a() {
        if (!this.d) {
            long a = this.b.a();
            long j = a - this.f;
            if (j > 86400000) {
                Map map;
                long j2 = this.h;
                synchronized (this.a) {
                    if (a - this.f > 86400000) {
                        Map a2 = this.a.a();
                        this.f = a;
                        this.h = 0;
                        map = a2;
                    } else {
                        map = null;
                    }
                }
                if (map != null) {
                    b();
                    Map hashMap = new HashMap();
                    for (DataUsageBucket dataUsageBucket : DataUsageBucket.values()) {
                        Long l = (Long) map.get(dataUsageBucket);
                        hashMap.put(dataUsageBucket.mMetricName, l != null ? Long.toString(l.longValue()) : "0");
                    }
                    hashMap.put("time_in_foreground_ms", Long.toString(j2));
                    hashMap.put("client_timestamp_ms", Long.toString(a));
                    bbu.a(new PerformanceScribeLog("api::::data_usage", bg.a().c().g()).d(j).a(hashMap));
                }
            } else if (j < 0) {
                this.a.a();
                this.f = a;
            }
        }
    }

    @TargetApi(9)
    @SuppressLint({"CommitPrefEdits"})
    private void b() {
        if (!this.d) {
            Editor edit = this.c.edit();
            edit.putLong("last_report_ms", this.f);
            edit.putLong("time_in_foreground_ms", this.h);
            Map b = this.a.b();
            for (DataUsageBucket dataUsageBucket : DataUsageBucket.values()) {
                Long l = (Long) b.get(dataUsageBucket);
                edit.putLong(dataUsageBucket.mMetricName, l != null ? l.longValue() : 0);
            }
            if (VERSION.SDK_INT >= 9) {
                edit.apply();
            } else {
                edit.commit();
            }
        }
    }
}
