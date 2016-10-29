package com.twitter.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v7.recyclerview.BuildConfig;

/* compiled from: Twttr */
public class FlowData implements Parcelable {
    public static final Creator<FlowData> CREATOR;
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private SignupState n;

    /* compiled from: Twttr */
    public enum SignupState {
        SIGN_UP_NOT_STARTED,
        SIGN_UP_IN_PROGRESS,
        SIGN_UP_PHONE_VERIFIED,
        SIGN_UP_COMPLETE
    }

    static {
        CREATOR = new ga();
    }

    public FlowData() {
        this.n = SignupState.SIGN_UP_NOT_STARTED;
    }

    public int describeContents() {
        return 0;
    }

    public FlowData(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.n = SignupState.SIGN_UP_NOT_STARTED;
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.g = parcel.readInt() != 0;
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.h = z;
        this.c = parcel.readString();
        this.d = parcel.readString();
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.i = z;
        this.n = SignupState.values()[parcel.readInt()];
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.j = z;
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.k = z;
        this.e = parcel.readString();
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.l = z;
        this.f = parcel.readString();
        if (parcel.readInt() == 0) {
            z2 = false;
        }
        this.m = z2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.g ? 1 : 0);
        if (this.h) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        if (this.i) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeInt(this.n.ordinal());
        if (this.j) {
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
        parcel.writeString(this.e);
        if (this.l) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeString(this.f);
        if (!this.m) {
            i3 = 0;
        }
        parcel.writeInt(i3);
    }

    public void a(Context context) {
        g(context).edit().putString("flow_data_name", this.a).putString("flow_data_phone", this.b).putBoolean("flow_data_launch_nux", this.g).putBoolean("flow_is_email_signup", this.h).putString("flow_data_email", this.c).putBoolean("flow_data_is_add_account", this.i).putBoolean("flow_data_is_sspc_verified", this.k).putString("flow_data_username", this.e).apply();
    }

    public void b(Context context) {
        g(context).edit().putString("flow_data_password", this.d).apply();
    }

    public static void c(Context context) {
        g(context).edit().remove("flow_data_name").remove("flow_data_phone").remove("flow_data_launch_nux").remove("flow_is_email_signup").remove("flow_data_email").remove("flow_data_password").remove("flow_data_is_add_account").remove("flow_data_is_sspc_verified").remove("flow_data_username").apply();
    }

    public static FlowData d(Context context) {
        SharedPreferences g = g(context);
        FlowData flowData = new FlowData();
        flowData.a(g.getString("flow_data_name", null));
        flowData.b(g.getString("flow_data_phone", null));
        flowData.a(g.getBoolean("flow_data_launch_nux", false));
        flowData.b(g.getBoolean("flow_is_email_signup", false));
        flowData.c(g.getString("flow_data_email", null));
        flowData.d(g.getString("flow_data_password", null));
        flowData.c(g.getBoolean("flow_data_is_add_account", false));
        flowData.f(g.getBoolean("flow_data_is_sspc_verified", false));
        flowData.e(g.getString("flow_data_username", null));
        return flowData;
    }

    public static String e(Context context) {
        return g(context).getString("flow_data_username", BuildConfig.VERSION_NAME);
    }

    public static String f(Context context) {
        return g(context).getString("flow_data_password", BuildConfig.VERSION_NAME);
    }

    private static SharedPreferences g(Context context) {
        return context.getSharedPreferences("phone100_prefs", 0);
    }

    public void a(String str) {
        this.a = str;
    }

    public String a() {
        return this.a;
    }

    public void b(String str) {
        this.b = str;
    }

    public String b() {
        return this.b;
    }

    public boolean c() {
        return this.g;
    }

    public void a(boolean z) {
        this.g = z;
    }

    public void c(String str) {
        this.c = str;
    }

    public String d() {
        return this.c;
    }

    public void d(String str) {
        this.d = str;
    }

    public String e() {
        return this.d;
    }

    public void e(String str) {
        this.e = str;
    }

    public String f() {
        return this.e;
    }

    public void b(boolean z) {
        this.h = z;
    }

    public boolean g() {
        return this.h;
    }

    public void c(boolean z) {
        this.i = z;
    }

    public void d(boolean z) {
        this.j = z;
    }

    public void e(boolean z) {
        this.m = z;
    }

    public boolean h() {
        return this.i;
    }

    public void f(boolean z) {
        this.k = z;
    }

    public boolean i() {
        return this.k;
    }

    public void a(SignupState signupState) {
        this.n = signupState;
    }

    public SignupState j() {
        return this.n;
    }

    public boolean k() {
        return this.j;
    }

    public boolean l() {
        return this.m;
    }

    public void g(boolean z) {
        this.l = z;
    }

    public boolean m() {
        return this.l;
    }

    public void f(String str) {
        this.f = str;
    }

    public String n() {
        return this.f;
    }
}
