package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.EditText;
import aqo;

/* compiled from: Twttr */
/* renamed from: aqt */
class aqt implements OnTouchListener {
    final /* synthetic */ EditText a;
    final /* synthetic */ aqs b;

    aqt(aqs aqs, EditText editText) {
        this.b = aqs;
        this.a = editText;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 1 || motionEvent.getRawX() < ((float) (this.a.getRight() - this.a.getCompoundDrawables()[2].getBounds().width()))) {
            return false;
        }
        if (aqo.e(this.b.a) == null) {
            return true;
        }
        aqo.e(this.b.a).c();
        return true;
    }
}
