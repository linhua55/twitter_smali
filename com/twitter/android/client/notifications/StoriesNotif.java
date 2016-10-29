package com.twitter.android.client.notifications;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.support.v4.app.NotificationCompat.Builder;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.widget.RemoteViews;
import com.twitter.android.client.NotificationService;
import com.twitter.android.client.ag;
import com.twitter.android.client.z;
import com.twitter.android.highlights.HighlightsStoriesActivity;
import com.twitter.android.highlights.StoryScribeItem;
import com.twitter.android.highlights.j;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.request.a;
import defpackage.bbu;
import defpackage.bbw;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class StoriesNotif extends GenericNotif {
    private List<ae> f;
    private int g;
    private boolean h;
    private boolean i;
    private final Map<a, Bitmap> j;
    private af k;

    public StoriesNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
        this.i = false;
        this.j = new HashMap();
    }

    protected String k() {
        return "highlights";
    }

    protected List<ScribeItem> as_() {
        List<ScribeItem> as_ = super.as_();
        if (this.f != null) {
            Object u = u();
            if (as_ == Collections.EMPTY_LIST) {
                return u;
            }
            as_.addAll(u);
        }
        return as_;
    }

    public boolean r() {
        return true;
    }

    public boolean s() {
        if (this.h) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        synchronized (this.j) {
            for (Bitmap bitmap : this.j.values()) {
                if (bitmap == null) {
                    return false;
                }
            }
            boolean z = this.i;
            return z;
        }
    }

    public void a(z zVar, a aVar, Bitmap bitmap) {
        if (!this.h && this.i) {
            if (bitmap != null) {
                synchronized (this.j) {
                    this.j.put(aVar, bitmap);
                }
                a((StatusBarNotif) this, "image_downloaded", "tweet_media");
                if (s()) {
                    zVar.a((StatusBarNotif) this);
                    return;
                }
                return;
            }
            synchronized (this.j) {
                for (a put : this.j.keySet()) {
                    this.j.put(put, null);
                }
            }
            a((StatusBarNotif) this, "image_download_failed", "tweet_media");
        }
    }

    private void a(z zVar, a aVar) {
        Bitmap a = zVar.a(aVar, new com.twitter.android.client.ad(w(), false));
        this.j.put(aVar, a);
        a((StatusBarNotif) this, a != null ? "image_downloaded" : "image_queued", "tweet_media");
    }

    public Notification a(Context context, z zVar, ag agVar, Bitmap bitmap) {
        d(context);
        if (this.f == null) {
            if (this.k == null) {
                this.k = new af(zVar, this, context, this.b);
                zVar.a(this.k, agVar);
            }
            return null;
        } else if (this.f.isEmpty()) {
            this.h = true;
            a((StatusBarNotif) this, "preload_aborted", null);
            return null;
        } else {
            synchronized (this.j) {
                if (!this.i) {
                    this.i = true;
                    for (ae aeVar : this.f) {
                        if (aeVar.g != null) {
                            a(zVar, aeVar.g);
                        }
                    }
                }
            }
            if (!s()) {
                return null;
            }
            CharSequence string;
            Resources resources = context.getResources();
            CharSequence string2 = resources.getString(2131362776);
            if (this.f.size() > 1) {
                if (this.g > 0) {
                    string = resources.getString(2131362775, new Object[]{((ae) this.f.get(0)).d, ((ae) this.f.get(1)).d, Integer.valueOf(this.g)});
                } else {
                    string = resources.getString(2131362774, new Object[]{((ae) this.f.get(0)).d, ((ae) this.f.get(1)).d});
                }
            } else if (this.g > 0) {
                string = resources.getString(2131362773, new Object[]{((ae) this.f.get(0)).d, Integer.valueOf(this.g)});
            } else {
                string = resources.getString(2131362772, new Object[]{((ae) this.f.get(0)).d});
            }
            CharSequence charSequence = string2 + '\n' + string;
            String packageName = context.getPackageName();
            RemoteViews remoteViews = new RemoteViews(packageName, 2130968895);
            a(remoteViews, false);
            Builder color = new Builder(context).setWhen(x()).setDeleteIntent(L()).setPriority(D()).setSmallIcon(F()).setContentTitle(string2).setContentText(string).setTicker(charSequence).setSubText(ar_()).setContent(remoteViews).setColor(resources.getColor(2131886317));
            StatusBarNotif.a(context, color, agVar);
            Notification build = color.build();
            build.contentView.setOnClickPendingIntent(2131952572, b(false));
            RemoteViews remoteViews2 = new RemoteViews(packageName, 2130968896);
            remoteViews2.setTextViewText(2131952579, string2);
            remoteViews2.setTextViewText(2131952580, string);
            a(remoteViews2, true);
            build.bigContentView = remoteViews2;
            build.bigContentView.setOnClickPendingIntent(2131952572, b(true));
            return build;
        }
    }

    private void a(RemoteViews remoteViews, boolean z) {
        int i = 0;
        while (i < 2 && i < this.f.size()) {
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            ae aeVar = (ae) this.f.get(i);
            if (i == 0) {
                i2 = 2131952582;
                i3 = 2131952573;
                i4 = 2131952575;
                i5 = 2131952574;
            } else {
                i2 = 2131952583;
                i3 = 2131952576;
                i4 = 2131952578;
                i5 = 2131952577;
            }
            Object obj = aeVar.d;
            if (z) {
                remoteViews.setTextViewText(i2, obj);
            }
            if (aeVar.g != null) {
                Bitmap bitmap = (Bitmap) this.j.get(aeVar.g);
                if (bitmap != null) {
                    remoteViews.setImageViewBitmap(i5, bitmap);
                }
            }
            if (z) {
                remoteViews.setTextViewText(i4, aeVar.f);
            } else {
                i5 = obj.length() + ":".length();
                CharSequence spannableStringBuilder = new SpannableStringBuilder(aeVar.d + ":" + " " + aeVar.f);
                spannableStringBuilder.setSpan(new StyleSpan(1), 0, i5, 33);
                remoteViews.setTextViewText(i4, spannableStringBuilder);
            }
            remoteViews.setInt(i3, "setVisibility", 0);
            i2 = i + 2;
            if (z) {
                i6 = i2 + 2;
            } else {
                i6 = i2;
            }
            remoteViews.setOnClickPendingIntent(i3, a(a(this.e, this.b, aeVar, z, i), i6, 268435456));
            i++;
        }
    }

    private PendingIntent b(boolean z) {
        ScribeItem a = new StoryScribeItem().a(z);
        TwitterScribeLog J = J();
        if (J != null) {
            J.a(a);
        }
        TwitterScribeLog K = K();
        if (K != null) {
            K.a(a);
        }
        return new x(this.e, this, NotificationService.j).a(J, K).a(a(this.e, HighlightsStoriesActivity.class, new j(this.e).a(true, null).a(this.a.m).a(), null)).b();
    }

    private StoryScribeItem n() {
        return new StoryScribeItem().a(1, this.f.size());
    }

    private List<ScribeItem> u() {
        int size = this.f.size();
        List<ScribeItem> arrayList = new ArrayList(size);
        int i = 0;
        while (i < 2 && i < size) {
            arrayList.add(n().a((ae) this.f.get(i), false, i));
            i++;
        }
        return arrayList;
    }

    public static void a(StatusBarNotif statusBarNotif, String str, String str2) {
        bbw a = statusBarNotif.a(str);
        if (a != null) {
            if (str2 != null) {
                ScribeItem twitterScribeItem = new TwitterScribeItem();
                twitterScribeItem.v = str2;
                a.a(twitterScribeItem);
            }
            bbu.a(a);
        }
    }

    public Intent a(Context context, long j, ae aeVar, boolean z, int i) {
        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(j).b("notification:status_bar::story:open_tap");
        twitterScribeLog.a(n().a(aeVar, z, i));
        return new j(context).a(true, aeVar.a).a(this.a.m).a(twitterScribeLog).a();
    }
}
