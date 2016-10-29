package com.twitter.android.composer;

import android.text.Editable;
import com.twitter.android.widget.ComposerSelectionFragment;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class l extends e {
    final /* synthetic */ TweetBox a;
    final /* synthetic */ ComposerSelectionFragment b;
    final /* synthetic */ ComposerActivity c;

    l(ComposerActivity composerActivity, TweetBox tweetBox, ComposerSelectionFragment composerSelectionFragment) {
        this.c = composerActivity;
        this.a = tweetBox;
        this.b = composerSelectionFragment;
    }

    public void afterTextChanged(Editable editable) {
        if (this.c.g) {
            this.b.a(this.a.getTokenAtCursor());
        }
        this.c.ae();
        this.c.aa.a(this.c.i.getText());
    }
}
