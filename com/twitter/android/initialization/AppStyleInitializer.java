package com.twitter.android.initialization;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager.TaskDescription;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import com.twitter.app.common.util.c;
import defpackage.aof;
import defpackage.bcu;
import defpackage.bde;

/* compiled from: Twttr */
public class AppStyleInitializer extends aof<Void> {
    private TaskDescription a;

    protected void a(Context context, Void voidR) {
        c.a().a(new a(this));
    }

    @TargetApi(21)
    private void a(Activity activity) {
        if (VERSION.SDK_INT >= 21) {
            a((Context) activity);
            activity.setTaskDescription(this.a);
        }
    }

    @TargetApi(21)
    private void a(Context context) {
        if (VERSION.SDK_INT >= 21 && this.a == null) {
            Resources resources = context.getResources();
            this.a = new TaskDescription(resources.getString(context.getApplicationInfo().labelRes), a(bde.a(resources.getDrawable(2130839940), bde.a(context))), resources.getColor(bcu.white));
        }
    }

    private static Bitmap a(Drawable drawable) {
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }
}
