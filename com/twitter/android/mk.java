package com.twitter.android;

import com.twitter.android.widget.PromptDialogFragment;

/* compiled from: Twttr */
class mk implements Runnable {
    final /* synthetic */ PromptDialogFragment a;
    final /* synthetic */ ProfileActivity b;

    mk(ProfileActivity profileActivity, PromptDialogFragment promptDialogFragment) {
        this.b = profileActivity;
        this.a = promptDialogFragment;
    }

    public void run() {
        this.a.a(this.b.getSupportFragmentManager());
    }
}
