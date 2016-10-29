package com.twitter.android.util;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.Profile;
import android.telephony.TelephonyManager;
import android.util.Pair;
import bbn;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.twitter.android.lf;
import com.twitter.config.d;
import com.twitter.library.api.o;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.util.ae;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import defpackage.bgo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: Twttr */
public class ar implements am {
    public static final List a;
    private static boolean b;
    private static boolean c;
    private static PhoneNumber d;
    private static String e;
    private static PhoneNumber f;
    private static WeakReference<ap> g;
    private final Context h;
    private final ae i;

    static {
        a = new PhoneNumberHelperImpl$1();
        b = false;
        c = false;
        d = null;
        e = null;
        f = null;
    }

    ar(Context context) {
        this.h = context.getApplicationContext();
        this.i = ae.a(this.h);
    }

    public boolean a() {
        return d.a("sms_notifications_opt_in_enabled") && bk.a(this.h);
    }

    public boolean b() {
        return p() && !n();
    }

    public boolean c() {
        return ((p() && e()) || n() || m()) ? false : true;
    }

    public boolean n() {
        boolean z = true;
        TelephonyManager telephonyManager = (TelephonyManager) this.h.getSystemService("phone");
        if (telephonyManager.getSimState() == 5) {
            String simOperator = telephonyManager.getSimOperator();
            if (simOperator != null && simOperator.length() >= 3) {
                if (Integer.parseInt(simOperator.substring(0, 3)) == 440) {
                    return true;
                }
                return false;
            }
        }
        if (this.h.getResources().getConfiguration().locale != Locale.JAPAN) {
            z = false;
        }
        return z;
    }

    public boolean e() {
        return lf.a().a(this.h, new String[]{"android.permission.RECEIVE_SMS"});
    }

    public boolean f() {
        Object obj;
        int simState = ((TelephonyManager) this.h.getSystemService("phone")).getSimState();
        if (simState == 1 || simState == 0) {
            obj = null;
        } else {
            obj = 1;
        }
        if (obj == null || !e()) {
            return false;
        }
        return true;
    }

    public boolean d() {
        return b() && !m() && e();
    }

    public PhoneNumber g() {
        return d;
    }

    public String h() {
        return e.b(a(d));
    }

    public String i() {
        return e.b(e);
    }

    public void a(Pair<String, PhoneNumber> pair) {
        if (aj.b((CharSequence) pair.first)) {
            e = (String) pair.first;
        }
        if (pair.second != null) {
            d = (PhoneNumber) pair.second;
        }
        c = true;
        if (g != null && g.get() != null) {
            ((ap) g.get()).a();
            g = null;
        }
    }

    public void j() {
        List arrayList = new ArrayList();
        lf a = lf.a();
        if (a.a(this.h, new String[]{"android.permission.READ_PHONE_STATE"})) {
            arrayList.add(Integer.valueOf(0));
        }
        if (a.a(this.h, new String[]{"android.permission.READ_CONTACTS"})) {
            arrayList.add(Integer.valueOf(1));
        }
        if (!b && d == null && !arrayList.isEmpty()) {
            b = true;
            long g = bg.a().c().g();
            new bm(this, arrayList).execute(new Long[]{Long.valueOf(g)});
        }
    }

    public PhoneNumber k() {
        try {
            return b(((TelephonyManager) this.h.getSystemService("phone")).getLine1Number());
        } catch (SecurityException e) {
            return null;
        }
    }

    public Cursor o() {
        Throwable e;
        try {
            return this.h.getContentResolver().query(Uri.withAppendedPath(Profile.CONTENT_URI, "data"), au.a, "mimetype= ?", new String[]{"vnd.android.cursor.item/phone_v2"}, "is_primary");
        } catch (IllegalArgumentException e2) {
            e = e2;
            bbn.a(e);
            return null;
        } catch (SecurityException e3) {
            e = e3;
            bbn.a(e);
            return null;
        } catch (NullPointerException e4) {
            e = e4;
            bbn.a(e);
            return null;
        }
    }

    public PhoneNumber l() {
        Cursor o;
        Throwable e;
        Throwable th;
        PhoneNumber phoneNumber = null;
        try {
            o = o();
            if (o != null) {
                try {
                    if (o.moveToFirst()) {
                        phoneNumber = b(o.getString(0));
                    }
                } catch (IllegalArgumentException e2) {
                    e = e2;
                    try {
                        bbn.a(e);
                        if (o != null) {
                            o.close();
                        }
                        return phoneNumber;
                    } catch (Throwable th2) {
                        th = th2;
                        if (o != null) {
                            o.close();
                        }
                        throw th;
                    }
                } catch (NullPointerException e3) {
                    e = e3;
                    bbn.a(e);
                    if (o != null) {
                        o.close();
                    }
                    return phoneNumber;
                } catch (SecurityException e4) {
                    e = e4;
                    bbn.a(e);
                    if (o != null) {
                        o.close();
                    }
                    return phoneNumber;
                }
            }
            if (o != null) {
                o.close();
            }
        } catch (IllegalArgumentException e5) {
            e = e5;
            o = null;
            bbn.a(e);
            if (o != null) {
                o.close();
            }
            return phoneNumber;
        } catch (NullPointerException e6) {
            e = e6;
            o = null;
            bbn.a(e);
            if (o != null) {
                o.close();
            }
            return phoneNumber;
        } catch (SecurityException e7) {
            e = e7;
            o = null;
            bbn.a(e);
            if (o != null) {
                o.close();
            }
            return phoneNumber;
        } catch (Throwable e8) {
            o = null;
            th = e8;
            if (o != null) {
                o.close();
            }
            throw th;
        }
        return phoneNumber;
    }

    public boolean p() {
        return aj.b(h());
    }

    public boolean m() {
        if (q()) {
            a(null);
        }
        return this.i.b();
    }

    public boolean q() {
        return this.i.c();
    }

    public String a(PhoneNumber phoneNumber) {
        return a(phoneNumber, PhoneNumberFormat.E164);
    }

    public String a(PhoneNumber phoneNumber, PhoneNumberFormat phoneNumberFormat) {
        PhoneNumberUtil a = PhoneNumberUtil.a();
        if (phoneNumber == null || !a.b(phoneNumber)) {
            return null;
        }
        return a.a(phoneNumber, phoneNumberFormat);
    }

    public String a(String str) {
        String a = aj.b(str) ? a(b(str), PhoneNumberFormat.INTERNATIONAL) : null;
        return a != null ? a.replaceAll("\\s", "\u00a0") : TtmlNode.ANONYMOUS_REGION_ID;
    }

    public PhoneNumber b(String str) {
        try {
            PhoneNumberUtil a = PhoneNumberUtil.a();
            String a2 = com.twitter.library.util.aj.a(this.h);
            PhoneNumber a3 = a.a(str, a2 != null ? a2.toUpperCase() : this.h.getResources().getConfiguration().locale.getCountry());
            if (a.b(a3)) {
                return a3;
            }
            return null;
        } catch (NumberParseException e) {
            return null;
        } catch (Throwable e2) {
            bbn.a(e2);
            return null;
        }
    }

    public void a(an anVar) {
        az.a(this.h).a(new o(this.h, bg.a().c()), new as(anVar));
    }

    public void a(String str, ao aoVar) {
        az.a(this.h).a(new bgo(this.h, bgo.class.getName(), bg.a().c(), str), new at(aoVar));
    }
}
