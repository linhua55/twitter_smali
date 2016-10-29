package tv.periscope.android.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.TextureView;

/* compiled from: Twttr */
public class PsTextureView extends TextureView {
    public PsTextureView(Context context) {
        super(context);
    }

    public PsTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PsTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        v.a(this, i2, i4);
    }
}
