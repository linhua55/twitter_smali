package com.twitter.android.moments.ui;

import android.content.res.Resources;
import com.twitter.model.moments.ab;
import com.twitter.ui.widget.BadgeView;
import defpackage.bdc;

/* compiled from: Twttr */
public class h {
    public static void a(ab abVar, BadgeView badgeView, int i, boolean z) {
        String str = abVar.p != null ? abVar.p.g : null;
        if (str != null) {
            Resources resources = badgeView.getResources();
            str = (z && str.equalsIgnoreCase(abVar.g)) ? resources.getString(bdc.promoted_without_advertiser) : resources.getString(bdc.promoted_by, new Object[]{str});
            badgeView.a(i, str);
            badgeView.setVisibility(0);
        }
    }
}
