package android.support.v7.widget;

import android.support.v7.widget.ActionMenuView.OnMenuItemClickListener;
import android.view.MenuItem;

/* compiled from: Twttr */
class Toolbar$1 implements OnMenuItemClickListener {
    final /* synthetic */ Toolbar this$0;

    Toolbar$1(Toolbar toolbar) {
        this.this$0 = toolbar;
    }

    public boolean onMenuItemClick(MenuItem menuItem) {
        if (Toolbar.access$000(this.this$0) != null) {
            return Toolbar.access$000(this.this$0).onMenuItemClick(menuItem);
        }
        return false;
    }
}
