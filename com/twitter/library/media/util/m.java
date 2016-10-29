package com.twitter.library.media.util;

import android.media.ExifInterface;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.geo.d;
import com.twitter.util.aj;
import defpackage.bdd;
import java.io.File;
import java.io.IOException;

/* compiled from: Twttr */
public class m {
    public static d a(File file) {
        if (file != null) {
            try {
                ExifInterface exifInterface = new ExifInterface(file.getAbsolutePath());
                Object attribute = exifInterface.getAttribute("GPSLatitude");
                Object attribute2 = exifInterface.getAttribute("GPSLatitudeRef");
                Object attribute3 = exifInterface.getAttribute("GPSLongitude");
                Object attribute4 = exifInterface.getAttribute("GPSLongitudeRef");
                if (aj.b(attribute) && aj.b(attribute2) && aj.b(attribute3) && aj.b(attribute4)) {
                    return new d(a(attribute, attribute2), a(attribute3, attribute4));
                }
            } catch (IllegalArgumentException e) {
            } catch (IOException e2) {
            }
        }
        return null;
    }

    public static double a(String str) throws IllegalArgumentException {
        try {
            String[] split = str.split(",", 3);
            String[] split2 = split[0].split("/", 2);
            double parseDouble = Double.parseDouble(split2[0]) / Double.parseDouble(split2[1]);
            split2 = split[1].split("/", 2);
            parseDouble += (Double.parseDouble(split2[0]) / Double.parseDouble(split2[1])) / 60.0d;
            split = split[2].split("/", 2);
            return ((Double.parseDouble(split[0]) / Double.parseDouble(split[1])) / 3600.0d) + parseDouble;
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("exifDms is not in a valid format: " + str);
        } catch (IndexOutOfBoundsException e2) {
            throw new IllegalArgumentException("exifDms is not in a valid format: " + str);
        }
    }

    public static double a(String str, String str2) throws IllegalArgumentException {
        double a = a(str);
        String toUpperCase = str2.toUpperCase();
        Object obj = -1;
        switch (toUpperCase.hashCode()) {
            case bdd.AppCompatTheme_listPreferredItemHeight /*69*/:
                if (toUpperCase.equals("E")) {
                    obj = 1;
                    break;
                }
                break;
            case bdd.AppCompatTheme_panelBackground /*78*/:
                if (toUpperCase.equals("N")) {
                    obj = null;
                    break;
                }
                break;
            case bdd.AppCompatTheme_colorPrimaryDark /*83*/:
                if (toUpperCase.equals("S")) {
                    obj = 2;
                    break;
                }
                break;
            case bdd.AppCompatTheme_colorControlHighlight /*87*/:
                if (toUpperCase.equals("W")) {
                    obj = 3;
                    break;
                }
                break;
        }
        switch (obj) {
            case Util.TYPE_DASH /*0*/:
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return a;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
                return -a;
            default:
                throw new IllegalArgumentException("ref is not valid: " + str2);
        }
    }
}
