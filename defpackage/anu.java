package defpackage;

import com.twitter.ui.widget.TwitterButton;

/* compiled from: Twttr */
/* renamed from: anu */
class anu {
    public TwitterButton a;
    public TwitterButton b;

    anu(TwitterButton twitterButton, TwitterButton twitterButton2) {
        this.a = twitterButton;
        this.b = twitterButton2;
    }

    void a(boolean z) {
        int i;
        int i2 = 0;
        TwitterButton twitterButton = this.a;
        if (z) {
            i = 8;
        } else {
            i = 0;
        }
        twitterButton.setVisibility(i);
        TwitterButton twitterButton2 = this.b;
        if (!z) {
            i2 = 8;
        }
        twitterButton2.setVisibility(i2);
    }
}
