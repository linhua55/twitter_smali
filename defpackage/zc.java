package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: zc */
public class zc extends yp {
    private final UserImageView b;
    private final ViewGroup c;
    private final TextView d;

    public zc(View view, boolean z) {
        super(view, z);
        this.b = (UserImageView) e.a(ObjectUtils.a(this.a.findViewById(2131952353)));
        this.c = (ViewGroup) e.a(ObjectUtils.a(this.a.findViewById(2131952347)));
        this.d = (TextView) e.a(ObjectUtils.a(this.c.findViewById(2131952348)));
    }
}
