package com.twitter.android.client;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.NotificationCompat.BigTextStyle;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.os.EnvironmentCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.SparseArray;
import com.twitter.android.AddressbookHelperActivity;
import com.twitter.android.AgeGateActivity;
import com.twitter.android.EditProfileActivity;
import com.twitter.android.EditProfileWithAvatarDrawerActivity;
import com.twitter.android.LoginActivity;
import com.twitter.android.UrlInterpreterActivity;
import com.twitter.android.av;
import com.twitter.android.avatars.b;
import com.twitter.android.client.notifications.DMNotif;
import com.twitter.android.client.notifications.DeviceTweetNotif;
import com.twitter.android.client.notifications.FavoriteNotif;
import com.twitter.android.client.notifications.FollowNotif;
import com.twitter.android.client.notifications.FollowRequestNotif;
import com.twitter.android.client.notifications.GenericNotif;
import com.twitter.android.client.notifications.LifelineTweetNotif;
import com.twitter.android.client.notifications.LoginVerificationNotif;
import com.twitter.android.client.notifications.MagicRecFollowNotif;
import com.twitter.android.client.notifications.MagicRecHashtagNotif;
import com.twitter.android.client.notifications.MagicRecNotif;
import com.twitter.android.client.notifications.MagicRecTweetNotif;
import com.twitter.android.client.notifications.MediaTagNotif;
import com.twitter.android.client.notifications.MentionNotif;
import com.twitter.android.client.notifications.PollNotif;
import com.twitter.android.client.notifications.RetweetNotif;
import com.twitter.android.client.notifications.StatusBarNotif;
import com.twitter.android.client.notifications.StoriesNotif;
import com.twitter.android.platform.TwitterAccessCwcNotificationReceiver;
import com.twitter.app.drafts.DraftsActivity;
import com.twitter.config.AppConfig;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bf;
import com.twitter.library.client.bg;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.media.manager.l;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.provider.bk;
import com.twitter.library.provider.dh;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.v;
import com.twitter.library.util.InvalidDataException;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.request.c;
import com.twitter.media.request.i;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.m;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bew;
import defpackage.bym;
import defpackage.cfb;
import defpackage.zq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;

/* compiled from: Twttr */
public class z implements c {
    private static z a;
    @Deprecated
    private final c b;
    private l c;
    private final Context d;
    private NotificationManager e;
    private bg f;
    private final Map<String, Integer> g;
    private final ae h;
    private final bf i;
    private final SparseArray<StatusBarNotif> j;
    private final SparseArray<StatusBarNotif> k;
    private final az l;
    private final List<ak> m;
    private final Map<String, Runnable> n;
    private final Map<Long, Integer> o;
    private final Handler p;

    public static synchronized z a(Context context) {
        z zVar;
        synchronized (z.class) {
            if (a == null) {
                a = new z(context.getApplicationContext());
            }
            zVar = a;
        }
        return zVar;
    }

    protected z(Context context) {
        this(context, c.a(context), bg.a(), l.a(context), az.a(context));
    }

    protected z(Context context, c cVar, bg bgVar, l lVar, az azVar) {
        this.g = new HashMap();
        this.j = new SparseArray();
        this.k = new SparseArray();
        this.m = new ArrayList();
        this.o = new HashMap();
        this.p = new Handler(Looper.getMainLooper());
        this.d = context.getApplicationContext();
        b(context);
        this.b = cVar;
        this.f = bgVar;
        this.c = lVar;
        this.l = azVar;
        this.h = new ae(this, null);
        this.i = new af(this, null);
        this.n = new HashMap();
    }

    public void a(ImageResponse imageResponse) {
        a aVar = (a) imageResponse.e();
        cfb.b("NotificationController", "Handling loaded image request: " + aVar);
        ad adVar = (ad) aVar.C();
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (!(a(adVar.a, aVar, bitmap) || bitmap == null)) {
            StatusBarNotif statusBarNotif = (StatusBarNotif) this.j.get(adVar.a);
            if (!(statusBarNotif == null || statusBarNotif.r())) {
                if (adVar.b) {
                    statusBarNotif.a(true);
                }
                a(statusBarNotif, bitmap);
            }
        }
        cfb.b("NotificationController", "Image(s) loaded.");
        aVar.a(null);
    }

    public void b(Context context) {
        this.e = (NotificationManager) context.getSystemService("notification");
    }

    public void a(ak akVar) {
        this.m.add(akVar);
    }

    public void b(ak akVar) {
        this.m.remove(akVar);
    }

    boolean a(int i, a aVar, Bitmap bitmap) {
        StatusBarNotif statusBarNotif = (StatusBarNotif) this.k.get(i);
        if (statusBarNotif == null) {
            return false;
        }
        statusBarNotif.a(this, aVar, bitmap);
        a(i);
        return true;
    }

    public void a(com.twitter.library.platform.notifications.a aVar) {
        String str = aVar.b;
        int i = aVar.e;
        if (!aj.a((CharSequence) str) && i != 0) {
            i = d(str);
            ag b = b(str, aVar.g);
            a(aVar, b, i);
            b(aVar, b, i);
            c(aVar, b, i);
            d(aVar, b, i);
            e(aVar, b, i);
            f(aVar, b, i);
            g(aVar, b, i);
            if (bym.a()) {
                h(aVar, b, i);
            } else {
                cfb.d("NotificationController", "Received Moments push payload, but feature switch is disabled. Ignoring push payload.");
            }
            i(aVar, b, i);
        }
    }

    private ag b(String str, String str2) {
        String str3;
        boolean z;
        String str4 = null;
        boolean z2 = true;
        Cursor query = this.d.getContentResolver().query(Uri.withAppendedPath(bk.a, str), new String[]{"vibrate", "ringtone", "light"}, null, null, null);
        String str5 = bk.b;
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    boolean z3;
                    if (query.isNull(0)) {
                        z3 = true;
                    } else {
                        z3 = query.getInt(0) == 1;
                    }
                    if (query.isNull(1)) {
                        str3 = str5;
                    } else {
                        str3 = query.getString(1);
                    }
                    if (query.isNull(2)) {
                        z = z3;
                    } else {
                        if (query.getInt(2) != 1) {
                            z2 = false;
                        }
                        z = z3;
                    }
                } else {
                    str3 = str5;
                    z = true;
                }
                query.close();
            } catch (Throwable th) {
                query.close();
            }
        } else {
            str3 = str5;
            z = true;
        }
        if (!"none".equals(str2)) {
            str4 = str3;
        }
        return new ag(z2, str4, z);
    }

    private boolean a(ad adVar, int i, long j, String str) {
        int size = this.m.size() - 1;
        while (size >= 0) {
            ak akVar = (ak) this.m.get(size);
            if ((akVar.v() & i) == 0 || !akVar.a(adVar, j)) {
                size--;
            } else {
                a(new int[]{adVar.r}, str);
                return true;
            }
        }
        return false;
    }

    private void a(com.twitter.library.platform.notifications.a aVar, ag agVar, int i) {
        ad adVar = aVar.h;
        int i2 = aVar.e;
        if (adVar != null && adVar.b == 2 && adVar.c > 0 && (i & 4) != 0 && (i2 & 4) != 0) {
            Session c = this.f.c();
            if (aVar.b.equals(c.e())) {
                this.l.a(new com.twitter.library.api.dm.requests.l(this.d, c));
            }
            if (!a(adVar, i2, aVar.c, aVar.b) && adVar.i != 0) {
                StatusBarNotif dMNotif = new DMNotif(adVar, aVar.c, aVar.b);
                a(agVar, dMNotif);
                adVar.u = dMNotif;
            }
        }
    }

    private void b(com.twitter.library.platform.notifications.a aVar, ag agVar, int i) {
        ad adVar = aVar.h;
        int i2 = aVar.e;
        if (adVar != null && adVar.b == 5 && adVar.c > 0 && (i & 8) != 0 && (i2 & 64) != 0 && !a(adVar, i2, aVar.c, aVar.b)) {
            StatusBarNotif loginVerificationNotif = new LoginVerificationNotif(adVar, aVar.c, aVar.b);
            a(agVar, loginVerificationNotif);
            adVar.u = loginVerificationNotif;
        }
    }

    private void c(com.twitter.library.platform.notifications.a aVar, ag agVar, int i) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5 = 1;
        ad adVar = aVar.h;
        int i2 = aVar.e;
        Object obj6 = (i2 & 2) != 0 ? 1 : null;
        if ((i2 & 8) != 0) {
            obj = 1;
        } else {
            obj = null;
        }
        if ((i2 & 16) != 0) {
            obj2 = 1;
        } else {
            obj2 = null;
        }
        if ((i2 & 32) != 0) {
            obj3 = 1;
        } else {
            obj3 = null;
        }
        if ((i2 & AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY) != 0) {
            obj4 = 1;
        } else {
            obj4 = null;
        }
        if ((i & 2) == 0 || (obj6 == null && obj == null && obj2 == null && obj3 == null && obj4 == null)) {
            obj5 = null;
        }
        if (adVar != null && adVar.b == 3 && adVar.c > 0 && (i & 2) != 0 && r0 != null && !a(adVar, i2, aVar.c, aVar.b)) {
            StatusBarNotif mentionNotif;
            if (obj6 != null && (aVar.f & 1) != 0) {
                mentionNotif = new MentionNotif(adVar, aVar.c, aVar.b);
            } else if (obj2 != null && (aVar.f & 2) != 0) {
                mentionNotif = new FavoriteNotif(adVar, aVar.c, aVar.b);
            } else if (obj != null && (aVar.f & 8) != 0) {
                mentionNotif = new RetweetNotif(adVar, aVar.c, aVar.b);
            } else if (obj3 != null && (aVar.f & 4) != 0) {
                mentionNotif = new FollowNotif(adVar, aVar.c, aVar.b);
            } else if (obj3 != null && (aVar.f & 32) != 0) {
                mentionNotif = new FollowRequestNotif(adVar, aVar.c, aVar.b);
            } else if (obj4 == null || (aVar.f & AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY) == 0) {
                mentionNotif = null;
            } else {
                mentionNotif = new MediaTagNotif(adVar, aVar.c, aVar.b);
            }
            if (mentionNotif != null) {
                a(agVar, mentionNotif);
                adVar.u = mentionNotif;
            }
        }
    }

    private void d(com.twitter.library.platform.notifications.a aVar, ag agVar, int i) {
        ad adVar = aVar.h;
        int i2 = aVar.e;
        if (adVar != null && adVar.b == 4 && adVar.c > 0 && (i & 1) != 0 && (i2 & 1) != 0 && !a(adVar, i2, aVar.c, aVar.b)) {
            StatusBarNotif deviceTweetNotif = new DeviceTweetNotif(adVar, aVar.c, aVar.b);
            a(agVar, deviceTweetNotif);
            adVar.u = deviceTweetNotif;
        }
    }

    private void e(com.twitter.library.platform.notifications.a aVar, ag agVar, int i) {
        ad adVar = aVar.h;
        int i2 = aVar.e;
        if (adVar != null && adVar.b == 11 && adVar.c > 0 && (i & 1) != 0 && (i2 & AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT) != 0 && !a(adVar, i2, aVar.c, aVar.b)) {
            StatusBarNotif pollNotif = new PollNotif(adVar, aVar.c, aVar.b);
            a(agVar, pollNotif);
            adVar.u = pollNotif;
        }
    }

    private void f(com.twitter.library.platform.notifications.a aVar, ag agVar, int i) {
        ad adVar = aVar.h;
        int i2 = aVar.e;
        if (adVar != null && adVar.b == 6 && adVar.c > 0 && (i & 16) != 0 && (i2 & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) != 0 && !a(adVar, i2, aVar.c, aVar.b)) {
            StatusBarNotif lifelineTweetNotif = new LifelineTweetNotif(adVar, aVar.c, aVar.b);
            a(agVar, lifelineTweetNotif);
            adVar.u = lifelineTweetNotif;
        }
    }

    private void g(com.twitter.library.platform.notifications.a aVar, ag agVar, int i) {
        ad adVar = aVar.h;
        if (adVar == null) {
            return;
        }
        if ((adVar.b == 7 || adVar.b == 8 || adVar.b == 9) && (i & 32) != 0 && !a(adVar, aVar.e, aVar.c, aVar.b)) {
            StatusBarNotif genericNotif;
            Integer num = (Integer) this.o.get(Long.valueOf(aVar.c));
            if (num != null) {
                if (this.k.get(num.intValue()) == null) {
                    a(aVar.c);
                } else {
                    return;
                }
            }
            this.o.put(Long.valueOf(aVar.c), Integer.valueOf(adVar.r));
            if (adVar.b == 8) {
                genericNotif = new GenericNotif(adVar, aVar.c, aVar.b);
            } else if (adVar.b == 9) {
                genericNotif = new MagicRecTweetNotif(adVar, aVar.c, aVar.b);
            } else {
                genericNotif = new StoriesNotif(adVar, aVar.c, aVar.b);
            }
            a(agVar, genericNotif);
            adVar.u = genericNotif;
        }
    }

    private void h(com.twitter.library.platform.notifications.a aVar, ag agVar, int i) {
        ad adVar = aVar.h;
        if (adVar != null && adVar.b == 10 && (i & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) != 0 && !a(adVar, aVar.e, aVar.c, aVar.b)) {
            StatusBarNotif genericNotif = new GenericNotif(adVar, aVar.c, aVar.b);
            a(agVar, genericNotif);
            adVar.u = genericNotif;
        }
    }

    private void i(com.twitter.library.platform.notifications.a aVar, ag agVar, int i) {
        boolean z = true;
        ad adVar = aVar.h;
        int i2 = aVar.e;
        if (adVar != null && adVar.b == 1 && adVar.c > 0 && (i & 64) != 0 && (i2 & AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY) != 0 && !a(adVar, i2, aVar.c, aVar.b)) {
            StatusBarNotif magicRecTweetNotif;
            boolean a = MagicRecTweetNotif.a(adVar);
            boolean a2 = MagicRecFollowNotif.a(adVar);
            if (!(a || a2)) {
                z = false;
            }
            a2 = MagicRecHashtagNotif.a(adVar);
            if (z) {
                if (a) {
                    magicRecTweetNotif = new MagicRecTweetNotif(adVar, aVar.c, aVar.b);
                } else {
                    magicRecTweetNotif = new MagicRecFollowNotif(adVar, aVar.c, aVar.b);
                }
                MagicRecNotif.a(magicRecTweetNotif, "magic_rec_data_received", null);
            } else {
                magicRecTweetNotif = a2 ? new MagicRecHashtagNotif(adVar, aVar.c, aVar.b) : null;
            }
            if (magicRecTweetNotif == null) {
                magicRecTweetNotif = new GenericNotif(adVar, aVar.c, aVar.b);
                agVar.d = false;
            }
            a(agVar, magicRecTweetNotif);
            adVar.u = magicRecTweetNotif;
        }
    }

    public void a(ai aiVar, ag agVar) {
        StatusBarNotif a = aiVar.a();
        a.a(agVar);
        this.k.put(a.w(), a);
        this.l.a((AsyncOperation) aiVar);
    }

    protected void a(StatusBarNotif statusBarNotif, ag agVar) {
        if (statusBarNotif.r() && !statusBarNotif.s()) {
            statusBarNotif.a(agVar);
            if (((StatusBarNotif) this.k.get(statusBarNotif.w())) == null) {
                cfb.b("NotificationController", "Preloading began for notification " + statusBarNotif.w());
                this.k.put(statusBarNotif.w(), statusBarNotif);
            }
        }
    }

    protected void a(int i) {
        StatusBarNotif statusBarNotif = (StatusBarNotif) this.k.get(i);
        if (statusBarNotif != null && statusBarNotif.s()) {
            this.k.remove(i);
        }
    }

    protected boolean b(int i) {
        return this.k.get(i) != null;
    }

    public Bitmap a(a aVar, ad adVar) {
        Bitmap c = this.c.c(aVar);
        if (c == null) {
            aVar.a((Object) adVar);
            aVar.a((i) this);
            this.c.b(aVar);
        }
        return c;
    }

    public void a(StatusBarNotif statusBarNotif) {
        ag P = statusBarNotif.P();
        if (P == null) {
            throw new IllegalArgumentException("Notification should have its settings saved before calling this method");
        }
        if ((this.j.get(statusBarNotif.w()) != null ? 1 : null) != null) {
            b(statusBarNotif);
        } else {
            a(P, statusBarNotif);
        }
    }

    void b(StatusBarNotif statusBarNotif) {
        a(statusBarNotif, null);
    }

    private void a(StatusBarNotif statusBarNotif, Bitmap bitmap) {
        a(ag.a, statusBarNotif, bitmap);
    }

    private void a(ag agVar, StatusBarNotif statusBarNotif) {
        a(agVar, statusBarNotif, null);
    }

    void a(ag agVar, StatusBarNotif statusBarNotif, Bitmap bitmap) {
        int w = statusBarNotif.w();
        for (int i : statusBarNotif.N()) {
            if (i != w) {
                cfb.b("NotificationController", "Notification already displaying, removing old one");
                this.j.remove(i);
                this.e.cancel(i);
            }
        }
        Notification a = statusBarNotif.a(this.d, this, agVar, bitmap);
        a(statusBarNotif, agVar);
        if (a != null) {
            Object obj;
            bbw a2;
            this.j.put(w, statusBarNotif);
            this.f.a(this.i);
            try {
                this.e.notify(w, a);
            } catch (Throwable e) {
                Throwable th = e;
                TwitterScribeLog a3 = statusBarNotif.a("fail");
                bbn.a(new bbl(statusBarNotif.v()).a("notification-type", a3 != null ? a3.a() : EnvironmentCompat.MEDIA_UNKNOWN).a(th));
            }
            statusBarNotif.t();
            cfb.b("NotificationController", "NotificationManager has been told to notify id " + w);
            if (agVar == ag.a) {
                obj = 1;
            } else {
                obj = null;
            }
            if (obj == null) {
                if (MagicRecTweetNotif.a(statusBarNotif) || MagicRecFollowNotif.a(statusBarNotif)) {
                    MagicRecNotif.a(statusBarNotif, "impression", statusBarNotif instanceof MagicRecNotif ? "rich" : "simple");
                } else {
                    a2 = statusBarNotif.a("impression");
                    if (a2 != null) {
                        bbu.a(a2);
                    }
                }
            }
            if (statusBarNotif.O()) {
                if (zq.a()) {
                    a2 = statusBarNotif.a("preview_impression_image_loaded");
                    if (a2 != null) {
                        bbu.a(a2);
                    }
                }
            } else if (statusBarNotif.g() && zq.a()) {
                a2 = statusBarNotif.a("preview_impression");
                if (a2 != null) {
                    bbu.a(a2);
                }
            }
        }
    }

    public void a() {
        if (av.h()) {
            Context context = this.d;
            this.e.notify("NonReleaseNotifications", 1, new Builder(context).setSmallIcon(2130839905).setColor(this.d.getResources().getColor(2131886317)).setContentTitle("Twitter bug reporter").setContentText("Tap to file a bug report").setContentIntent(PendingIntent.getBroadcast(context, 0, av.a(context).a(), 134217728)).setOngoing(true).setPriority(AppConfig.m().a() ? -2 : 1).setWhen(0).build());
        }
    }

    public void b() {
        if (av.h()) {
            this.e.cancel("NonReleaseNotifications", 1);
        }
    }

    public void a(long j) {
        this.l.a(c(j).a(3));
        b(j);
    }

    public void b(long j) {
        this.o.remove(Long.valueOf(j));
    }

    public void c() {
        Context context = this.d;
        Intent flags = new Intent(context, AddressbookHelperActivity.class).setAction("find_friends").putExtra("extra_scribe_page", "notification").setFlags(335544320);
        CharSequence string = context.getString(2131363538);
        Notification build = new Builder(context).setSmallIcon(2130839907).setColor(this.d.getResources().getColor(2131886317)).setTicker(string).setContentTitle(string).setContentText(context.getString(2131363537)).setContentIntent(PendingIntent.getActivity(context, 0, flags, 0)).setAutoCancel(true).build();
        this.e.notify(new ah().a(this.f.c().g()).toString(), 1000, build);
        this.b.b(m.b());
    }

    public void a(long j, long j2) {
        synchronized (this) {
            String a = aj.a(j, j2);
            this.p.removeCallbacks((Runnable) this.n.remove(a));
            this.e.cancel(a, 1001);
        }
    }

    private Builder a(Session session, long j, aj ajVar) {
        Intent intent;
        CharSequence string = this.d.getString(ajVar.h);
        Builder autoCancel = new Builder(this.d).setSmallIcon(2130839920).setColor(this.d.getResources().getColor(2131886317)).setTicker(string).setContentTitle(string).setContentText(ajVar.g).setAutoCancel(ajVar.a);
        if (ajVar.c != null) {
            intent = ajVar.c;
        } else {
            intent = new Intent();
        }
        autoCancel.setContentIntent(PendingIntent.getActivity(this.d, 0, intent, 0));
        TwitterUser f = session.f();
        if (f != null) {
            Bitmap b = this.c.b(UserImageRequest.a(f.e, -3));
            if (b != null) {
                autoCancel.setLargeIcon(b);
            }
        }
        if (ajVar.f) {
            autoCancel.setProgress(0, 100, true).setOngoing(false);
        }
        if (ajVar.b != null) {
            autoCancel.addAction(2130838938, this.d.getString(2131362041), PendingIntent.getService(this.d, 0, ajVar.b, 1073741824));
        }
        if (ajVar.e != null) {
            autoCancel.addAction(2130838957, this.d.getString(2131363170), PendingIntent.getService(this.d, 0, ajVar.e, 1073741824));
        }
        synchronized (this) {
            String a = aj.a(session.g(), j);
            this.p.removeCallbacks((Runnable) this.n.remove(a));
            if (ajVar.d) {
                aa aaVar = new aa(this, a, autoCancel);
                this.n.put(a, aaVar);
                this.p.postDelayed(aaVar, 1000);
            } else {
                this.e.notify(a, 1001, autoCancel.build());
            }
        }
        return autoCancel;
    }

    public Builder a(Session session, long j, String str, int i, boolean z) {
        return a(session, j, str, i, z, null);
    }

    public Builder a(Session session, long j, String str, int i, boolean z, Intent intent) {
        aj ajVar = new aj(null);
        ajVar.a = true;
        ajVar.g = str;
        ajVar.h = i;
        ajVar.c = DraftsActivity.a(this.d, true, session.e(), 0);
        if (z) {
            ajVar.e = TweetUploadService.a(this.d, j, session.g());
        } else if (intent != null) {
            ajVar.c = intent;
        }
        return a(session, j, ajVar);
    }

    public Builder a(Session session, long j, String str, int i) {
        aj ajVar = new aj(null);
        ajVar.a = true;
        ajVar.d = true;
        ajVar.f = true;
        ajVar.g = str;
        ajVar.h = i;
        return a(session, j, ajVar);
    }

    public Builder b(Session session, long j, String str, int i) {
        aj ajVar = new aj(null);
        ajVar.a = true;
        ajVar.g = str;
        ajVar.h = i;
        Builder a = a(session, j, ajVar);
        this.p.postDelayed(new ab(this, session, j), 1000);
        return a;
    }

    void a(int i, Session session) {
        Builder ongoing = a(i, PendingIntent.getActivity(this.d, 0, new Intent(), 0)).setOngoing(true);
        this.e.notify(new ah().a(session.g()).toString(), 1004, ongoing.build());
    }

    void a(boolean z, int i, Bundle bundle, Session session) {
        NotificationManager notificationManager = this.e;
        String ahVar = new ah().a(session.g()).toString();
        if (z) {
            notificationManager.notify(ahVar, 1004, a(i, PendingIntent.getActivity(this.d, 0, new Intent(), 0)).setAutoCancel(true).build());
            this.p.postDelayed(new ac(this, notificationManager, ahVar), 1000);
        } else if (session.d() && aj.b(session.e())) {
            notificationManager.notify(ahVar, 1004, a(i, PendingIntent.getActivity(this.d, 0, b(bundle, session), 268435456)).setAutoCancel(true).build());
        } else {
            notificationManager.cancel(ahVar, 1004);
        }
    }

    private Intent b(Bundle bundle, Session session) {
        Class cls;
        String valueOf = String.valueOf(session.g());
        Context context = this.d;
        if (b.b()) {
            cls = EditProfileWithAvatarDrawerActivity.class;
        } else {
            cls = EditProfileActivity.class;
        }
        Intent data = new Intent(context, cls).putExtra("failure", true).putExtra("AbsFragmentActivity_account_name", session.e()).putExtra("avatar_media_file", bundle.getParcelable("avatar_media")).putExtra("header_media_file", bundle.getParcelable("header_media")).setData(dh.b.buildUpon().appendEncodedPath(valueOf).appendQueryParameter("ownerId", valueOf).build());
        if (bundle.containsKey("name") || bundle.containsKey("desc") || bundle.containsKey("url") || bundle.containsKey("place")) {
            data.putExtra("update_profile", true).putExtra("name", bundle.getString("name")).putExtra("description", bundle.getString("desc")).putExtra("url", bundle.getString("url")).putExtra("location", bundle.getString("place"));
        }
        data.setFlags(268435456);
        return data;
    }

    private Builder a(int i, PendingIntent pendingIntent) {
        return a(this.d.getString(i), pendingIntent);
    }

    private Builder a(String str, PendingIntent pendingIntent) {
        return new Builder(this.d).setSmallIcon(2130839920).setColor(this.d.getResources().getColor(2131886317)).setTicker(str).setContentTitle(str).setContentIntent(pendingIntent);
    }

    public void a(Bundle bundle, Session session) {
        Context context = this.d;
        Builder autoCancel = a(context.getString(2131361884), PendingIntent.getActivity(context, 0, c(bundle, session), 268435456)).setAutoCancel(true);
        this.e.notify(new ah().a(session.g()).toString(), 1007, autoCancel.build());
    }

    public void a(String str, String str2, String str3) {
        CharSequence format = String.format(str3, new Object[]{str});
        this.e.notify(1010, a(str2, TwitterAccessCwcNotificationReceiver.a(this.d, "type_event_start_cricket_activity", 2)).setContentText(format).setStyle(new BigTextStyle().bigText(format)).setWhen(0).setAutoCancel(true).addAction(2130839218, this.d.getString(2131363929), TwitterAccessCwcNotificationReceiver.a(this.d, "type_event_disable", 0)).build());
    }

    public void d() {
        this.e.cancel(1010);
    }

    private Intent c(Bundle bundle, Session session) {
        String valueOf = String.valueOf(session.g());
        long j = bundle.getLong("user_id");
        String string = bundle.getString(UsernameError.USERNAME_ERROR_FIELD);
        String string2 = bundle.getString("impression_id");
        boolean z = bundle.getBoolean("earned");
        Intent data = new Intent(this.d, AgeGateActivity.class).putExtra("user_id", j).putExtra("user_name", string).putExtra("impression_id", string2).putExtra("is_earned", z).putExtra("age_gate_timestamp", bundle.getLong("age_before_timestamp")).setData(dh.b.buildUpon().appendEncodedPath(valueOf).appendQueryParameter("ownerId", valueOf).build());
        data.setFlags(268435456);
        return data;
    }

    boolean a(String str) {
        if (aj.a((CharSequence) str)) {
            return false;
        }
        ComponentName resolveActivity = new Intent("android.intent.action.VIEW", Uri.parse(str)).setPackage(this.d.getPackageName()).resolveActivity(this.d.getPackageManager());
        if (resolveActivity == null || !UrlInterpreterActivity.class.getName().equals(resolveActivity.getClassName())) {
            return false;
        }
        return true;
    }

    public void b(com.twitter.library.platform.notifications.a aVar) {
        ad adVar = aVar.h;
        if (a(adVar.m)) {
            this.e.notify(1011, a(adVar.f, PendingIntent.getActivity(this.d, 0, new Intent(this.d, UrlInterpreterActivity.class).setAction("android.intent.action.VIEW").setData(Uri.parse(adVar.m)).setFlags(268435456), 268435456)).setContentText(adVar.g).setStyle(new BigTextStyle().bigText(adVar.g)).setAutoCancel(true).setDefaults(2).setPriority(1).build());
            return;
        }
        bbn.a(new InvalidDataException("Invalid logged out notification uri: " + adVar.m));
    }

    void b(String str) {
        a(PendingIntent.getActivity(this.d, 0, this.d.getPackageManager().getLaunchIntentForPackage(str), 0), "New dogfood update available", "Tap to install");
    }

    void e() {
        a(PendingIntent.getActivity(this.d, 0, new Intent("android.intent.action.VIEW").setData(Uri.parse("https://betas.to/NpMBxyyL")), 0), "Switch to Beta by Crashlytics to update Dogfood", "Tap to visit webpage to download Beta");
    }

    private void a(PendingIntent pendingIntent, String str, String str2) {
        Builder priority = a(str, pendingIntent).setContentText(str2).setAutoCancel(true).setPriority(1);
        CharSequence c = com.twitter.util.c.c(this.d);
        if (aj.b(c)) {
            priority.setSubText(c);
        }
        this.e.notify("NonReleaseNotifications", 0, priority.build());
    }

    public void a(String str, int i) {
        this.g.put(str, Integer.valueOf(d(str) | i));
    }

    public void b(String str, int i) {
        this.g.put(str, Integer.valueOf(d(str) & (i ^ -1)));
    }

    private int d(String str) {
        Integer num = (Integer) this.g.get(str);
        if (num == null) {
            return MotionEventCompat.ACTION_MASK;
        }
        return num.intValue();
    }

    public void a(String str, boolean z, boolean z2) {
        AsyncOperation bew = new bew(this.d, this.f.a(str));
        bew.d(4);
        if (z2) {
            bew.a((int) AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
        } else {
            bew.c((int) AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
        }
        bew.g = z;
        bew.c = true;
        this.l.a(bew);
    }

    public void a(Session session) {
        Context context = this.d;
        PendingIntent activity = PendingIntent.getActivity(context, 0, new Intent(context, LoginActivity.class).putExtra("screen_name", session.e()), 0);
        Resources resources = context.getResources();
        Builder priority = a(resources.getString(2131363442, new Object[]{session.e()}), activity).setContentText(resources.getString(2131363441)).setAutoCancel(true).setPriority(1);
        this.e.notify(new ah().a(session.g()).toString(), 1008, priority.build());
    }

    public void c(String str) {
        this.l.a(e(str).a(1));
    }

    public void a(String str, String str2) {
        this.l.a(e(str).a(2).a(str2));
    }

    public void a(int[] iArr, String str) {
        this.l.a(e(str).a(iArr).a(0));
    }

    private v e(String str) {
        return (v) new v(this.d, this.f.b(str).g(), str).a(this.h);
    }

    private v c(long j) {
        return (v) new v(this.d, j, this.f.b(j).e()).a(this.h);
    }
}
