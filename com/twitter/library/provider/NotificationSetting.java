package com.twitter.library.provider;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import tv.periscope.chatman.api.WireMessage;

@Deprecated
/* compiled from: Twttr */
public enum NotificationSetting {
    MENTIONS(2, 1, 8, 4),
    RETWEETS(8, 4, AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS),
    FAVORITES(32, 16, 64, 32),
    POLLS(AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD, ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT, 33554432, ViewCompat.MEASURED_STATE_TOO_SMALL),
    FOLLOWS(0, 64, 0, 16),
    MESSAGES(0, 1, 0, 1),
    LIFELINE_ALERTS(0, 1, 0, AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD),
    TWEETS(0, 1, 0, AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY),
    ADDRESS_BOOK(0, AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY, 0, ItemAnimator.FLAG_MOVED),
    EXPERIMENTAL(0, 1, 0, ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT),
    RECOMMENDATIONS(0, 1, 0, AccessibilityNodeInfoCompat.ACTION_COPY),
    NEWS(0, 1, 0, AccessibilityNodeInfoCompat.ACTION_SET_SELECTION),
    RETWEETED_MENTION(0, AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY, 0, AccessibilityNodeInfoCompat.ACTION_PASTE),
    FAVORITED_MENTION(0, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, 0, AccessibilityNodeInfoCompat.ACTION_CUT),
    VIT_NOTABLE_EVENT(0, 1, 0, AccessibilityNodeInfoCompat.ACTION_EXPAND),
    FOLLOWED_VERIFIED(0, ItemAnimator.FLAG_MOVED, 0, AccessibilityNodeInfoCompat.ACTION_COLLAPSE),
    OFFER_REDEMPTION(0, 1, 0, AccessibilityNodeInfoCompat.ACTION_DISMISS),
    HIGHLIGHTS(0, 1, 0, AccessibilityNodeInfoCompat.ACTION_SET_TEXT),
    MOMENTS(0, 1, 0, 4194304);
    
    private final int mPushFlag;
    private final int mPushFlagForAll;
    private final int mSettingEnabled;
    private final int mSettingEnabledAll;

    private NotificationSetting(int i, int i2, int i3, int i4) {
        this.mSettingEnabledAll = i;
        this.mSettingEnabled = i2;
        this.mPushFlagForAll = i3;
        this.mPushFlag = i4;
    }

    public int a(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return this.mPushFlag;
            case WireMessage.WIRE_CONTROL /*2*/:
                return this.mPushFlagForAll;
            default:
                return 0;
        }
    }

    public int b(int i) {
        if ((this.mSettingEnabled & i) != 0) {
            return 1;
        }
        if ((this.mSettingEnabledAll & i) != 0) {
            return 2;
        }
        return 0;
    }

    public int c(int i) {
        if (this.mPushFlagForAll != 0 && (this.mPushFlagForAll & i) == this.mPushFlagForAll) {
            return 2;
        }
        if ((this.mPushFlag & i) == this.mPushFlag) {
            return 1;
        }
        return 0;
    }

    public static int a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, boolean z, int i19) {
        return (z ? AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT : 0) | (MOMENTS.a(i18) | ((((((((((((((((((0 | TWEETS.a(i)) | MENTIONS.a(i2)) | RETWEETS.a(i3)) | FAVORITES.a(i4)) | POLLS.a(i19)) | FOLLOWS.a(i5)) | MESSAGES.a(i6)) | ADDRESS_BOOK.a(i7)) | EXPERIMENTAL.a(i8)) | LIFELINE_ALERTS.a(i9)) | RECOMMENDATIONS.a(i10)) | NEWS.a(i11)) | VIT_NOTABLE_EVENT.a(i12)) | RETWEETED_MENTION.a(i13)) | FAVORITED_MENTION.a(i14)) | FOLLOWED_VERIFIED.a(i15)) | OFFER_REDEMPTION.a(i16)) | HIGHLIGHTS.a(i17)));
    }
}
