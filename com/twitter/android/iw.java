package com.twitter.android;

import com.twitter.library.client.bg;

/* compiled from: Twttr */
class iw implements Runnable {
    final /* synthetic */ LoginChallengeActivity a;

    private iw(LoginChallengeActivity loginChallengeActivity) {
        this.a = loginChallengeActivity;
    }

    public void run() {
        if (!this.a.isFinishing()) {
            bg n = this.a.aa();
            this.a.a = n.a(this.a.j, this.a.g.a, this.a.g.b, this.a.b);
        }
    }
}
