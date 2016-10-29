package com.twitter.android.client;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v7.recyclerview.BuildConfig;
import android.text.SpannableStringBuilder;
import android.text.style.TextAppearanceSpan;
import android.widget.RemoteViews;
import com.twitter.android.DispatchActivity;
import com.twitter.android.TweetActivity;
import com.twitter.android.WidgetSettingsActivity;
import com.twitter.android.composer.aw;
import com.twitter.android.mx;
import com.twitter.android.util.ak;
import com.twitter.app.main.MainActivity;
import com.twitter.config.a;
import com.twitter.library.api.at;
import com.twitter.library.client.bg;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.media.manager.l;
import com.twitter.library.provider.ck;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.request.b;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cr;
import com.twitter.util.SynchronizedDateFormat;
import com.twitter.util.aj;
import com.twitter.util.al;
import com.twitter.util.m;
import defpackage.bbu;
import defpackage.bcx;
import defpackage.cni;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import tv.periscope.android.library.k;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class WidgetControl {
    public static final String a;
    public static final String b;
    public static final String c;
    private static final SimpleDateFormat f;
    private static final Object g;
    private static volatile TextAppearanceSpan h;
    private static int i;
    public final String d;
    public final long e;
    private final WidgetList[] j;
    private final ce k;
    private final ce l;
    private final Context m;
    private final AtomicBoolean n;
    private final l o;

    /* compiled from: Twttr */
    class WidgetList extends ArrayList<Tweet> {
        private static final long serialVersionUID = 3793705417118140755L;
        int mCurrentListIndex;

        WidgetList() {
        }

        WidgetList(WidgetList widgetList) {
            super(widgetList);
            this.mCurrentListIndex = widgetList.mCurrentListIndex;
        }

        public void clear() {
            super.clear();
            this.mCurrentListIndex = 0;
        }

        void a() {
            this.mCurrentListIndex++;
        }

        void b() {
            this.mCurrentListIndex--;
        }
    }

    static {
        a = a.a() + ".widget.button.next";
        b = a.a() + ".widget.button.prev";
        c = a.a() + ".widget.update";
        f = new SynchronizedDateFormat();
        g = new Object();
        i = 1;
    }

    private long a(WidgetList widgetList) {
        if (widgetList != null) {
            Iterator it = widgetList.iterator();
            while (it.hasNext()) {
                Tweet tweet = (Tweet) it.next();
                if (tweet != null) {
                    return tweet.q;
                }
            }
        }
        return 0;
    }

    void a() {
        a(this.l);
        a(this.k);
    }

    private void a(ce ceVar) {
        int[] b = ceVar.b(this.m);
        ceVar.a(this.m, b);
        if (b.length > 0) {
            String str = ceVar.d() + "_update_time";
            com.twitter.library.client.l lVar = new com.twitter.library.client.l(this.m, this.d, "widgets");
            long b2 = m.b();
            if (lVar.getLong(str, 0) + 86400000 < b2) {
                bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.e).b("widget", r0, null, null, "impression")).e(b.length));
                lVar.a().a(str, b2).apply();
            }
        }
    }

    boolean b() {
        return this.k.a(this.m) || this.l.a(this.m);
    }

    void a(int i, long j, List<Tweet> list) {
        if (this.n.get()) {
            WidgetList e = e(i);
            if (j == 0) {
                e.clear();
            }
            int i2 = e.size() == 0 ? 1 : 0;
            e.addAll(0, list);
            int size = e.size();
            if (size == 0) {
                a(this.m, this.k, 3, this.d, i);
                a(this.m, this.l, 3, this.d, i);
                return;
            }
            while (size > 20) {
                e.remove(20);
                size = e.size();
            }
            size = e.mCurrentListIndex;
            int size2 = list.size();
            if (i2 != 0 || size <= size2 || size + size2 >= 20) {
                e.mCurrentListIndex = 0;
                b(this.k, i);
            }
            b(this.l, i);
        }
    }

    public WidgetControl(Context context, String str, long j) {
        this.m = context;
        this.o = l.a(context);
        this.d = str;
        this.e = j;
        this.j = new WidgetList[]{new WidgetList(), new WidgetList()};
        this.k = new ce(str, 2131230724, 2130969547, 2130969543);
        this.l = new ce(str, 2131230725, 2130969549, 2130969544);
        this.n = new AtomicBoolean(false);
        f.applyPattern(context.getResources().getString(2131364265));
    }

    public void c() {
        if (!this.n.get()) {
            this.n.set(true);
            this.m.startService(new Intent(this.m, WidgetService.class).setAction("open").putExtra("owner_id", this.e));
        }
    }

    public void a(boolean z) {
        int i = 0;
        if (this.n.get()) {
            this.n.set(false);
            Context context = this.m;
            Intent putExtra = new Intent(this.m, WidgetService.class).setAction("close").putExtra("owner_id", this.e);
            String str = "widget_state";
            if (!z) {
                i = 1;
            }
            context.startService(putExtra.putExtra(str, i));
        }
    }

    private WidgetList e(int i) {
        if (i == 5) {
            return this.j[1];
        }
        return this.j[0];
    }

    private static int[] a(ce ceVar, int i) {
        if (i == 5) {
            return ceVar.c();
        }
        return ceVar.b();
    }

    public void a(int i) {
        if (this.n.get()) {
            WidgetList e = e(i);
            int size = e.size();
            int i2 = e.mCurrentListIndex;
            if (size > 0 && i2 < size - 1) {
                e.a();
                b(this.k, i);
            }
        }
    }

    public void b(int i) {
        if (this.n.get()) {
            WidgetList e = e(i);
            int size = e.size();
            int i2 = e.mCurrentListIndex;
            if (size > 0 && i2 > 0) {
                e.b();
                b(this.k, i);
            }
        }
    }

    public void b(boolean z) {
        long j = 0;
        if (this.n.get()) {
            long j2;
            Context context = this.m;
            Intent putExtra = new Intent(this.m, WidgetService.class).setAction("refresh").putExtra("owner_id", this.e);
            String str = "latest_time_tweets";
            if (z) {
                j2 = 0;
            } else {
                j2 = a(this.j[0]);
            }
            Intent putExtra2 = putExtra.putExtra(str, j2);
            String str2 = "latest_time_mentions";
            if (!z) {
                j = a(this.j[1]);
            }
            context.startService(putExtra2.putExtra(str2, j));
        }
    }

    public void a(long j) {
        if (this.n.get()) {
            a(j, e(0));
            a(j, e(5));
        }
    }

    private void a(long j, WidgetList widgetList) {
        Iterator it = widgetList.iterator();
        while (it.hasNext()) {
            if (((Tweet) it.next()).H == j) {
                b(true);
                return;
            }
        }
    }

    public void c(int i) {
        if (this.n.get()) {
            ce ceVar;
            if (i == 2131230724) {
                ceVar = this.k;
            } else {
                ceVar = this.l;
            }
            b(ceVar, 0);
            b(ceVar, 5);
        }
    }

    private void b(ce ceVar, int i) {
        if (this.n.get()) {
            int i2;
            WidgetList e = e(i);
            if (ceVar.b == 2131230724) {
                i2 = e.mCurrentListIndex;
            } else {
                i2 = 0;
            }
            if (e.size() == 0) {
                a(this.m, ceVar, 3, this.d, i);
                return;
            }
            Tweet tweet = (Tweet) e.get(i2);
            this.o.a((b) UserImageRequest.a(tweet.r, -1).a(new ca(this, this.n, tweet, ceVar, i)));
        }
    }

    private void c(ce ceVar, int i) {
        int[] a = a(ceVar, i);
        if (a != null) {
            AppWidgetManager instance = AppWidgetManager.getInstance(this.m);
            for (int i2 : a) {
                Intent intent = new Intent(this.m, ScrollableWidgetService.class);
                intent.putExtra("appWidgetId", i2);
                intent.putExtra("ownerId", this.e);
                intent.putExtra("contentType", i);
                intent.putExtra("accountName", this.d);
                intent.setData(Uri.parse(intent.toUri(1)));
                RemoteViews a2 = a(this.m, ceVar.b, ceVar.c, 4, this.d, i);
                a2.setRemoteAdapter(i2, 2131952374, intent);
                a2.setEmptyView(2131952374, 2131953410);
                a2.setPendingIntentTemplate(2131952374, PendingIntent.getActivity(this.m, 0, new Intent(this.m, TweetActivity.class).setAction("android.intent.action.VIEW" + e()).setFlags(67108864), 268435456));
                instance.updateAppWidget(i2, a2);
            }
            instance.notifyAppWidgetViewDataChanged(ceVar.b(), 2131952374);
        }
    }

    private void a(Bitmap bitmap, ce ceVar, int i) {
        int[] a = a(ceVar, i);
        if (a != null && a.length != 0) {
            RemoteViews remoteViews = new RemoteViews(this.m.getPackageName(), 2130969549);
            WidgetList e = e(i);
            if (e.size() > 0) {
                Tweet tweet = (Tweet) e.get(0);
                a(remoteViews, tweet, bitmap);
                if (tweet.s == this.e) {
                    remoteViews.setViewVisibility(2131953412, 4);
                } else {
                    remoteViews.setViewVisibility(2131953412, 0);
                    remoteViews.setOnClickPendingIntent(2131953412, PendingIntent.getActivity(this.m, 0, aw.a().a(tweet.t).d(335544320).b(this.d).c("widget::::click").a(this.m), 268435456));
                }
            } else {
                remoteViews.setViewVisibility(2131953412, 4);
            }
            AppWidgetManager.getInstance(this.m).updateAppWidget(a, remoteViews);
        }
    }

    private void a(Tweet tweet, Bitmap bitmap, ce ceVar, int i) {
        if (ceVar.b == 2131230724) {
            c(ceVar, i);
        } else {
            a(bitmap, ceVar, i);
        }
        a(this.m, ceVar, 1, BuildConfig.VERSION_NAME, i);
    }

    private void a(RemoteViews remoteViews, Tweet tweet, Bitmap bitmap) {
        Object a;
        CharSequence charSequence;
        Resources resources = this.m.getResources();
        if (h == null) {
            synchronized (g) {
                if (h == null) {
                    h = new TextAppearanceSpan(null, 1, (int) (14.0f * resources.getDisplayMetrics().density), ColorStateList.valueOf(resources.getColor(2131886264)), null);
                }
            }
        }
        Object obj = tweet.v;
        String f = tweet.f();
        long j = tweet.q;
        if (tweet.o()) {
            a = at.a(f);
        } else {
            a = null;
        }
        CharSequence spannableStringBuilder = new SpannableStringBuilder();
        if (obj != null) {
            spannableStringBuilder.append(obj);
            spannableStringBuilder.setSpan(h, 0, obj.length(), 33);
        }
        spannableStringBuilder.append(' ').append(f);
        int i = 0;
        for (cr crVar : tweet.w.b()) {
            int length;
            int i2 = crVar.g - i;
            int i3 = crVar.h - i;
            if (i2 >= 0 && i3 <= spannableStringBuilder.length()) {
                charSequence = crVar.D;
                if (aj.b(charSequence)) {
                    spannableStringBuilder.replace(i2, i3, charSequence);
                    length = i + (i3 - (charSequence.length() + i2));
                    i = length;
                }
            }
            length = i;
            i = length;
        }
        remoteViews.setTextViewText(2131952017, spannableStringBuilder);
        charSequence = f.format(Long.valueOf(j));
        if (a != null) {
            remoteViews.setTextViewText(2131952013, resources.getString(2131364040, new Object[]{charSequence, a}));
        } else if (tweet.N == null || tweet.N.d == null) {
            remoteViews.setTextViewText(2131952013, charSequence);
        } else {
            remoteViews.setTextViewText(2131952013, resources.getString(2131364039, new Object[]{charSequence, tweet.N.d}));
        }
        if (bitmap != null) {
            remoteViews.setImageViewBitmap(bcx.user_image, bitmap);
        } else {
            remoteViews.setImageViewResource(bcx.user_image, 2130837648);
        }
        remoteViews.setOnClickPendingIntent(2131953411, PendingIntent.getActivity(this.m, 0, new Intent(this.m, TweetActivity.class).setAction("android.intent.action.VIEW" + e()).setData(ck.a(tweet.u, this.e)).setFlags(67108864).putExtra("AbsFragmentActivity_account_name", this.d).putExtra("ref_event", "widget::::click"), 268435456));
    }

    static void a(Context context, RemoteViews remoteViews, Tweet tweet, Bitmap bitmap, long j, String str) {
        Resources resources = context.getResources();
        remoteViews.setTextViewText(bcx.name, tweet.B);
        remoteViews.setTextViewText(k.username, "@" + tweet.v);
        CharSequence spannableStringBuilder = new SpannableStringBuilder(tweet.f());
        int i = 0;
        for (cr crVar : tweet.w.b()) {
            int length;
            int i2 = crVar.g - i;
            int i3 = crVar.h - i;
            if (i2 >= 0 && i3 <= spannableStringBuilder.length()) {
                CharSequence charSequence = crVar.D;
                if (aj.b(charSequence)) {
                    spannableStringBuilder.replace(i2, i3, charSequence);
                    length = i + (i3 - (charSequence.length() + i2));
                    i = length;
                }
            }
            length = i;
            i = length;
        }
        remoteViews.setTextViewText(2131952017, spannableStringBuilder);
        remoteViews.setTextViewText(k.time, al.a(resources, tweet.q));
        remoteViews.setViewVisibility(2131952014, tweet.h() ? 0 : 8);
        remoteViews.setViewVisibility(2131952015, tweet.i() ? 0 : 8);
        remoteViews.setViewVisibility(2131952016, tweet.k() ? 0 : 8);
        if (bitmap != null) {
            remoteViews.setImageViewBitmap(bcx.user_image, bitmap);
        } else {
            remoteViews.setImageViewResource(bcx.user_image, 2130837647);
        }
        remoteViews.setOnClickPendingIntent(2131953411, PendingIntent.getActivity(context, 0, new Intent(context, TweetActivity.class).setAction("android.intent.action.VIEW" + e()).setData(ck.a(tweet.u, j)).setFlags(67108864).putExtra("AbsFragmentActivity_account_name", str).putExtra("ref_event", "widget::::click"), 268435456));
        if (tweet.c) {
            remoteViews.setTextViewText(2131952019, resources.getString(2131364034, new Object[]{tweet.p}));
            remoteViews.setViewVisibility(2131952019, 0);
        } else {
            remoteViews.setViewVisibility(2131952019, 8);
        }
        if (tweet.q()) {
            cni cni = tweet.f;
            String str2 = cni != null ? cni.g : tweet.A;
            remoteViews.setTextViewText(2131952020, resources.getString(2131363419, new Object[]{str2}));
            remoteViews.setViewVisibility(2131952020, 0);
            return;
        }
        remoteViews.setViewVisibility(2131952020, 8);
    }

    public void d(int i) {
        if (i != 4) {
            Context context = this.m;
            a(context, this.k, i, this.d, 0);
            a(context, this.k, i, this.d, 5);
            a(context, this.l, i, this.d, 0);
            a(context, this.l, i, this.d, 5);
        }
    }

    public static void a(Context context, int i) {
        context.startService(new Intent(context, WidgetService.class).setAction("clear_logged_out").putExtra("widget_provider", i));
    }

    public static void a(Context context, ce ceVar, int i, String str, int i2) {
        if (i == 1) {
            int[] a = ceVar.a();
            if (a != null && a.length != 0) {
                String string = context.getString(2131364203);
                for (int i3 : a) {
                    RemoteViews a2 = a(context, ceVar.b, ceVar.d, i, BuildConfig.VERSION_NAME, 0);
                    a(a2, null, string);
                    a2.setOnClickPendingIntent(2131953405, PendingIntent.getActivity(context, 0, new Intent(context, WidgetSettingsActivity.class).setAction("android.intent.action.VIEW" + e()).putExtra("appWidgetId", i3), 67108864));
                    AppWidgetManager.getInstance(context).updateAppWidget(i3, a2);
                }
                return;
            }
            return;
        }
        int[] iArr;
        int[] a3;
        if (i != 0) {
            a3 = a(ceVar, i2);
            if (a3 != null && a3.length != 0) {
                a2 = a(context, ceVar.b, ceVar.d, i, str, i2);
                switch (i) {
                    case WireMessage.WIRE_CONTROL /*2*/:
                        a(a2, null, null);
                        iArr = a3;
                        break;
                    default:
                        a(a2, null, context.getString(2131364028));
                        iArr = a3;
                        break;
                }
            }
            return;
        }
        a3 = ceVar.b(context);
        if (a3 != null && a3.length != 0) {
            a2 = a(context, ceVar.b, ceVar.d, i, BuildConfig.VERSION_NAME, 0);
            a(a2, context.getString(2131364200), context.getString(2131364199));
            iArr = a3;
        } else {
            return;
        }
        a2.setOnClickPendingIntent(2131953405, PendingIntent.getActivity(context, 0, a(context, str, bg.a().c().f(), i2), 67108864));
        AppWidgetManager.getInstance(context).updateAppWidget(iArr, a2);
    }

    private static void a(RemoteViews remoteViews, String str, String str2) {
        boolean b = aj.b((CharSequence) str);
        boolean b2 = aj.b((CharSequence) str2);
        if (b) {
            remoteViews.setTextViewText(2131953403, str);
            remoteViews.setViewVisibility(2131953403, 0);
        } else {
            remoteViews.setViewVisibility(2131953403, 8);
        }
        if (b2) {
            remoteViews.setTextViewText(2131953404, str2);
            remoteViews.setViewVisibility(2131953404, 0);
        } else {
            remoteViews.setViewVisibility(2131953404, 8);
        }
        if (b || b2) {
            remoteViews.setViewVisibility(2131953406, 0);
            remoteViews.setViewVisibility(2131952568, 8);
            return;
        }
        remoteViews.setViewVisibility(2131953406, 8);
        remoteViews.setViewVisibility(2131952568, 0);
    }

    private static RemoteViews a(Context context, int i, int i2, int i3, String str, int i4) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), i2);
        if (i == 2131230724) {
            remoteViews.setImageViewResource(2131953407, i4 == 5 ? 2130839458 : 2130839984);
            remoteViews.setTextViewText(2131953408, str);
            PendingIntent activity = PendingIntent.getActivity(context, 0, a(context, str, bg.a().c().f(), i4), 268435456);
            remoteViews.setOnClickPendingIntent(2131953407, activity);
            remoteViews.setOnClickPendingIntent(2131953408, activity);
            switch (i3) {
                case mx.View_android_theme /*0*/:
                case WireMessage.WIRE_CHAT /*1*/:
                    remoteViews.setViewVisibility(2131952687, 8);
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    remoteViews.setViewVisibility(2131952687, 8);
                    remoteViews.setTextViewText(2131953408, context.getResources().getString(2131362928));
                    break;
                default:
                    remoteViews.setViewVisibility(2131951639, 0);
                    remoteViews.setOnClickPendingIntent(2131953409, PendingIntent.getActivity(context, e(), aw.a().d(335544320).b(str).c("widget::::click").a(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setFlags(268435456)).a(context), 268435456));
                    break;
            }
        }
        return remoteViews;
    }

    public static Intent a(Context context, String str, TwitterUser twitterUser, int i) {
        Intent intent;
        if (aj.a((CharSequence) str)) {
            intent = new Intent(context, DispatchActivity.class);
        } else if (i == 0) {
            intent = new Intent(context, MainActivity.class).putExtra("AbsFragmentActivity_account_name", str).putExtra("page", MainActivity.c);
        } else {
            intent = ak.a(context, twitterUser, false, false);
        }
        intent.setAction("android.intent.action.VIEW" + e()).setFlags(67108864).putExtra("ref_event", "widget::::click");
        return intent;
    }

    private static synchronized int e() {
        int i;
        synchronized (WidgetControl.class) {
            i = i + 1;
            i = i;
        }
        return i;
    }

    public l d() {
        return this.o;
    }
}
