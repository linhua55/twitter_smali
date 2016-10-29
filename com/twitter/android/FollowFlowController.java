package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.preference.PreferenceManager;
import android.support.annotation.LayoutRes;
import com.twitter.android.client.c;
import com.twitter.android.interestpicker.InterestPickerActivity;
import com.twitter.android.util.am;
import com.twitter.android.util.aq;
import com.twitter.app.common.base.u;
import com.twitter.app.main.MainActivity;
import com.twitter.app.users.AddressbookContactsActivity;
import com.twitter.app.users.CheckableFollowFlowFollowActivity;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import com.twitter.util.j;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.buc;
import defpackage.cbx;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class FollowFlowController implements Parcelable {
    public static final Creator<FollowFlowController> CREATOR;
    private final String a;
    private boolean b;
    private List<String> c;
    private int d;
    private Intent e;
    private boolean f;
    private String[] g;
    private String[] h;
    private int i;
    private boolean j;
    private String k;
    private boolean l;

    static {
        CREATOR = new ge();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        parcel.writeStringList(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.b ? 1 : 0);
        parcel.writeString(this.a);
        parcel.writeParcelable(this.e, i);
        if (this.f) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeStringArray(this.g);
        parcel.writeStringArray(this.h);
        parcel.writeInt(this.i);
        if (this.j) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeString(this.k);
        if (!this.l) {
            i3 = 0;
        }
        parcel.writeInt(i3);
    }

    private FollowFlowController(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.b = false;
        this.c = new ArrayList();
        this.d = 0;
        this.g = new String[0];
        this.h = new String[0];
        this.i = 0;
        this.j = false;
        this.k = null;
        this.c = new ArrayList();
        parcel.readStringList(this.c);
        this.d = parcel.readInt();
        this.b = parcel.readInt() == 1;
        this.a = parcel.readString();
        this.e = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.f = z;
        this.g = parcel.createStringArray();
        this.h = parcel.createStringArray();
        this.i = parcel.readInt();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.j = z;
        this.k = parcel.readString();
        if (parcel.readInt() != 1) {
            z2 = false;
        }
        this.l = z2;
    }

    public FollowFlowController(String str) {
        this.b = false;
        this.c = new ArrayList();
        this.d = 0;
        this.g = new String[0];
        this.h = new String[0];
        this.i = 0;
        this.j = false;
        this.k = null;
        this.a = str;
    }

    public FollowFlowController a(boolean z) {
        this.b = z;
        return this;
    }

    private FollowFlowController a(List<String> list) {
        this.c = list;
        return this;
    }

    public FollowFlowController a(String[] strArr) {
        return a(new ArrayList(Arrays.asList(strArr)));
    }

    private FollowFlowController c(int i) {
        this.d = i;
        return this;
    }

    public FollowFlowController a(Intent intent) {
        this.e = intent;
        return this;
    }

    public FollowFlowController b(boolean z) {
        this.f = z;
        return this;
    }

    public FollowFlowController b(String[] strArr) {
        this.g = strArr;
        return this;
    }

    public FollowFlowController c(String[] strArr) {
        this.h = strArr;
        return this;
    }

    public FollowFlowController a(String str) {
        this.k = str;
        return this;
    }

    public String a() {
        return this.k;
    }

    public void a(int i) {
        this.i += i;
    }

    public FollowFlowController b(int i) {
        this.i = i;
        return this;
    }

    public void b(String str) {
        if (this.d < this.c.size()) {
            this.c.add(this.d + 1, str);
        }
    }

    public void c(String str) {
        this.c.remove(str);
    }

    public FollowFlowController c(boolean z) {
        this.j = z;
        return this;
    }

    public boolean b() {
        return this.j;
    }

    public String[] c() {
        return this.g;
    }

    public String[] d() {
        return this.h;
    }

    public boolean d(String str) {
        return this.d < this.c.size() && ((String) this.c.get(this.d)).equals(str);
    }

    public FollowFlowController d(boolean z) {
        this.l = z;
        return this;
    }

    public boolean e() {
        return this.l && d.a("seamful_nux_enabled");
    }

    @LayoutRes
    public int f() {
        if (e()) {
            return 2130968827;
        }
        return 2130968828;
    }

    private FollowFlowController j() {
        return new FollowFlowController(this.a).a(this.c).c(this.d).a(this.b).a(this.e).b(this.f).b(this.g).c(this.h).b(this.i).c(this.j).a(this.k).d(this.l);
    }

    private void a(Activity activity, int i) {
        Session c = bg.a().c();
        if (i < this.c.size()) {
            Intent intent;
            String str = (String) this.c.get(i);
            Parcelable c2 = j().c(i);
            int i2 = -1;
            switch (str.hashCode()) {
                case -1190270201:
                    if (str.equals("follow_friends")) {
                        boolean z = true;
                        break;
                    }
                    break;
                case -958604477:
                    if (str.equals("interest_picker")) {
                        i2 = 4;
                        break;
                    }
                    break;
                case -721002911:
                    if (str.equals("phone_entry")) {
                        i2 = 2;
                        break;
                    }
                    break;
                case -397938582:
                    if (str.equals("phone_verify")) {
                        i2 = 6;
                        break;
                    }
                    break;
                case 129377339:
                    if (str.equals("live_sync_experience")) {
                        i2 = 0;
                        break;
                    }
                    break;
                case 229373044:
                    if (str.equals("edit_profile")) {
                        i2 = 3;
                        break;
                    }
                    break;
                case 1329386792:
                    if (str.equals("follow_interest_suggestions")) {
                        i2 = 5;
                        break;
                    }
                    break;
            }
            switch (i2) {
                case mx.View_android_theme /*0*/:
                    j.b(cbx.a());
                    intent = new Intent(activity, AddressbookContactsActivity.class);
                    u.a(intent, true);
                    break;
                case WireMessage.WIRE_CHAT /*1*/:
                    intent = new Intent(activity, CheckableFollowFlowFollowActivity.class);
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    intent = new Intent(activity, PhoneEntryNuxActivity.class).putExtra("use_seamful_design", e());
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    intent = new Intent(activity, EditProfileOnboardingActivity.class);
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    intent = new Intent(activity, InterestPickerActivity.class).putExtra("allow_continue", this.f);
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    intent = new Intent(activity, CheckableFollowFlowFollowActivity.class);
                    break;
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    intent = new Intent(activity, PhoneVerifyNuxActivity.class).putExtra("liveFragment", 1).putExtra("account_name", c.e());
                    break;
                default:
                    bbu.a(((TwitterScribeLog) new TwitterScribeLog(c.g()).b(g(), ":::error")).f(str));
                    intent = null;
                    break;
            }
            if (intent == null) {
                a(activity, i + 1);
                return;
            }
            intent.putExtra("flow_controller", c2);
            activity.startActivity(intent);
            return;
        }
        if (this.j) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(c.g()).b(g(), ":::complete")).a((long) this.i));
        }
        b((Context) activity);
        DispatchActivity.b(activity, this.e);
    }

    public void a(Activity activity) {
        a(activity, this.d);
    }

    public void b(Activity activity) {
        a(activity, this.d + 1);
    }

    public void c(Activity activity) {
        boolean d = d("live_sync_experience");
        c a = c.a((Context) activity);
        if (!this.b || a.b() || a.a() || (d && !buc.a((Context) activity, true))) {
            if (d && buc.a((Context) activity, true)) {
                activity.startActivity(FollowFlowContactsUploadHelperActivity.a(activity, this, true));
            } else {
                a(activity);
            }
        } else if (ContactsUploadService.a((Context) activity, this.a, d)) {
            a(activity);
        } else {
            activity.startActivity(FollowFlowContactsUploadHelperActivity.a(activity, this, d));
        }
    }

    public String g() {
        return (String) e.b(this.a, "error");
    }

    public void a(Context context) {
        String str = null;
        if (!this.c.isEmpty()) {
            Editor putBoolean = PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("flow_may_upload_contacts", this.b).putString("flow_flowsteps", aj.a((CharSequence) ",", this.c)).putString("flow_scribe_page_term", this.a).putInt("flow_step", this.d).putInt("flow_follow_count", this.i).putBoolean("flow_is_onboarding", this.j).putString("flow_normalized_phone", this.k).putString("flow_selected_interests", this.g != null ? aj.a((CharSequence) ",", this.g) : null).putString("flow_landing_intent_uri", k()).putBoolean("flow_ip_allow_continue", this.f);
            String str2 = "flow_custom_interests";
            if (this.h != null) {
                str = aj.a((CharSequence) ",", this.h);
            }
            putBoolean.putString(str2, str).putBoolean("flow_is_parent_phone_100", this.l).apply();
        }
    }

    public static void b(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().remove("flow_may_upload_contacts").remove("flow_flowsteps").remove("flow_scribe_page_term").remove("flow_step").remove("flow_follow_count").remove("flow_is_onboarding").remove("flow_normalized_phone").remove("flow_selected_interests").remove("flow_landing_intent_uri").remove("flow_ip_allow_continue").remove("flow_custom_interests").remove("flow_is_parent_phone_100").apply();
    }

    public static boolean c(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).contains("flow_flowsteps");
    }

    private static Intent e(String str) {
        try {
            return Intent.parseUri(str, 0);
        } catch (Exception e) {
            return null;
        }
    }

    private String k() {
        if (this.e == null) {
            return null;
        }
        this.e.setExtrasClassLoader(getClass().getClassLoader());
        return this.e.toUri(0);
    }

    public static void d(Activity activity) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(activity);
        String string = defaultSharedPreferences.getString("flow_flowsteps", null);
        if (string != null) {
            String[] strArr;
            String[] split = string.split(",");
            CharSequence string2 = defaultSharedPreferences.getString("flow_selected_interests", null);
            String[] split2 = aj.a(string2) ? null : string2.split(",");
            CharSequence string3 = defaultSharedPreferences.getString("flow_custom_interests", null);
            if (aj.a(string3)) {
                strArr = null;
            } else {
                strArr = string3.split(",");
            }
            new FollowFlowController(defaultSharedPreferences.getString("flow_scribe_page_term", null)).a(defaultSharedPreferences.getBoolean("flow_may_upload_contacts", false)).a(split).c(defaultSharedPreferences.getInt("flow_step", 0)).b(defaultSharedPreferences.getInt("flow_follow_count", 0)).c(defaultSharedPreferences.getBoolean("flow_is_onboarding", false)).a(defaultSharedPreferences.getString("flow_normalized_phone", null)).b(split2).a(e(defaultSharedPreferences.getString("flow_landing_intent_uri", null))).b(defaultSharedPreferences.getBoolean("flow_ip_allow_continue", false)).c(strArr).d(defaultSharedPreferences.getBoolean("flow_is_parent_phone_100", false)).c(activity);
            b((Context) activity);
            return;
        }
        MainActivity.a(activity, null);
    }

    public FollowFlowController e(boolean z) {
        List arrayList = new ArrayList();
        if (z) {
            arrayList.add("phone_entry");
        }
        arrayList.add("follow_friends");
        return a(arrayList);
    }

    public FollowFlowController h() {
        j.b(cbx.a());
        List arrayList = new ArrayList();
        arrayList.add("live_sync_experience");
        return a(arrayList);
    }

    public FollowFlowController d(Context context) {
        am a = aq.a(context);
        if (a.m()) {
            e(false);
        } else if (a.b()) {
            e(false);
            if (a.d()) {
                dy.a(g(), context).a();
            }
        } else {
            e(true);
        }
        return this;
    }

    public FollowFlowController f(boolean z) {
        List arrayList = new ArrayList();
        if (z) {
            arrayList.add("phone_entry");
        }
        arrayList.add("interest_picker");
        arrayList.add("edit_profile");
        arrayList.add("follow_friends");
        return a(arrayList);
    }

    private static List<String> a(String[] strArr, boolean z) {
        List<String> arrayList = new ArrayList();
        for (String str : strArr) {
            Object obj = -1;
            switch (str.hashCode()) {
                case -958604477:
                    if (str.equals("interest_picker")) {
                        obj = 2;
                        break;
                    }
                    break;
                case -721002911:
                    if (str.equals("phone_entry")) {
                        obj = 3;
                        break;
                    }
                    break;
                case 229373044:
                    if (str.equals("edit_profile")) {
                        obj = null;
                        break;
                    }
                    break;
                case 928815837:
                    if (str.equals("follow_people")) {
                        obj = 1;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case mx.View_android_theme /*0*/:
                    arrayList.add("edit_profile");
                    break;
                case WireMessage.WIRE_CHAT /*1*/:
                    arrayList.add("follow_friends");
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    arrayList.add("interest_picker");
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    if (!z) {
                        break;
                    }
                    arrayList.add("phone_entry");
                    break;
                default:
                    break;
            }
        }
        return arrayList;
    }

    public FollowFlowController a(String str, boolean z) {
        return a(a(str.split(","), z));
    }

    public boolean i() {
        return this.d != 0;
    }
}
