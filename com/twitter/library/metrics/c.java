package com.twitter.library.metrics;

import android.content.SharedPreferences;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.metrics.DataUsageObserver.DataUsageBucket;
import com.twitter.library.network.DataUsageEvent;
import com.twitter.library.network.DataUsageEvent.Type;
import java.net.URI;
import java.util.EnumMap;
import java.util.Map;

/* compiled from: Twttr */
class c {
    private final Map<DataUsageBucket, Long> a;

    c(SharedPreferences sharedPreferences) {
        this.a = new EnumMap(DataUsageBucket.class);
        for (DataUsageBucket dataUsageBucket : DataUsageBucket.values()) {
            long j = sharedPreferences.getLong(dataUsageBucket.mMetricName, -1);
            if (j > 0) {
                this.a.put(dataUsageBucket, Long.valueOf(j));
            }
        }
    }

    public synchronized void a(DataUsageEvent dataUsageEvent) {
        long j = dataUsageEvent.f;
        long j2 = dataUsageEvent.g;
        boolean z = dataUsageEvent.d;
        Type type = dataUsageEvent.a;
        a(z ? DataUsageBucket.WIFI_RX : DataUsageBucket.MOBILE_RX, j);
        a(z ? DataUsageBucket.WIFI_TX : DataUsageBucket.MOBILE_TX, j2);
        if (dataUsageEvent.c) {
            a(z ? DataUsageBucket.WIFI_PREFETCH_RX : DataUsageBucket.MOBILE_PREFETCH_RX, j);
        }
        DataUsageBucket dataUsageBucket;
        switch (b.a[type.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (!z) {
                    dataUsageBucket = DataUsageBucket.MOBILE_VIDEO_RX;
                    break;
                }
                dataUsageBucket = DataUsageBucket.WIFI_VIDEO_RX;
                a(dataUsageBucket, j);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                a(z ? DataUsageBucket.WIFI_IMAGE_RX : DataUsageBucket.MOBILE_IMAGE_RX, j);
                if ("found_media".equals(dataUsageEvent.e)) {
                    a(z ? DataUsageBucket.WIFI_IMAGE_FOUND_MEDIA_RX : DataUsageBucket.MOBILE_IMAGE_FOUND_MEDIA_RX, j);
                    break;
                }
                break;
            case Util.TYPE_OTHER /*3*/:
                a(z ? DataUsageBucket.WIFI_API_RX : DataUsageBucket.MOBILE_API_RX, j);
                a(z ? DataUsageBucket.WIFI_API_TX : DataUsageBucket.MOBILE_API_TX, j2);
                URI uri = dataUsageEvent.b;
                if (!(uri == null || uri.getPath() == null)) {
                    String str;
                    String path = uri.getPath();
                    String[] split = path.split("/");
                    if (path.equals("/i/config")) {
                        str = "client_config";
                    } else if (split.length <= 3 || !"1.1".equals(split[1])) {
                        str = TtmlNode.ANONYMOUS_REGION_ID;
                    } else {
                        str = split[2];
                    }
                    Object obj = -1;
                    int i;
                    switch (str.hashCode()) {
                        case -2076650431:
                            if (str.equals("timeline")) {
                                i = 1;
                                break;
                            }
                            break;
                        case -1655966961:
                            if (str.equals("activity")) {
                                obj = null;
                                break;
                            }
                            break;
                        case -600094315:
                            if (str.equals("friends")) {
                                obj = 5;
                                break;
                            }
                            break;
                        case -309210225:
                            if (str.equals("prompts")) {
                                obj = 6;
                                break;
                            }
                            break;
                        case 3209:
                            if (str.equals("dm")) {
                                obj = 8;
                                break;
                            }
                            break;
                        case 96432:
                            if (str.equals("ads")) {
                                obj = 11;
                                break;
                            }
                            break;
                        case 3198785:
                            if (str.equals("help")) {
                                i = 2;
                                break;
                            }
                            break;
                        case 109298230:
                            if (str.equals("client_config")) {
                                i = 3;
                                break;
                            }
                            break;
                        case 111578632:
                            if (str.equals("users")) {
                                obj = 4;
                                break;
                            }
                            break;
                        case 253632478:
                            if (str.equals("promoted_content")) {
                                obj = 10;
                                break;
                            }
                            break;
                        case 740154499:
                            if (str.equals("conversation")) {
                                obj = 9;
                                break;
                            }
                            break;
                        case 1318692896:
                            if (str.equals("statuses")) {
                                obj = 7;
                                break;
                            }
                            break;
                    }
                    switch (obj) {
                        case Util.TYPE_DASH /*0*/:
                            a(z ? DataUsageBucket.WIFI_API_ACTIVITY_RX : DataUsageBucket.MOBILE_API_ACTIVITY_RX, j);
                            break;
                        case ModuleDescriptor.MODULE_VERSION /*1*/:
                            a(z ? DataUsageBucket.WIFI_API_TIMELINE_RX : DataUsageBucket.MOBILE_API_TIMELINE_RX, j);
                            break;
                        case Buffer.FLAG_DECODE_ONLY /*2*/:
                        case Util.TYPE_OTHER /*3*/:
                            a(z ? DataUsageBucket.WIFI_API_HELP_RX : DataUsageBucket.MOBILE_API_HELP_RX, j);
                            break;
                        case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                            a(z ? DataUsageBucket.WIFI_API_USERS_RX : DataUsageBucket.MOBILE_API_USERS_RX, j);
                            break;
                        case EbmlReader.TYPE_FLOAT /*5*/:
                            a(z ? DataUsageBucket.WIFI_API_FRIENDS_RX : DataUsageBucket.MOBILE_API_FRIENDS_RX, j);
                            break;
                        case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                            a(z ? DataUsageBucket.WIFI_API_PROMPTS_RX : DataUsageBucket.MOBILE_API_PROMPTS_RX, j);
                            break;
                        case C.ENCODING_DTS /*7*/:
                            a(z ? DataUsageBucket.WIFI_API_STATUSES_RX : DataUsageBucket.MOBILE_API_STATUSES_RX, j);
                            break;
                        case ChunkHeader.SIZE_IN_BYTES /*8*/:
                            a(z ? DataUsageBucket.WIFI_API_DM_RX : DataUsageBucket.MOBILE_API_DM_RX, j);
                            break;
                        case b.ShimmerFrameLayout_fixed_height /*9*/:
                            a(z ? DataUsageBucket.WIFI_API_CONVERSATION_RX : DataUsageBucket.MOBILE_API_CONVERSATION_RX, j);
                            break;
                        case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                        case b.ShimmerFrameLayout_relative_width /*11*/:
                            a(z ? DataUsageBucket.WIFI_API_ADS_RX : DataUsageBucket.MOBILE_API_ADS_RX, j);
                            break;
                        default:
                            if (z) {
                                dataUsageBucket = DataUsageBucket.WIFI_API_OTHER_RX;
                            } else {
                                dataUsageBucket = DataUsageBucket.MOBILE_API_OTHER_RX;
                            }
                            a(dataUsageBucket, j);
                            break;
                    }
                }
                break;
        }
    }

    private synchronized void a(DataUsageBucket dataUsageBucket, long j) {
        if (j > 0) {
            long longValue;
            Long l = (Long) this.a.get(dataUsageBucket);
            Map map = this.a;
            if (l != null) {
                longValue = l.longValue();
            } else {
                longValue = 0;
            }
            map.put(dataUsageBucket, Long.valueOf(longValue + j));
        }
    }

    public synchronized Map<DataUsageBucket, Long> a() {
        Map enumMap;
        enumMap = new EnumMap(this.a);
        this.a.clear();
        return enumMap;
    }

    public synchronized Map<DataUsageBucket, Long> b() {
        return new EnumMap(this.a);
    }
}
