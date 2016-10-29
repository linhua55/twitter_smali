package defpackage;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.twitter.clientapp.thriftandroid.MobileDetails;
import com.twitter.clientapp.thriftandroid.Orientation;
import com.twitter.clientapp.thriftandroid.RadioStatus;
import com.twitter.clientapp.thriftandroid.d;
import com.twitter.library.network.forecaster.b;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
/* renamed from: cbi */
public class cbi {
    public final Boolean a;
    public final String b;
    public final String c;
    public final String d;
    public final Orientation e;
    public final RadioStatus f;
    public final int g;
    public final String h;
    public final String i;
    public final String j;

    public cbi(Context context, RadioStatus radioStatus) {
        this.f = radioStatus;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        this.b = telephonyManager.getNetworkCountryIso();
        this.c = telephonyManager.getNetworkOperator();
        this.d = telephonyManager.getNetworkOperatorName();
        this.h = telephonyManager.getSimOperator();
        this.i = telephonyManager.getSimCountryIso();
        this.j = telephonyManager.getSimOperatorName();
        Boolean bool = null;
        try {
            bool = Boolean.valueOf(AdvertisingIdClient.getAdvertisingIdInfo(context).isLimitAdTrackingEnabled());
        } catch (Exception e) {
        }
        this.a = bool;
        this.e = context.getResources().getConfiguration().orientation == 2 ? Orientation.LANDSCAPE : Orientation.PORTRAIT;
        this.g = b.a().g();
    }

    public JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("limitAdTracking", this.a);
        jSONObject.put("mobileNetworkOperatorIsoCountryCode", this.b);
        jSONObject.put("mobileNetworkOperatorCode", this.c);
        jSONObject.put("mobileNetworkOperatorName", this.d);
        jSONObject.put("mobileSimProviderCode", this.h);
        jSONObject.put("mobileSimProviderIsoCountryCode", this.i);
        jSONObject.put("mobileSimProviderName", this.j);
        jSONObject.put("orientation", this.e);
        jSONObject.put("radioStatus", this.f);
        jSONObject.put("signalStrength", this.g);
        return jSONObject;
    }

    public MobileDetails b() {
        d dVar = new d();
        dVar.a(MobileDetails.e, this.a).a(MobileDetails.g, this.b).a(MobileDetails.h, this.c).a(MobileDetails.i, this.d).a(MobileDetails.k, this.h).a(MobileDetails.j, this.i).a(MobileDetails.l, this.j).a(MobileDetails.c, this.e).a(MobileDetails.m, this.f).a(MobileDetails.d, Integer.valueOf(this.g));
        return dVar.a();
    }
}
