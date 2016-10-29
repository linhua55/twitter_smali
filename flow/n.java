package flow;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;

/* compiled from: Twttr */
final class n implements t {
    final Object a;
    SparseArray<Parcelable> b;

    n(Object obj) {
        this.a = obj;
    }

    public void a(View view) {
        SparseArray sparseArray = new SparseArray();
        view.saveHierarchyState(sparseArray);
        this.b = sparseArray;
    }

    public void b(View view) {
        if (this.b != null) {
            view.restoreHierarchyState(this.b);
        }
    }

    Bundle a(s sVar) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("OBJECT", sVar.a(this.a));
        bundle.putSparseParcelableArray("VIEW_STATE", this.b);
        return bundle;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((n) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
