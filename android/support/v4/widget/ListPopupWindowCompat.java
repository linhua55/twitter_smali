package android.support.v4.widget;

import android.os.Build.VERSION;
import android.view.View;
import android.view.View.OnTouchListener;

/* compiled from: Twttr */
public final class ListPopupWindowCompat {
    static final ListPopupWindowImpl IMPL;

    /* compiled from: Twttr */
    interface ListPopupWindowImpl {
        OnTouchListener createDragToOpenListener(Object obj, View view);
    }

    /* compiled from: Twttr */
    class BaseListPopupWindowImpl implements ListPopupWindowImpl {
        BaseListPopupWindowImpl() {
        }

        public OnTouchListener createDragToOpenListener(Object obj, View view) {
            return null;
        }
    }

    /* compiled from: Twttr */
    class KitKatListPopupWindowImpl extends BaseListPopupWindowImpl {
        KitKatListPopupWindowImpl() {
        }

        public OnTouchListener createDragToOpenListener(Object obj, View view) {
            return ListPopupWindowCompatKitKat.createDragToOpenListener(obj, view);
        }
    }

    static {
        if (VERSION.SDK_INT >= 19) {
            IMPL = new KitKatListPopupWindowImpl();
        } else {
            IMPL = new BaseListPopupWindowImpl();
        }
    }

    private ListPopupWindowCompat() {
    }

    public static OnTouchListener createDragToOpenListener(Object obj, View view) {
        return IMPL.createDragToOpenListener(obj, view);
    }
}
