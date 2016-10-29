package com.twitter.android;

import android.os.Bundle;
import android.support.annotation.LayoutRes;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView.OnScrollListener;
import android.widget.EditText;
import android.widget.ListView;
import com.twitter.android.autocomplete.ListViewSuggestionEditText;
import com.twitter.android.autocomplete.SuggestionEditText;
import com.twitter.android.autocomplete.a;
import com.twitter.android.autocomplete.adapters.h;
import com.twitter.android.autocomplete.f;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.client.bg;
import com.twitter.library.util.aq;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ar;
import com.twitter.util.ui.r;
import com.twitter.util.w;
import defpackage.cgu;
import defpackage.sw;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import tm;
import tp;

/* compiled from: Twttr */
public abstract class SelectionFragment<T, S> extends AbsFragment implements TextWatcher, a<S>, f<T, S> {
    private OnScrollListener a;
    private Set<Long> b;
    protected final tm<T> c;
    protected bg d;
    protected ListViewSuggestionEditText<T, S> e;
    protected ListView f;
    protected sw<T, S> g;
    protected h<T, S> h;
    protected Set<Long> i;
    private boolean j;

    protected abstract View a(LayoutInflater layoutInflater);

    protected SelectionFragment(qd<T> qdVar) {
        this.c = qdVar;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.d = bg.a();
        this.b = new HashSet();
        this.i = ar.a(CollectionUtils.a(o().e("preselected_items")));
        this.j = true;
    }

    public void a(boolean z) {
        this.j = z;
    }

    protected final View a(LayoutInflater layoutInflater, @LayoutRes int i) {
        View inflate = layoutInflater.inflate(i, null);
        inflate.getViewTreeObserver().addOnGlobalLayoutListener(new px(this, inflate));
        ListView listView = (ListView) inflate.findViewById(2131952265);
        listView.setOnScrollListener(new py(this));
        a(listView);
        EditText editText = (ListViewSuggestionEditText) inflate.findViewById(2131952262);
        editText.addTextChangedListener(this);
        editText.setSuggestionListener(this);
        editText.setLongClickable(false);
        if (ak.f()) {
            a(editText, 5);
        }
        editText.setListView(listView);
        editText.setSuggestionProvider(this.g);
        editText.setAdapter(this.h);
        editText.setTokenizer(this.c);
        this.e = editText;
        return inflate;
    }

    protected void a(ListView listView) {
        this.f = listView;
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        return a(layoutInflater);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle != null) {
            Set set;
            CharSequence spannableStringBuilder = new SpannableStringBuilder();
            List<SelectedItem> parcelableArrayList = bundle.getParcelableArrayList("items");
            if (parcelableArrayList != null) {
                ar a = ar.a(parcelableArrayList.size());
                for (SelectedItem selectedItem : parcelableArrayList) {
                    int length = spannableStringBuilder.length();
                    qc qcVar = new qc(selectedItem, getContext(), this.j);
                    spannableStringBuilder.append(selectedItem.b).append(' ');
                    spannableStringBuilder.setSpan(qcVar, length, spannableStringBuilder.length(), 33);
                    a.c(Long.valueOf(selectedItem.a));
                }
                set = (Set) a.q();
            } else {
                set = ar.g();
            }
            a(set);
            CharSequence string = bundle.getString("partial_item");
            if (string != null) {
                spannableStringBuilder.append(string);
            }
            a(spannableStringBuilder, spannableStringBuilder.length());
        }
    }

    public void onStart() {
        super.onStart();
        if (q()) {
            this.e.requestFocus();
            r.b(getActivity(), this.e, true);
        }
    }

    public void onDestroy() {
        if (this.e != null) {
            this.e.c();
        }
        super.onDestroy();
    }

    public void a(T t, cgu<S> cgu_S) {
        ListView listView = this.f;
        listView.post(new pz(this, listView));
    }

    public void E_() {
    }

    public void p() {
        this.e.b();
    }

    protected boolean q() {
        return true;
    }

    protected void a(long j, String str, S s) {
        if (b(j)) {
            CharSequence spannableStringBuilder = new SpannableStringBuilder(this.e.getText());
            qc[] qcVarArr = (qc[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), qc.class);
            qc qcVar = null;
            int length = qcVarArr.length;
            int i = 0;
            while (i < length) {
                qc qcVar2 = qcVarArr[i];
                if (qcVar2.a().a != j) {
                    qcVar2 = qcVar;
                }
                i++;
                qcVar = qcVar2;
            }
            if (qcVar != null) {
                aq.a((Editable) spannableStringBuilder, (Object) qcVar, BuildConfig.VERSION_NAME, false);
                a(spannableStringBuilder, spannableStringBuilder.length());
            } else if (qcVarArr.length < c()) {
                String trim = str.trim();
                qcVar = new qc(new SelectedItem(j, trim), getContext(), this.j);
                tp a_ = this.c.a_(spannableStringBuilder, this.e.getSelectionEnd());
                if (a_ != null) {
                    spannableStringBuilder.replace(a_.a, a_.b, trim + ' ');
                    int length2 = (trim.length() + a_.a) + 1;
                    spannableStringBuilder.setSpan(qcVar, a_.a, length2, 33);
                    a(spannableStringBuilder, length2);
                }
                ((InputMethodManager) getActivity().getSystemService("input_method")).restartInput(this.e);
            } else {
                return;
            }
            a(u());
        }
    }

    public int c() {
        return ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        boolean z = (aj.b((CharSequence) editable) && w.a(editable.charAt(0))) || (aj.a((CharSequence) editable) && ak.f());
        a(this.e, z ? 5 : 3);
        qc[] qcVarArr = (qc[]) editable.getSpans(0, editable.length(), qc.class);
        if (qcVarArr.length > 0) {
            this.e.removeTextChangedListener(this);
            boolean z2 = false;
            for (Object obj : qcVarArr) {
                int spanStart = editable.getSpanStart(obj);
                int spanEnd = editable.getSpanEnd(obj);
                if (spanStart > -1 && spanEnd >= spanStart) {
                    if (!aj.a(obj.a().b + ' ', editable.subSequence(spanStart, spanEnd))) {
                        aq.a(editable, obj, BuildConfig.VERSION_NAME, false);
                        z2 = true;
                    }
                }
            }
            if (z2) {
                a(u());
            }
            this.e.addTextChangedListener(this);
        }
        x();
    }

    public void onSaveInstanceState(Bundle bundle) {
        int i = 0;
        super.onSaveInstanceState(bundle);
        Editable text = this.e.getText();
        qc[] qcVarArr = (qc[]) text.getSpans(0, text.length(), qc.class);
        ArrayList arrayList = new ArrayList(qcVarArr.length);
        int length = qcVarArr.length;
        while (i < length) {
            arrayList.add(qcVarArr[i].a());
            i++;
        }
        bundle.putParcelableArrayList("items", arrayList);
        bundle.putString("partial_item", w());
    }

    public Set<Long> u() {
        int i = 0;
        Editable text = this.e.getText();
        qc[] qcVarArr = (qc[]) text.getSpans(0, text.length(), qc.class);
        ar a = ar.a(qcVarArr.length);
        int length = qcVarArr.length;
        while (i < length) {
            a.c(Long.valueOf(qcVarArr[i].a().a));
            i++;
        }
        return (Set) a.q();
    }

    protected boolean v() {
        return !u().isEmpty();
    }

    public boolean b(long j) {
        return this.g == null || !this.i.contains(Long.valueOf(j));
    }

    public boolean b_(long j) {
        return this.g != null && (this.i.contains(Long.valueOf(j)) || this.b.contains(Long.valueOf(j)));
    }

    protected String w() {
        return this.c.c(this.e.getText(), this.e.getSelectionEnd());
    }

    protected void a(CharSequence charSequence, int i) {
        SuggestionEditText suggestionEditText = this.e;
        suggestionEditText.removeTextChangedListener(this);
        suggestionEditText.setText(charSequence);
        suggestionEditText.setSelection(i);
        suggestionEditText.addTextChangedListener(this);
        x();
    }

    protected void x() {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.e.getLayoutParams();
        this.e.post(new qa(this, this.e.getResources().getDimensionPixelSize(2131690128), marginLayoutParams));
    }

    private static void a(EditText editText, int i) {
        editText.setGravity((editText.getGravity() & 112) | i);
    }

    private void a(Set<Long> set) {
        this.b = set;
        this.h.notifyDataSetChanged();
    }
}
