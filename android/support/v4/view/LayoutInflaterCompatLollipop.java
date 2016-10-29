package android.support.v4.view;

import android.view.LayoutInflater;

/* compiled from: Twttr */
class LayoutInflaterCompatLollipop {
    LayoutInflaterCompatLollipop() {
    }

    static void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
        layoutInflater.setFactory2(layoutInflaterFactory != null ? new FactoryWrapperHC(layoutInflaterFactory) : null);
    }
}
