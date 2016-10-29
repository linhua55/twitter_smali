package com.twitter.library.metrics;

import android.content.Context;
import android.location.Location;
import android.telephony.TelephonyManager;
import bbn;
import bbu;
import bvy;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.client.bg;
import com.twitter.library.network.forecaster.b;
import com.twitter.library.scribe.performance.PerformanceScribeLog;
import com.twitter.util.al;
import defpackage.bdd;
import defpackage.cbf;
import defpackage.cbh;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class j extends AsyncOperation<Void, Void> {
    final Context a;
    final long b;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    public j(Context context, long j) {
        super(j.class.getName());
        this.a = context;
        this.b = j;
    }

    protected Void a() throws InterruptedException {
        try {
            e();
        } catch (Throwable e) {
            bbn.a(e);
        }
        return null;
    }

    protected Void b() {
        return null;
    }

    private void e() {
        Location a = bvy.a(this.a).a();
        Object d = a != null ? Double.toString(a.getLatitude()) : null;
        Object d2 = a != null ? Double.toString(a.getLongitude()) : null;
        cbh a2 = cbf.a(this.a);
        String str = a2.a.c;
        String str2 = a2.a.d;
        String str3 = a2.a.b;
        String str4 = a2.a.h;
        int i = a2.a.g;
        String toLowerCase = a2.c.name().toLowerCase();
        String toLowerCase2 = a2.b.name().toLowerCase();
        b a3 = b.a();
        long ceil = (long) Math.ceil(a3.d().doubleValue());
        long ceil2 = (long) Math.ceil(a3.c().doubleValue());
        long longValue = a3.e().longValue();
        String h = a3.h();
        String f = f();
        PerformanceScribeLog performanceScribeLog = new PerformanceScribeLog("network:info", bg.a().c().g());
        performanceScribeLog.b(this.b);
        Map hashMap = new HashMap();
        hashMap.put("latitude", d);
        hashMap.put("longitude", d2);
        hashMap.put("upload_capacity_kbps", Long.toString(ceil));
        hashMap.put("download_capacity_kbps", Long.toString(ceil2));
        hashMap.put("rtt_msec", Long.toString(longValue));
        hashMap.put("cell_signal_dbm", Integer.toString(i));
        hashMap.put("cell_signal_level", h);
        hashMap.put("network_status", toLowerCase2);
        hashMap.put("network_quality", toLowerCase);
        hashMap.put("radio_type", f);
        hashMap.put("carrier_code", str);
        hashMap.put("carrier_name", str2);
        hashMap.put("network_country", str3);
        hashMap.put("sim_provider_code", str4);
        hashMap.put("client_timestamp_msec", Long.toString(al.b()));
        performanceScribeLog.a(hashMap);
        bbu.a(performanceScribeLog);
    }

    private String f() {
        TelephonyManager telephonyManager = (TelephonyManager) this.a.getSystemService("phone");
        switch (telephonyManager != null ? telephonyManager.getNetworkType() : 0) {
            case Util.TYPE_DASH /*0*/:
                return "unknown";
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return "gprs";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "edge";
            case Util.TYPE_OTHER /*3*/:
                return "umts";
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return "cdma";
            case EbmlReader.TYPE_FLOAT /*5*/:
                return "evdo_0";
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return "evdo_a";
            case C.ENCODING_DTS /*7*/:
                return "1xrtt";
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return "hsdpa";
            case com.facebook.shimmer.b.ShimmerFrameLayout_fixed_height /*9*/:
                return "hsupa";
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return "hspa";
            case com.facebook.shimmer.b.ShimmerFrameLayout_relative_width /*11*/:
                return "iden";
            case Atom.FULL_HEADER_SIZE /*12*/:
                return "evdo_b";
            case com.facebook.shimmer.b.ShimmerFrameLayout_shape /*13*/:
                return "lte";
            case com.facebook.shimmer.b.ShimmerFrameLayout_tilt /*14*/:
                return "ehrpd";
            case bdd.TwitterButton_strokeWidth /*15*/:
                return "hspap";
            case Atom.LONG_HEADER_SIZE /*16*/:
                return "gsm";
            case bdd.TwitterButton_bounded /*17*/:
                return "scdma";
            case bdd.TwitterButton_knockout /*18*/:
                return "iwlan";
            default:
                return "other";
        }
    }
}
