package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import bue;
import com.twitter.app.common.account.UserIdentifier;
import com.twitter.app.common.account.a;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.k;
import com.twitter.library.api.UserSettings;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.platform.TwitterDataSyncService;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.library.util.ag;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.model.core.cp;
import com.twitter.util.ab;
import com.twitter.util.w;
import java.util.Locale;
import java.util.TimeZone;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: bex */
public class bex extends b<as> {
    private boolean a;
    private String b;
    private String c;
    private String g;
    private UserSettings h;
    private String i;
    private String j;
    private String k;
    private boolean l;
    private boolean m;

    protected /* synthetic */ c f() {
        return b();
    }

    public static bex a(Context context, Session session) {
        return (bex) new bex(context, session).k("Settings fetch is never triggered by a user action.").h(1);
    }

    public static bex a(Context context, Session session, UserSettings userSettings, boolean z, String str) {
        return (bex) new bex(context, session, userSettings, z, str).h(2);
    }

    public static bex a(Context context, Session session, String str, String str2, String str3, String str4, boolean z) {
        return (bex) new bex(context, session, str, str2, str3, str4, z).h(3);
    }

    public static bex b(Context context, Session session, String str, String str2, String str3, String str4, boolean z) {
        return (bex) new bex(context, session, str, str2, str3, str4, z).h(4);
    }

    public bex a(boolean z) {
        this.m = z;
        return this;
    }

    @VisibleForTesting
    bex(Context context, Session session) {
        super(context, ber.class.getName(), session);
    }

    private bex(Context context, Session session, UserSettings userSettings, boolean z, String str) {
        super(context, ber.class.getName(), session);
        this.h = userSettings;
        this.a = z;
        this.c = str;
        this.g = str != null ? session.e() : null;
    }

    private bex(Context context, Session session, String str, String str2, String str3, String str4, boolean z) {
        super(context, ber.class.getName(), session);
        this.c = str;
        this.g = session.e();
        this.i = str2;
        this.j = str3;
        this.k = str4;
        this.l = z;
    }

    public bex(Context context, Session session, String str) {
        super(context, ber.class.getName(), session);
        this.b = str;
        h(3);
    }

    protected d a() {
        e K = K();
        switch (M()) {
            case WireMessage.WIRE_CHAT /*1*/:
                K.a(new Object[]{"account", "settings"}).a("include_alt_text_compose", String.valueOf(true)).a("include_ranked_timeline", String.valueOf(true));
                if (bue.a()) {
                    K.a("include_mention_filter", String.valueOf(true)).a("include_universal_quality_filtering", String.valueOf(true));
                }
                a(K);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                String str;
                K.a(RequestMethod.POST);
                K.a(new Object[]{"account", "settings"}).a("include_alt_text_compose", String.valueOf(true)).a("include_ranked_timeline", String.valueOf(true));
                a(K);
                if (this.c != null) {
                    this.h.m = this.c;
                    K.a("old_screen_name", this.g);
                }
                e a = K.a("geo_enabled", String.valueOf(this.h.c)).a("protected", String.valueOf(this.h.j)).a("discoverable_by_email", String.valueOf(this.h.i)).a("discoverable_by_mobile_phone", String.valueOf(this.h.l)).a("display_sensitive_media", String.valueOf(this.h.k)).a("screen_name", this.h.m).a("email_follow_enabled", String.valueOf(this.h.o)).a("allow_ads_personalization", String.valueOf(this.h.q)).a("sleep_time_enabled", String.valueOf(this.h.e));
                String str2 = "smart_mute";
                if (this.h.t) {
                    str = "enabled";
                } else {
                    str = "disabled";
                }
                a.a(str2, str).a("alt_text_compose_enabled", String.valueOf(this.h.r)).a("dm_receipt_setting", this.h.y);
                if (bue.a()) {
                    K.a("universal_quality_filtering", this.h.z).a("mention_filter", this.h.A).a("include_mention_filter", String.valueOf(true)).a("include_universal_quality_filtering", String.valueOf(true));
                }
                if (this.m && this.h.d()) {
                    K.a("ranked_timeline_setting", (long) this.h.v);
                }
                if (this.h.e) {
                    K.a("start_sleep_time", this.h.a()).a("end_sleep_time", this.h.b()).a("time_zone", TimeZone.getDefault().getID());
                }
                if (this.a) {
                    if (this.h.B) {
                        K.a("personalized_trends", "true");
                    } else {
                        K.a("trend_location_woeid", String.valueOf(this.h.a));
                    }
                }
                if (this.h.n != null) {
                    K.a("allow_media_tagging", String.valueOf(this.h.n));
                }
                if (this.h.s != null) {
                    K.a("allow_dms_from", String.valueOf(this.h.s));
                    break;
                }
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                K.a(RequestMethod.POST);
                K.a(new Object[]{"account", "settings"});
                a(K);
                K.a("protected", String.valueOf(this.l));
                if (this.c != null) {
                    K.a("screen_name", this.c);
                }
                if (this.k != null) {
                    K.a(NotificationCompatApi21.CATEGORY_EMAIL, this.k);
                }
                if (this.i != null) {
                    K.a("current_password", this.i);
                }
                if (this.j != null) {
                    K.a("new_password", this.j);
                    K.a("password_confirmation", this.j);
                }
                if (this.b != null) {
                    K.a("country_code", this.b);
                    break;
                }
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                K.a(RequestMethod.POST);
                K.a(new Object[]{"account", "resend_confirmation_email"});
                a(K);
                K.a("protected", String.valueOf(this.l));
                if (this.k != null) {
                    K.a(NotificationCompatApi21.CATEGORY_EMAIL, this.k);
                    break;
                }
                break;
            default:
                throw new IllegalArgumentException("Invalid/unknown action: " + M());
        }
        return K.a();
    }

    protected as b() {
        return as.a(10);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        UserSettings userSettings = null;
        UserSettings userSettings2;
        switch (M()) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (httpOperation.k()) {
                    userSettings2 = (UserSettings) asVar.b();
                    if (userSettings2 != null) {
                        aaVar.c.putParcelable("SETTINGS", userSettings2);
                        a(userSettings2);
                    }
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (httpOperation.k()) {
                    userSettings2 = (UserSettings) asVar.b();
                    if (userSettings2 != null) {
                        aaVar.c.putParcelable("SETTINGS", userSettings2);
                        if (this.g != null) {
                            aaVar.c.putString("OLD_SCREEN_NAME", this.g);
                        }
                        b(userSettings2);
                    }
                }
            case WireMessage.WIRE_AUTH /*3*/:
                cd cdVar;
                int i;
                if (httpOperation.k()) {
                    userSettings = (UserSettings) asVar.b();
                    cdVar = null;
                } else {
                    Object obj = (cd) asVar.b();
                    ab.a(aaVar.c, "CUSTOM_ERRORS", obj, cd.a);
                }
                k g = aaVar.g();
                if (g != null) {
                    i = g.a;
                } else {
                    i = aaVar.d();
                }
                a(userSettings, cdVar, i);
            default:
        }
    }

    private void a(UserSettings userSettings) {
        com.twitter.library.service.ab N = N();
        if (N != null) {
            Session c = bg.a().c(N.a);
            if (c != null) {
                UserSettings j = c.j();
                if (j != null) {
                    userSettings.B = j.B;
                }
                c.a(userSettings);
                com.twitter.library.util.b.a(c.e(), null, userSettings);
            }
        }
    }

    private void b(UserSettings userSettings) {
        if (userSettings.a == this.h.a) {
            userSettings.b = this.h.b;
        }
        com.twitter.library.service.ab N = N();
        if (!(userSettings.n == null || N == null)) {
            di S = S();
            com.twitter.library.provider.e T = T();
            if (userSettings.n.equals("none")) {
                S.b(N.c, (int) AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, T);
            } else {
                S.a(N.c, (int) AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, T);
            }
        }
        a(userSettings);
        String str = userSettings.m;
        if (this.g != null && str != null && !this.g.equals(str) && N != null) {
            a((Session) com.twitter.util.object.e.a(bg.a().c(N.a)), userSettings, this.g);
        }
    }

    private void a(UserSettings userSettings, cd cdVar, int i) {
        if (i == 200 || i == 403) {
            com.twitter.library.service.ab N = N();
            if (N != null) {
                Session c = bg.a().c(N.a);
                if (c != null) {
                    UserSettings j = c.j();
                    if (i != 200) {
                        if (j != null) {
                            j.j = this.l;
                        }
                        userSettings = j;
                    }
                    if (userSettings != null) {
                        a(c, userSettings);
                        if (ag.a(cdVar) == null && this.g != null && this.c != null && !this.g.equals(this.c)) {
                            userSettings.m = this.c;
                            a(c, userSettings, this.g);
                        }
                    }
                }
            }
        }
    }

    private void a(Session session, UserSettings userSettings) {
        UserSettings j = session.j();
        if (j != null) {
            userSettings.B = j.B;
        }
        session.a(userSettings);
        com.twitter.library.util.b.a(session.e(), null, userSettings);
    }

    private void a(Session session, UserSettings userSettings, String str) {
        String str2 = userSettings.m;
        TwitterUser f = session.f();
        if (f != null) {
            TwitterUser twitterUser = (TwitterUser) new cp(f).f(str2).q();
            a a = com.twitter.app.common.account.d.a().a(new UserIdentifier(f.c));
            if (a != null) {
                boolean a2 = com.twitter.library.util.b.a(a, ck.c);
                a = com.twitter.library.util.b.b(a, str2);
                if (a != null) {
                    com.twitter.library.util.b.a(a, twitterUser, userSettings);
                    com.twitter.library.util.b.a(a, ck.c, a2);
                }
            }
            session.a(twitterUser);
            session.a(str2);
            if (TwitterDataSyncService.g(this.p, str)) {
                TwitterDataSyncService.e(this.p, this.c);
                TwitterDataSyncService.f(this.p, str);
            }
        }
    }

    @Deprecated
    private void a(e eVar) {
        Locale locale = this.p.getResources().getConfiguration().locale;
        if (locale != null) {
            eVar.a("locale", locale.getCountry()).a("lang", w.b(locale));
        }
    }
}
