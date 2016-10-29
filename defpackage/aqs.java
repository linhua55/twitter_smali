package defpackage;

import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.view.KeyEvent;
import android.widget.EditText;
import aqo;
import com.twitter.android.composer.ch;

/* compiled from: Twttr */
/* renamed from: aqs */
class aqs implements ch {
    final /* synthetic */ aqo a;

    aqs(aqo aqo) {
        this.a = aqo;
    }

    public void a(int i) {
        aqo.f(this.a).a(i);
        aqo.h(this.a).setEnabled(aqo.g(this.a).n());
    }

    public void a() {
        if (aqo.e(this.a) != null) {
            aqo.e(this.a).a();
        }
    }

    public void b() {
        if (aqo.e(this.a) != null) {
            aqo.e(this.a).b();
        }
    }

    public void a(boolean z) {
        if (!aqo.i(this.a) && z) {
            aqo.j(this.a).setVisibility(0);
            if (buk.a()) {
                EditText editText = (EditText) aqo.g(this.a).findViewById(2131952229);
                Drawable drawable = editText.getResources().getDrawable(2130839743);
                bde.a(drawable, ContextCompat.getColor(editText.getContext(), bcu.text));
                Drawable[] compoundDrawables = editText.getCompoundDrawables();
                editText.setCompoundDrawablesWithIntrinsicBounds(compoundDrawables[0], compoundDrawables[1], drawable, compoundDrawables[3]);
                editText.invalidate();
                editText.setOnTouchListener(new aqt(this, editText));
            }
        }
        aqo.b(this.a, z);
        aqo.h(this.a).setEnabled(aqo.g(this.a).n());
    }

    public void c() {
        if (aqo.e(this.a) != null) {
            aqo.e(this.a).a();
        }
    }

    public boolean a(KeyEvent keyEvent) {
        return false;
    }
}
