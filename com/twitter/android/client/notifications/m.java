package com.twitter.android.client.notifications;

import android.content.Context;
import android.content.Intent;
import android.text.SpannableString;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.twitter.android.util.ak;
import com.twitter.library.client.bg;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.i;
import zt;

/* compiled from: Twttr */
public class m extends ac {
    protected int a;

    public m(ad adVar, String str, long j) {
        super(adVar, str, j);
        this.a = 2131363179;
    }

    public String d() {
        if (b().size() > 1) {
            return this.f.getString(this.a, new Object[]{Integer.valueOf(r0)});
        }
        return this.f.getString(this.a, new Object[]{Integer.valueOf(this.c.c)});
    }

    public String e() {
        return "@" + this.d;
    }

    public Intent g() {
        return ak.a(this.f, bg.a().b(this.e).f(), false, false);
    }

    public String h() {
        return "interactions";
    }

    public int f() {
        return 2130839920;
    }

    protected SpannableString b(i iVar) {
        return a(iVar.f, a(iVar.c, iVar.e, this.f), iVar.j);
    }

    static String a(int i, String str, Context context) {
        switch (i) {
            case Util.TYPE_OTHER /*3*/:
                return context.getString(2131363188, new Object[]{str});
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return context.getString(2131363175, new Object[]{str});
            case EbmlReader.TYPE_FLOAT /*5*/:
                return context.getString(2131363173);
            default:
                return str;
        }
    }

    static ac a(ad adVar, String str, long j, StatusBarNotif statusBarNotif, n nVar) {
        int b = zt.b();
        int a = zt.a();
        if (b == 1) {
            if (statusBarNotif instanceof MentionNotif) {
                nVar.b = a;
                nVar.a = 2131363177;
                return nVar;
            }
            return new e(adVar, str, j, 2131363179, null, new int[]{2}, a);
        } else if (b == 2) {
            ac eVar = new e(adVar, str, j, 2131363179, null, null, a);
            eVar.a(2);
            return eVar;
        } else if (b != 3) {
            return new m(adVar, str, j);
        } else {
            if (statusBarNotif instanceof MentionNotif) {
                nVar.b = a;
                nVar.a = 2131363177;
                return nVar;
            } else if ((statusBarNotif instanceof FollowNotif) || (statusBarNotif instanceof FollowRequestNotif)) {
                return new e(adVar, str, j, 2131363184, new int[]{5, 8}, null, a);
            } else {
                return new e(adVar, str, j, 2131363179, null, new int[]{2, 5, 8}, a);
            }
        }
    }

    static boolean b(int i) {
        return i == 2 || i == 3 || i == 4 || i == 5 || i == 8 || i == 9 || i == 11 || i == 10 || i == 12;
    }
}
