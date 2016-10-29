package com.twitter.android.composer.geotag;

import android.content.Context;
import android.widget.TextView;
import bbl;
import bbn;
import bvs;
import bvt;
import com.twitter.android.widget.ToggleImageButton;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.platform.c;
import com.twitter.model.geo.g;

/* compiled from: Twttr */
public final class f {
    static boolean a(Context context, bvt bvt, ToggleImageButton toggleImageButton, TextView textView, TextView textView2, g gVar, boolean z, boolean z2, boolean z3) {
        boolean a = a(bvt, toggleImageButton, textView, textView2, gVar, z, z2, z3);
        if (!a) {
            a(context, toggleImageButton, textView, textView2, gVar, z2, z, z3);
        }
        return a;
    }

    private static void a(Context context, ToggleImageButton toggleImageButton, TextView textView, TextView textView2, g gVar, boolean z, boolean z2, boolean z3) {
        boolean z4;
        boolean z5 = true;
        bvt a = bvs.a();
        bbl a2 = new bbl().a("appLocationEnabled", Boolean.valueOf(a.d())).a("systemLocationEnabled", Boolean.valueOf(a.e())).a("webSettingsGeoTagEnabled", Boolean.valueOf(a.b(bg.a().c())));
        String str = "sessionNonNull";
        if (bg.a().c() != null) {
            z4 = true;
        } else {
            z4 = false;
        }
        a2 = a2.a(str, Boolean.valueOf(z4));
        str = "googlePlayServicesEnabled";
        if (c.a(context) && d.a("geo_data_provider_google_play_services_enabled")) {
            z4 = true;
        } else {
            z4 = false;
        }
        a2 = a2.a(str, Boolean.valueOf(z4));
        str = "geoTagNonNull";
        if (gVar != null) {
            z4 = true;
        } else {
            z4 = false;
        }
        a2 = a2.a(str, Boolean.valueOf(z4));
        str = "coordinateNonNull";
        if (gVar == null || gVar.b() == null) {
            z4 = false;
        } else {
            z4 = true;
        }
        a2 = a2.a(str, Boolean.valueOf(z4)).a("legacyGeoTagTextViewVisible", Boolean.valueOf(a(textView, textView2, false))).a("locationTextViewVisible", Boolean.valueOf(a(textView, textView2, true)));
        str = "legacyLocationTextSameAsPlaceName";
        if (gVar == null || !a(textView, textView2, gVar, z, false)) {
            z4 = false;
        } else {
            z4 = true;
        }
        a2 = a2.a(str, Boolean.valueOf(z4));
        str = "locationTextSameAsPlaceName";
        if (gVar == null || !a(textView, textView2, gVar, z, true)) {
            z4 = false;
        } else {
            z4 = true;
        }
        a2 = a2.a(str, Boolean.valueOf(z4));
        str = "geoTagButtonVisible";
        if (toggleImageButton == null || toggleImageButton.getVisibility() != 0) {
            z4 = false;
        } else {
            z4 = true;
        }
        bbl a3 = a2.a(str, Boolean.valueOf(z4));
        String str2 = "geoTagButtonToggledOn";
        if (toggleImageButton == null || !toggleImageButton.b()) {
            z5 = false;
        }
        bbn.a(a3.a(str2, Boolean.valueOf(z5)).a("isLifelineAlertActive", Boolean.valueOf(z)).a("isPreciseGeoTagEnabled", Boolean.valueOf(z2)).a("isInlinePlacePickerEnabled", Boolean.valueOf(z3)).a(new IllegalStateException("Inconsistent geo tag state detected.")));
    }

    static boolean a(bvt bvt, ToggleImageButton toggleImageButton, TextView textView, TextView textView2, g gVar, boolean z, boolean z2, boolean z3) {
        if (gVar == null) {
            return true;
        }
        boolean z4;
        boolean z5 = a(toggleImageButton) && b(textView, textView2, gVar, z2, z3);
        if (gVar.b() == null) {
            z4 = true;
        } else {
            z4 = false;
        }
        z4 = z4 != z;
        Session c = bg.a().c();
        if (z5 && z4 && bvt.a(c)) {
            return true;
        }
        return false;
    }

    private static boolean a(ToggleImageButton toggleImageButton) {
        return toggleImageButton != null && toggleImageButton.getVisibility() == 0 && toggleImageButton.b();
    }

    private static boolean a(TextView textView, TextView textView2, boolean z) {
        if (z) {
            if (textView2 == null || textView2.getVisibility() != 0) {
                return false;
            }
            return true;
        } else if (textView == null || textView.getVisibility() != 0) {
            return false;
        } else {
            return true;
        }
    }

    private static boolean a(TextView textView, TextView textView2, g gVar, boolean z, boolean z2) {
        if (z2) {
            if (textView2 == null || !textView2.getText().equals(gVar.a().d)) {
                return false;
            }
            return true;
        } else if (textView == null || (!z && !textView.getText().equals(gVar.a().d))) {
            return false;
        } else {
            return true;
        }
    }

    private static boolean b(TextView textView, TextView textView2, g gVar, boolean z, boolean z2) {
        return a(textView, textView2, z2) && a(textView, textView2, gVar, z, z2);
    }
}
