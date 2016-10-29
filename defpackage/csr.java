package defpackage;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

/* compiled from: Twttr */
/* renamed from: csr */
public class csr extends ViewHolder {
    private final TextView a;

    public csr(View view) {
        super(view);
        this.a = (TextView) view.findViewById(csa.navigation_pill_text);
    }

    public void a(CharSequence charSequence) {
        this.a.setText(charSequence);
    }

    public void a(OnClickListener onClickListener) {
        this.a.setOnClickListener(onClickListener);
    }
}
