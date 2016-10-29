package com.twitter.android.client;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;

/* compiled from: Twttr */
public class WidgetLargeProvider extends AppWidgetProvider {
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        context.sendBroadcast(new Intent(WidgetControl.c).putExtra("widget_provider", 2131230724));
    }

    public void onDeleted(Context context, int[] iArr) {
        super.onDeleted(context, iArr);
        context.startService(new Intent(context, WidgetService.class).setAction("on_delete").putExtra("widget_ids", iArr));
    }
}
