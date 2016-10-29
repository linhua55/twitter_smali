package defpackage;

import android.graphics.Matrix;
import android.support.annotation.VisibleForTesting;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
/* renamed from: afa */
public class afa implements afe {
    private final MediaImageView a;
    private final Matrix b;
    private final float[] c;

    public afa(MediaImageView mediaImageView) {
        this(mediaImageView, new Matrix());
    }

    @VisibleForTesting
    afa(MediaImageView mediaImageView, Matrix matrix) {
        this.c = new float[9];
        this.b = matrix;
        this.a = mediaImageView;
    }

    public float a() {
        this.b.getValues(this.c);
        return this.c[4];
    }

    public float b() {
        this.b.getValues(this.c);
        return this.c[2];
    }

    public float c() {
        this.b.getValues(this.c);
        return this.c[5];
    }

    public void a(aff aff) {
        this.b.setScale(aff.a, aff.a);
        this.b.postTranslate(aff.b, aff.c);
        this.a.setTransformationMatrix(this.b);
    }
}
