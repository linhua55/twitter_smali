package com.twitter.android.client.chrome;

import android.content.Context;
import android.content.Intent;

/* compiled from: Twttr */
public enum CustomTabsAction {
    ;
    
    public final String id;
    protected final int mLabelResourceId;

    private CustomTabsAction(String str, int i) {
        this.id = str;
        this.mLabelResourceId = i;
    }

    public static CustomTabsAction a(String str) {
        for (CustomTabsAction customTabsAction : values()) {
            if (customTabsAction.id.equals(str)) {
                return customTabsAction;
            }
        }
        return null;
    }

    public String a(Context context) {
        return context.getString(this.mLabelResourceId);
    }

    protected void a(Context context, String str) {
    }

    protected Intent b(Context context, String str) {
        return null;
    }
}
