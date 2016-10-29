package com.google.android.exoplayer.text.ttml;

import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan.Standard;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.Map;

/* compiled from: Twttr */
final class TtmlRenderUtil {
    public static TtmlStyle resolveStyle(TtmlStyle ttmlStyle, String[] strArr, Map<String, TtmlStyle> map) {
        if (ttmlStyle == null && strArr == null) {
            return null;
        }
        if (ttmlStyle == null && strArr.length == 1) {
            return (TtmlStyle) map.get(strArr[0]);
        }
        if (ttmlStyle == null && strArr.length > 1) {
            ttmlStyle = new TtmlStyle();
            for (Object obj : strArr) {
                ttmlStyle.chain((TtmlStyle) map.get(obj));
            }
            return ttmlStyle;
        } else if (ttmlStyle != null && strArr != null && strArr.length == 1) {
            return ttmlStyle.chain((TtmlStyle) map.get(strArr[0]));
        } else {
            if (ttmlStyle == null || strArr == null || strArr.length <= 1) {
                return ttmlStyle;
            }
            for (Object obj2 : strArr) {
                ttmlStyle.chain((TtmlStyle) map.get(obj2));
            }
            return ttmlStyle;
        }
    }

    public static void applyStylesToSpan(SpannableStringBuilder spannableStringBuilder, int i, int i2, TtmlStyle ttmlStyle) {
        if (ttmlStyle.getStyle() != -1) {
            spannableStringBuilder.setSpan(new StyleSpan(ttmlStyle.getStyle()), i, i2, 33);
        }
        if (ttmlStyle.isLinethrough()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (ttmlStyle.isUnderline()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (ttmlStyle.hasFontColor()) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(ttmlStyle.getFontColor()), i, i2, 33);
        }
        if (ttmlStyle.hasBackgroundColor()) {
            spannableStringBuilder.setSpan(new BackgroundColorSpan(ttmlStyle.getBackgroundColor()), i, i2, 33);
        }
        if (ttmlStyle.getFontFamily() != null) {
            spannableStringBuilder.setSpan(new TypefaceSpan(ttmlStyle.getFontFamily()), i, i2, 33);
        }
        if (ttmlStyle.getTextAlign() != null) {
            spannableStringBuilder.setSpan(new Standard(ttmlStyle.getTextAlign()), i, i2, 33);
        }
        if (ttmlStyle.getFontSizeUnit() != -1) {
            switch (ttmlStyle.getFontSizeUnit()) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) ttmlStyle.getFontSize(), true), i, i2, 33);
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(ttmlStyle.getFontSize()), i, i2, 33);
                case Util.TYPE_OTHER /*3*/:
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(ttmlStyle.getFontSize() / 100.0f), i, i2, 33);
                default:
            }
        }
    }

    static void endParagraph(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length >= 0 && spannableStringBuilder.charAt(length) != '\n') {
            spannableStringBuilder.append('\n');
        }
    }

    static String applyTextElementSpacePolicy(String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    private TtmlRenderUtil() {
    }
}
