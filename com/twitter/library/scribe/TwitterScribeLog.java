package com.twitter.library.scribe;

import android.content.Context;
import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Base64;
import bps;
import cdo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.android.mx;
import com.twitter.clientapp.thriftandroid.ExperimentDetails;
import com.twitter.clientapp.thriftandroid.b;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.k;
import com.twitter.library.network.an;
import com.twitter.model.core.Tweet;
import com.twitter.model.timeline.aj;
import com.twitter.util.object.e;
import com.twitter.util.telephony.TelephonyUtil;
import defpackage.bbn;
import defpackage.cgl;
import defpackage.cmb;
import defpackage.cni;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.thrift.TBase;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TwitterScribeLog extends ScribeLog<TwitterScribeLog> {
    public static final Creator<TwitterScribeLog> CREATOR;
    private static Set<String> h;
    protected String e;
    protected int f;
    protected String g;
    private final List<TwitterScribeItem> i;
    private String j;
    private String k;
    private String l;
    private long m;
    private String n;
    private long o;
    private long p;
    private WebsiteAssetsLog q;
    private String r;

    static {
        CREATOR = new ax();
    }

    public TwitterScribeLog(Parcel parcel) {
        super(parcel);
        this.i = new ArrayList();
        this.m = -1;
        this.o = -1;
        this.p = -1;
        this.j = parcel.readString();
        this.k = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readInt();
        this.g = parcel.readString();
        this.l = parcel.readString();
        this.m = parcel.readLong();
        this.n = parcel.readString();
        this.o = parcel.readLong();
        this.p = parcel.readLong();
        this.r = parcel.readString();
        try {
            this.q = (WebsiteAssetsLog) parcel.readParcelable(WebsiteAssetsLog.class.getClassLoader());
        } catch (BadParcelableException e) {
        }
    }

    public TwitterScribeLog(long j) {
        super(j);
        this.i = new ArrayList();
        this.m = -1;
        this.o = -1;
        this.p = -1;
    }

    public TwitterScribeLog(long j, String... strArr) {
        super(j, strArr);
        this.i = new ArrayList();
        this.m = -1;
        this.o = -1;
        this.p = -1;
    }

    protected int g() {
        return cdo.a().b();
    }

    protected String h() {
        return TelephonyUtil.i().a();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.j);
        parcel.writeString(this.k);
        parcel.writeString(this.e);
        parcel.writeInt(this.f);
        parcel.writeString(this.g);
        parcel.writeString(this.l);
        parcel.writeLong(this.m);
        parcel.writeString(this.n);
        parcel.writeLong(this.o);
        parcel.writeLong(this.p);
        parcel.writeString(this.r);
        parcel.writeParcelable(this.q, i);
    }

    protected void a(JsonGenerator jsonGenerator) throws IOException {
        if (!(this.j == null || this.k == null)) {
            jsonGenerator.e("settings_version_details");
            jsonGenerator.a("feature_switches", this.j);
            jsonGenerator.a("experiments", this.k);
            jsonGenerator.d();
        }
        if (this.e != null) {
            jsonGenerator.a("experiment_key", this.e);
            jsonGenerator.a("version", this.f);
            jsonGenerator.a("bucket", this.g);
        }
        if (this.l != null) {
            jsonGenerator.a("conversation_id", this.l);
        }
        if (this.m != -1) {
            jsonGenerator.a("status_id", this.m);
        }
        if (this.n != null) {
            jsonGenerator.a("impression_id", this.n);
        }
        if (this.o != -1) {
            jsonGenerator.a("dm_id", this.o);
        }
        if (this.p != -1) {
            jsonGenerator.a("dm_create_time", this.p);
        }
        if (this.q != null) {
            this.q.a(jsonGenerator);
        }
        if (this.e != null && n("experiment_details")) {
            jsonGenerator.a("experiment_details_binary", a(new b().a(ExperimentDetails.b, this.e).a(ExperimentDetails.d, Integer.valueOf(this.f)).a(ExperimentDetails.c, this.g).a()));
        }
        if (this.r != null) {
            jsonGenerator.a("custom_json_payload", this.r);
        }
    }

    public int describeContents() {
        return 0;
    }

    public TwitterScribeLog a(Context context, Tweet tweet, TwitterScribeAssociation twitterScribeAssociation, String str) {
        if (tweet != null) {
            a(TwitterScribeItem.a(context, tweet, twitterScribeAssociation, str));
            if (tweet.K() && tweet.U()) {
                a(TwitterScribeItem.a(context, tweet.x, tweet));
            }
            if (tweet.S()) {
                a(TwitterScribeItem.a(MomentScribeDetails.a(tweet.H, tweet.aa())));
            }
        }
        return this;
    }

    public TwitterScribeLog a(long j, cni cni, String str) {
        b(TwitterScribeItem.a(j, cni, str, null));
        return this;
    }

    public TwitterScribeLog a(long j, cni cni, String str, int i) {
        a(TwitterScribeItem.a(j, cni, str, null, i, null));
        return this;
    }

    public TwitterScribeLog b(long j, cni cni, String str, int i) {
        ScribeItem a = TwitterScribeItem.a(j, cni, str, null);
        a.ao = i;
        a(a);
        return this;
    }

    public TwitterScribeLog b(long j, cni cni, String str) {
        a(TwitterScribeItem.a(j, cni, str, null));
        return this;
    }

    public TwitterScribeLog a(long j, cni cni, String str, aj ajVar) {
        a(TwitterScribeItem.a(j, cni, str, null, ajVar));
        return this;
    }

    public TwitterScribeLog a(Context context, String str, cmb cmb, long j) {
        if (cmb != null) {
            a(TwitterScribeItem.a(context, str, cmb, j));
        }
        return this;
    }

    public TwitterScribeLog a(long j, String str) {
        a(TwitterScribeItem.a(j, str));
        return this;
    }

    public static String a(TwitterScribeAssociation twitterScribeAssociation, String str, String str2, String str3) {
        String str4;
        String str5;
        if (twitterScribeAssociation != null) {
            str4 = (String) e.b(twitterScribeAssociation.a(), "tweet");
            str5 = str4;
            str4 = e.b(twitterScribeAssociation.b());
        } else {
            str5 = "tweet";
            str4 = null;
        }
        return ScribeLog.a(str5, str4, str, str2, str3);
    }

    public static int b(k kVar) {
        if (kVar == null || kVar.a == 200) {
            return -1;
        }
        if (kVar.a != 0) {
            return 1;
        }
        if (!kVar.d) {
            return 0;
        }
        if ((kVar.c instanceof SocketTimeoutException) || (kVar.c instanceof ConnectTimeoutException)) {
            return 2;
        }
        return 4;
    }

    public static void a(Context context, TwitterScribeLog twitterScribeLog, k kVar) {
        if (kVar.c != null) {
            twitterScribeLog.d(kVar.c.getClass().getName());
        }
        twitterScribeLog.a(kVar.a);
        twitterScribeLog.a(kVar);
        twitterScribeLog.f(TelephonyUtil.i().h() ? "connected" : "disconnected");
        twitterScribeLog.i();
    }

    public static void a(bps bps, TwitterScribeItem twitterScribeItem) {
        twitterScribeItem.K = bps.a();
        twitterScribeItem.L = bps.b();
        long c = bps.c();
        twitterScribeItem.aa = c;
        twitterScribeItem.G = c;
    }

    public TwitterScribeLog a(HttpOperation httpOperation, boolean z) {
        k l = httpOperation.l();
        if ("cdn::::request".equals(a())) {
            this.a = httpOperation.b("x-cache");
        } else if (an.d(httpOperation)) {
            this.a = "polling";
        } else if (z) {
            this.a = "non-polling-foreground";
        } else {
            this.a = "non-polling-background";
        }
        return (TwitterScribeLog) a(httpOperation.i().toString(), l);
    }

    public TwitterScribeLog i() {
        String h = h();
        int i = -1;
        switch (h.hashCode()) {
            case -916596374:
                if (h.equals("cellular")) {
                    i = 1;
                    break;
                }
                break;
            case 1653:
                if (h.equals("2g")) {
                    i = 0;
                    break;
                }
                break;
            case 3649301:
                if (h.equals("wifi")) {
                    i = 2;
                    break;
                }
                break;
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
                this.d = g();
                this.b = 2;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                this.b = 1;
                break;
            default:
                this.b = 0;
                break;
        }
        return this;
    }

    public <T extends ScribeLog> T f(int i) {
        for (TwitterScribeItem a : this.i) {
            a.a(i);
        }
        return this;
    }

    public TwitterScribeLog c(String str, String str2) {
        this.j = str;
        this.k = str2;
        return this;
    }

    public TwitterScribeLog a(String str, int i, String str2) {
        this.e = str;
        this.f = i;
        this.g = str2;
        return this;
    }

    public TwitterScribeLog a(String str, NativeCardUserAction nativeCardUserAction) {
        return str == null ? this : a(str, nativeCardUserAction, null);
    }

    public TwitterScribeLog a(String str, NativeCardUserAction nativeCardUserAction, ScribeKeyValuesHolder scribeKeyValuesHolder) {
        NativeCardEvent nativeCardEvent = new NativeCardEvent(str);
        if (nativeCardUserAction != null) {
            nativeCardEvent.a(nativeCardUserAction);
        }
        if (scribeKeyValuesHolder != null) {
            nativeCardEvent.a(scribeKeyValuesHolder);
        }
        TwitterScribeItem twitterScribeItem = (TwitterScribeItem) c();
        if (twitterScribeItem != null) {
            if (twitterScribeItem.m != -1) {
                nativeCardEvent.a(twitterScribeItem.m);
            }
            twitterScribeItem.an = nativeCardEvent;
        }
        return this;
    }

    public TwitterScribeLog a(Context context, cgl cgl, String str) {
        a(TwitterScribeItem.a(context, cgl, str));
        return this;
    }

    public TwitterScribeLog a(String str, long j, String str2) {
        this.l = str;
        this.m = j;
        this.n = str2;
        return this;
    }

    public TwitterScribeLog a(long j, long j2) {
        this.o = j;
        this.p = j2;
        return this;
    }

    public TwitterScribeLog a(WebsiteAssetsLog websiteAssetsLog) {
        this.q = websiteAssetsLog;
        return this;
    }

    private static String a(TBase tBase) {
        try {
            return Base64.encodeToString(new org.apache.thrift.e().a(tBase), 0);
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }

    public static void j() {
        List<String> c = d.c("thrift_logging_base64_whitelisted_domains");
        h = new HashSet();
        for (String add : c) {
            h.add(add);
        }
    }

    private boolean n(String str) {
        if (h == null) {
            j();
        }
        return h.contains(str);
    }

    public static ay d(long j) {
        return new ay(j);
    }
}
