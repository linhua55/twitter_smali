package com.twitter.android.client;

import android.content.Intent;
import android.widget.RemoteViewsService;
import android.widget.RemoteViewsService.RemoteViewsFactory;

/* compiled from: Twttr */
public class ScrollableWidgetService extends RemoteViewsService {
    public RemoteViewsFactory onGetViewFactory(Intent intent) {
        return new cc(getApplicationContext(), intent.getIntExtra("contentType", 0), intent.getLongExtra("ownerId", 0), intent.getStringExtra("accountName"));
    }
}
