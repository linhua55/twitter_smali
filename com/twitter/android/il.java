package com.twitter.android;

import android.text.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;

/* compiled from: Twttr */
class il implements OnClickListener {
    final /* synthetic */ LogViewerActivity a;

    il(LogViewerActivity logViewerActivity) {
        this.a = logViewerActivity;
    }

    public void onClick(View view) {
        ((ClipboardManager) this.a.getSystemService("clipboard")).setText(this.a.a.getText());
        Toast.makeText(this.a, "Log copied to clipboard", 0).show();
    }
}
