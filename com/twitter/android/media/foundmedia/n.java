package com.twitter.android.media.foundmedia;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.twitter.android.util.v;

/* compiled from: Twttr */
class n implements OnEditorActionListener {
    final /* synthetic */ GifGalleryActivity a;

    n(GifGalleryActivity gifGalleryActivity) {
        this.a = gifGalleryActivity;
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (keyEvent == null || keyEvent.getAction() != 0) {
            return false;
        }
        String charSequence = textView.getText().toString();
        if (charSequence.isEmpty() || charSequence.equals(this.a.c)) {
            this.a.a(false);
            return true;
        } else if (this.a.e()) {
            v.a(this.a, charSequence, 1, charSequence, 2, this.a.e);
            return true;
        } else {
            GifGalleryActivity gifGalleryActivity = this.a;
            this.a.c = charSequence;
            gifGalleryActivity.b = charSequence;
            this.a.d = 1;
            this.a.a(false);
            this.a.a.a(this.a.getApplicationContext(), 1, this.a.c);
            return true;
        }
    }
}
