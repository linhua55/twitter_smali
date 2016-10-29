package com.twitter.app.common.app;

import com.twitter.app.common.app.internal.ag;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public abstract class l extends a implements m {
    public abstract n a(ag agVar);

    public static l p() {
        return (l) ObjectUtils.a(e.a(a.a()), l.class);
    }
}
