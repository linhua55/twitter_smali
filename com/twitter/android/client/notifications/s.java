package com.twitter.android.client.notifications;

import abv;
import android.content.res.Resources;
import android.graphics.Bitmap;
import com.twitter.android.client.ai;
import com.twitter.android.client.z;
import com.twitter.internal.android.service.ab;
import java.util.List;

/* compiled from: Twttr */
class s extends ai<Void, Bitmap> {
    private final Resources a;
    private final List<Bitmap> b;

    protected /* synthetic */ Object c() {
        return e();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return b();
    }

    s(z zVar, MagicRecNotif magicRecNotif, Resources resources, List<Bitmap> list) {
        super("com.twitter.android.client.notifications.MagicRecNotif.FacePileOperation", zVar, magicRecNotif);
        this.a = resources;
        this.b = list;
    }

    protected Bitmap b() throws InterruptedException {
        return abv.a(this.a, this.b);
    }

    protected Bitmap e() {
        return null;
    }

    protected void a(z zVar, StatusBarNotif statusBarNotif, ab<Bitmap> abVar) {
        ((MagicRecNotif) statusBarNotif).j = (Bitmap) abVar.b();
        zVar.a(statusBarNotif);
    }
}
