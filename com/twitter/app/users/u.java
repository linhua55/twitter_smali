package com.twitter.app.users;

import android.content.Context;
import android.os.AsyncTask;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.model.core.TwitterUser;
import java.lang.ref.WeakReference;
import java.util.List;

/* compiled from: Twttr */
class u extends AsyncTask<Void, Void, Void> {
    final /* synthetic */ UsersFragment a;
    private final WeakReference<FragmentActivity> b;
    private final List<TwitterUser> c;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Void) obj);
    }

    private u(UsersFragment usersFragment, FragmentActivity fragmentActivity, List<TwitterUser> list) {
        this.a = usersFragment;
        this.b = new WeakReference(fragmentActivity);
        this.c = list;
    }

    protected Void a(Void... voidArr) {
        Context context = (Context) this.b.get();
        if (context != null) {
            di a = di.a(context, UsersFragment.c(this.a));
            e eVar = new e(context.getContentResolver());
            a.a(this.c, UsersFragment.d(this.a), 6, (long) UsersFragment.e(this.a).hashCode(), "-1", "0", true, eVar);
            eVar.a();
        }
        return null;
    }

    protected void a(Void voidR) {
        if (!this.a.j(Callback.DEFAULT_DRAG_ANIMATION_DURATION)) {
            UsersFragment.a(this.a, false);
        }
    }
}
