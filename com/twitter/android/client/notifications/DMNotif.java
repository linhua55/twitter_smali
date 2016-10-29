package com.twitter.android.client.notifications;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.DrawableRes;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.NotificationCompat.Action;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.NotificationCompat.WearableExtender;
import android.support.v4.app.RemoteInput;
import bha;
import biw;
import bjz;
import com.google.android.exoplayer.C;
import com.twitter.android.dm.DMReplyIntentService;
import com.twitter.android.dm.o;
import com.twitter.android.dm.r;
import com.twitter.library.client.bg;
import com.twitter.library.network.w;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.i;
import com.twitter.media.request.b;
import com.twitter.model.dms.c;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.s;

/* compiled from: Twttr */
public class DMNotif extends StatusBarNotif {
    public static final Creator<DMNotif> CREATOR;

    protected /* synthetic */ ac m() {
        return a();
    }

    static {
        CREATOR = new a();
    }

    public DMNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    public DMNotif(Parcel parcel) {
        super(parcel);
    }

    protected b a() {
        return new b(this, this.a, this.c, this.b);
    }

    private boolean n() {
        return !biw.a(this.a.k, this.a.i, this.b);
    }

    private boolean b(String str) {
        return aj.a(str) || aj.c(str) == 0;
    }

    private String a(boolean z, int i, boolean z2) {
        return ((bha) new bjz().b(z).a(this.e.getResources()).a(this.a.i).b(this.a.x.b.b).a(this.a.a()).a(z2).b(this.a.g).a(0).b(i).q()).toString();
    }

    public String b() {
        int l = l();
        boolean z = (b(this.a.g) && a(l)) || n();
        return a(true, l, z);
    }

    public String c() {
        return aj.b(this.a.f) ? this.a.f : this.a.a();
    }

    public String d() {
        int l = l();
        return a(l) ? a(false, l, n()) : e();
    }

    public String e() {
        return n() ? a(false, l(), true) : this.a.g;
    }

    public String f() {
        return G();
    }

    protected b a(Context context, String str) {
        return (b) super.a(context, str).a(new w(bg.a().b(v()).h()));
    }

    public boolean g() {
        return H() != null;
    }

    public boolean h() {
        return true;
    }

    @DrawableRes
    public int i() {
        return 2130839906;
    }

    protected Intent j() {
        return b(this.e, this.a.k);
    }

    static Intent b(Context context, String str) {
        return r.a(context, new o().b(str).c(true).d()).setAction("com.twitter.android.home.messages." + str);
    }

    private static int b(byte[] bArr) {
        Integer num = (Integer) m.a(bArr, s.c);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    protected String k() {
        return "message";
    }

    @VisibleForTesting
    int l() {
        i iVar = (i) CollectionUtils.b(this.a.v);
        return iVar == null ? 0 : b(iVar.j);
    }

    private static boolean a(int i) {
        return CollectionUtils.a(c.b, i);
    }

    Builder a(Context context) {
        CharSequence string = context.getString(2131361997);
        return new Builder(context).extend(new WearableExtender().addAction(new Action.Builder(2130839916, string, PendingIntent.getService(context, 0, new Intent(context, DMReplyIntentService.class).putExtra("extra_conversation_id", this.a.k).putExtra("extra_notification_id", this.a.r), C.SAMPLE_FLAG_DECODE_ONLY)).addRemoteInput(new RemoteInput.Builder("extra_voice_reply").setLabel(string).build()).build()));
    }
}
