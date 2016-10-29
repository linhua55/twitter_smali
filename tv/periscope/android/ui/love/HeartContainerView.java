package tv.periscope.android.ui.love;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import dce;
import java.util.List;
import tv.periscope.android.library.j;

/* compiled from: Twttr */
public class HeartContainerView extends RelativeLayout {
    private a a;
    private k b;

    public HeartContainerView(Context context) {
        super(context);
        a();
    }

    public HeartContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public HeartContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        if (VERSION.SDK_INT >= 21) {
            this.a = new f(getContext());
        } else {
            this.a = new b(getContext());
        }
        this.b = new k(getContext());
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.a.a();
    }

    public void a(String str, List<String> list) {
        this.b.a(str, list);
    }

    public void setImageLoader(dce dce) {
        this.b.a(dce);
    }

    public void a(int i, boolean z) {
        this.a.a(this.b.a(i), this, z);
    }

    public void b(int i, boolean z) {
        HeartView heartView = new HeartView(getContext());
        heartView.a(i, j.ps__ic_screenshot_border, j.ps__ic_screenshot_fill);
        this.a.a(heartView, this, z);
    }
}
