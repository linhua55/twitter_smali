package com.twitter.library.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.util.Pair;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.android.mx;
import defpackage.cun;
import java.io.Closeable;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class UserSettings implements Parcelable {
    public static final Creator<UserSettings> CREATOR;
    public String A;
    public boolean B;
    public long a;
    public String b;
    public boolean c;
    public final boolean d;
    public final boolean e;
    public final int f;
    public final int g;
    public final String h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public String m;
    public String n;
    public boolean o;
    public String p;
    public boolean q;
    public boolean r;
    public String s;
    public boolean t;
    public String u;
    public int v;
    public boolean w;
    public boolean x;
    public String y;
    public String z;

    static {
        CREATOR = new ay();
    }

    private UserSettings(boolean z, long j, String str, boolean z2, int i, int i2, String str2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String str3, String str4, boolean z8, String str5, boolean z9, boolean z10, String str6, boolean z11, int i3, boolean z12, String str7, boolean z13, String str8, boolean z14, String str9, String str10) {
        this.c = z;
        this.d = z3;
        this.a = j;
        this.b = str;
        this.e = z2;
        this.f = i;
        this.g = i2;
        this.h = str2;
        this.j = z4;
        this.i = z5;
        this.k = z6;
        this.l = z7;
        this.m = str3;
        this.n = str4;
        this.o = z8;
        this.p = str5;
        this.B = z9;
        this.q = z10;
        this.s = str6;
        this.t = z11;
        this.v = i3;
        this.w = z12;
        this.u = str7;
        this.x = z13;
        this.y = str8;
        this.r = z14;
        this.z = str9;
        this.A = str10;
    }

    public UserSettings(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.c = parcel.readInt() == 1;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.d = z;
        this.a = parcel.readLong();
        this.b = parcel.readString();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.e = z;
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readString();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.j = z;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.i = z;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.k = z;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.l = z;
        this.m = parcel.readString();
        this.n = parcel.readString();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.o = z;
        this.p = parcel.readString();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.B = z;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.q = z;
        this.s = parcel.readString();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.t = z;
        this.u = parcel.readString();
        this.v = parcel.readInt();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.w = z;
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.x = z;
        this.y = parcel.readString();
        if (parcel.readInt() != 1) {
            z2 = false;
        }
        this.r = z2;
        this.z = parcel.readString();
        this.A = parcel.readString();
    }

    public String a() {
        return a(this.f);
    }

    public String b() {
        return a(this.g);
    }

    public boolean c() {
        return this.v == 3 || this.v == 1;
    }

    public boolean d() {
        return this.v == 3 || this.v == 2;
    }

    public boolean e() {
        return "all_enabled".equals(this.y);
    }

    public boolean f() {
        return "all".equals(this.s);
    }

    private static String a(int i) {
        if (i >= 10) {
            return String.valueOf(i);
        }
        return String.format("0%d", new Object[]{Integer.valueOf(i)});
    }

    public static UserSettings a(JsonParser jsonParser) {
        if (jsonParser == null) {
            return null;
        }
        boolean z = false;
        boolean z2 = true;
        long j = 1;
        String str = null;
        boolean z3 = false;
        boolean z4 = false;
        int i = 0;
        int i2 = 0;
        String str2 = null;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        String str3 = null;
        String str4 = null;
        boolean z9 = false;
        boolean z10 = true;
        String str5 = null;
        boolean z11 = false;
        int i3 = 0;
        boolean z12 = false;
        boolean z13 = false;
        String str6 = null;
        String str7 = null;
        boolean z14 = false;
        String str8 = "enabled";
        String str9 = "unfiltered";
        try {
            JsonToken a = jsonParser.a();
            while (a != JsonToken.c) {
                String e = jsonParser.e();
                switch (az.a[a.ordinal()]) {
                    case WireMessage.WIRE_CHAT /*1*/:
                    case WireMessage.WIRE_CONTROL /*2*/:
                        if (!"geo_enabled".equals(e)) {
                            if (!"use_cookie_personalization".equals(e)) {
                                if (!"discoverable_by_email".equals(e)) {
                                    if (!"protected".equals(e)) {
                                        if (!"display_sensitive_media".equals(e)) {
                                            if (!"personalized_trends".equals(e)) {
                                                if (!"discoverable_by_mobile_phone".equals(e)) {
                                                    if (!"email_follow_enabled".equals(e)) {
                                                        if (!"allow_ads_personalization".equals(e)) {
                                                            if (!"smart_mute".equals(e)) {
                                                                if (!"ranked_timeline_eligible".equals(e)) {
                                                                    if (!"address_book_live_sync_enabled".equals(e)) {
                                                                        if (!"alt_text_compose_enabled".equals(e)) {
                                                                            break;
                                                                        }
                                                                        z14 = a == JsonToken.k;
                                                                        break;
                                                                    }
                                                                    z13 = a == JsonToken.k;
                                                                    break;
                                                                }
                                                                z12 = a == JsonToken.k;
                                                                break;
                                                            }
                                                            z11 = a == JsonToken.k;
                                                            break;
                                                        }
                                                        z10 = a == JsonToken.k;
                                                        break;
                                                    }
                                                    z9 = a == JsonToken.k;
                                                    break;
                                                }
                                                z8 = a == JsonToken.k;
                                                break;
                                            }
                                            z4 = a == JsonToken.k;
                                            break;
                                        }
                                        z7 = a == JsonToken.k;
                                        break;
                                    }
                                    z5 = a == JsonToken.k;
                                    break;
                                }
                                z6 = a == JsonToken.k;
                                break;
                            }
                            z2 = a == JsonToken.k;
                            break;
                        }
                        z = a == JsonToken.k;
                        break;
                    case WireMessage.WIRE_AUTH /*3*/:
                        if (!"ranked_timeline_setting".equals(e)) {
                            break;
                        }
                        i3 = jsonParser.i();
                        break;
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        if (!"sleep_time".equals(e)) {
                            jsonParser.c();
                            break;
                        }
                        int i4 = i2;
                        JsonToken a2 = jsonParser.a();
                        int i5 = i;
                        boolean z15 = z3;
                        int i6 = i5;
                        while (a2 != null && a2 != JsonToken.c) {
                            switch (az.a[a2.ordinal()]) {
                                case WireMessage.WIRE_CHAT /*1*/:
                                case WireMessage.WIRE_CONTROL /*2*/:
                                    if (!"enabled".equals(jsonParser.e())) {
                                        break;
                                    }
                                    z15 = jsonParser.m();
                                    break;
                                case WireMessage.WIRE_AUTH /*3*/:
                                    String e2 = jsonParser.e();
                                    if (!"start_time".equals(e2)) {
                                        if (!"end_time".equals(e2)) {
                                            break;
                                        }
                                        i4 = jsonParser.i();
                                        break;
                                    }
                                    i6 = jsonParser.i();
                                    break;
                                case ControlMessage.CONTROL_PRESENCE /*4*/:
                                case mx.UserView_actionButtonPaddingRight /*5*/:
                                    jsonParser.c();
                                    break;
                                default:
                                    break;
                            }
                            a2 = jsonParser.a();
                        }
                        i2 = i4;
                        int i7 = i6;
                        z3 = z15;
                        i = i7;
                        break;
                    case mx.UserView_actionButtonPaddingRight /*5*/:
                        if (!"trend_location".equals(e)) {
                            jsonParser.c();
                            break;
                        }
                        Pair b = b(jsonParser);
                        j = ((Long) b.first).longValue();
                        str = (String) b.second;
                        break;
                    case mx.UserView_actionButtonPaddingBottom /*6*/:
                        if (!"language".equals(e)) {
                            if (!"screen_name".equals(e)) {
                                if (!"allow_media_tagging".equals(e)) {
                                    if (!"allow_dms_from".equals(e)) {
                                        if (!"country_code".equals(jsonParser.e())) {
                                            if (!"dm_receipt_setting".equals(e)) {
                                                if (!"universal_quality_filtering_enabled".equals(e)) {
                                                    if (!"mention_filter".equals(e)) {
                                                        break;
                                                    }
                                                    str9 = jsonParser.g();
                                                    break;
                                                }
                                                str8 = jsonParser.g();
                                                break;
                                            }
                                            str7 = jsonParser.g();
                                            break;
                                        }
                                        str6 = jsonParser.g();
                                        break;
                                    }
                                    str5 = jsonParser.g();
                                    break;
                                }
                                str4 = jsonParser.g();
                                break;
                            }
                            str3 = jsonParser.g();
                            break;
                        }
                        str2 = jsonParser.g();
                        break;
                    case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                        if (!"ranked_timeline_eligible".equals(e)) {
                            if (!"ranked_timeline_setting".equals(e)) {
                                break;
                            }
                            i3 = 0;
                            break;
                        }
                        z12 = false;
                        break;
                    default:
                        break;
                }
                a = jsonParser.a();
            }
            return new UserSettings(z, j, str, z3, i, i2, str2, z2, z5, z6, z7, z8, str3, str4, z9, null, z4, z10, str5, z11, i3, z12, str6, z13, str7, z14, str8, str9);
        } catch (IOException e3) {
            return null;
        }
    }

    public static UserSettings a(String str) {
        Closeable a;
        Throwable th;
        UserSettings userSettings = null;
        if (str != null) {
            try {
                a = at.a.a(str);
                try {
                    a.a();
                    userSettings = a((JsonParser) a);
                    cun.a(a);
                } catch (IOException e) {
                    cun.a(a);
                    return userSettings;
                } catch (Throwable th2) {
                    th = th2;
                    cun.a(a);
                    throw th;
                }
            } catch (IOException e2) {
                a = userSettings;
                cun.a(a);
                return userSettings;
            } catch (Throwable th3) {
                Throwable th4 = th3;
                a = userSettings;
                th = th4;
                cun.a(a);
                throw th;
            }
        }
        return userSettings;
    }

    public boolean g() {
        return this.c;
    }

    private static Pair<Long, String> b(JsonParser jsonParser) throws IOException {
        JsonToken d = jsonParser.d();
        long j = 1;
        Object obj = null;
        while (d != JsonToken.e) {
            if (d == JsonToken.b) {
                d = jsonParser.a();
                while (d != JsonToken.c) {
                    switch (az.a[d.ordinal()]) {
                        case WireMessage.WIRE_AUTH /*3*/:
                            if (!"woeid".equals(jsonParser.e())) {
                                break;
                            }
                            j = jsonParser.j();
                            break;
                        case ControlMessage.CONTROL_PRESENCE /*4*/:
                        case mx.UserView_actionButtonPaddingRight /*5*/:
                            jsonParser.c();
                            break;
                        case mx.UserView_actionButtonPaddingBottom /*6*/:
                            if (!"name".equals(jsonParser.e())) {
                                break;
                            }
                            obj = jsonParser.g();
                            break;
                        default:
                            break;
                    }
                    d = jsonParser.a();
                }
            }
            d = jsonParser.a();
        }
        return new Pair(Long.valueOf(j), obj);
    }

    public String toString() {
        Closeable a;
        String stringWriter;
        Throwable th;
        try {
            Writer stringWriter2 = new StringWriter(AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
            a = at.a.a(stringWriter2);
            try {
                a.c();
                a.e("sleep_time");
                a.a("start_time", this.f);
                a.a("enabled", this.e);
                a.a("end_time", this.g);
                a.d();
                a.a("geo_enabled", this.c);
                a.a("use_cookie_personalization", this.d);
                a.a("protected", this.j);
                a.a("discoverable_by_email", this.i);
                a.a("display_sensitive_media", this.k);
                a.a("discoverable_by_mobile_phone", this.l);
                a.a("personalized_trends", this.B);
                a.d("trend_location");
                a.c();
                a.a("woeid", this.a);
                a.a("name", this.b);
                a.d();
                a.b();
                a.a("language", this.h);
                a.a("screen_name", this.m);
                a.a("allow_media_tagging", this.n);
                a.a("email_follow_enabled", this.o);
                a.a("allow_ads_personalization", this.q);
                a.a("allow_dms_from", this.s);
                a.a("smart_mute", this.t);
                a.a("ranked_timeline_setting", this.v);
                a.a("ranked_timeline_eligible", this.w);
                a.a("country_code", this.u);
                a.a("address_book_live_sync_enabled", this.x);
                a.a("dm_receipt_setting", this.y);
                a.a("alt_text_compose_enabled", this.r);
                a.a("universal_quality_filtering_enabled", this.z);
                a.a("mention_filter", this.A);
                a.d();
                a.flush();
                stringWriter = stringWriter2.toString();
                cun.a(a);
            } catch (IOException e) {
                try {
                    stringWriter = BuildConfig.VERSION_NAME;
                    cun.a(a);
                    return stringWriter;
                } catch (Throwable th2) {
                    th = th2;
                    cun.a(a);
                    throw th;
                }
            }
        } catch (IOException e2) {
            a = null;
            stringWriter = BuildConfig.VERSION_NAME;
            cun.a(a);
            return stringWriter;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            a = null;
            th = th4;
            cun.a(a);
            throw th;
        }
        return stringWriter;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        parcel.writeInt(this.c ? 1 : 0);
        if (this.d) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeLong(this.a);
        parcel.writeString(this.b);
        if (this.e) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeString(this.h);
        if (this.j) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.i) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.k) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.l) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeString(this.m);
        parcel.writeString(this.n);
        if (this.o) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeString(this.p);
        if (this.B) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.q) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeString(this.s);
        if (this.t) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeInt(this.v);
        if (this.w) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeString(this.u);
        if (this.x) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeString(this.y);
        if (!this.r) {
            i3 = 0;
        }
        parcel.writeInt(i3);
        parcel.writeString(this.z);
        parcel.writeString(this.A);
    }
}
