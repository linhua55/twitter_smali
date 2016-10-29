package tv.periscope.android.view;

import android.content.Context;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

/* compiled from: Twttr */
public class PsTopCropImageView extends ImageView {
    public PsTopCropImageView(Context context) {
        super(context);
        setScaleType(ScaleType.MATRIX);
    }

    public PsTopCropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PsTopCropImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setScaleType(ScaleType.MATRIX);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        a();
    }

    protected boolean setFrame(int i, int i2, int i3, int i4) {
        a();
        return super.setFrame(i, i2, i3, i4);
    }

    private void a() {
        if (getDrawable() != null) {
            float f;
            Matrix imageMatrix = getImageMatrix();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int intrinsicWidth = getDrawable().getIntrinsicWidth();
            int intrinsicHeight = getDrawable().getIntrinsicHeight();
            if (intrinsicWidth * height > intrinsicHeight * width) {
                f = ((float) height) / ((float) intrinsicHeight);
            } else {
                f = ((float) width) / ((float) intrinsicWidth);
            }
            imageMatrix.setScale(f, f);
            setImageMatrix(imageMatrix);
        }
    }

    public void setImageMatrix(Matrix matrix) {
        super.setImageMatrix(matrix);
    }
}
