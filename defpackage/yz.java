package defpackage;

import android.support.annotation.ColorInt;
import android.view.View;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import bhc;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: yz */
public class yz extends ya<zc> {
    private final UserImageView m;
    private final View n;
    private final TextView o;

    public yz(zb zbVar) {
        super(zbVar);
        zc zcVar = (zc) zbVar.a;
        this.m = zcVar.b;
        this.n = zcVar.c;
        this.o = zcVar.d;
    }

    public void a() {
        i();
        j();
        super.a();
    }

    private void i() {
        b(this.g.getDimensionPixelSize(2131689919), this.g.getDimensionPixelSize(2131689918));
    }

    void d() {
        a(2130837808, 2131886207);
    }

    String g() {
        String g = super.g();
        if (!this.k) {
            return g;
        }
        return String.format(this.g.getString(2131362505), new Object[]{this.b.d, g});
    }

    String f() {
        return this.o.getText().toString();
    }

    void a(String str) {
        this.o.setText(str);
    }

    void a(@ColorInt int i) {
        this.o.setTextColor(i);
    }

    void a(boolean z) {
        this.o.setVisibility(z ? 0 : 8);
    }

    void b(int i) {
        this.o.setPadding(i, 0, i, 0);
    }

    void h() {
        super.h();
        this.m.setVisibility(4);
        b(0, 0);
    }

    private void j() {
        if (((bhc) this.a).b(this.h)) {
            this.m.setVisibility(8);
        } else {
            this.m.setOnClickListener(new za(this));
            this.m.setVisibility(0);
        }
        this.m.a(this.b.e);
        if (aj.b(this.b.d)) {
            this.m.setContentDescription(this.g.getString(2131362816, new Object[]{r0}));
        }
    }

    private void b(int i, int i2) {
        LayoutParams layoutParams = (LayoutParams) this.n.getLayoutParams();
        layoutParams.setMargins(0, i, 0, i2);
        this.n.setLayoutParams(layoutParams);
    }
}
