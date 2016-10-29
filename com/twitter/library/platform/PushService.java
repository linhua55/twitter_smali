package com.twitter.library.platform;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import com.google.android.gcm.GCMBaseIntentService;
import com.google.android.gcm.GCMScribeReporter;
import com.twitter.config.d;
import com.twitter.database.model.j;
import com.twitter.database.schema.k;
import com.twitter.database.schema.l;
import com.twitter.library.platform.notifications.NotificationConstants;
import com.twitter.library.platform.notifications.NotificationParser;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.platform.notifications.PushRegistration.DebugNotificationException;
import com.twitter.library.platform.notifications.a;
import com.twitter.library.platform.notifications.ab;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.f;
import com.twitter.library.platform.notifications.t;
import com.twitter.library.platform.notifications.x;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.util.b;
import com.twitter.model.core.bg;
import com.twitter.model.core.bi;
import com.twitter.model.core.cr;
import com.twitter.model.core.i;
import com.twitter.model.dms.c;
import com.twitter.model.dms.h;
import com.twitter.model.dms.o;
import com.twitter.model.json.common.g;
import com.twitter.util.aj;
import com.twitter.util.serialization.m;
import defpackage.bbk;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.bha;
import defpackage.bip;
import defpackage.bje;
import defpackage.bjz;
import defpackage.cfb;
import defpackage.cmf;
import defpackage.cmq;
import defpackage.cmy;
import defpackage.cne;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class PushService extends GCMBaseIntentService {

    /* compiled from: Twttr */
    public class InvalidNotificationPayloadException extends Exception {
        private static final long serialVersionUID = 5160191554788317385L;

        public InvalidNotificationPayloadException(String str) {
            super(str);
        }
    }

    public PushService() {
        super("49625052041");
    }

    protected void a(Context context, Bundle bundle) {
        bbk a = bbn.a();
        a.a();
        try {
            f fVar = new f(bundle);
            String b = fVar.b();
            a.b("impression_id", (Object) b);
            GCMScribeReporter.a(fVar.f(), fVar.i(), b);
            int parseInt = Integer.parseInt(bundle.getString("type", "0"));
            if (parseInt == 285) {
                a(a(bundle), "logged_out_notification");
            } else if (parseInt != 295) {
                d a2 = a(bundle, context, b);
                if (a2 != null) {
                    a a3 = a(a2);
                    if (a3 != null) {
                        a(a3, "data");
                    }
                }
            }
            a.b();
            a.d();
        } catch (Throwable th) {
            a.b();
            a.d();
        }
    }

    private void a(a aVar, String str) {
        Intent intent = new Intent(TwitterDataSyncService.a);
        intent.putExtra(str, m.a((Object) aVar, a.a));
        intent.putExtra("from_push", true);
        sendOrderedBroadcast(intent, ck.a);
    }

    @VisibleForTesting
    d a(Bundle bundle, Context context, String str) {
        String string = bundle.getString("schema");
        int parseInt = string == null ? 0 : Integer.parseInt(string);
        cfb.b("PushService", "Payload schema=" + parseInt);
        return a(bundle, PreferenceManager.getDefaultSharedPreferences(this), context, parseInt, str);
    }

    protected void a(Context context, String str) {
        PushRegistration.h(context, str);
    }

    protected void a(Context context, Intent intent) {
        bbn.a(new ab().a("onInvalidIntent", intent == null ? "intent was null" : "action was: " + intent.getAction()).a(new DebugNotificationException("onInvalidIntent() invoked")));
    }

    protected void b(Context context, String str) {
        PushRegistration.g(context, str);
    }

    private static d a(Bundle bundle, SharedPreferences sharedPreferences, Context context, int i, String str) {
        f fVar = new f(bundle);
        if (i == 0) {
            d dVar = new d();
            dVar.d = bundle;
            dVar.d.putLong("recipient_id", fVar.f());
            return dVar;
        }
        t l = fVar.l();
        cmy g = fVar.g();
        if (g == null) {
            return null;
        }
        String string;
        List b;
        String str2;
        if (bbn.b()) {
            bbn.a().b("user_id", Long.valueOf(g.b.b));
        }
        Bundle bundle2 = new Bundle();
        if (bundle.containsKey("priority")) {
            bundle2.putInt("priority", fVar.j());
        } else {
            bundle2.putInt("priority", 0);
            bbn.a(new InvalidNotificationPayloadException("Missing priority"));
        }
        cmq h = fVar.h();
        if (a(bundle, g.b.b)) {
            string = bundle.getString("actions");
            if (cfb.a()) {
                try {
                    cfb.b("PushService", "Notification Payload - actions: " + new JSONObject(string).toString(2));
                } catch (JSONException e) {
                }
            }
            b = g.b(string, cmf.class);
        } else {
            b = null;
        }
        if (i != 2 || (l.b != 22 && l.b != 274)) {
            str2 = null;
        } else if (bundle.containsKey("notification_event_data")) {
            c b2 = b(bundle);
            Object a = a(bundle, b2);
            if (a == null) {
                return null;
            }
            str2 = a((bip) a, b2);
            com.twitter.util.ab.a(bundle2, "notification_dm_data", a, bip.e);
            bundle2.putInt("notification_dm_attachment_type", b2 != null ? b2.a() : 0);
        } else {
            bbn.a(new InvalidNotificationPayloadException("Missing notification_event_data"));
            return null;
        }
        if (l.b == 253 && bundle.containsKey("notification_event_data")) {
            o b3 = NotificationParser.b(bundle.getString("notification_event_data"));
            com.twitter.util.ab.a(bundle2, "notification_dm_data", (bje) b3.a().get(0), bje.d);
            String str3 = ((h) b3.c().get(0)).e;
            if (g.c != null) {
                str2 = ((bha) new bjz().a(context.getResources()).a(g.c.b).b(g.b.b).a(g.c.d).a(17).q()).toString();
                string = str3;
            } else {
                string = str3;
            }
        } else {
            string = null;
        }
        if (str2 != null) {
            bundle2.putString("text", str2);
        } else if (bundle.containsKey("text")) {
            bundle2.putString("text", bundle.getString("text"));
        } else if (h != null) {
            bundle2.putString("text", h.e);
        } else {
            bbn.a(new InvalidNotificationPayloadException("Missing text"));
            return null;
        }
        if (string != null) {
            bundle2.putString("title", string);
        } else {
            bundle2.putString("title", bundle.getString("title"));
        }
        bundle2.putString("scribe_target", bundle.getString("scribe_target"));
        bundle2.putString("sound", bundle.getString("sound"));
        bundle2.putString("collapse_key", l.a);
        bundle2.putInt("category_type", l.b);
        bundle2.putLong("recipient_id", g.b.b);
        bundle2.putString("impression_id", str);
        if (l.b == 9) {
            bundle2.putString("notification_setting_key", l.a);
            bundle2.putString("uri", bundle.getString("uri"));
            string = l.a + "_opt_out_count";
            sharedPreferences.edit().putInt(string, sharedPreferences.getInt(string, 0) + 1).apply();
        } else if (l.b == 270) {
            bundle2.putString("uri", bundle.getString("uri"));
            Integer num = (Integer) NotificationConstants.e().get(bundle.getString("presentation_type"));
            if (num != null) {
                bundle2.putInt("presentation_type", num.intValue());
            } else {
                bundle2.putInt("presentation_type", 0);
            }
        } else if (l.b == 292 || l.b == 303 || l.b == 304) {
            bundle2.putString("uri", bundle.getString("uri"));
        }
        dVar = new d();
        dVar.a = h;
        dVar.b = g;
        dVar.c = b;
        dVar.d = bundle2;
        return dVar;
    }

    private static c b(Bundle bundle) {
        c cVar;
        c a = bundle.containsKey("dm_tweet") ? NotificationParser.a(bundle.getString("dm_tweet")) : null;
        String string = bundle.getString("attachment");
        if (aj.b((CharSequence) string)) {
            cVar = (com.twitter.model.dms.ab) g.a(string, com.twitter.model.dms.ab.class);
        } else {
            cVar = null;
        }
        if (a != null) {
            return a;
        }
        if (cVar != null) {
            return cVar;
        }
        return null;
    }

    private static bip a(Bundle bundle, c cVar) {
        String string = bundle.getString("notification_event_data");
        boolean z = cVar != null || Boolean.parseBoolean(bundle.getString("is_partial"));
        return NotificationParser.a(string, z);
    }

    @VisibleForTesting
    static String a(bip bip, c cVar) {
        if (cVar == null) {
            return bg.a(new StringBuilder(bip.k()), bip.m());
        }
        i a = a(new i(bip.k(), bip.m()), cVar);
        return bg.a(new StringBuilder(a.a), a.b);
    }

    public static i a(i iVar, c cVar) {
        String str = iVar.a;
        if (aj.a((CharSequence) str) || cVar == null) {
            return iVar;
        }
        Iterator it = iVar.b.c.iterator();
        while (it.hasNext()) {
            cr crVar = (cr) it.next();
            String str2 = crVar.B;
            if (str2.equals(cVar.b()) && (str.endsWith(str2) || (bg.b((CharSequence) str, iVar.b) && str.endsWith(str2 + '\u200e')))) {
                return new i(aj.a(str, crVar.g, crVar.h).trim(), (bg) new bi(iVar.b).b(crVar).q());
            }
        }
        return iVar;
    }

    @VisibleForTesting
    static boolean a(Bundle bundle, long j) {
        boolean containsKey = bundle.containsKey("actions");
        boolean a = com.twitter.library.platform.notifications.o.a(bundle.getString("scribe_target"));
        if (!containsKey) {
            return false;
        }
        if (a || d.a(j, "android_notification_actions_from_push_payload_enabled", false)) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    a a(d dVar) {
        Bundle bundle = dVar.d;
        long j = bundle.getLong("recipient_id", 0);
        com.twitter.app.common.account.a a = b.a(j);
        if (a == null) {
            bbn.a(new bbl(j).a(new InvalidNotificationPayloadException("Account does not exist on this device.")));
            return null;
        }
        String d = a.d();
        String string = bundle.getString("impression_id");
        int i = bundle.getInt("category_type");
        String string2 = bundle.getString("collapse_key");
        int i2 = bundle.getInt("priority");
        String string3 = bundle.getString("title");
        String string4 = bundle.getString("text");
        String string5 = bundle.getString("scribe_target");
        String string6 = bundle.getString("notification_setting_key");
        String string7 = bundle.getString("sound");
        long j2 = dVar.a != null ? dVar.a.b : 0;
        Object obj = (dVar.b == null || dVar.b.c == null) ? null : 1;
        long j3 = obj != null ? dVar.b.c.b : 0;
        String str = obj != null ? dVar.b.c.c : BuildConfig.VERSION_NAME;
        if (cfb.a()) {
            cfb.b("PushService", "impression_id: " + string);
            cfb.b("PushService", "collapse_key: " + string2);
            cfb.b("PushService", "category_type: " + i);
            cfb.b("PushService", "priority:" + i2);
            cfb.b("PushService", "sender_name: " + str);
            cfb.b("PushService", "recipient_name: " + d);
            cfb.b("PushService", "recipient_id: " + j);
            cfb.b("PushService", "status_id: " + j2);
            cfb.b("PushService", "text: " + string4);
            cfb.b("PushService", "title: " + string3);
            cfb.b("PushService", "scribe_target: " + string5);
            cfb.b("PushService", "notification_setting_key: " + string6);
            cfb.b("PushService", "sound: " + string7);
        }
        ar a2 = ar.a((Context) this);
        di a3 = di.a((Context) this, j);
        a aVar = new a(d, j, true);
        aVar.h = new ad();
        aVar.h.d = 1;
        aVar.h.c = 1;
        aVar.h.e = string;
        aVar.h.g = string4;
        aVar.h.f = string3;
        aVar.h.l = string5;
        aVar.h.h = j2;
        aVar.h.i = j3;
        aVar.h.j = str;
        aVar.h.a(a3.a(str));
        aVar.h.n = dVar.a != null ? dVar.a.f : null;
        ad adVar = aVar.h;
        boolean z = dVar.a != null && dVar.a.g;
        adVar.o = z;
        aVar.h.s = i2;
        aVar.h.x = dVar.b;
        aVar.h.w = dVar.a;
        aVar.h.t = string2;
        aVar.h.q = string6;
        int b = NotificationConstants.b(i);
        if (b == 7) {
            b = bundle.getInt("presentation_type");
            if (b == 1) {
                aVar.h.b = 8;
            } else if (b == 2) {
                aVar.h.b = 9;
            } else {
                aVar.h.b = 7;
            }
        } else {
            aVar.h.b = b;
        }
        aVar.h.y = dVar.c;
        Context applicationContext = getApplicationContext();
        e eVar = new e(applicationContext.getContentResolver());
        x xVar = (x) NotificationConstants.a().get(Integer.valueOf(i));
        if (xVar == null) {
            bbn.a(new bbl(j).a(new InvalidNotificationPayloadException("Unknown notification data converter.")));
            return null;
        }
        xVar.a(aVar, bundle, d, str, this, a2, a3, eVar);
        eVar.a();
        if (aVar.h.b == 3) {
            TwitterDataSyncService.d(applicationContext, d);
        }
        aVar.e = a(d, j, applicationContext);
        aVar.g = string7;
        return aVar;
    }

    @VisibleForTesting
    static a a(Bundle bundle) {
        a aVar = new a(BuildConfig.VERSION_NAME, -1, true);
        aVar.h = new ad();
        aVar.h.b = 1;
        aVar.h.d = 1;
        aVar.h.c = 1;
        aVar.h.e = bundle.getString("impression_id");
        aVar.h.m = bundle.getString("uri");
        aVar.h.g = bundle.getString("text");
        aVar.h.f = bundle.getString("title");
        aVar.h.l = bundle.getString("scribe_target");
        return aVar;
    }

    public static int a(String str, long j, Context context) {
        int i = 0;
        if (str == null) {
            return 0;
        }
        j a = ((k) ar.a(context).b().a(k.class)).f().a("account_settings_account_name=?", str);
        try {
            int i2;
            if (a.b()) {
                int d = ((l) a.a).d();
                if (cne.b(d, AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY) && 1 == ((l) a.a).bd_()) {
                    i = 1;
                }
                int c = ((l) a.a).c();
                if (cne.a(d, 8, 4) != 0) {
                    if ((c & 1) != 0) {
                        i2 = i | 2;
                    } else {
                        i2 = i;
                    }
                    if ((c & AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY) != 0) {
                        i2 |= AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY;
                    }
                } else {
                    i2 = i;
                }
                if (!(cne.a(d, AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) == 0 || (c & 8) == 0)) {
                    i2 |= 8;
                }
                if (!(cne.a(d, 64, 32) == 0 || (c & 2) == 0)) {
                    i2 |= 16;
                }
                if (!(cne.a(d, 33554432, ViewCompat.MEASURED_STATE_TOO_SMALL) == 0 || (c & AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY) == 0)) {
                    i2 |= AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT;
                }
                if (cne.b(d, 16) && !((c & 4) == 0 && (c & 32) == 0)) {
                    i2 |= 32;
                }
                if ((c & 64) != 0) {
                    i2 |= 64;
                }
                if ((c & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) != 0) {
                    i2 |= AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS;
                }
                if ((c & AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY) != 0) {
                    i2 |= AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY;
                }
                if (cne.b(d, 1)) {
                    Cursor rawQuery = di.a(context, j).getReadableDatabase().rawQuery("SELECT COUNT(*) FROM conversations WHERE last_readable_event_id > last_read_event_id AND last_readable_event_id > (SELECT COALESCE((SELECT CAST(next as int) AS last_seen_event_id FROM cursors WHERE kind=14 AND type=0 ORDER BY last_seen_event_id DESC LIMIT 1), 0));", null);
                    if (rawQuery != null) {
                        if (rawQuery.moveToFirst() && rawQuery.getInt(0) > 0) {
                            i2 |= 4;
                        }
                        rawQuery.close();
                    }
                }
            } else {
                i2 = 0;
            }
            a.close();
            return i2;
        } catch (Throwable th) {
            a.close();
        }
    }
}
