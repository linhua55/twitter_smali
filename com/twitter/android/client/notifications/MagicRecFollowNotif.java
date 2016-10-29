package com.twitter.android.client.notifications;

import android.app.Notification;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.app.NotificationCompat.Action;
import android.widget.RemoteViews;
import cmf;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.o;
import com.twitter.media.request.a;
import com.twitter.util.aj;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class MagicRecFollowNotif extends MagicRecNotif {
    public static final Creator<MagicRecFollowNotif> CREATOR;
    private static final List<cmf> f;
    private final Map<String, a> g;

    static {
        CREATOR = new q();
        f = Arrays.asList(new cmf[]{cmf.c});
    }

    public static boolean a(StatusBarNotif statusBarNotif) {
        return a(statusBarNotif.a);
    }

    public static boolean a(ad adVar) {
        return o.c(adVar.l);
    }

    public MagicRecFollowNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
        this.g = new HashMap();
    }

    protected MagicRecFollowNotif(Parcel parcel) {
        super(parcel);
        this.g = new HashMap();
    }

    protected List<a> b(Context context) {
        String str = this.a.x.c.g;
        if (str != null) {
            this.g.put(str, a.a(str, MagicRecNotif.c(context)).a());
        }
        str = this.a.x.c.f;
        if (str != null) {
            this.g.put(str, UserImageRequest.a(str, context.getResources().getDimensionPixelSize(2131690113)).a());
        }
        return new ArrayList(this.g.values());
    }

    protected String a(a aVar) {
        String str = this.a.x.c.g;
        if (str != null && this.g.get(str) == aVar) {
            return "user_header";
        }
        str = this.a.x.c.f;
        if (str == null || this.g.get(str) != aVar) {
            return null;
        }
        return "user_image";
    }

    protected boolean b(a aVar) {
        return this.g.get(this.a.x.c.g) == aVar;
    }

    protected String n() {
        return A();
    }

    protected boolean a(Context context, Notification notification, Map<a, Bitmap> map, Bitmap bitmap, boolean z, boolean z2) {
        if (z) {
            MagicRecNotif.a(notification, A());
        }
        Bitmap bitmap2 = aj.b(this.a.x.c.f) ? (Bitmap) map.get(this.g.get(this.a.x.c.f)) : null;
        boolean z3 = bitmap2 != null;
        if (!z2) {
            return true;
        }
        if (!z3) {
            return z3;
        }
        Resources resources = context.getResources();
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), 2130968966);
        remoteViews.setImageViewBitmap(2131952683, bitmap2);
        notification.bigContentView.addView(resources.getIdentifier("actions", TtmlNode.ATTR_ID, "android"), remoteViews);
        return z3;
    }

    protected CharSequence a(Context context, int i, Action action) {
        if (i < 0 || i >= f.size() || f.get(i) != cmf.c) {
            return super.a(context, i, action);
        }
        return context.getString(2131363021, new Object[]{this.a.x.c.c});
    }
}
