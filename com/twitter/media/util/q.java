package com.twitter.media.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import com.twitter.util.x;

/* compiled from: Twttr */
public class q {
    private static RenderScript a;

    public static boolean a() {
        return VERSION.SDK_INT >= 17 && !x.b();
    }

    @TargetApi(17)
    public static synchronized Bitmap a(Context context, Bitmap bitmap, float f) {
        Bitmap createBitmap;
        synchronized (q.class) {
            createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
            if (a == null) {
                a = RenderScript.create(context.getApplicationContext());
            }
            RenderScript renderScript = a;
            Allocation createFromBitmap = Allocation.createFromBitmap(renderScript, bitmap);
            Allocation createFromBitmap2 = Allocation.createFromBitmap(renderScript, createBitmap);
            ScriptIntrinsicBlur create = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
            create.setInput(createFromBitmap);
            create.setRadius(f);
            create.forEach(createFromBitmap2);
            createFromBitmap2.copyTo(createBitmap);
        }
        return createBitmap;
    }
}
