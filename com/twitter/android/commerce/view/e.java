package com.twitter.android.commerce.view;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.view.View;
import android.widget.EditText;
import com.twitter.util.j;
import java.util.List;

/* compiled from: Twttr */
public class e {
    private final Context a;
    private final i b;

    public e(Context context, i iVar) {
        this.a = context;
        this.b = iVar;
    }

    public void a() {
        Builder builder = new Builder(this.a);
        builder.setTitle(this.a.getResources().getString(2131362118));
        View editText = new EditText(this.a);
        editText.setInputType(1);
        builder.setView(editText);
        builder.setPositiveButton(this.a.getResources().getString(2131363218), new f(this, editText));
        builder.setNegativeButton(this.a.getResources().getString(2131362041), new g(this));
        builder.show();
    }

    private void a(List<Integer> list) {
        j.b(list.size() > 0);
        new Builder(this.a).setMessage(((Integer) list.get(0)).intValue()).setCancelable(true).setPositiveButton(2131363218, new h(this)).create().show();
    }
}
