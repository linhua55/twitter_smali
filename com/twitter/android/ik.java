package com.twitter.android;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

/* compiled from: Twttr */
class ik implements OnItemSelectedListener {
    final /* synthetic */ LogViewerActivity a;

    ik(LogViewerActivity logViewerActivity) {
        this.a = logViewerActivity;
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.a.c();
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
