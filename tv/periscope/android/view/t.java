package tv.periscope.android.view;

import android.text.Editable;
import android.text.TextWatcher;

/* compiled from: Twttr */
public class t implements TextWatcher {
    private boolean a;

    public t() {
        this.a = true;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.a) {
            a(charSequence, i, i2, i3);
        }
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.a) {
            b(charSequence, i, i2, i3);
        }
    }

    public void afterTextChanged(Editable editable) {
        if (this.a) {
            a(editable);
        }
    }

    public void a(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void b(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void a(Editable editable) {
    }
}
