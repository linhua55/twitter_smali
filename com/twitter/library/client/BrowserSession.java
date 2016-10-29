package com.twitter.library.client;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.network.forecaster.NetworkQuality;
import com.twitter.library.network.forecaster.b;
import com.twitter.library.util.at;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import com.twitter.util.ao;
import com.twitter.util.telephony.TelephonyUtil;
import com.twitter.util.z;
import defpackage.any;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
class BrowserSession extends at<ah> {
    public final String a;
    private final t b;
    private final Map<TimingEvent, Long> c;
    private final Context d;
    private final NetworkQuality e;
    private final boolean f;
    private final boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;

    /* compiled from: Twttr */
    public enum TimingEvent {
        RedirectsStart,
        DestinationLoadStart,
        DestinationLoadFinish,
        TabVisible,
        TabHidden
    }

    BrowserSession(String str, Context context) {
        this.a = str;
        this.d = context;
        this.c = new EnumMap(TimingEvent.class);
        this.b = PlatformContext.f().a();
        aj a = aj.a(this.d);
        a((z) a);
        this.g = a.b();
        this.e = b.a().b();
        this.f = TelephonyUtil.i().c();
    }

    public void a(int i) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                g();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (!this.g && !this.h && ao.d(Uri.parse(this.a))) {
                    this.h = true;
                } else if (i == 2 && !this.c.containsKey(TimingEvent.DestinationLoadFinish)) {
                    a(TimingEvent.DestinationLoadFinish);
                }
            case Util.TYPE_OTHER /*3*/:
                this.i = true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                if (!this.j) {
                    a(TimingEvent.TabVisible);
                    this.j = true;
                }
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                if (!this.k) {
                    f();
                    this.k = true;
                }
            default:
        }
    }

    private void f() {
        String str;
        Map hashMap = new HashMap();
        a(TimingEvent.TabHidden);
        hashMap.put("dwell_time", Long.toString(e()));
        hashMap.put("year_class", Integer.toString(any.a().b()));
        hashMap.put("os_version", Integer.toString(VERSION.SDK_INT));
        hashMap.put("manufacturer", Build.MANUFACTURER.toLowerCase());
        if (this.i) {
            str = "chrome::::failure";
            hashMap.put("url", this.a);
        } else {
            str = "chrome::::web_page";
            hashMap.put("original_url", this.a);
            hashMap.put("is_warmed", Boolean.toString(this.g));
            hashMap.put("start_is_wifi", Boolean.toString(this.f));
            hashMap.put("start_network_quality", this.e.name());
            hashMap.put("end_is_wifi", Boolean.toString(TelephonyUtil.i().c()));
            hashMap.put("end_network_quality", b.a().b().name());
            hashMap.put("preload_duration", Long.toString(a()));
            hashMap.put("redirect_duration", Long.toString(b()));
            hashMap.put("destination_duration", Long.toString(c()));
            hashMap.put("total_load_duration", Long.toString(d()));
        }
        a((Object) new ah(str, hashMap));
        i();
    }

    private void a(TimingEvent timingEvent) {
        this.c.put(timingEvent, Long.valueOf(this.b.b()));
    }

    private void g() {
        if (!this.c.containsKey(TimingEvent.DestinationLoadFinish)) {
            if (!this.c.containsKey(TimingEvent.DestinationLoadStart)) {
                a(TimingEvent.DestinationLoadStart);
            } else if (this.c.containsKey(TimingEvent.RedirectsStart)) {
                a(TimingEvent.DestinationLoadStart);
            } else {
                this.c.put(TimingEvent.RedirectsStart, this.c.get(TimingEvent.DestinationLoadStart));
                a(TimingEvent.DestinationLoadStart);
            }
        }
    }

    protected long a() {
        if (this.c.containsKey(TimingEvent.RedirectsStart)) {
            return ((Long) this.c.get(TimingEvent.RedirectsStart)).longValue() - ((Long) this.c.get(TimingEvent.TabVisible)).longValue();
        }
        if (this.c.containsKey(TimingEvent.DestinationLoadStart)) {
            return ((Long) this.c.get(TimingEvent.DestinationLoadStart)).longValue() - ((Long) this.c.get(TimingEvent.TabVisible)).longValue();
        }
        return 0;
    }

    protected long b() {
        return this.c.containsKey(TimingEvent.RedirectsStart) ? ((Long) this.c.get(TimingEvent.DestinationLoadStart)).longValue() - ((Long) this.c.get(TimingEvent.RedirectsStart)).longValue() : 0;
    }

    protected long c() {
        return this.c.containsKey(TimingEvent.DestinationLoadFinish) ? ((Long) this.c.get(TimingEvent.DestinationLoadFinish)).longValue() - ((Long) this.c.get(TimingEvent.DestinationLoadStart)).longValue() : 0;
    }

    protected long d() {
        return this.c.containsKey(TimingEvent.DestinationLoadFinish) ? ((Long) this.c.get(TimingEvent.DestinationLoadFinish)).longValue() - ((Long) this.c.get(TimingEvent.TabVisible)).longValue() : 0;
    }

    protected long e() {
        return this.c.containsKey(TimingEvent.TabHidden) ? ((Long) this.c.get(TimingEvent.TabHidden)).longValue() - ((Long) this.c.get(TimingEvent.TabVisible)).longValue() : 0;
    }
}
