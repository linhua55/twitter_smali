package android.support.v4.widget;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.widget.SearchView;

/* compiled from: Twttr */
class SearchViewCompatIcs {

    /* compiled from: Twttr */
    public class MySearchView extends SearchView {
        public MySearchView(Context context) {
            super(context);
        }

        public void onActionViewCollapsed() {
            setQuery(BuildConfig.VERSION_NAME, false);
            super.onActionViewCollapsed();
        }
    }

    SearchViewCompatIcs() {
    }

    public static View newSearchView(Context context) {
        return new MySearchView(context);
    }

    public static void setImeOptions(View view, int i) {
        ((SearchView) view).setImeOptions(i);
    }

    public static void setInputType(View view, int i) {
        ((SearchView) view).setInputType(i);
    }
}
