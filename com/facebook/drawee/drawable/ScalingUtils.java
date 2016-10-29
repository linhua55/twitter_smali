package com.facebook.drawee.drawable;

import android.graphics.Matrix;
import android.graphics.Rect;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public class ScalingUtils {

    /* compiled from: Twttr */
    public enum ScaleType {
        FIT_XY,
        FIT_START,
        FIT_CENTER,
        FIT_END,
        CENTER,
        CENTER_INSIDE,
        CENTER_CROP,
        FOCUS_CROP
    }

    public static Matrix a(Matrix matrix, Rect rect, int i, int i2, float f, float f2, ScaleType scaleType) {
        int width = rect.width();
        int height = rect.height();
        float f3 = ((float) width) / ((float) i);
        float f4 = ((float) height) / ((float) i2);
        float f5;
        float f6;
        switch (n.a[scaleType.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                f5 = (float) rect.left;
                f6 = (float) rect.top;
                matrix.setScale(f3, f4);
                matrix.postTranslate((float) ((int) (f5 + 0.5f)), (float) ((int) (f6 + 0.5f)));
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                f5 = Math.min(f3, f4);
                f6 = (float) rect.left;
                f4 = (float) rect.top;
                matrix.setScale(f5, f5);
                matrix.postTranslate((float) ((int) (f6 + 0.5f)), (float) ((int) (f4 + 0.5f)));
                break;
            case Util.TYPE_OTHER /*3*/:
                f6 = Math.min(f3, f4);
                f5 = ((((float) width) - (((float) i) * f6)) * 0.5f) + ((float) rect.left);
                f4 = ((float) rect.top) + ((((float) height) - (((float) i2) * f6)) * 0.5f);
                matrix.setScale(f6, f6);
                matrix.postTranslate((float) ((int) (f5 + 0.5f)), (float) ((int) (f4 + 0.5f)));
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                f6 = Math.min(f3, f4);
                f5 = (((float) width) - (((float) i) * f6)) + ((float) rect.left);
                f4 = ((float) rect.top) + (((float) height) - (((float) i2) * f6));
                matrix.setScale(f6, f6);
                matrix.postTranslate((float) ((int) (f5 + 0.5f)), (float) ((int) (f4 + 0.5f)));
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                matrix.setTranslate((float) ((int) (((((float) (width - i)) * 0.5f) + ((float) rect.left)) + 0.5f)), (float) ((int) ((((float) rect.top) + (((float) (height - i2)) * 0.5f)) + 0.5f)));
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                f6 = Math.min(Math.min(f3, f4), 1.0f);
                f5 = ((((float) width) - (((float) i) * f6)) * 0.5f) + ((float) rect.left);
                f4 = ((float) rect.top) + ((((float) height) - (((float) i2) * f6)) * 0.5f);
                matrix.setScale(f6, f6);
                matrix.postTranslate((float) ((int) (f5 + 0.5f)), (float) ((int) (f4 + 0.5f)));
                break;
            case C.ENCODING_DTS /*7*/:
                if (f4 > f3) {
                    f6 = ((float) rect.left) + ((((float) width) - (((float) i) * f4)) * 0.5f);
                    f5 = (float) rect.top;
                } else {
                    f6 = (float) rect.left;
                    f5 = ((float) rect.top) + ((((float) height) - (((float) i2) * f3)) * 0.5f);
                    f4 = f3;
                }
                matrix.setScale(f4, f4);
                matrix.postTranslate((float) ((int) (f6 + 0.5f)), (float) ((int) (f5 + 0.5f)));
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                if (f4 > f3) {
                    f6 = ((float) rect.left) + Math.max(Math.min((((float) width) * 0.5f) - ((((float) i) * f4) * f), 0.0f), ((float) width) - (((float) i) * f4));
                    f5 = (float) rect.top;
                } else {
                    f6 = (float) rect.left;
                    f4 = (float) rect.top;
                    f5 = Math.max(Math.min((((float) height) * 0.5f) - ((((float) i2) * f3) * f2), 0.0f), ((float) height) - (((float) i2) * f3)) + f4;
                    f4 = f3;
                }
                matrix.setScale(f4, f4);
                matrix.postTranslate((float) ((int) (f6 + 0.5f)), (float) ((int) (f5 + 0.5f)));
                break;
            default:
                throw new UnsupportedOperationException("Unsupported scale type: " + scaleType);
        }
        return matrix;
    }
}
