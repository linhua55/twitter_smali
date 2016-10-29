package com.google.android.gms.internal;

import android.text.TextUtils;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.upstream.NetworkLock;
import defpackage.bdd;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class vr {
    private static final Pattern a;
    private static final Pattern b;

    static {
        a = Pattern.compile("\\\\.");
        b = Pattern.compile("[\\\\\"/\b\f\n\r\t]");
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = b.matcher(str);
        StringBuffer stringBuffer = null;
        while (matcher.find()) {
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer();
            }
            switch (matcher.group().charAt(0)) {
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    matcher.appendReplacement(stringBuffer, "\\\\b");
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    matcher.appendReplacement(stringBuffer, "\\\\t");
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    matcher.appendReplacement(stringBuffer, "\\\\n");
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    matcher.appendReplacement(stringBuffer, "\\\\f");
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    matcher.appendReplacement(stringBuffer, "\\\\r");
                    break;
                case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                    matcher.appendReplacement(stringBuffer, "\\\\\\\"");
                    break;
                case bdd.AppCompatTheme_spinnerDropDownItemStyle /*47*/:
                    matcher.appendReplacement(stringBuffer, "\\\\/");
                    break;
                case bdd.AppCompatTheme_alertDialogButtonGroupStyle /*92*/:
                    matcher.appendReplacement(stringBuffer, "\\\\\\\\");
                    break;
                default:
                    break;
            }
        }
        if (stringBuffer == null) {
            return str;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }
}
