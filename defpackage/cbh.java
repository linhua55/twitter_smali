package defpackage;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.client_network.thriftandroid.ClientNetworkStatus;
import com.twitter.client_network.thriftandroid.h;
import com.twitter.clientapp.thriftandroid.NetworkStatus;
import com.twitter.clientapp.thriftandroid.RadioStatus;
import com.twitter.library.network.forecaster.NetworkQuality;
import com.twitter.platform.TwRadioType;
import com.twitter.platform.m;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
/* renamed from: cbh */
public class cbh {
    public final cbi a;
    public final NetworkStatus b;
    public final NetworkQuality c;
    public final RadioStatus d;
    public final TwRadioType e;
    public String f;
    public String g;

    cbh(Context context) {
        RadioStatus radioStatus;
        NetworkStatus networkStatus;
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        this.e = m.a().b();
        switch (cbg.a[this.e.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                radioStatus = RadioStatus.CDMA;
                networkStatus = NetworkStatus.WWAN;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                radioStatus = RadioStatus.EDGE;
                networkStatus = NetworkStatus.WWAN;
                break;
            case Util.TYPE_OTHER /*3*/:
                radioStatus = RadioStatus.EHRPD;
                networkStatus = NetworkStatus.WWAN;
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                radioStatus = RadioStatus.EVDO_0;
                networkStatus = NetworkStatus.WWAN;
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                radioStatus = RadioStatus.EVDO_A;
                networkStatus = NetworkStatus.WWAN;
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                radioStatus = RadioStatus.EVDO_B;
                networkStatus = NetworkStatus.WWAN;
                break;
            case C.ENCODING_DTS /*7*/:
                radioStatus = RadioStatus.GPRS;
                networkStatus = NetworkStatus.WWAN;
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                radioStatus = RadioStatus.EDGE;
                networkStatus = NetworkStatus.WWAN;
                break;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                radioStatus = RadioStatus.HSDPA;
                networkStatus = NetworkStatus.WWAN;
                break;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                radioStatus = RadioStatus.HSPA;
                networkStatus = NetworkStatus.WWAN;
                break;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                radioStatus = RadioStatus.HSPAP;
                networkStatus = NetworkStatus.WWAN;
                break;
            case Atom.FULL_HEADER_SIZE /*12*/:
                radioStatus = RadioStatus.HSUPA;
                networkStatus = NetworkStatus.WWAN;
                break;
            case b.ShimmerFrameLayout_shape /*13*/:
                radioStatus = RadioStatus.IDEN;
                networkStatus = NetworkStatus.WWAN;
                break;
            case b.ShimmerFrameLayout_tilt /*14*/:
                radioStatus = RadioStatus.LTE;
                networkStatus = NetworkStatus.WWAN;
                break;
            case bdd.TwitterButton_strokeWidth /*15*/:
                radioStatus = RadioStatus.UMTS;
                networkStatus = NetworkStatus.WWAN;
                break;
            case Atom.LONG_HEADER_SIZE /*16*/:
                radioStatus = RadioStatus.ONExRTT;
                networkStatus = NetworkStatus.WWAN;
                break;
            case bdd.TwitterButton_bounded /*17*/:
                radioStatus = RadioStatus.UNKNOWN;
                networkStatus = NetworkStatus.WIFI;
                break;
            default:
                radioStatus = RadioStatus.UNKNOWN;
                if (!wifiManager.isWifiEnabled()) {
                    networkStatus = NetworkStatus.NONE;
                    break;
                } else {
                    networkStatus = NetworkStatus.WIFI;
                    break;
                }
        }
        this.d = radioStatus;
        this.b = networkStatus;
        this.c = com.twitter.library.network.forecaster.b.a().b();
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        if (connectionInfo != null) {
            this.f = connectionInfo.getBSSID();
            this.g = connectionInfo.getSSID();
        }
        this.a = new cbi(context, this.d);
    }

    public String a() {
        try {
            return b().toString(3);
        } catch (JSONException e) {
            return e.getMessage();
        }
    }

    public JSONObject b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("networkStatus", this.b);
        jSONObject.put("radioStatus", this.d);
        jSONObject.put("radioStatusRaw", this.e.name());
        jSONObject.put("bssid", this.f);
        jSONObject.put("ssid", this.g);
        jSONObject.put("networkQuality", this.c);
        jSONObject.put("mobileDetails", this.a.a());
        return jSONObject;
    }

    public ClientNetworkStatus c() {
        h hVar = new h();
        hVar.a(ClientNetworkStatus.b, this.b).a(ClientNetworkStatus.d, this.d).a(ClientNetworkStatus.e, this.e.name()).a(ClientNetworkStatus.h, this.f).a(ClientNetworkStatus.g, this.g);
        if (this.c.equals(NetworkQuality.NONE)) {
            hVar.a(ClientNetworkStatus.c, NetworkStatus.NONE);
        } else if (this.b != null && this.b.equals(NetworkStatus.WIFI)) {
            hVar.a(ClientNetworkStatus.c, NetworkStatus.WIFI);
        } else if (this.b != null && this.b.equals(NetworkStatus.WWAN)) {
            hVar.a(ClientNetworkStatus.c, NetworkStatus.WWAN);
        }
        hVar.a(ClientNetworkStatus.i, this.a.b());
        return hVar.a();
    }
}
