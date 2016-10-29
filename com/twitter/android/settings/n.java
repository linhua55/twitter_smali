package com.twitter.android.settings;

import android.content.Context;
import android.os.AsyncTask;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.android.mx;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.provider.NotificationSetting;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.bx;
import com.twitter.library.provider.bz;
import com.twitter.library.provider.e;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bek;
import defpackage.bew;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class n extends AsyncTask<Void, Void, Void> {
    final /* synthetic */ MobileNotificationsActivity a;
    private boolean b;
    private boolean c;
    private final String d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private boolean x;
    private boolean y;
    private boolean z;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    n(MobileNotificationsActivity mobileNotificationsActivity, String str) {
        this.a = mobileNotificationsActivity;
        this.d = str;
    }

    protected void onPreExecute() {
        int b;
        boolean z;
        boolean z2 = false;
        super.onPreExecute();
        if (this.a.f) {
            this.x = this.a.n();
            if (this.a.h) {
                this.e = 1;
            } else {
                this.e = 0;
            }
            this.m = a(this.a.x);
            this.l = a(this.a.w);
            this.o = a(this.a.A);
            this.p = a(this.a.B);
            if (this.a.j) {
                this.s = 1;
            } else {
                this.s = 0;
            }
            if (this.a.l) {
                this.t = 1;
            } else {
                this.t = 0;
            }
        } else {
            this.e = a(this.a.q);
        }
        if (this.a.m) {
            b = b(this.a.G);
            if (b == 1) {
                this.r = 0;
                this.j = 1;
            } else if (b == 2) {
                this.r = 1;
                this.j = 0;
            } else {
                this.r = 0;
                this.j = 0;
            }
        } else {
            this.j = a(this.a.v);
        }
        this.k = a(this.a.y);
        this.f = b(this.a.r);
        this.n = a(this.a.z);
        this.o = a(this.a.A);
        this.p = a(this.a.B);
        this.q = a(this.a.C);
        this.u = a(this.a.D);
        this.v = a(this.a.E);
        this.w = a(this.a.F);
        this.g = b(this.a.s);
        this.h = b(this.a.t);
        this.i = b(this.a.u);
        if (this.a.f) {
            if (this.g != 0) {
                this.s = this.m;
            } else {
                this.s = 0;
            }
            if (this.h != 0) {
                this.t = this.m;
            } else {
                this.t = 0;
            }
        }
        if (this.a.o == this.x && this.a.n.d == this.f && this.a.n.n == this.k && this.a.n.e == this.g && this.a.n.f == this.h && this.a.n.g == this.i && this.a.n.h == this.j && this.a.n.m == this.e && this.a.n.i == this.l && this.a.n.o == this.m && this.a.n.p == this.n && this.a.n.q == this.o && this.a.n.r == this.p && this.a.n.s == this.q && this.a.n.l == this.r && this.a.n.j == this.s && this.a.n.k == this.t && this.a.n.t == this.u && this.a.n.u == this.v && this.a.n.v == this.w) {
            z = false;
        } else {
            z = true;
        }
        this.b = z;
        for (Object obj : MobileNotificationsActivity.K) {
            if (this.a.findPreference(obj) == null) {
                bbn.a(new IllegalStateException("NotificationSettingsActivity preference (key: " + obj + ") was unexpectedly null in WriteAccountUserTask.onPreExecute()"));
                return;
            }
        }
        this.z = ((CheckBoxPreference) this.a.findPreference("use_led")).isChecked();
        this.y = ((CheckBoxPreference) this.a.findPreference("vibrate")).isChecked();
        if (!(this.a.n.c == this.z && this.a.n.a == this.y && this.a.n.b.equals(this.a.g))) {
            z2 = true;
        }
        this.c = z2;
    }

    private int a(Preference preference) {
        return (preference == null || !((CheckBoxPreference) preference).isChecked()) ? 0 : 1;
    }

    private int b(Preference preference) {
        if (this.a.f) {
            return Integer.parseInt(((ListPreference) preference).getValue());
        }
        return a(preference);
    }

    protected Void a(Void... voidArr) {
        if (!this.b && !this.c) {
            return null;
        }
        Object obj;
        Context context = this.a;
        boolean z = this.a.f;
        int i = this.e;
        int i2 = this.k;
        int i3 = this.f;
        int i4 = this.g;
        int i5 = this.h;
        int i6 = this.i;
        int i7 = this.j;
        int i8 = this.l;
        int i9 = this.m;
        int i10 = this.n;
        int i11 = this.o;
        int i12 = this.p;
        int i13 = this.q;
        int i14 = this.s;
        int i15 = this.t;
        int i16 = this.r;
        int i17 = this.u;
        int i18 = this.v;
        int i19 = this.w;
        Object obj2 = null;
        boolean a = bek.a(context, this.a.a);
        if (this.b) {
            if (!z) {
                obj2 = 1;
            } else if (!this.x && !a) {
                AsyncOperation asyncOperation = (bew) new bew(this.a, this.a.b).d(3);
                asyncOperation.c = true;
                this.a.J.a(asyncOperation);
                int i20 = 1;
            } else if (this.x) {
                this.a.e.a(this.d, NotificationSetting.a(i, i3, i4, i5, i7, i2, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, a, i6));
            } else {
                this.a.e.a(this.d, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
            }
        }
        if (this.c || r26 != null) {
            bx a2 = new bz().a(this.a.g).a(this.y).b(this.z).l(i).m(i2).c(i3).d(i4).e(i5).f(i6).g(i7).h(i8).n(i9).o(i10).p(i11).q(i12).r(i13).i(i14).j(i15).k(i16).s(i17).t(i18).u(i19).c(a).a();
            e eVar = new e(context.getContentResolver());
            ar.a(this.a).a(this.d, a2, z, eVar);
            eVar.a();
        }
        i14 = this.a.n.d;
        if (r0 != i3) {
            b(i3, "mention");
        }
        if (this.a.n.n != i2) {
            a(i2, "message");
        }
        if (this.a.n.m != i) {
            a(i, "tweet");
        }
        if (this.a.n.e != i4) {
            b(i4, "retweet");
        }
        if (this.a.n.f != i5) {
            b(i5, "favorite");
        }
        if (this.a.n.h != i7) {
            a(i7, "follow");
        }
        if (this.a.n.i != i8) {
            a(i8, "address_book");
        }
        if (this.a.n.o != i9) {
            a(i9, "experimental");
        }
        if (this.a.n.p != i10) {
            a(i10, "lifeline_alert");
            this.a.e(i10 == 1);
        }
        if (this.a.n.q != i11) {
            b(i11, NotificationCompatApi21.CATEGORY_RECOMMENDATION);
        }
        if (this.a.n.r != i12) {
            a(i12, "news");
        }
        if (this.a.n.s != i13) {
            a(i13, "vit_notable_event");
        }
        if (this.a.n.l != i16) {
            a(i16, "followed_verified");
        }
        if (this.a.n.t != i17) {
            a(i17, "offer_redemption");
        }
        if (this.a.n.u != i18) {
            a(i18, "highlights");
            obj = 1;
        } else {
            obj = null;
        }
        if (this.a.o != this.x) {
            if (i18 == 1) {
                obj = 1;
            }
            if (this.x) {
                bbu.a(new TwitterScribeLog(this.a.b.g()).b("settings", "notifications", null, null, "enable_notifications"));
            } else {
                bbu.a(new TwitterScribeLog(this.a.b.g()).b("settings", "notifications", null, null, "disable_notifications"));
            }
        }
        if (obj != null) {
            obj = (i18 == 1 && this.x) ? 1 : null;
            String str = "settings:notifications:highlights::" + (obj != null ? "opt_in" : "opt_out");
            bbu.a(new TwitterScribeLog(this.a.b.g()).b(str));
        }
        return null;
    }

    private void a(int i, String str) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                bbu.a(new TwitterScribeLog(this.a.b.g()).b("settings", "notifications", str, null, "deselect"));
            case WireMessage.WIRE_CHAT /*1*/:
                bbu.a(new TwitterScribeLog(this.a.b.g()).b("settings", "notifications", str, null, "select"));
            default:
        }
    }

    private void b(int i, String str) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                bbu.a(new TwitterScribeLog(this.a.b.g()).b("settings", "notifications", str, null, "deselect"));
            case WireMessage.WIRE_CHAT /*1*/:
                bbu.a(new TwitterScribeLog(this.a.b.g()).b("settings", "notifications", str, "from_people_you_follow", "select"));
            case WireMessage.WIRE_CONTROL /*2*/:
                bbu.a(new TwitterScribeLog(this.a.b.g()).b("settings", "notifications", str, "from_anyone", "select"));
            default:
        }
    }
}
