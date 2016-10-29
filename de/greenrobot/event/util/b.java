package de.greenrobot.event.util;

import android.os.Bundle;

/* compiled from: Twttr */
public abstract class b<T> {
    protected final a a;

    protected abstract T a(ThrowableFailureEvent throwableFailureEvent, Bundle bundle);

    protected T a(ThrowableFailureEvent throwableFailureEvent, boolean z, Bundle bundle) {
        if (throwableFailureEvent.a()) {
            return null;
        }
        Bundle bundle2;
        if (bundle != null) {
            bundle2 = (Bundle) bundle.clone();
        } else {
            bundle2 = new Bundle();
        }
        if (!bundle2.containsKey("de.greenrobot.eventbus.errordialog.title")) {
            bundle2.putString("de.greenrobot.eventbus.errordialog.title", b(throwableFailureEvent, bundle2));
        }
        if (!bundle2.containsKey("de.greenrobot.eventbus.errordialog.message")) {
            bundle2.putString("de.greenrobot.eventbus.errordialog.message", c(throwableFailureEvent, bundle2));
        }
        if (!bundle2.containsKey("de.greenrobot.eventbus.errordialog.finish_after_dialog")) {
            bundle2.putBoolean("de.greenrobot.eventbus.errordialog.finish_after_dialog", z);
        }
        if (!(bundle2.containsKey("de.greenrobot.eventbus.errordialog.event_type_on_close") || this.a.i == null)) {
            bundle2.putSerializable("de.greenrobot.eventbus.errordialog.event_type_on_close", this.a.i);
        }
        if (!(bundle2.containsKey("de.greenrobot.eventbus.errordialog.icon_id") || this.a.h == 0)) {
            bundle2.putInt("de.greenrobot.eventbus.errordialog.icon_id", this.a.h);
        }
        return a(throwableFailureEvent, bundle2);
    }

    protected String b(ThrowableFailureEvent throwableFailureEvent, Bundle bundle) {
        return this.a.a.getString(this.a.b);
    }

    protected String c(ThrowableFailureEvent throwableFailureEvent, Bundle bundle) {
        return this.a.a.getString(this.a.a(throwableFailureEvent.a));
    }
}
