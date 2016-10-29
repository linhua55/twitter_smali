package com.twitter.android.commerce.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.twitter.library.commerce.model.m;
import com.twitter.util.h;
import java.util.List;

/* compiled from: Twttr */
class f implements OnClickListener {
    final /* synthetic */ EditText a;
    final /* synthetic */ e b;

    f(e eVar, EditText editText) {
        this.b = eVar;
        this.a = editText;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        String obj = this.a.getText().toString();
        m mVar = new m();
        mVar.a(obj);
        List e = mVar.e();
        h.b(e != null);
        if (e.size() == 0) {
            e.a(this.b).a(mVar);
        } else {
            e.a(this.b, e);
        }
    }
}
