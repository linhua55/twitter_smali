package com.twitter.android.client.notifications;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.support.v4.app.NotificationCompat.Action;
import android.support.v4.app.NotificationCompat.BigPictureStyle;
import android.support.v4.app.NotificationCompat.BigTextStyle;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.NotificationCompat.Style;
import android.view.WindowManager;
import android.widget.RemoteViews;
import bbu;
import cfb;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.android.client.ag;
import com.twitter.android.client.z;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.request.a;
import com.twitter.util.aj;
import com.twitter.util.math.Size;
import com.twitter.util.ui.r;
import defpackage.cmj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public abstract class MagicRecNotif extends GenericNotif {
    private final Map<a, Bitmap> f;
    private final Map<a, Boolean> g;
    private final Object h;
    private final List<a> i;
    private Bitmap j;
    private int k;

    protected abstract String a(a aVar);

    protected abstract boolean a(Context context, Notification notification, Map<a, Bitmap> map, Bitmap bitmap, boolean z, boolean z2);

    protected abstract List<a> b(Context context);

    protected abstract boolean b(a aVar);

    protected abstract String n();

    public MagicRecNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
        this.f = new HashMap();
        this.g = new HashMap();
        this.h = new Object();
        this.i = new ArrayList();
        this.k = 0;
    }

    protected MagicRecNotif(Parcel parcel) {
        super(parcel);
        this.f = new HashMap();
        this.g = new HashMap();
        this.h = new Object();
        this.i = new ArrayList();
        this.k = 0;
    }

    protected boolean c(a aVar) {
        return b(aVar);
    }

    protected void a(Context context, Notification notification) {
    }

    public boolean r() {
        return true;
    }

    public void a(z zVar, a aVar, Bitmap bitmap) {
        synchronized (this.h) {
            this.g.put(aVar, Boolean.valueOf(true));
            this.f.put(aVar, bitmap);
        }
        if (bitmap != null) {
            a((StatusBarNotif) this, "image_downloaded", this.i.contains(aVar) ? "user_image" : a(aVar));
        } else {
            a((StatusBarNotif) this, "image_download_failed", null);
        }
        if (u()) {
            this.k = 2;
            zVar.a(this);
        }
    }

    public boolean s() {
        return this.k >= 4;
    }

    public final Notification a(Context context, z zVar, ag agVar, Bitmap bitmap) {
        Object obj = 1;
        Resources resources = context.getResources();
        synchronized (this.h) {
            int size;
            d(context);
            if (this.k == 0) {
                Object obj2;
                a a;
                this.k = 1;
                List<a> b = b(context);
                if (b != null) {
                    obj2 = null;
                    for (a a2 : b) {
                        Object obj3;
                        a(zVar, a2);
                        if (b(a2)) {
                            obj3 = 1;
                        } else {
                            obj3 = obj2;
                        }
                        obj2 = obj3;
                    }
                } else {
                    obj2 = null;
                }
                if (obj2 == null) {
                    a((StatusBarNotif) this, "no_image", null);
                }
                List<cmj> list = this.a.x.e;
                size = list.size();
                for (cmj cmj : list) {
                    a2 = a(resources, cmj.d, size);
                    this.i.add(a2);
                    a(zVar, a2);
                }
                if (u()) {
                    this.k = 2;
                }
            }
        }
        if (this.k < 2) {
            return a(context, agVar);
        }
        if ((this.k >= 3 ? 1 : null) == null) {
            this.k = 3;
            if (!this.i.isEmpty()) {
                List arrayList = new ArrayList();
                for (size = this.i.size() - 1; size >= 0; size--) {
                    Bitmap bitmap2 = (Bitmap) this.f.get((a) this.i.get(size));
                    if (bitmap2 != null) {
                        arrayList.add(bitmap2);
                    }
                }
                if (!arrayList.isEmpty()) {
                    zVar.a(new s(zVar, this, resources, arrayList), agVar);
                    if (obj != null) {
                        return null;
                    }
                }
            }
            obj = null;
            if (obj != null) {
                return null;
            }
        }
        return a(context, agVar, this.f, this.j);
    }

    public void t() {
        if (this.k == 5) {
            a((StatusBarNotif) this, "enhance_partial", null);
        } else if (this.k == 6) {
            a((StatusBarNotif) this, "enhance", null);
        }
    }

    Notification a(Context context, ag agVar, Map<a, Bitmap> map, Bitmap bitmap) {
        Object obj;
        Object obj2;
        Notification notification = null;
        Object obj3 = 1;
        a aVar = null;
        Object obj4 = null;
        Object obj5 = null;
        for (a aVar2 : map.keySet()) {
            a aVar22;
            if (map.get(aVar22) != null) {
                obj5 = 1;
            }
            if (b(aVar22)) {
                obj4 = aVar22;
            }
            if (!c(aVar22)) {
                aVar22 = aVar;
            }
            if (obj4 != null && aVar22 != null) {
                Object obj6 = aVar22;
                break;
            }
            aVar = aVar22;
        }
        if (bitmap != null) {
            obj = 1;
        } else {
            obj = null;
        }
        if (obj5 == null && obj == null) {
            obj2 = 1;
        } else {
            obj2 = null;
        }
        if (obj2 != null) {
            this.k = 4;
            a((StatusBarNotif) this, "preload_abort", null);
        } else {
            boolean z;
            Bitmap bitmap2;
            Style bigPicture;
            int i;
            Bitmap bitmap3 = obj4 != null ? (Bitmap) map.get(obj4) : null;
            if (bitmap3 != null) {
                z = true;
            } else {
                z = false;
            }
            if (obj6 != null) {
                bitmap2 = (Bitmap) map.get(obj6);
            } else {
                bitmap2 = null;
            }
            Object obj7;
            if (bitmap2 != null) {
                obj7 = 1;
            } else {
                obj7 = null;
            }
            CharSequence n = n();
            Builder largeIcon = b(context, agVar).setLargeIcon(bitmap);
            if (z) {
                bigPicture = new BigPictureStyle().bigPicture(bitmap3);
            } else {
                bigPicture = new BigTextStyle().bigText(n);
            }
            notification = largeIcon.setStyle(bigPicture).build();
            a(notification);
            a(context, notification, bitmap2);
            Resources resources = context.getResources();
            a(resources, notification, ar_(), z);
            a(resources, notification);
            notification.deleteIntent = L();
            boolean z2 = (this.a.y == null || this.a.y.isEmpty()) ? false : true;
            boolean a = a(context, notification, map, bitmap, z, z2);
            if (obj == null || r9 == null || !z || !a) {
                obj3 = null;
            }
            if (obj3 != null) {
                i = 6;
            } else {
                i = 5;
            }
            this.k = i;
        }
        return notification;
    }

    Notification a(Context context, ag agVar) {
        Notification build = b(context, agVar).setStyle(new BigTextStyle().bigText(n())).build();
        Resources resources = context.getResources();
        a(resources, build, ar_(), false);
        a(resources, build);
        build.deleteIntent = L();
        a(context, build);
        return build;
    }

    private Builder b(Context context, ag agVar) {
        CharSequence B = B();
        CharSequence A = A();
        CharSequence C = C();
        Builder autoCancel = new Builder(context).setSmallIcon(2130839920).setColor(context.getResources().getColor(2131886317)).setContentTitle(B).setContentText(A).setPriority(D()).setTicker(C).setSubText(ar_()).setAutoCancel(true);
        List M = M();
        for (int i = 0; i < M.size(); i++) {
            Action action = (Action) M.get(i);
            autoCancel.addAction(action.icon, a(context, i, action), action.actionIntent);
        }
        a(context, autoCancel, agVar);
        return autoCancel;
    }

    protected CharSequence a(Context context, int i, Action action) {
        return action.title;
    }

    public static void a(StatusBarNotif statusBarNotif, String str, String str2) {
        TwitterScribeLog a = statusBarNotif.a(str);
        if (a != null) {
            if (str2 != null) {
                TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
                twitterScribeItem.v = str2;
                a.a(twitterScribeItem);
            }
            cfb.b("MagicRecNotif", "Scribing: " + a);
            bbu.a(a);
        }
    }

    protected void a(Resources resources, Notification notification) {
        int identifier = resources.getIdentifier("status_bar_latest_event_content", TtmlNode.ATTR_ID, "android");
        notification.contentView.setOnClickPendingIntent(identifier, a(22850000, "collapsed"));
        notification.bigContentView.setOnClickPendingIntent(identifier, a(22850001, "expanded"));
        if (VERSION.SDK_INT >= 21 && notification.headsUpContentView != null) {
            notification.headsUpContentView.setOnClickPendingIntent(identifier, a(22850002, "heads_up"));
        }
    }

    private PendingIntent a(int i, String str) {
        TwitterScribeLog J = J();
        TwitterScribeLog K = K();
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.v = str;
        if (J != null) {
            J.a(twitterScribeItem);
        }
        if (K != null) {
            K.a(twitterScribeItem);
        }
        return a(i, J, K);
    }

    protected static void a(Notification notification, String str) {
        notification.bigContentView.setBoolean(16908309, "setSingleLine", false);
        notification.bigContentView.setInt(16908309, "setMaxLines", 2);
        notification.bigContentView.setTextViewText(16908309, str);
        notification.bigContentView.setViewVisibility(16908309, 0);
    }

    static void a(Resources resources, Notification notification, String str, boolean z) {
        if (!aj.a(str)) {
            int identifier = resources.getIdentifier("line3", TtmlNode.ATTR_ID, "android");
            int identifier2 = resources.getIdentifier(MimeTypes.BASE_TYPE_TEXT, TtmlNode.ATTR_ID, "android");
            notification.contentView.setViewVisibility(identifier, 8);
            if (!z) {
                return;
            }
            if (VERSION.SDK_INT >= 21) {
                notification.bigContentView.setViewVisibility(identifier, 8);
                return;
            }
            int dimensionPixelOffset = resources.getDimensionPixelOffset(2131690116);
            int dimensionPixelOffset2 = resources.getDimensionPixelOffset(2131690115);
            int color = resources.getColor(2131886098);
            notification.bigContentView.setViewPadding(identifier, 0, dimensionPixelOffset, 0, dimensionPixelOffset2);
            notification.bigContentView.setTextColor(identifier2, color);
        }
    }

    static void b(Resources resources, Notification notification) {
        int identifier = resources.getIdentifier("big_text", TtmlNode.ATTR_ID, "android");
        notification.bigContentView.setViewPadding(identifier, 0, resources.getDimensionPixelOffset(2131690110), 0, resources.getDimensionPixelOffset(2131690109));
        notification.bigContentView.setTextViewTextSize(identifier, 2, (float) resources.getInteger(2131755055));
        notification.bigContentView.setInt(identifier, "setMaxLines", 4);
        notification.bigContentView.setTextColor(identifier, resources.getColor(2131886100));
    }

    static void a(Notification notification) {
        if (notification.largeIcon != null) {
            notification.contentView.setInt(16908294, "setBackgroundResource", 0);
            notification.bigContentView.setInt(16908294, "setBackgroundResource", 0);
        }
    }

    static void a(Context context, Notification notification, Bitmap bitmap) {
        if (bitmap != null) {
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), 2130968964);
            remoteViews.addView(2131952680, notification.contentView);
            remoteViews.setImageViewBitmap(2131952681, bitmap);
            if (VERSION.SDK_INT <= 19) {
                remoteViews.setInt(context.getResources().getIdentifier("status_bar_latest_event_content", TtmlNode.ATTR_ID, "android"), "setBackgroundResource", 0);
            }
            notification.contentView = remoteViews;
        }
    }

    static Size c(Context context) {
        return Size.a(r.a((WindowManager) context.getSystemService("window")).x);
    }

    private static a a(Resources resources, String str, int i) {
        return UserImageRequest.a(str, resources.getDimensionPixelSize(i > 1 ? 2131690106 : 2131690108)).a();
    }

    private void a(z zVar, a aVar) {
        boolean z = false;
        synchronized (this.h) {
            Bitmap a = zVar.a(aVar, new com.twitter.android.client.ad(w(), false));
            this.f.put(aVar, a);
            if (a != null) {
                z = true;
            }
            this.g.put(aVar, Boolean.valueOf(z));
            a((StatusBarNotif) this, z ? "image_downloaded" : "image_queued", this.i.contains(aVar) ? "user_image" : a(aVar));
        }
    }

    boolean u() {
        synchronized (this.h) {
            boolean z;
            for (Boolean booleanValue : this.g.values()) {
                if (!booleanValue.booleanValue()) {
                    return false;
                }
            }
            if (this.k != 0) {
                z = true;
            } else {
                z = false;
            }
            return z;
        }
    }
}
