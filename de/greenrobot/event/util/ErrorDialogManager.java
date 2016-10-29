package de.greenrobot.event.util;

import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.util.Log;
import de.greenrobot.event.c;

/* compiled from: Twttr */
public class ErrorDialogManager {
    public static b<?> a;

    /* compiled from: Twttr */
    public class SupportManagerFragment extends Fragment {
        protected boolean a;
        protected Bundle b;
        private c c;
        private boolean d;
        private Object e;

        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            this.c = ErrorDialogManager.a.a.a();
            this.c.a((Object) this);
            this.d = true;
        }

        public void onResume() {
            super.onResume();
            if (this.d) {
                this.d = false;
                return;
            }
            this.c = ErrorDialogManager.a.a.a();
            this.c.a((Object) this);
        }

        public void onPause() {
            this.c.b(this);
            super.onPause();
        }

        public void onEventMainThread(ThrowableFailureEvent throwableFailureEvent) {
            if (ErrorDialogManager.b(this.e, throwableFailureEvent)) {
                ErrorDialogManager.a(throwableFailureEvent);
                FragmentManager fragmentManager = getFragmentManager();
                fragmentManager.executePendingTransactions();
                DialogFragment dialogFragment = (DialogFragment) fragmentManager.findFragmentByTag("de.greenrobot.eventbus.error_dialog");
                if (dialogFragment != null) {
                    dialogFragment.dismiss();
                }
                dialogFragment = (DialogFragment) ErrorDialogManager.a.a(throwableFailureEvent, this.a, this.b);
                if (dialogFragment != null) {
                    dialogFragment.show(fragmentManager, "de.greenrobot.eventbus.error_dialog");
                }
            }
        }
    }

    protected static void a(ThrowableFailureEvent throwableFailureEvent) {
        if (a.a.f) {
            String str = a.a.g;
            if (str == null) {
                str = c.a;
            }
            Log.i(str, "Error dialog manager received exception", throwableFailureEvent.a);
        }
    }

    private static boolean b(Object obj, ThrowableFailureEvent throwableFailureEvent) {
        if (throwableFailureEvent != null) {
            Object b = throwableFailureEvent.b();
            if (!(b == null || b.equals(obj))) {
                return false;
            }
        }
        return true;
    }
}
