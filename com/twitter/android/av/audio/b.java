package com.twitter.android.av.audio;

import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.BaseDialogFragment;

/* compiled from: Twttr */
public class b extends ec {
    protected /* synthetic */ PromptDialogFragment b() {
        return a();
    }

    protected /* synthetic */ BaseDialogFragment c() {
        return a();
    }

    public b(int i) {
        super(i);
    }

    protected AudioCardErrorDialog a() {
        return new AudioCardErrorDialog();
    }
}
