package com.twitter.android.client.tweetuploadmanager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.support.annotation.VisibleForTesting;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.BouncerWebViewActivity;
import com.twitter.android.DialogActivity;
import com.twitter.android.client.bz;
import com.twitter.android.client.z;
import com.twitter.android.dialog.RateLimitDialogFragmentActivity;
import com.twitter.internal.network.k;
import com.twitter.library.api.upload.aa;
import com.twitter.library.client.Session;
import com.twitter.library.network.an;
import com.twitter.library.provider.cc;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.provider.v;
import com.twitter.library.resilient.b;
import com.twitter.library.resilient.h;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.model.drafts.d;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.concurrent.c;
import com.twitter.util.j;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bbw;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import wb;

/* compiled from: Twttr */
public class TweetUploadManager {
    public static final int a;
    @SuppressLint({"UseSparseArrays"})
    private static final Map<Long, c> b;

    static {
        a = TweetUploadState.values().length + 1;
        b = Collections.synchronizedMap(new HashMap());
    }

    public static void a(Context context, Session session, long j) {
        j.c();
        d(new c(context, session, j, a), TweetUploadState.values()[0]);
    }

    static void a(c cVar) {
        j.c();
        TweetUploadState[] values = TweetUploadState.values();
        d(cVar, values[values.length - 1]);
    }

    private static void d(c cVar, TweetUploadState tweetUploadState) {
        j.c();
        try {
            e(cVar);
            g(cVar);
            e(cVar, tweetUploadState);
        } catch (TweetUploadException e) {
            b(e);
        }
    }

    public static com.twitter.util.concurrent.j<Boolean> a(Context context, long j) {
        return a(context, j, true);
    }

    public static com.twitter.util.concurrent.j<Boolean> a(Context context, long j, boolean z) {
        return new c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new e(context, j, z)).a();
    }

    private static void e(c cVar) throws TweetUploadException {
        j.c();
        d a = v.a(cVar.e(), cVar.l().g()).a(cVar.f());
        if (a == null) {
            throw new TweetUploadException(cVar, "Draft Tweet not found for given ID");
        }
        cVar.a(a);
    }

    private static void e(c cVar, TweetUploadState tweetUploadState) throws TweetUploadException {
        j.c();
        TweetUploadState a = a(cVar, tweetUploadState);
        wb a2 = a.a();
        com.twitter.util.concurrent.j a3 = a2.a(cVar, cVar.k());
        cVar.a(a2, a3);
        a3.c(new i(cVar));
        a3.d(new h(cVar));
        a3.b(new j(cVar, a));
    }

    @VisibleForTesting
    public static TweetUploadState a(c cVar, TweetUploadState tweetUploadState) throws TweetUploadException {
        TweetUploadState b = b(cVar, tweetUploadState);
        cVar.h().a(b);
        h.a(cVar.e()).b((b) cVar);
        return b;
    }

    static TweetUploadState b(c cVar, TweetUploadState tweetUploadState) throws TweetUploadException {
        TweetUploadState[] values = TweetUploadState.values();
        int length = values.length;
        int i = 0;
        while (i < length) {
            TweetUploadState tweetUploadState2 = values[i];
            if (tweetUploadState2 == tweetUploadState) {
                break;
            } else if (tweetUploadState2.b(cVar)) {
                i++;
            } else if (cVar.q() <= 0) {
                throw new TweetUploadException(cVar, "Limit of tweet upload state resets exceeded");
            } else {
                TweetUploadState tweetUploadState3;
                int ordinal = tweetUploadState2.ordinal();
                for (length = ordinal; length >= 0; length--) {
                    tweetUploadState3 = values[ordinal];
                    if (tweetUploadState3.a(cVar)) {
                        break;
                    }
                }
                tweetUploadState3 = null;
                tweetUploadState = tweetUploadState3;
            }
        }
        tweetUploadState = null;
        if (tweetUploadState != null) {
            return tweetUploadState;
        }
        throw new TweetUploadException(cVar, "Could not find a valid tweet upload state");
    }

    private static void f(c cVar) {
        j.c();
        o(cVar);
        n(cVar);
        cVar.a();
        i(cVar);
    }

    static void b(c cVar) {
        Context e = cVar.e();
        Session l = cVar.l();
        long g = l.g();
        long f = cVar.f();
        v.a(e, g).a(f, 2, null);
        new g(e, l, f).execute(new Void[0]);
    }

    private static void b(TweetUploadException tweetUploadException) {
        j.c();
        c a = tweetUploadException.a();
        o(a);
        m(a);
        a.b();
        i(a);
    }

    private static void g(c cVar) {
        j.c();
        long f = cVar.f();
        b.put(Long.valueOf(f), cVar);
        Context e = cVar.e();
        Session l = cVar.l();
        long g = l.g();
        d g2 = cVar.g();
        if (!cVar.m() && !cVar.n()) {
            v.a(e, g).a(f, 1, null);
            z.a(e).a(l, f, g2.c, 2131363189);
            di a = di.a(e, g);
            if (a.b(g, f) == null) {
                TwitterUser a2 = a.a(g);
                if (a2 == null) {
                    bbn.a(new RuntimeException("Could not find user: " + g));
                } else {
                    cc.a(a.a(a2, g2));
                }
            }
        }
    }

    private static void h(c cVar) {
        j.c();
        o(cVar);
        l(cVar);
        cVar.b();
        i(cVar);
    }

    private static void i(c cVar) {
        j.c();
        Context e = cVar.e();
        h.a(e).a((b) cVar);
        d g = cVar.g();
        if (g != null) {
            v.a(e, cVar.l().g()).a(g.b, 0, null);
            g.c();
            for (aa h : cVar.o()) {
                h.h();
            }
        }
        b.remove(Long.valueOf(cVar.f()));
    }

    private static void j(c cVar) {
        Context e = cVar.e();
        v a = v.a(e, cVar.l().g());
        e eVar = new e(e.getContentResolver());
        a.a(cVar.f(), eVar, true);
        eVar.a();
    }

    private static void k(c cVar) {
        b(cVar.e(), cVar.l().g(), cVar.f());
    }

    private static void b(Context context, long j, long j2) {
        di a = di.a(context, j);
        Long b = a.b(j, j2);
        if (b != null) {
            a.a(b.longValue(), null);
            cc.a(b.longValue());
        }
    }

    private static void l(c cVar) {
        boolean z = false;
        Context e = cVar.e();
        Session l = cVar.l();
        long g = l.g();
        long f = cVar.f();
        z.a(e).b(l, f, cVar.g().c, 2131363190);
        j(cVar);
        p(cVar);
        e eVar = new e(e.getContentResolver());
        di a = di.a(e, g);
        Long b = a.b(g, f);
        if (b != null) {
            a.a(b.longValue(), eVar);
            cm i = cVar.i();
            if (i != null) {
                boolean a2;
                Tweet d = a.d(i.b);
                if (d != null) {
                    a2 = cc.a(b.longValue(), d, new f(eVar));
                } else {
                    a2 = false;
                }
                z = a2;
            } else {
                k(cVar);
            }
        }
        if (!z) {
            eVar.a();
        }
    }

    private static void m(c cVar) {
        Context e = cVar.e();
        Session l = cVar.l();
        long g = l.g();
        long f = cVar.f();
        int[] a = cVar.h().a();
        k(cVar);
        d g2 = cVar.g();
        String str = g2 != null ? g2.c : BuildConfig.VERSION_NAME;
        z a2 = z.a(e);
        com.twitter.library.service.aa b = cVar.h().b();
        if (b != null) {
            bbu.a(new TwitterScribeLog(g).b(":composition:send_tweet:save_draft:complete"));
            if (!a(cVar, b, str)) {
                switch (b.d()) {
                    case 403:
                        if (CollectionUtils.a(a, 187)) {
                            a2.a(l, f, str, 2131362572, true);
                            return;
                        } else if (CollectionUtils.a(a, 371)) {
                            a2.a(l, f, str, 2131363066, false);
                            return;
                        } else if (CollectionUtils.a(a, 372)) {
                            a2.a(l, f, str, 2131364065, false);
                            return;
                        } else if (CollectionUtils.a(a, 373)) {
                            a2.a(l, f, str, 2131362753, false);
                            return;
                        } else if (CollectionUtils.a(a, 383)) {
                            a2.a(l, f, str, 2131362050, false);
                            return;
                        } else if (CollectionUtils.a(a, 384)) {
                            a2.a(l, f, str, 2131362752, false);
                            return;
                        } else if (CollectionUtils.a(a, 224)) {
                            a2.a(l, f, str, 2131363377, false);
                            e.startActivity(new Intent(e, DialogActivity.class).setAction("blocked_spammer_tweet").setFlags(268435456));
                            return;
                        } else if (CollectionUtils.a(a, 223)) {
                            a2.a(l, f, str, 2131363377, false);
                            e.startActivity(new Intent(e, DialogActivity.class).setAction("blocked_automated_spammer").setFlags(268435456));
                            return;
                        } else if (CollectionUtils.a(a, 344)) {
                            a2.a(l, f, str, 2131363377, false);
                            RateLimitDialogFragmentActivity.a(e);
                            return;
                        } else {
                            a2.a(l, f, str, 2131363377, true);
                            bz.a(e).a(a);
                            return;
                        }
                    default:
                        a2.a(l, f, str, 2131363377, false);
                        return;
                }
            }
            return;
        }
        a2.a(l, f, str, 2131363377, false);
    }

    private static void n(c cVar) {
        Context e = cVar.e();
        long g = cVar.l().g();
        long f = cVar.f();
        k(cVar);
        j(cVar);
        if (cVar.m()) {
            z.a(e).a(g, f);
        }
    }

    private static boolean a(c cVar, com.twitter.library.service.aa aaVar, String str) {
        if (aaVar.b() || !an.a(aaVar)) {
            return false;
        }
        Context e = cVar.e();
        Session l = cVar.l();
        bz.a(e).a(l, aaVar);
        long f = cVar.f();
        z.a(e).a(l, f, str, 2131363377, false, BouncerWebViewActivity.a(e, aaVar));
        return true;
    }

    private static void o(c cVar) {
        d h = cVar.h();
        String str = h.c() ? "success" : "failure";
        d g = cVar.g();
        String str2 = (g == null || g.d.isEmpty()) ? "no_media" : "has_media";
        bbw bbw = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(cVar.l().g()).b("app:twitter_service:tweet:create", str)).i(str2);
        cm i = cVar.i();
        if (i != null) {
            ScribeItem twitterScribeItem = new TwitterScribeItem();
            twitterScribeItem.a = i.b;
            twitterScribeItem.c = 0;
            bbw.a(twitterScribeItem);
        }
        Context e = cVar.e();
        com.twitter.library.service.aa b = h.b();
        if (b != null) {
            k g2 = b.g();
            if (g2 != null) {
                TwitterScribeLog.a(e, (TwitterScribeLog) bbw, g2);
                bbw.a(b.f().i().toString(), g2);
            }
        }
        bbu.a(bbw);
    }

    private static void p(c cVar) {
        cm i = cVar.i();
        if (i != null) {
            int b = i.e.e.b();
            int b2 = i.e.f.b();
            String str = i.k > 0 ? ":composition:send_reply:" : ":composition:send_tweet:";
            long g = cVar.l().g();
            if (b > 0) {
                bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).b(str + "mentions:count")).a((long) b));
            }
            if (b2 > 0) {
                bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).b(str + "hashtags:count")).a((long) b2));
            }
        }
    }
}
