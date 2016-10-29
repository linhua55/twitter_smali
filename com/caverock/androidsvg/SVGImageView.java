package com.caverock.androidsvg;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.drawable.PictureDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.Method;

/* compiled from: Twttr */
public class SVGImageView extends ImageView {
    private static Method a;

    static {
        a = null;
    }

    public SVGImageView(Context context) {
        super(context);
        try {
            a = View.class.getMethod("setLayerType", new Class[]{Integer.TYPE, Paint.class});
        } catch (NoSuchMethodException e) {
        }
    }

    public SVGImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        try {
            a = View.class.getMethod("setLayerType", new Class[]{Integer.TYPE, Paint.class});
        } catch (NoSuchMethodException e) {
        }
        a(attributeSet, 0);
    }

    public SVGImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        try {
            a = View.class.getMethod("setLayerType", new Class[]{Integer.TYPE, Paint.class});
        } catch (NoSuchMethodException e) {
        }
        a(attributeSet, i);
    }

    private void a(AttributeSet attributeSet, int i) {
        if (!isInEditMode()) {
            TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, j.SVGImageView, i, 0);
            try {
                int resourceId = obtainStyledAttributes.getResourceId(0, -1);
                if (resourceId != -1) {
                    setImageResource(resourceId);
                    return;
                }
                String string = obtainStyledAttributes.getString(0);
                if (string != null) {
                    if (a(Uri.parse(string), false)) {
                        obtainStyledAttributes.recycle();
                        return;
                    }
                    setImageAsset(string);
                }
                obtainStyledAttributes.recycle();
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    public void setSVG(SVG svg) {
        if (svg == null) {
            throw new IllegalArgumentException("Null value passed to setSVG()");
        }
        a();
        setImageDrawable(new PictureDrawable(svg.a()));
    }

    public void setImageResource(int i) {
        new bz().execute(new Integer[]{Integer.valueOf(i)});
    }

    public void setImageURI(Uri uri) {
        a(uri, true);
    }

    public void setImageAsset(String str) {
        new by().execute(new String[]{str});
    }

    private boolean a(Uri uri, boolean z) {
        try {
            InputStream openInputStream = getContext().getContentResolver().openInputStream(uri);
            new ca().execute(new InputStream[]{openInputStream});
            return true;
        } catch (FileNotFoundException e) {
            if (z) {
                Log.e("SVGImageView", "File not found: " + uri);
            }
            return false;
        }
    }

    private void a() {
        if (a != null) {
            try {
                int i = View.class.getField("LAYER_TYPE_SOFTWARE").getInt(new View(getContext()));
                a.invoke(this, new Object[]{Integer.valueOf(i), null});
            } catch (Throwable e) {
                Log.w("SVGImageView", "Unexpected failure calling setLayerType", e);
            }
        }
    }
}
