package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.os.Looper;
import android.renderscript.Allocation;
import android.renderscript.Allocation.MipmapControl;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;

@TargetApi(19)
/* compiled from: Twttr */
/* renamed from: dcn */
public class dcn {
    private static volatile RenderScript a;

    public static RenderScript a(Context context) {
        if (a == null) {
            synchronized (dcn.class) {
                if (a == null) {
                    a = RenderScript.create(context);
                }
            }
        }
        return a;
    }

    public static Bitmap a(Bitmap bitmap, float f) {
        if (f == 0.0f) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
    }

    public static Bitmap a(Context context, Bitmap bitmap, int i) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Don't blur on the main thread.");
        }
        Bitmap copy = bitmap.copy(bitmap.getConfig(), true);
        RenderScript a = dcn.a(context);
        Allocation createFromBitmap = Allocation.createFromBitmap(a, bitmap, MipmapControl.MIPMAP_NONE, 1);
        Allocation createFromBitmap2 = Allocation.createFromBitmap(a, copy);
        ScriptIntrinsicBlur create = ScriptIntrinsicBlur.create(a, Element.U8_4(a));
        create.setRadius((float) i);
        create.setInput(createFromBitmap);
        create.forEach(createFromBitmap2);
        createFromBitmap2.copyTo(copy);
        return copy;
    }

    public static void a(Context context, Bitmap bitmap, float f, int i, dcq dcq) {
        new dco(context, bitmap, f, i, dcq).start();
    }
}
