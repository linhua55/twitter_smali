package tv.periscope.android.ui.love;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import defpackage.gv;

/* compiled from: Twttr */
class e extends Animation {
    private PathMeasure a;
    private View b;
    private float c;
    private float d;
    private float e;

    public e(Path path, float f, View view, View view2, float f2) {
        this.a = new PathMeasure(path, false);
        this.c = this.a.getLength();
        this.b = view2;
        this.d = f;
        this.e = f2;
        view.setLayerType(2, null);
    }

    protected void applyTransformation(float f, Transformation transformation) {
        this.a.getMatrix(this.c * f, transformation.getMatrix(), 1);
        this.b.setRotation(this.d * f);
        double a;
        if (3000.0f * f < 200.0f) {
            a = gv.a((double) f, 0.0d, 0.06666667014360428d, 0.20000000298023224d, (double) this.e);
            this.b.setScaleX((float) a);
            this.b.setScaleY((float) a);
        } else if (3000.0f * f < 300.0f) {
            a = gv.a((double) f, 0.06666667014360428d, 0.10000000149011612d, (double) this.e, 1.0d);
            this.b.setScaleX((float) a);
            this.b.setScaleY((float) a);
        } else {
            this.b.setScaleX(1.0f);
            this.b.setScaleY(1.0f);
        }
        transformation.setAlpha(1.0f - f);
    }
}
