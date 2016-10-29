package tv.periscope.android.ui.broadcast;

import tv.periscope.android.view.t;

/* compiled from: Twttr */
class v extends t {
    final /* synthetic */ ChatComposer a;

    v(ChatComposer chatComposer) {
        this.a = chatComposer;
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (charSequence.length() > 4) {
            this.a.s = true;
        }
        this.a.a();
    }
}
