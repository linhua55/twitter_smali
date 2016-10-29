package com.twitter.library.av;

import android.graphics.Matrix;
import android.graphics.PointF;

/* compiled from: Twttr */
public class at {
    public void a(VideoTextureView videoTextureView) {
        float f = 1.00001f;
        int i = videoTextureView.d;
        int i2 = videoTextureView.e;
        if (i != 0 && i2 != 0) {
            float width = (float) videoTextureView.getWidth();
            float height = (float) videoTextureView.getHeight();
            float f2 = ((float) i) / width;
            float f3 = ((float) i2) / height;
            if (f2 >= f3) {
                f2 /= f3;
            } else {
                float f4 = f3 / f2;
                f2 = 1.00001f;
                f = f4;
            }
            Matrix b = b(videoTextureView);
            PointF pointF = new PointF(width / 2.0f, height / 2.0f);
            b.setScale(f2, f, pointF.x, pointF.y);
            b.postRotate(videoTextureView.f, pointF.x, pointF.y);
            videoTextureView.setTransform(b);
        }
    }

    public Matrix b(VideoTextureView videoTextureView) {
        return new Matrix();
    }
}
