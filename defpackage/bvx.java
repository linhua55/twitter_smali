package defpackage;

import android.location.Location;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import java.util.Locale;

/* compiled from: Twttr */
/* renamed from: bvx */
public class bvx {
    public static String a(Location location) {
        if (location == null) {
            return "0";
        }
        StringBuilder stringBuilder = new StringBuilder(String.format(Locale.ENGLISH, "%d;lat=%.7f;lon=%.7f", new Object[]{Long.valueOf(location.getTime()), Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude())}));
        if (location.hasAccuracy()) {
            stringBuilder.append(String.format(Locale.ENGLISH, ";hacc=%.2f", new Object[]{Float.valueOf(location.getAccuracy())}));
        }
        if (location.hasAltitude()) {
            stringBuilder.append(String.format(Locale.ENGLISH, ";alt=%.2f", new Object[]{Double.valueOf(location.getAltitude())}));
        }
        if (location.hasSpeed()) {
            stringBuilder.append(String.format(Locale.ENGLISH, ";spd=%.2f", new Object[]{Float.valueOf(location.getSpeed())}));
        }
        if (location.hasBearing()) {
            stringBuilder.append(String.format(Locale.ENGLISH, ";br=%.2f", new Object[]{Float.valueOf(location.getBearing())}));
        }
        Object a = bvx.a(e.b(location.getProvider()));
        if (aj.b(a)) {
            stringBuilder.append(";src=");
            stringBuilder.append(a);
        }
        return stringBuilder.toString();
    }

    static String a(String str) {
        Object obj = -1;
        switch (str.hashCode()) {
            case 102570:
                if (str.equals("gps")) {
                    obj = null;
                    break;
                }
                break;
            case 97798435:
                if (str.equals("fused")) {
                    obj = 2;
                    break;
                }
                break;
            case 1843485230:
                if (str.equals("network")) {
                    obj = 1;
                    break;
                }
                break;
        }
        switch (obj) {
            case Util.TYPE_DASH /*0*/:
                return "G";
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return "N";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "I";
            default:
                return TtmlNode.ANONYMOUS_REGION_ID;
        }
    }
}
