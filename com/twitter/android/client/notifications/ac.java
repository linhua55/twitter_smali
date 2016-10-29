package com.twitter.android.client.notifications;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.DrawableRes;
import android.support.v4.app.NotificationCompat.InboxStyle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.i;
import com.twitter.util.aj;
import java.util.List;

/* compiled from: Twttr */
public abstract class ac {
    protected final ad c;
    protected final String d;
    protected final long e;
    protected Context f;
    protected int g;

    public abstract String d();

    public abstract String e();

    @DrawableRes
    public abstract int f();

    public abstract Intent g();

    public abstract String h();

    protected ac(ad adVar, String str, long j) {
        this.c = adVar;
        this.d = str;
        this.e = j;
    }

    void a(Context context) {
        this.f = context.getApplicationContext();
        this.g = context.getResources().getColor(17170437);
    }

    public boolean a() {
        return this.c.v.size() > 1 || this.c.c > 1;
    }

    protected List<i> b() {
        return this.c.v;
    }

    public int[] j() {
        List b = b();
        int size = b.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ((i) b.get(i)).d;
        }
        return iArr;
    }

    public InboxStyle k() {
        InboxStyle inboxStyle = new InboxStyle();
        for (i b : b()) {
            inboxStyle.addLine(b(b));
        }
        inboxStyle.setSummaryText(c()).setBigContentTitle(d());
        return inboxStyle;
    }

    protected SpannableString b(i iVar) {
        String str;
        if (aj.a(iVar.f)) {
            str = '@' + iVar.g;
        } else {
            str = iVar.f;
        }
        return a(str, iVar.e, iVar.j);
    }

    protected SpannableString a(String str, String str2, byte[] bArr) {
        SpannableString spannableString = new SpannableString(str + '\u2007' + str2);
        a(spannableString, str);
        return spannableString;
    }

    protected void a(SpannableString spannableString, String str) {
        spannableString.setSpan(new ForegroundColorSpan(this.g), 0, str.length(), 33);
    }

    public int l() {
        return b().size();
    }

    public String c() {
        return e();
    }

    public int i() {
        return this.c.s;
    }

    public int m() {
        return 67108864;
    }

    public String n() {
        return h();
    }
}
