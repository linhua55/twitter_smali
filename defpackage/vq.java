package defpackage;

import android.widget.DatePicker.OnDateChangedListener;
import com.twitter.model.profile.ExtendedProfile.Visibility;
import com.twitter.ui.widget.v;
import java.util.Calendar;

/* compiled from: Twttr */
/* renamed from: vq */
public class vq implements vp {
    private final vl a;
    private final vs b;

    public vq(vl vlVar, vs vsVar) {
        this.a = vlVar;
        this.b = vsVar;
    }

    public void a(int i, int i2, int i3) {
        this.a.a(vr.a(i, i2, i3));
        this.a.a(0);
    }

    public void a() {
        this.a.a(8);
    }

    public void a(long j, boolean z) {
        Calendar a = vr.a(j);
        Calendar b = vr.b(j);
        this.a.a(a.getTimeInMillis());
        this.a.b(b.getTimeInMillis());
        this.a.b(z ? 0 : 8);
    }

    public void b() {
        this.a.a(this.b.a(), 2131362600);
        this.a.b(this.b.b(), 2131362604);
    }

    public Visibility a(int i, int i2, int i3, Visibility visibility) {
        Calendar instance = Calendar.getInstance();
        instance.set(i, i2, i3);
        v c = instance.after(vr.a()) ? this.b.c() : this.b.b();
        if (!this.a.a(c)) {
            return visibility;
        }
        this.a.b(c);
        visibility = Visibility.SELF;
        this.a.b(visibility);
        return visibility;
    }

    public void a(Visibility visibility, Visibility visibility2, int i, int i2, int i3, OnDateChangedListener onDateChangedListener) {
        this.a.a(visibility);
        this.a.b(visibility2);
        this.a.a(i, i2 - 1, i3, onDateChangedListener);
    }

    public void a(OnDateChangedListener onDateChangedListener, boolean z) {
        this.a.a(1990, 1, 1, onDateChangedListener);
        this.a.a(z ? Visibility.PUBLIC : Visibility.MUTUALFOLLOW);
        this.a.b(Visibility.SELF);
    }
}
