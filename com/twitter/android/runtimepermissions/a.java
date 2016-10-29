package com.twitter.android.runtimepermissions;

import com.twitter.android.runtimepermissions.PermissionRequestActivity.State;

/* compiled from: Twttr */
/* synthetic */ class a {
    static final /* synthetic */ int[] a;

    static {
        a = new int[State.values().length];
        try {
            a[State.SHOULD_SHOW_PRELIMINARY_DIALOG.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[State.SHOULD_SHOW_SYSTEM_DIALOGS.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[State.SHOULD_SHOW_RETARGETING_DIALOG.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
