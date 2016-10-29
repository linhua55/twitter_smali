package com.twitter.android.media.camera;

import com.twitter.android.media.camera.VideoTooltipManager.CameraTooltip;

/* compiled from: Twttr */
/* synthetic */ class bd {
    static final /* synthetic */ int[] a;

    static {
        a = new int[CameraTooltip.values().length];
        try {
            a[CameraTooltip.SHOW_PUSH_TO_RECORD.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[CameraTooltip.SHOW_PLAYBACK.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[CameraTooltip.SHOW_ANOTHER_SEGMENT.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[CameraTooltip.SHOW_FINISHED.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[CameraTooltip.SHOW_SWITCH_TO_VIDEOS.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[CameraTooltip.SHOW_IMPORT_GRIPPER.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
    }
}
