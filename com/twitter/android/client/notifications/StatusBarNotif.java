package com.twitter.android.client.notifications;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.support.annotation.DrawableRes;
import android.support.v4.app.NotificationCompat.Action;
import android.support.v4.app.NotificationCompat.BigPictureStyle;
import android.support.v4.app.NotificationCompat.BigTextStyle;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.NotificationCompat.Style;
import android.support.v4.app.TaskStackBuilder;
import android.telephony.TelephonyManager;
import com.twitter.android.client.NotificationService;
import com.twitter.android.client.ag;
import com.twitter.android.client.z;
import com.twitter.android.composer.ComposerActivity;
import com.twitter.android.composer.aw;
import com.twitter.android.dialog.NotifyRetweetDialogFragmentActivity;
import com.twitter.android.mx;
import com.twitter.android.settings.MobileNotificationsActivity;
import com.twitter.app.common.account.d;
import com.twitter.app.main.MainActivity;
import com.twitter.library.api.UserSettings;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.i;
import com.twitter.library.provider.cy;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.ao;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.bf;
import com.twitter.model.core.bg;
import com.twitter.model.core.bi;
import com.twitter.util.aj;
import com.twitter.util.m;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.cmf;
import defpackage.cmq;
import defpackage.cmu;
import defpackage.zq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class StatusBarNotif implements Parcelable {
    protected final ad a;
    protected final long b;
    protected final String c;
    protected final long d;
    protected Context e;
    private final ac f;
    private boolean g;
    private ag h;

    @DrawableRes
    protected abstract int i();

    protected abstract Intent j();

    protected abstract String k();

    protected StatusBarNotif(ad adVar, long j, String str) {
        this.a = adVar;
        this.b = j;
        this.c = str;
        this.d = m.b();
        this.f = m();
        this.g = false;
    }

    protected StatusBarNotif(Parcel parcel) {
        this.b = parcel.readLong();
        this.c = parcel.readString();
        this.d = parcel.readLong();
        byte[] bArr = new byte[parcel.readInt()];
        parcel.readByteArray(bArr);
        this.a = (ad) com.twitter.util.serialization.m.a(bArr, ad.a);
        this.f = m();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
        parcel.writeString(this.c);
        parcel.writeLong(this.d);
        byte[] a = com.twitter.util.serialization.m.a(this.a, ad.a);
        parcel.writeInt(a.length);
        parcel.writeByteArray(a);
    }

    public int describeContents() {
        return 0;
    }

    void d(Context context) {
        this.e = context.getApplicationContext();
        this.f.a(context);
    }

    public long v() {
        return this.b;
    }

    public int w() {
        return this.a.r;
    }

    public long x() {
        return this.d;
    }

    protected ac m() {
        return new ab(this.a, this.c, this.b);
    }

    public boolean y() {
        if (!this.a.v.isEmpty()) {
            for (i iVar : this.a.v) {
                if (iVar.d == this.a.r) {
                    return true;
                }
            }
            bbl adVar = new ad(this.b, this.a);
            adVar.a(new IllegalStateException("Notification id: " + this.a.r + " missing from inbox"));
            bbn.a(adVar);
        }
        return false;
    }

    public final Style z() {
        return this.f.a() ? this.f.k() : new BigTextStyle().bigText(A());
    }

    public final String A() {
        return this.f.a() ? this.f.e() : d();
    }

    protected String d() {
        return this.a.g;
    }

    public final String B() {
        return this.f.a() ? this.f.d() : c();
    }

    protected String c() {
        return this.a.f;
    }

    public final String C() {
        return (this.f.a() && this.f.j().length == 0) ? this.f.d() : b();
    }

    protected String b() {
        return this.a.g;
    }

    public final int D() {
        return this.f.a() ? this.f.i() : this.a.s;
    }

    public String e() {
        return A();
    }

    public String ar_() {
        return null;
    }

    public final int E() {
        return this.f.a() ? this.f.l() : 1;
    }

    @DrawableRes
    public final int F() {
        return this.f.a() ? this.f.f() : i();
    }

    public String f() {
        return !this.f.a() ? G() : null;
    }

    protected String G() {
        return this.a.x != null ? this.a.x.a() : null;
    }

    public String H() {
        return this.f.a() ? null : this.a.n;
    }

    protected b a(Context context, String str) {
        return a.a(str);
    }

    private boolean n() {
        return this.a.o;
    }

    public final PendingIntent I() {
        return a(0, J(), K());
    }

    protected PendingIntent a(int i, ScribeLog scribeLog, ScribeLog scribeLog2) {
        Bundle bundle = new Bundle(6);
        if (scribeLog != null) {
            bundle.putParcelable("notif_scribe_log", scribeLog);
        }
        if (scribeLog2 != null) {
            bundle.putParcelable("notif_scribe_log_from_background", scribeLog2);
        }
        Parcelable a;
        if (this.g) {
            a = a("preview_open_image_loaded");
            if (a != null) {
                bundle.putParcelable("notif_scribe_log_for_preview_experiment", a);
            }
        } else if (g() && zq.a()) {
            a = a("preview_open");
            if (a != null) {
                bundle.putParcelable("notif_scribe_log_for_preview_experiment", a);
            }
        }
        a(bundle);
        return a(u().putExtras(bundle), i, 268435456);
    }

    protected PendingIntent a(Intent intent, int i, int i2) {
        intent.putExtra("ref_event", "notification::::open").putExtra("AbsFragmentActivity_account_name", this.c).setFlags(Q());
        TaskStackBuilder create = TaskStackBuilder.create(this.e);
        ComponentName component = intent.getComponent();
        if (component != null) {
            create.addParentStack(component);
        } else if (!MainActivity.class.getName().equals(intent.resolveActivity(this.e.getPackageManager()).getClassName())) {
            create.addNextIntent(new Intent(this.e, MainActivity.class));
        }
        if (create.getIntentCount() > 0) {
            create.editIntentAt(0).putExtra("AbsFragmentActivity_account_name", this.c);
        }
        create.addNextIntent(intent);
        return create.getPendingIntent(i, i2);
    }

    private Intent u() {
        if (this.f.a()) {
            return this.f.g();
        }
        Intent j = j();
        String o = o();
        String p = p();
        if (o != null && MobileNotificationsActivity.a(PreferenceManager.getDefaultSharedPreferences(this.e), p)) {
            if (d.a().b() > 1) {
                o = "@" + this.c + "\n" + o;
            }
            j.putExtra("NotificationSettingsActivity_text", o).putExtra("NotificationSettingsActivity_username", this.c).putExtra("NotificationSettingsActivity_user_id", this.b).putExtra("NotificationSettingsActivity_notif_type", p).putExtra("NotificationSettingsActivity_scribe_component", q()).putExtra("NotificationSettingsActivity_notif_random_id", String.valueOf(m.b()));
        }
        return j;
    }

    private int Q() {
        return this.f.a() ? this.f.m() : 335544320;
    }

    protected final TwitterScribeLog J() {
        return a("open");
    }

    protected final TwitterScribeLog K() {
        return a("background_open");
    }

    protected String o() {
        return null;
    }

    protected String p() {
        return null;
    }

    protected String q() {
        return p();
    }

    public final PendingIntent L() {
        Bundle bundle = new Bundle(5);
        Parcelable a = a("dismiss");
        if (a != null) {
            bundle.putParcelable("notif_scribe_log", a);
        }
        a = a("background_dismiss");
        if (a != null) {
            bundle.putParcelable("notif_scribe_log_from_background", a);
        }
        if (this.g) {
            a = a("preview_dismiss_image_loaded");
            if (a != null) {
                bundle.putParcelable("notif_scribe_log_for_preview_experiment", a);
            }
        } else if (g() && zq.a()) {
            a = a("preview_dismiss");
            if (a != null) {
                bundle.putParcelable("notif_scribe_log_for_preview_experiment", a);
            }
        }
        return a(bundle, NotificationService.a);
    }

    protected List<Action> M() {
        List<Action> arrayList = new ArrayList();
        ad adVar = this.a;
        if (adVar == null || adVar.y == null || adVar.x == null || this.f.a()) {
            return arrayList;
        }
        String R = R();
        Context context = this.e;
        for (cmf cmf : adVar.y) {
            TwitterScribeLog a = a(cmf.h);
            cmq cmq;
            cmu cmu;
            cmu cmu2;
            Bundle bundle;
            switch (cmf.g) {
                case WireMessage.WIRE_CHAT /*1*/:
                    cmq = adVar.w;
                    cmu = adVar.x.c;
                    if (!(cmq == null || cmu == null)) {
                        Tweet a2 = a(cmq, cmu, adVar.x.d);
                        if (a != null) {
                            a.a(TwitterScribeItem.a(context, a2, null, null));
                        }
                        arrayList.add(new Action(2130839916, context.getString(2131361997), new x(this.e, this, NotificationService.c).a(a, a).a(true).a(a(context, ComposerActivity.class, aw.a().a(a2).b(this.c).a(context), a)).b()));
                        break;
                    }
                case WireMessage.WIRE_CONTROL /*2*/:
                    cmq cmq2 = adVar.w;
                    cmu2 = adVar.x.c;
                    if (!(cmq2 == null || cmu2 == null || cmu2.h)) {
                        TwitterScribeLog twitterScribeLog;
                        Tweet a3 = a(cmq2, cmu2, adVar.x.d);
                        if (R != null) {
                            ScribeItem a4 = TwitterScribeItem.a(context, a3, null, null);
                            twitterScribeLog = (TwitterScribeLog) a("retweet").a(a4);
                            a = (TwitterScribeLog) a("quote").a(a4);
                        } else {
                            twitterScribeLog = null;
                            a = null;
                        }
                        Bundle bundle2 = new Bundle();
                        bundle2.putLong("ref_status_id", cmq2.b);
                        bundle2.putLong("status_id", cmq2.c);
                        x a5 = new x(this.e, this, NotificationService.d).a(twitterScribeLog, twitterScribeLog).a(2130839917, context.getString(2131363209)).a(bundle2);
                        arrayList.add(new Action(2130839917, context.getString(2131361998), a5.a(a(context, null, new Intent(context, NotifyRetweetDialogFragmentActivity.class).putExtra("tweet", a3).putExtra("retweet_service_intent", a5.a()), a)).a(true).b()));
                        break;
                    }
                case WireMessage.WIRE_AUTH /*3*/:
                    cmq = adVar.w;
                    cmu = adVar.x.c;
                    if (!(cmq == null || cmu == null)) {
                        Bundle bundle3 = new Bundle();
                        bundle3.putLong("status_id", cmq.c);
                        bundle3.putLong("rt_status_id", cmq.b);
                        if (a != null) {
                            a.a(TwitterScribeItem.a(context, a(cmq, cmu, adVar.x.d), null, null));
                        }
                        arrayList.add(new Action(2130839915, context.getString(2131361993), new x(this.e, this, NotificationService.e).a(a, a).a(true).a(2130839915, context.getString(2131363208)).a(bundle3).b()));
                        break;
                    }
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    cmu2 = adVar.x.c;
                    if (!(cmu2 == null || cmu2.i)) {
                        int i;
                        bundle = new Bundle();
                        bundle.putLong("user_id", cmu2.b);
                        bundle.putLong("owner_id", this.b);
                        if (cmu2.h) {
                            i = 2131363207;
                        } else {
                            i = 2131363204;
                        }
                        arrayList.add(new Action(2130839913, context.getString(2131362705), new x(this.e, this, NotificationService.f).a(a, a).a(true).a(2130839914, context.getString(i)).a(bundle).b()));
                        break;
                    }
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    cmu2 = adVar.x.c;
                    if (cmu2 == null) {
                        break;
                    }
                    arrayList.add(new Action(2130839911, context.getString(2131363211), new x(this.e, this, NotificationService.i).a(a, a).a(true).a(a(context, ComposerActivity.class, aw.a().a("@" + cmu2.c + " ", null).a(context), a)).b()));
                    break;
                case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                    cmu2 = adVar.x.c;
                    if (cmu2 == null) {
                        break;
                    }
                    bundle = new Bundle();
                    bundle.putLong("user_id", cmu2.b);
                    arrayList.add(new Action(2130839910, context.getString(2131363423), new x(this.e, this, NotificationService.g).a(a, a).a(true).a(2130839910, context.getString(2131363205)).a(bundle).b()));
                    break;
                case ControlMessage.CONTROL_BAN /*8*/:
                    cmu2 = adVar.x.c;
                    if (cmu2 == null) {
                        break;
                    }
                    bundle = new Bundle();
                    bundle.putLong("user_id", cmu2.b);
                    arrayList.add(new Action(2130839912, context.getString(2131363424), new x(this.e, this, NotificationService.h).a(a, a).a(true).a(2130839912, context.getString(2131363206)).a(bundle).b()));
                    break;
                default:
                    break;
            }
        }
        return arrayList;
    }

    private static Tweet a(cmq cmq, cmu cmu, cmu cmu2) {
        return new bf().f(cmu.b).b(cmu.c).d(cmu2.b).h(cmu2.c).g(cmq.b).h(cmq.b).e(cmq.c).c(cmq.b != cmq.c).a(cmq.e).a((bg) new bi().b(cmq.h).q()).a();
    }

    PendingIntent a(Context context, Class cls, Intent intent, TwitterScribeLog twitterScribeLog) {
        Bundle bundle = new Bundle(5);
        a(bundle);
        bundle.putParcelable("notif_scribe_log", twitterScribeLog);
        bundle.putParcelable("notif_scribe_log_from_background", twitterScribeLog);
        intent.setData(Uri.withAppendedPath(cy.a, String.valueOf(this.a.r))).putExtras(bundle);
        if (cls == null) {
            return PendingIntent.getActivity(context, 0, intent, 268435456);
        }
        TaskStackBuilder addNextIntent = TaskStackBuilder.create(context).addParentStack(cls).addNextIntent(intent);
        addNextIntent.editIntentAt(0).putExtra("AbsFragmentActivity_account_name", this.c);
        return addNextIntent.getPendingIntent(0, 268435456);
    }

    private PendingIntent a(Bundle bundle, String str) {
        a(bundle);
        return PendingIntent.getService(this.e, 0, new Intent(this.e, NotificationService.class).setAction(str).setData(Uri.withAppendedPath(cy.a, String.valueOf(this.a.r))).putExtras(bundle), 268435456);
    }

    private void a(Bundle bundle) {
        bundle.putString("sb_account_name", this.c);
        bundle.putParcelable("sb_notification", this);
    }

    public int[] N() {
        if (this.f.a()) {
            return this.f.j();
        }
        return new int[]{this.a.r};
    }

    public final TwitterScribeLog a(String str) {
        TwitterScribeLog twitterScribeLog = null;
        if (R() != null) {
            TwitterScribeLog twitterScribeLog2 = new TwitterScribeLog(this.b);
            String[] strArr = new String[1];
            strArr[0] = ScribeLog.a("notification", "status_bar", null, r1, str);
            twitterScribeLog = (TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) twitterScribeLog2.b(strArr)).e(this.a.e)).c(2);
            for (ScribeItem a : as_()) {
                twitterScribeLog.a(a);
            }
        }
        return twitterScribeLog;
    }

    private String R() {
        if (this.f.a()) {
            return this.f.n();
        }
        if (aj.b(this.a.l)) {
            return this.a.l;
        }
        return k();
    }

    protected List<ScribeItem> as_() {
        return Collections.emptyList();
    }

    private Builder a(Context context, StatusBarNotif statusBarNotif) {
        statusBarNotif.d(context);
        Builder number = a(context).setWhen(statusBarNotif.x()).setContentIntent(statusBarNotif.I()).setDeleteIntent(statusBarNotif.L()).setPriority(statusBarNotif.D()).setSmallIcon(statusBarNotif.F()).setTicker(statusBarNotif.C()).setContentTitle(statusBarNotif.B()).setContentText(statusBarNotif.A()).setSubText(statusBarNotif.ar_()).setStyle(statusBarNotif.z()).setNumber(statusBarNotif.E());
        for (Action action : statusBarNotif.M()) {
            number.addAction(action.icon, action.title, action.actionIntent);
        }
        return number;
    }

    Builder a(Context context) {
        return new Builder(context);
    }

    public boolean O() {
        return this.g;
    }

    public void a(boolean z) {
        this.g = z;
    }

    public boolean g() {
        boolean z;
        String H = H();
        UserSettings j = com.twitter.library.client.bg.a().b(v()).j();
        if (j == null || !j.k) {
            z = false;
        } else {
            z = true;
        }
        if (!n() || r0) {
            z = true;
        } else {
            z = false;
        }
        if (H == null || !r0) {
            return false;
        }
        return true;
    }

    public boolean r() {
        return false;
    }

    public void a(z zVar, a aVar, Bitmap bitmap) {
    }

    public boolean s() {
        return false;
    }

    public void a(ag agVar) {
        this.h = agVar;
    }

    public ag P() {
        return this.h;
    }

    public Notification a(Context context, z zVar, ag agVar, Bitmap bitmap) {
        boolean z = false;
        Builder a = a(context, this);
        Resources resources = context.getResources();
        String f = f();
        if (f != null) {
            Bitmap a2 = zVar.a(UserImageRequest.a(f, resources.getDimensionPixelSize(17104902)).b(true).a(), new com.twitter.android.client.ad(w(), false));
            if (a2 != null) {
                a.setLargeIcon(a2);
            }
        }
        if (g()) {
            if (zq.b() || h()) {
                z = true;
            }
            if (z) {
                String H = H();
                if (bitmap == null) {
                    bitmap = zVar.a(a(context, H).a(), new com.twitter.android.client.ad(w(), true));
                }
                if (bitmap != null) {
                    a(a, bitmap);
                }
            }
        }
        a(context, a, agVar);
        a.setColor(resources.getColor(2131886317));
        return a.build();
    }

    public boolean h() {
        return false;
    }

    private void a(Builder builder, Bitmap bitmap) {
        builder.setStyle(new BigPictureStyle().bigPicture(bitmap).setBigContentTitle(B()).setSummaryText(e()));
    }

    protected static void a(Context context, Builder builder, ag agVar) {
        int i = 0;
        if (agVar.d) {
            i = 2;
        }
        if (agVar == ag.a) {
            builder.setTicker(null);
        }
        builder.setDefaults(i);
        if (agVar.b) {
            builder.setLights(-16711936, 500, 2000);
        }
        if (ao.b && ((TelephonyManager) context.getSystemService("phone")).getCallState() == 0 && aj.b(agVar.c)) {
            builder.setSound(Uri.parse(agVar.c), 5);
        }
    }

    public void t() {
    }
}
