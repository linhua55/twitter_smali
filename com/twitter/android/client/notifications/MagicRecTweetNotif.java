package com.twitter.android.client.notifications;

import android.app.Notification;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.widget.RemoteViews;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.o;
import com.twitter.media.request.a;
import com.twitter.util.aj;
import com.twitter.util.math.Size;
import defpackage.cfh;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class MagicRecTweetNotif extends MagicRecNotif {
    public static final Creator<MagicRecTweetNotif> CREATOR;
    private final Map<String, a> f;
    private final String g;
    private final String h;

    static {
        CREATOR = new t();
    }

    public static boolean a(StatusBarNotif statusBarNotif) {
        return a(statusBarNotif.a);
    }

    public static boolean a(ad adVar) {
        return o.b(adVar.l);
    }

    public MagicRecTweetNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
        this.f = new HashMap();
        this.g = adVar.w.f;
        this.h = adVar.w.f != null ? adVar.w.f + "_UNTINTED" : null;
    }

    protected MagicRecTweetNotif(Parcel parcel) {
        super(parcel);
        this.f = new HashMap();
        this.g = this.a.w.f;
        this.h = this.a.w.f != null ? this.a.w.f + "_UNTINTED" : null;
    }

    protected List<a> b(Context context) {
        String str = this.a.w.f;
        if (str != null) {
            Size c = MagicRecNotif.c(context);
            this.f.put(this.g, a.a(str, c).a(new cfh(context.getResources().getColor(2131886099))).a());
            this.f.put(this.h, a.a(str, c).a());
        }
        return new ArrayList(this.f.values());
    }

    protected String a(a aVar) {
        String str = this.a.w.f;
        if (str == null || this.f.get(str) != aVar) {
            return null;
        }
        return "tweet_media";
    }

    protected boolean b(a aVar) {
        return this.f.get(this.g) == aVar;
    }

    protected boolean c(a aVar) {
        return this.f.get(this.h) == aVar;
    }

    protected String n() {
        return this.a.w.e;
    }

    protected void a(Context context, Notification notification) {
        MagicRecNotif.a(notification, A());
        MagicRecNotif.b(context.getResources(), notification);
    }

    protected boolean a(Context context, Notification notification, Map<a, Bitmap> map, Bitmap bitmap, boolean z, boolean z2) {
        MagicRecNotif.a(notification, A());
        Resources resources = context.getResources();
        if (z) {
            int dimensionPixelOffset;
            int dimensionPixelOffset2 = aj.b(ar_()) ? resources.getDimensionPixelOffset(2131689559) : 0;
            if (z2) {
                dimensionPixelOffset = resources.getDimensionPixelOffset(2131690112);
            } else {
                dimensionPixelOffset = 0;
            }
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), 2130968965);
            remoteViews.setTextViewText(2131952682, this.a.w.e);
            remoteViews.setViewPadding(2131952682, 0, dimensionPixelOffset2, 0, dimensionPixelOffset);
            notification.bigContentView.addView(resources.getIdentifier("status_bar_latest_event_content", TtmlNode.ATTR_ID, "android"), remoteViews);
        } else {
            MagicRecNotif.b(resources, notification);
        }
        return true;
    }
}
