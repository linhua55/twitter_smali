package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import com.twitter.android.mx;
import com.twitter.media.util.a;
import com.twitter.util.math.Size;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: abv */
public class abv {
    public static Bitmap a(Resources resources, List<Bitmap> list) {
        int size = list != null ? list.size() : 0;
        if (size == 0) {
            return null;
        }
        if (size == 1) {
            return (Bitmap) list.get(0);
        }
        int dimensionPixelOffset = resources.getDimensionPixelOffset(2131690108);
        int dimensionPixelOffset2 = resources.getDimensionPixelOffset(2131690107);
        int dimensionPixelSize = resources.getDimensionPixelSize(2131690106);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(2131690105);
        Bitmap a = a.a(Size.a(dimensionPixelOffset, dimensionPixelOffset2), Config.ARGB_8888);
        if (a == null) {
            cfb.d("FacePileUtil", "Out of memory. Unable to create face pile.");
            return null;
        }
        Paint paint = new Paint();
        RectF rectF = new RectF();
        Canvas canvas = new Canvas(a);
        Xfermode porterDuffXfermode = new PorterDuffXfermode(Mode.CLEAR);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(2131690104);
        float f = ((float) dimensionPixelSize3) / 2.0f;
        int i = 0;
        while (i < size && i < 3) {
            int dimensionPixelOffset3;
            int i2;
            switch (i) {
                case mx.View_android_theme /*0*/:
                    if (size != 2) {
                        dimensionPixelOffset2 = resources.getDimensionPixelOffset(2131690098);
                        dimensionPixelOffset3 = resources.getDimensionPixelOffset(2131690099);
                        i2 = dimensionPixelOffset2;
                        break;
                    }
                    dimensionPixelOffset2 = resources.getDimensionPixelOffset(2131690094);
                    dimensionPixelOffset3 = resources.getDimensionPixelOffset(2131690095);
                    i2 = dimensionPixelOffset2;
                    break;
                case WireMessage.WIRE_CHAT /*1*/:
                    if (size != 2) {
                        dimensionPixelOffset2 = resources.getDimensionPixelOffset(2131690100);
                        dimensionPixelOffset3 = resources.getDimensionPixelOffset(2131690101);
                        i2 = dimensionPixelOffset2;
                        break;
                    }
                    dimensionPixelOffset2 = resources.getDimensionPixelOffset(2131690096);
                    dimensionPixelOffset3 = resources.getDimensionPixelOffset(2131690097);
                    i2 = dimensionPixelOffset2;
                    break;
                default:
                    dimensionPixelOffset2 = resources.getDimensionPixelOffset(2131690102);
                    dimensionPixelOffset3 = resources.getDimensionPixelOffset(2131690103);
                    i2 = dimensionPixelOffset2;
                    break;
            }
            Bitmap bitmap = (Bitmap) list.get(i);
            float f2 = (float) dimensionPixelOffset3;
            rectF.set((float) i2, r0, (float) (i2 + dimensionPixelSize), (float) (dimensionPixelOffset3 + dimensionPixelSize2));
            paint.reset();
            paint.setAntiAlias(true);
            paint.setFilterBitmap(true);
            canvas.drawBitmap(bitmap, null, rectF, paint);
            float f3 = ((float) i2) - f;
            float f4 = ((float) dimensionPixelOffset3) - f;
            float width = (((float) i2) + rectF.width()) + f;
            float height = (((float) dimensionPixelOffset3) + rectF.height()) + f;
            Path path = new Path();
            path.addRect(f3, f4, width, height, Direction.CW);
            paint.reset();
            paint.setAntiAlias(false);
            paint.setStrokeWidth((float) dimensionPixelSize3);
            paint.setStyle(Style.STROKE);
            paint.setXfermode(porterDuffXfermode);
            canvas.drawPath(path, paint);
            i++;
        }
        return a;
    }
}
