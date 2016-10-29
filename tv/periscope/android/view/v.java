package tv.periscope.android.view;

import android.graphics.Matrix;
import android.view.TextureView;

/* compiled from: Twttr */
public final class v {
    public static void a(TextureView textureView, int i, int i2) {
        if (i != 0 && i2 != 0) {
            Matrix matrix;
            if (i2 - i > 0) {
                matrix = new Matrix();
                matrix.setScale(1.0f, ((float) i2) / ((float) i));
                textureView.setTransform(matrix);
                return;
            }
            matrix = new Matrix();
            matrix.setScale(1.0f, 1.0f);
            textureView.setTransform(matrix);
        }
    }
}
