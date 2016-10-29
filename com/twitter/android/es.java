package com.twitter.android;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class es implements OnGlobalLayoutListener {
    final /* synthetic */ EditProfileOnboardingActivity a;

    es(EditProfileOnboardingActivity editProfileOnboardingActivity) {
        this.a = editProfileOnboardingActivity;
    }

    public void onGlobalLayout() {
        Rect rect = new Rect();
        Resources resources = this.a.getResources();
        this.a.t.getWindowVisibleDisplayFrame(rect);
        int height = this.a.t.getRootView().getHeight() - rect.bottom;
        if (!this.a.k.hasFocus()) {
            return;
        }
        if (height > resources.getDimensionPixelSize(2131690566) || !this.a.m.hasWindowFocus()) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            View currentFocus = this.a.getCurrentFocus();
            this.a.findViewById(2131952422).getLocationInWindow(iArr);
            if (currentFocus != null) {
                currentFocus.getLocationInWindow(iArr2);
            }
            this.a.t.postDelayed(new et(this, iArr2[1] - iArr[1]), 80);
        }
    }
}
