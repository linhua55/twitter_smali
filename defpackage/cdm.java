package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.network.q;
import com.twitter.platform.m;
import com.twitter.platform.p;
import com.twitter.util.al;
import com.twitter.util.network.DownloadQuality;
import com.twitter.util.telephony.TelephonyUtil;
import com.twitter.util.z;

/* compiled from: Twttr */
/* renamed from: cdm */
public class cdm extends TelephonyUtil implements z<p> {
    private final q a;
    private final WifiManager b;
    private final ConnectivityManager c;
    private final TelephonyManager d;
    private long e;

    public cdm(Context context) {
        this(context, q.a(), m.a());
    }

    cdm(Context context, q qVar, m mVar) {
        this((WifiManager) context.getSystemService("wifi"), (TelephonyManager) context.getSystemService("phone"), (ConnectivityManager) context.getSystemService("connectivity"), qVar, mVar);
    }

    cdm(WifiManager wifiManager, TelephonyManager telephonyManager, ConnectivityManager connectivityManager, q qVar, m mVar) {
        this.e = 0;
        this.b = wifiManager;
        this.d = telephonyManager;
        this.c = connectivityManager;
        this.a = qVar;
        if (mVar != null) {
            mVar.a(this);
        }
    }

    public String a() {
        if (c()) {
            return "wifi";
        }
        switch (b()) {
            case Util.TYPE_DASH /*0*/:
                return "unknown";
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case C.ENCODING_DTS /*7*/:
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return "2g";
            default:
                return "cellular";
        }
    }

    public int b() {
        return (this.d == null || c()) ? 0 : this.d.getNetworkType();
    }

    public boolean c() {
        NetworkInfo k = k();
        if (k == null || k.getType() != 1) {
            return false;
        }
        return true;
    }

    public boolean d() {
        NetworkInfo k = k();
        return j() && k != null && k.isConnected();
    }

    public com.twitter.util.network.b e() {
        NetworkInfo k = k();
        DownloadQuality a = (k == null || !d()) ? DownloadQuality.a : cdn.a(k.getType(), k.getSubtype());
        String subtypeName = c() ? "wifi" : k != null ? k.getSubtypeName() : TtmlNode.ANONYMOUS_REGION_ID;
        String networkOperatorName = c() ? "wifi" : this.d != null ? this.d.getNetworkOperatorName() : TtmlNode.ANONYMOUS_REGION_ID;
        return new com.twitter.util.network.b(a, subtypeName, networkOperatorName);
    }

    public boolean f() {
        return (this.d == null || this.d.getPhoneType() == 0) ? false : true;
    }

    public String g() {
        WifiInfo connectionInfo;
        if (this.b != null) {
            connectionInfo = this.b.getConnectionInfo();
        } else {
            connectionInfo = null;
        }
        if (connectionInfo != null) {
            return connectionInfo.getSSID();
        }
        return null;
    }

    public boolean h() {
        NetworkInfo k = k();
        return j() && k != null && k.isConnectedOrConnecting();
    }

    public void a(p pVar) {
        a(al.b());
    }

    void a(long j) {
        NetworkInfo k = k();
        if (k == null || !k.isConnected()) {
            this.e = j;
        }
    }

    private boolean j() {
        return this.a == null || this.a.b();
    }

    private NetworkInfo k() {
        return this.c != null ? this.c.getActiveNetworkInfo() : null;
    }
}
