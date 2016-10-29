package android.support.v4.widget;

import android.app.SearchManager;
import android.content.ComponentName;
import android.content.Context;
import android.view.View;
import android.widget.SearchView;
import android.widget.SearchView.OnCloseListener;
import android.widget.SearchView.OnQueryTextListener;

/* compiled from: Twttr */
class SearchViewCompatHoneycomb {

    /* compiled from: Twttr */
    interface OnQueryTextListenerCompatBridge {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    /* compiled from: Twttr */
    interface OnCloseListenerCompatBridge {
        boolean onClose();
    }

    /* compiled from: Twttr */
    /* renamed from: android.support.v4.widget.SearchViewCompatHoneycomb.1 */
    final class AnonymousClass1 implements OnQueryTextListener {
        final /* synthetic */ OnQueryTextListenerCompatBridge val$listener;

        AnonymousClass1(OnQueryTextListenerCompatBridge onQueryTextListenerCompatBridge) {
            this.val$listener = onQueryTextListenerCompatBridge;
        }

        public boolean onQueryTextSubmit(String str) {
            return this.val$listener.onQueryTextSubmit(str);
        }

        public boolean onQueryTextChange(String str) {
            return this.val$listener.onQueryTextChange(str);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: android.support.v4.widget.SearchViewCompatHoneycomb.2 */
    final class AnonymousClass2 implements OnCloseListener {
        final /* synthetic */ OnCloseListenerCompatBridge val$listener;

        AnonymousClass2(OnCloseListenerCompatBridge onCloseListenerCompatBridge) {
            this.val$listener = onCloseListenerCompatBridge;
        }

        public boolean onClose() {
            return this.val$listener.onClose();
        }
    }

    SearchViewCompatHoneycomb() {
    }

    public static View newSearchView(Context context) {
        return new SearchView(context);
    }

    public static void setSearchableInfo(View view, ComponentName componentName) {
        SearchView searchView = (SearchView) view;
        searchView.setSearchableInfo(((SearchManager) searchView.getContext().getSystemService("search")).getSearchableInfo(componentName));
    }

    public static Object newOnQueryTextListener(OnQueryTextListenerCompatBridge onQueryTextListenerCompatBridge) {
        return new AnonymousClass1(onQueryTextListenerCompatBridge);
    }

    public static void setOnQueryTextListener(Object obj, Object obj2) {
        ((SearchView) obj).setOnQueryTextListener((OnQueryTextListener) obj2);
    }

    public static Object newOnCloseListener(OnCloseListenerCompatBridge onCloseListenerCompatBridge) {
        return new AnonymousClass2(onCloseListenerCompatBridge);
    }

    public static void setOnCloseListener(Object obj, Object obj2) {
        ((SearchView) obj).setOnCloseListener((OnCloseListener) obj2);
    }

    public static CharSequence getQuery(View view) {
        return ((SearchView) view).getQuery();
    }

    public static void setQuery(View view, CharSequence charSequence, boolean z) {
        ((SearchView) view).setQuery(charSequence, z);
    }

    public static void setQueryHint(View view, CharSequence charSequence) {
        ((SearchView) view).setQueryHint(charSequence);
    }

    public static void setIconified(View view, boolean z) {
        ((SearchView) view).setIconified(z);
    }

    public static boolean isIconified(View view) {
        return ((SearchView) view).isIconified();
    }

    public static void setSubmitButtonEnabled(View view, boolean z) {
        ((SearchView) view).setSubmitButtonEnabled(z);
    }

    public static boolean isSubmitButtonEnabled(View view) {
        return ((SearchView) view).isSubmitButtonEnabled();
    }

    public static void setQueryRefinementEnabled(View view, boolean z) {
        ((SearchView) view).setQueryRefinementEnabled(z);
    }

    public static boolean isQueryRefinementEnabled(View view) {
        return ((SearchView) view).isQueryRefinementEnabled();
    }

    public static void setMaxWidth(View view, int i) {
        ((SearchView) view).setMaxWidth(i);
    }
}
