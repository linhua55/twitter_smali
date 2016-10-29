package com.twitter.android.highlights;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.c;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import defpackage.bew;

/* compiled from: Twttr */
public class g {
    public static boolean a(l lVar) {
        return lVar.getBoolean("pref_highlights_intro_shown", false);
    }

    public static void a(l lVar, boolean z) {
        lVar.a().a("pref_highlights_intro_shown", z).apply();
    }

    public static boolean a(Context context, long j, boolean z, String str) {
        AsyncOperation bew = new bew(context, bg.a().b(j));
        bew.d(4);
        if (z) {
            bew.a((int) AccessibilityNodeInfoCompat.ACTION_SET_TEXT);
        } else {
            bew.c((int) AccessibilityNodeInfoCompat.ACTION_SET_TEXT);
        }
        bew.g = true;
        bew.c = false;
        bew.a((c) new h(j, str));
        az.a(context).a(bew);
        return true;
    }
}
