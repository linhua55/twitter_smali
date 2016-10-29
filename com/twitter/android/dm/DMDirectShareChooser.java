package com.twitter.android.dm;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.Icon;
import android.os.Build.VERSION;
import android.service.chooser.ChooserTarget;
import android.service.chooser.ChooserTargetService;
import android.support.v4.graphics.drawable.RoundedBitmapDrawable;
import android.support.v4.graphics.drawable.RoundedBitmapDrawableFactory;
import com.twitter.android.DMActivity;
import com.twitter.android.provider.j;
import com.twitter.config.c;
import com.twitter.library.client.bg;
import com.twitter.library.database.dm.d;
import com.twitter.library.dm.DMGroupAvatarImageVariant;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.media.manager.l;
import com.twitter.library.provider.k;
import com.twitter.library.provider.m;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import com.twitter.util.object.e;
import defpackage.bbu;
import java.io.File;
import java.util.List;

@TargetApi(23)
/* compiled from: Twttr */
public class DMDirectShareChooser extends ChooserTargetService {
    @TargetApi(23)
    public List<ChooserTarget> onGetChooserTargets(ComponentName componentName, IntentFilter intentFilter) {
        if (VERSION.SDK_INT < 23) {
            return n.g();
        }
        if (!"enabled".equals(c.b("direct_share_android_4410"))) {
            return n.g();
        }
        long g = bg.a().c().g();
        bbu.a(new TwitterScribeLog(g).b("messages:direct_share_service:::impression"));
        return a(g);
    }

    @TargetApi(23)
    public List<ChooserTarget> a(long j) {
        ComponentName componentName = new ComponentName(getPackageName(), DMActivity.class.getCanonicalName());
        n a = n.a(4);
        Bitmap b = b();
        Bitmap a2 = a();
        int width = a2.getWidth();
        int height = a2.getHeight();
        float f = 0.99f;
        for (k kVar : b(j)) {
            CharSequence charSequence;
            Bitmap bitmap;
            o oVar = new o();
            if (kVar instanceof m) {
                TwitterUser twitterUser = ((m) kVar).b;
                oVar.a(new long[]{twitterUser.c});
                charSequence = twitterUser.d;
                bitmap = (Bitmap) e.b(a(twitterUser.e), b);
            } else {
                d c = kVar.c();
                oVar.b(c.b);
                charSequence = c.d;
                bitmap = (Bitmap) e.b(a(c.f, width, height), a2);
            }
            a.c(new ChooserTarget(charSequence, Icon.createWithBitmap(bitmap), f, componentName, oVar.d(true).d().h()));
            f -= 0.05f;
        }
        return (List) a.q();
    }

    private List<k> b(long j) {
        return new j(getApplicationContext()).a(j, 4);
    }

    private Bitmap a(String str) {
        return a(getApplicationContext(), a(UserImageRequest.a(str, -3)));
    }

    private Bitmap a(String str, int i, int i2) {
        return a(getApplicationContext(), a(a.a(str).a(DMGroupAvatarImageVariant.e).a(Size.a(i, i2))));
    }

    private Bitmap a(b bVar) {
        l a = l.a(getApplicationContext());
        Bitmap b = a.b(bVar);
        if (b != null) {
            return b;
        }
        File d = a.d(bVar);
        if (d != null) {
            return BitmapFactory.decodeFile(d.getAbsolutePath());
        }
        return null;
    }

    private static Bitmap a(Context context, Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        RoundedBitmapDrawable create = RoundedBitmapDrawableFactory.create(context.getResources(), bitmap);
        create.setCircular(true);
        create.setAntiAlias(true);
        create.setBounds(0, 0, width, height);
        Bitmap createBitmap = Bitmap.createBitmap(width, height, bitmap.getConfig());
        create.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    private Bitmap a() {
        return BitmapFactory.decodeResource(getResources(), 2130839225);
    }

    private Bitmap b() {
        return BitmapFactory.decodeResource(getResources(), 2130839226);
    }
}
