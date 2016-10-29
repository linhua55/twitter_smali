package com.twitter.android.widget.highlights;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.exoplayer.util.MpegAudioHeader;

/* compiled from: Twttr */
class i extends AccessibilityDelegateCompat {
    final /* synthetic */ StoriesViewPager a;

    i(StoriesViewPager storiesViewPager) {
        this.a = storiesViewPager;
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(StoriesViewPager.class.getName());
        AccessibilityRecordCompat obtain = AccessibilityRecordCompat.obtain();
        obtain.setScrollable(a());
        if (accessibilityEvent.getEventType() == MpegAudioHeader.MAX_FRAME_SIZE_BYTES && StoriesViewPager.a(this.a) != null) {
            obtain.setItemCount(StoriesViewPager.a(this.a).getCount());
            obtain.setFromIndex(StoriesViewPager.b(this.a));
            obtain.setToIndex(StoriesViewPager.b(this.a));
        }
    }

    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(StoriesViewPager.class.getName());
        accessibilityNodeInfoCompat.setScrollable(a());
        if (this.a.canScrollHorizontally(1)) {
            accessibilityNodeInfoCompat.addAction(MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
        }
        if (this.a.canScrollHorizontally(-1)) {
            accessibilityNodeInfoCompat.addAction(8192);
        }
    }

    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        switch (i) {
            case MpegAudioHeader.MAX_FRAME_SIZE_BYTES /*4096*/:
                if (!this.a.canScrollHorizontally(1)) {
                    return false;
                }
                this.a.setCurrentItem(StoriesViewPager.b(this.a) + 1);
                return true;
            case 8192:
                if (!this.a.canScrollHorizontally(-1)) {
                    return false;
                }
                this.a.setCurrentItem(StoriesViewPager.b(this.a) - 1);
                return true;
            default:
                return false;
        }
    }

    private boolean a() {
        return StoriesViewPager.a(this.a) != null && StoriesViewPager.a(this.a).getCount() > 1;
    }
}
