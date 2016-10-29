package com.twitter.library.platform;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SyncResult;
import android.content.SyncStats;
import android.database.Cursor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.twitter.android.mx;
import com.twitter.app.common.account.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.library.api.UserSettings;
import com.twitter.library.api.u;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.network.an;
import com.twitter.library.network.ap;
import com.twitter.library.network.j;
import com.twitter.library.network.w;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.util.b;
import com.twitter.library.util.f;
import com.twitter.library.util.k;
import com.twitter.library.util.o;
import com.twitter.model.account.OAuthToken;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.m;
import com.twitter.util.object.e;
import defpackage.bbk;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.bex;
import defpackage.bmk;
import defpackage.bmt;
import defpackage.bmy;
import defpackage.bne;
import defpackage.bub;
import defpackage.buc;
import defpackage.bvh;
import defpackage.cbj;
import defpackage.cbx;
import defpackage.cfb;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public final class a extends AbstractThreadedSyncAdapter {
    public a(Context context) {
        super(context, true);
    }

    public void a(Account account, Bundle bundle, SyncResult syncResult) {
        SyncStats syncStats;
        if (account != null) {
            Context context = getContext();
            TwitterUser c = b.c(d.a().a(account));
            if (c == null) {
                syncStats = syncResult.stats;
                syncStats.numAuthExceptions++;
                cfb.e("TwitterDataSync", "User Info content not found.");
                return;
            }
            bbk a = bbn.a();
            a.a();
            try {
                OAuthToken a2 = b.a(account, false);
                if (a2 == null) {
                    syncStats = syncResult.stats;
                    syncStats.numAuthExceptions++;
                    cfb.e("TwitterDataSync", "Token not found.");
                    return;
                }
                l lVar = new l(context, c.k);
                a.b("data_sync_adapter_owner_id", Long.valueOf(c.c));
                boolean c2 = PushRegistration.c(context);
                Object aVar = new com.twitter.library.platform.notifications.a(c.k, c.c, c2);
                if (bundle.getBoolean("home", true)) {
                    new b(context, c, account.name, a2).a(syncResult, aVar);
                }
                if (bundle.getBoolean("messages", true)) {
                    a(context, syncResult);
                }
                if (bundle.getBoolean("activity", true)) {
                    boolean z = lVar.getBoolean("notifications_follow_only", false);
                    a(0, context, account, a2, c, syncResult, aVar, true, z);
                    a(2, context, account, a2, c, syncResult, aVar, false, z);
                    a(3, context, account, a2, c, syncResult, aVar, !c.n, z);
                    a(4, context, account, a2, c, syncResult, aVar, false, z);
                }
                if (cbx.a()) {
                    if (bundle.getBoolean("live_addressbook_sync", true)) {
                        a(syncResult, account.name);
                    }
                }
                if (cbj.g(c.c)) {
                    if (bundle.getBoolean("news", true) && com.twitter.config.d.a(c.c, "japan_news_android_periodic_sync_enabled", false)) {
                        long j = lVar.getLong("news_last_sync", 0);
                        int a3 = com.twitter.config.d.a(c.c, "japan_news_android_periodic_sync_interval_seconds", -1);
                        long b = m.b();
                        if (a3 > 0 && b > j + (((long) a3) * 1000)) {
                            a(context, account, a2, c);
                            lVar.a().a("news_last_sync", b);
                        }
                    }
                }
                if (!syncResult.hasError()) {
                    new bmt(context, c.c, c.k, a2).k("Data sync happens in the background and is not triggered by a user action.").P();
                }
                if (bundle.getBoolean("fs_config", false)) {
                    bvh.a(c.c);
                }
                if (aVar.a()) {
                    boolean z2;
                    Intent intent = new Intent(TwitterDataSyncService.a);
                    intent.setExtrasClassLoader(getClass().getClassLoader());
                    aVar.e = PushService.a(c.k, c.c, context);
                    String str = "show_notif";
                    if (!c2) {
                        if (bundle.getBoolean("show_notif", false)) {
                            z2 = true;
                            intent.putExtra(str, z2).putExtra("data", com.twitter.util.serialization.m.a(aVar, com.twitter.library.platform.notifications.a.a));
                            context.sendOrderedBroadcast(intent, ck.a);
                        }
                    }
                    z2 = false;
                    intent.putExtra(str, z2).putExtra("data", com.twitter.util.serialization.m.a(aVar, com.twitter.library.platform.notifications.a.a));
                    context.sendOrderedBroadcast(intent, ck.a);
                }
                int a4 = com.twitter.config.d.a("legacy_deciders_antispam_query_frequency_sec", 0);
                long j2 = lVar.getLong("antispam_last_poll_timestamp", 0);
                long b2 = m.b();
                if (b2 > (((long) a4) * 1000) + j2) {
                    a(context, new w(a2), c.c, com.twitter.config.d.a("legacy_deciders_antispam_connect_tweet_count", 0), com.twitter.config.d.a("legacy_deciders_antispam_connect_user_count", 0));
                    lVar.a().a("antispam_last_poll_timestamp", b2);
                }
                b(context, account, a2, c);
                lVar.a().a("last_sync", b2).apply();
                a.b();
            } catch (AuthenticatorException e) {
                syncStats = syncResult.stats;
                syncStats.numAuthExceptions++;
            } catch (OperationCanceledException e2) {
                cfb.b("TwitterDataSync", "Sync canceled.");
            } catch (IOException e3) {
                syncStats = syncResult.stats;
                syncStats.numIoExceptions++;
            } finally {
                a.b();
            }
        }
    }

    private void a(SyncResult syncResult, String str) {
        Context context = getContext();
        Session c = bg.a().c();
        bex.a(context, c).P();
        UserSettings j = c.j();
        if (j != null && j.x && buc.a(context, str) && com.twitter.config.d.a("people_discovery_live_sync_enabled")) {
            k a = com.twitter.library.util.l.a(context);
            if (a.b()) {
                Cursor a2 = a.a();
                if (a2 != null) {
                    bub a3 = a.a(a.a(a2));
                    Map b = a3.b();
                    Set a4 = a3.a();
                    o fVar = new f(syncResult);
                    a.a(b, fVar);
                    a.a(a4, fVar);
                    a2.close();
                }
            }
        } else if (j != null && !j.x) {
            buc.a(context, str, 0);
        }
    }

    boolean a(int i, TwitterUser twitterUser, boolean z) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                return true;
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return twitterUser.n;
            case WireMessage.WIRE_AUTH /*3*/:
                return twitterUser.n || z;
            default:
                return false;
        }
    }

    private static void a(Context context, com.twitter.library.network.a aVar, long j, int i, int i2) {
        di a = di.a(context, j);
        long[] a2 = a.a(i, i2);
        if (a2 != null) {
            String stringBuilder = an.a(an.a(context).a, "1.1", "users", "lookup").append(".json").toString();
            CharSequence stringBuilder2 = new StringBuilder();
            stringBuilder2.append(stringBuilder);
            ap apVar = new ap();
            apVar.a("user_id", a2, 0, a2.length);
            apVar.a("include_user_entities", true);
            stringBuilder2.append(apVar.b());
            bbn.a().b("data_sync_adapter_url", (Object) stringBuilder2);
            i a3 = u.a(TwitterUser.class);
            bbl bbl = new bbl(j);
            a3.a(bbl);
            HttpOperation c = new j(context, stringBuilder2).a(j).a(aVar).a("Data sync happens in the background and is not triggered by a user action.").a(a3).a().c();
            bbn.a(bbl);
            if (c.j()) {
                List<TwitterUser> list = (List) e.a(a3.b());
                Set hashSet = new HashSet();
                for (TwitterUser bf_ : list) {
                    hashSet.add(Long.valueOf(bf_.bf_()));
                }
                for (long j2 : a2) {
                    if (!hashSet.contains(Long.valueOf(j2))) {
                        com.twitter.library.provider.e eVar = new com.twitter.library.provider.e(context.getContentResolver());
                        a.b(j, j2, eVar);
                        eVar.a();
                    }
                }
            }
        }
    }

    public void onPerformSync(Account account, Bundle bundle, String str, ContentProviderClient contentProviderClient, SyncResult syncResult) {
        a(account, bundle, syncResult);
    }

    private void a(Context context, SyncResult syncResult) {
        aa P = new com.twitter.library.api.dm.requests.l(context, bg.a().c()).k("Data sync happens in the background and is not triggered by a user action.").P();
        if (!P.b()) {
            int d = P.d();
            SyncStats syncStats;
            if (d == 0) {
                syncStats = syncResult.stats;
                syncStats.numParseExceptions++;
            } else if (d == 404) {
                syncStats = syncResult.stats;
                syncStats.numAuthExceptions++;
            }
        }
    }

    private void a(int i, Context context, Account account, OAuthToken oAuthToken, TwitterUser twitterUser, SyncResult syncResult, com.twitter.library.platform.notifications.a aVar, boolean z, boolean z2) {
        if (a(i, twitterUser, z2)) {
            cfb.b("TwitterDataSync", "=====> Sync activity");
            com.twitter.library.api.activity.f fVar = (com.twitter.library.api.activity.f) new com.twitter.library.api.activity.f(context, new ab(twitterUser.c, account.name, oAuthToken, true), i).a(z).c(20).k("Data sync happens in the background and is not triggered by a user action.");
            int i2 = fVar.P().g().a;
            if (i2 == 200) {
                TwitterDataSyncService.b(context, account.name);
                if (z) {
                    a(i, context, account, aVar, fVar, di.a(context, twitterUser.c));
                }
            } else if (i2 == 0) {
                r2 = syncResult.stats;
                r2.numParseExceptions++;
            } else if (i2 == 401) {
                r2 = syncResult.stats;
                r2.numAuthExceptions++;
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(int r13, android.content.Context r14, android.accounts.Account r15, com.twitter.library.platform.notifications.a r16, com.twitter.library.api.activity.f r17, com.twitter.library.provider.di r18) {
        /*
        r12 = this;
        r2 = r15.name;
        r6 = com.twitter.library.client.t.a(r14, r2);
        r5 = r17.e();
        r2 = new com.twitter.library.platform.notifications.ad;
        r2.<init>();
        r0 = r16;
        r0.h = r2;
        r0 = r16;
        r2 = r0.h;
        r3 = 3;
        r2.b = r3;
        if (r5 == 0) goto L_0x00e6;
    L_0x001c:
        r2 = 0;
        r8 = r5.iterator();
        r4 = r2;
    L_0x0022:
        r2 = r8.hasNext();
        if (r2 == 0) goto L_0x00e6;
    L_0x0028:
        r2 = r8.next();
        r2 = (defpackage.cfz) r2;
        r9 = r2.a;
        r10 = r9.a;
        r3 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1));
        if (r3 <= 0) goto L_0x0022;
    L_0x0036:
        r0 = r16;
        r3 = r0.d;
        if (r3 != 0) goto L_0x0049;
    L_0x003c:
        if (r4 != 0) goto L_0x0049;
    L_0x003e:
        r3 = 1;
    L_0x003f:
        if (r3 == 0) goto L_0x0046;
    L_0x0041:
        r3 = r9.d;
        switch(r3) {
            case 1: goto L_0x0083;
            case 2: goto L_0x0067;
            case 3: goto L_0x004b;
            case 4: goto L_0x00bf;
            case 5: goto L_0x00a9;
            default: goto L_0x0046;
        };
    L_0x0046:
        r2 = r4;
    L_0x0047:
        r4 = r2;
        goto L_0x0022;
    L_0x0049:
        r3 = 0;
        goto L_0x003f;
    L_0x004b:
        r2 = r2.a();
        r2 = com.twitter.util.collection.CollectionUtils.b(r2);
        r2 = (com.twitter.model.core.cm) r2;
        if (r2 == 0) goto L_0x0046;
    L_0x0057:
        r0 = r16;
        r3 = r0.h;
        r3 = r3.a(r2);
        r2 = r2.C;
        r3.a(r2);
        r4 = 1;
        r2 = r4;
        goto L_0x0047;
    L_0x0067:
        r2 = r2.c();
        r2 = com.twitter.util.collection.CollectionUtils.b(r2);
        r2 = (com.twitter.model.core.cm) r2;
        if (r2 == 0) goto L_0x0046;
    L_0x0073:
        r0 = r16;
        r3 = r0.h;
        r3 = r3.a(r2);
        r2 = r2.C;
        r3.a(r2);
        r4 = 1;
        r2 = r4;
        goto L_0x0047;
    L_0x0083:
        r2 = r2.a();
        r2 = com.twitter.util.collection.CollectionUtils.b(r2);
        r2 = (com.twitter.model.core.cm) r2;
        r3 = r9.c();
        r3 = com.twitter.util.collection.CollectionUtils.b(r3);
        r3 = (com.twitter.model.core.TwitterUser) r3;
        if (r2 == 0) goto L_0x0046;
    L_0x0099:
        if (r3 == 0) goto L_0x0046;
    L_0x009b:
        r0 = r16;
        r4 = r0.h;
        r2 = r4.a(r2);
        r2.a(r3);
        r4 = 1;
        r2 = r4;
        goto L_0x0047;
    L_0x00a9:
        r2 = r9.c();
        r2 = com.twitter.util.collection.CollectionUtils.b(r2);
        r2 = (com.twitter.model.core.TwitterUser) r2;
        if (r2 == 0) goto L_0x0046;
    L_0x00b5:
        r0 = r16;
        r3 = r0.h;
        r3.a(r2);
        r4 = 1;
        r2 = r4;
        goto L_0x0047;
    L_0x00bf:
        r2 = r2.c();
        r2 = com.twitter.util.collection.CollectionUtils.b(r2);
        r2 = (com.twitter.model.core.cm) r2;
        r3 = r9.c();
        r3 = com.twitter.util.collection.CollectionUtils.b(r3);
        r3 = (com.twitter.model.core.TwitterUser) r3;
        if (r2 == 0) goto L_0x0046;
    L_0x00d5:
        if (r3 == 0) goto L_0x0046;
    L_0x00d7:
        r0 = r16;
        r4 = r0.h;
        r2 = r4.a(r2);
        r2.a(r3);
        r4 = 1;
        r2 = r4;
        goto L_0x0047;
    L_0x00e6:
        if (r5 == 0) goto L_0x014e;
    L_0x00e8:
        r2 = r5.size();
    L_0x00ec:
        r0 = r16;
        r3 = r0.h;
        r3.d = r2;
        r3 = "TwitterDataSync";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "sync about me activities, newCount=";
        r4 = r4.append(r5);
        r4 = r4.append(r2);
        r4 = r4.toString();
        defpackage.cfb.b(r3, r4);
        if (r2 <= 0) goto L_0x014d;
    L_0x010e:
        r0 = r16;
        r2 = r0.d;
        if (r2 != 0) goto L_0x0145;
    L_0x0114:
        r0 = r16;
        r2 = r0.h;
        r4 = r15.name;
        r5 = 6;
        r6 = 0;
        r0 = r16;
        r3 = r0.h;
        r7 = r3.a();
        r0 = r16;
        r3 = r0.h;
        r8 = r3.i;
        r0 = r16;
        r3 = r0.h;
        r10 = r3.g;
        r11 = 1;
        r3 = r18;
        r3 = r3.a(r4, r5, r6, r7, r8, r10, r11);
        r2.r = r3;
        r0 = r16;
        r2 = r0.h;
        r0 = r18;
        r3 = r0.d(r13);
        r2.c = r3;
    L_0x0145:
        r2 = r17.g();
        r0 = r16;
        r0.f = r2;
    L_0x014d:
        return;
    L_0x014e:
        r2 = 0;
        goto L_0x00ec;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.platform.a.a(int, android.content.Context, android.accounts.Account, com.twitter.library.platform.notifications.a, com.twitter.library.api.activity.f, com.twitter.library.provider.di):void");
    }

    private void a(Context context, Account account, OAuthToken oAuthToken, TwitterUser twitterUser) {
        new bmk(context, new ab(twitterUser.c, account.name, oAuthToken, true)).a(cbj.a()).b(cbj.b()).a(30).k("Data sync happens in the background and is not triggered by a user action.").P();
    }

    private void b(Context context, Account account, OAuthToken oAuthToken, TwitterUser twitterUser) {
        bmy a = bne.a(context, new ab(twitterUser.c, account.name, oAuthToken, true), true);
        if (a != null) {
            a.P();
        }
    }

    static void a(Context context) {
        Intent action = new Intent(context, TwitterDataSyncService.class).setAction("on_poll_alarm_ev");
        PendingIntent service = PendingIntent.getService(context, 0, action, 536870912);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompatApi21.CATEGORY_ALARM);
        AccountManager accountManager = AccountManager.get(context);
        ar a = ar.a(context);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        int i = defaultSharedPreferences.getInt("alarm_interval", -1);
        Account[] accountsByType = accountManager.getAccountsByType(b.a);
        int length = accountsByType.length;
        int i2 = 0;
        int i3 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        while (i2 < length) {
            Account account = accountsByType[i2];
            i2++;
            i3 = Math.min(i3, a.a(account.name, com.twitter.library.platform.notifications.w.a(context, account.name).a()));
        }
        if (i3 < ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
            if (i3 != i || service == null) {
                long j = 60000 * ((long) i3);
                if (service != null) {
                    alarmManager.cancel(service);
                }
                alarmManager.setInexactRepeating(0, ((long) (Math.random() * ((double) Math.min(j, 3600000)))) + (m.b() + j), j, PendingIntent.getService(context, 0, action, 0));
                defaultSharedPreferences.edit().putInt("alarm_interval", i3).apply();
            }
        } else if (service != null) {
            alarmManager.cancel(service);
            defaultSharedPreferences.edit().remove("alarm_interval").apply();
        }
    }

    boolean a(Account account) {
        if (account == null || !ContentResolver.getSyncAutomatically(account, ck.c) || ContentResolver.getIsSyncable(account, ck.c) <= 0) {
            return false;
        }
        Context context = getContext();
        if (m.b() - new l(context, account.name).getLong("last_sync", 0) > (((long) ar.a(context).a(account.name, com.twitter.library.platform.notifications.w.a(context, account.name).a())) * 60000) - 60000) {
            return true;
        }
        return false;
    }
}
