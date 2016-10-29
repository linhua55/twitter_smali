package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.twitter.media.ui.image.AspectRatioFrameLayout;

/* compiled from: Twttr */
/* renamed from: aeo */
public class aeo {
    private final ViewGroup a;
    private final ViewGroup b;
    private final View c;

    public aeo(Context context) {
        this.a = a(context);
        this.b = (ViewGroup) this.a.findViewById(2131952885);
        this.c = this.a.findViewById(2131953310);
    }

    public View a() {
        return this.a;
    }

    public void a(OnClickListener onClickListener) {
        this.a.setOnClickListener(onClickListener);
        if (this.c != null) {
            this.c.setOnClickListener(onClickListener);
        }
    }

    public void a(View view) {
        this.b.removeAllViews();
        this.b.addView(view);
    }

    private ViewGroup a(Context context) {
        return (ViewGroup) LayoutInflater.from(context).inflate(2130969429, new AspectRatioFrameLayout(context), false);
    }
}
