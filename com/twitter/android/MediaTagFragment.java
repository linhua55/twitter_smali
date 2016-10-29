package com.twitter.android;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.ListView;
import android.widget.TextView;
import com.twitter.android.autocomplete.ListViewSuggestionEditText;
import com.twitter.android.autocomplete.SuggestionEditText;
import com.twitter.android.autocomplete.f;
import com.twitter.android.provider.z;
import com.twitter.android.widget.DraggableHeaderLayout;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.media.util.x;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.media.model.ImageFile;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.ag;
import com.twitter.model.core.p;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.n;
import com.twitter.util.serialization.s;
import com.twitter.util.ui.r;
import com.twitter.util.w;
import defpackage.bbu;
import defpackage.bcx;
import defpackage.cgu;
import java.util.List;
import java.util.Set;
import sv;
import te;
import to;
import tp;

/* compiled from: Twttr */
public class MediaTagFragment extends BaseFragment implements TextWatcher, f<String, z> {
    private final to<String> a;
    private bg b;
    private boolean c;
    private View d;
    private ListViewSuggestionEditText<String, z> e;
    private TextView f;
    private TextView g;
    private View h;
    private ListView i;
    private sv j;
    private com.twitter.android.autocomplete.adapters.f k;
    private boolean l;
    private List<Long> m;
    private int n;

    public MediaTagFragment() {
        this.a = new kk();
        this.n = -1;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context activity = getActivity();
        this.b = bg.a();
        Session c = this.b.c();
        TwitterUser f = c.f();
        boolean z = f != null && f.m;
        this.c = z;
        this.j = new sv(activity, this.c, this.c ? null : new te(activity, c, "compose_media_tagging"));
        this.j.a(this.m);
        this.k = new com.twitter.android.autocomplete.adapters.f(activity);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        List list;
        String string;
        View inflate = layoutInflater.inflate(2130968988, null);
        DraggableHeaderLayout draggableHeaderLayout = (DraggableHeaderLayout) inflate;
        this.d = inflate.findViewById(2131952715);
        this.f = (TextView) inflate.findViewById(2131952717);
        ListView listView = (ListView) inflate.findViewById(2131952265);
        View inflate2 = layoutInflater.inflate(2130969431, listView, false);
        listView.addHeaderView(inflate2);
        this.g = (TextView) inflate2.findViewById(2131953311);
        this.g.setText(this.c ? 2131363056 : 2131363055);
        this.h = inflate.findViewById(bcx.divider);
        listView.setOnScrollListener(new kc(this, listView, inflate.findViewById(2131952718)));
        this.i = listView;
        ListViewSuggestionEditText listViewSuggestionEditText = (ListViewSuggestionEditText) inflate.findViewById(2131952716);
        listViewSuggestionEditText.a(false);
        listViewSuggestionEditText.addTextChangedListener(this);
        listViewSuggestionEditText.setSuggestionListener(this);
        listViewSuggestionEditText.setOnLongClickListener(new kd(this));
        listViewSuggestionEditText.setOnTouchListener(new ke(this));
        if (ak.f()) {
            listViewSuggestionEditText.setGravity(5);
        }
        listViewSuggestionEditText.setListView(listView);
        listViewSuggestionEditText.setSuggestionProvider(this.j);
        listViewSuggestionEditText.setAdapter(this.k);
        listViewSuggestionEditText.setTokenizer(this.a);
        this.e = listViewSuggestionEditText;
        MediaImageView mediaImageView = (MediaImageView) inflate.findViewById(2131952714);
        EditableMedia editableMedia = (EditableImage) o().h("editable_image");
        if (editableMedia != null) {
            mediaImageView.setAspectRatio(((ImageFile) editableMedia.k).e.e());
            mediaImageView.a(x.a(getActivity(), editableMedia));
            draggableHeaderLayout.getViewTreeObserver().addOnGlobalLayoutListener(new kf(this, draggableHeaderLayout, mediaImageView, listViewSuggestionEditText));
        } else {
            mediaImageView.setVisibility(8);
        }
        if (bundle != null) {
            list = (List) ab.a(bundle, "tags", s.a(ag.a));
            string = bundle.getString("partial_tag");
        } else {
            list = editableMedia.g;
            string = null;
        }
        if (!(list == null && string == null)) {
            a(list, string);
        }
        return inflate;
    }

    public void onStart() {
        super.onStart();
        this.e.requestFocus();
        r.b(getActivity(), this.e, true);
        this.e.b();
    }

    public void onDestroy() {
        this.e.c();
        super.onDestroy();
    }

    public void a(String str, cgu<z> cgu_com_twitter_android_provider_z) {
        int i;
        int i2 = 0;
        this.l = aj.a(str.trim());
        int i3 = (this.c || this.l) ? 1 : 0;
        TextView textView = this.g;
        if (i3 != 0) {
            i = 0;
        } else {
            i = 8;
        }
        textView.setVisibility(i);
        View view = this.h;
        if (i3 == 0) {
            i2 = 8;
        }
        view.setVisibility(i2);
        ListView listView = this.i;
        listView.post(new kg(this, listView));
    }

    public void E_() {
        int i;
        int i2 = 0;
        TextView textView = this.g;
        if (this.c) {
            i = 0;
        } else {
            i = 8;
        }
        textView.setVisibility(i);
        View view = this.h;
        if (!this.c) {
            i2 = 8;
        }
        view.setVisibility(i2);
    }

    public boolean a(String str, long j, z zVar, int i) {
        CharSequence spannableStringBuilder = new SpannableStringBuilder(this.e.getText());
        kj[] kjVarArr = (kj[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), kj.class);
        int i2 = zVar.f;
        long g = this.b.c().g();
        String str2 = p.l(i2) ? "taggable_user" : "nontaggable_user";
        bbu.a(new TwitterScribeLog(g).b("composition", BuildConfig.VERSION_NAME, "media_tag", str2, "click"));
        if (!p.l(i2)) {
            return true;
        }
        kj kjVar = null;
        int length = kjVarArr.length;
        int i3 = 0;
        while (i3 < length) {
            kj kjVar2 = kjVarArr[i3];
            if (kjVar2.a().b != j) {
                kjVar2 = kjVar;
            }
            i3++;
            kjVar = kjVar2;
        }
        if (kjVar != null) {
            aq.a((Editable) spannableStringBuilder, (Object) kjVar, BuildConfig.VERSION_NAME, false);
            a(spannableStringBuilder, spannableStringBuilder.length());
        } else if (kjVarArr.length >= 10) {
            return true;
        } else {
            String str3 = zVar.c;
            kjVar2 = new kj(new ag(j, str3, zVar.b), getResources());
            tp a_ = this.a.a_(spannableStringBuilder, this.e.getSelectionEnd());
            if (a_ != null) {
                spannableStringBuilder.replace(a_.a, a_.b, str3 + " ");
                int length2 = (str3.length() + a_.a) + 1;
                spannableStringBuilder.setSpan(kjVar2, a_.a, length2, 33);
                a(spannableStringBuilder, length2);
                if (!this.l) {
                    this.e.b();
                }
                i();
            }
        }
        this.k.a(f());
        j();
        k();
        return true;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        boolean z = (aj.b((CharSequence) editable) && w.a(editable.charAt(0))) || (aj.a((CharSequence) editable) && ak.f());
        this.e.setGravity(z ? 5 : 3);
        kj[] kjVarArr = (kj[]) editable.getSpans(0, editable.length(), kj.class);
        if (kjVarArr.length > 0) {
            this.e.removeTextChangedListener(this);
            boolean z2 = false;
            for (Object obj : kjVarArr) {
                int spanStart = editable.getSpanStart(obj);
                int spanEnd = editable.getSpanEnd(obj);
                if (spanStart > -1 && spanEnd >= spanStart) {
                    if (!aj.a(obj.a().c + " ", editable.subSequence(spanStart, spanEnd))) {
                        aq.a(editable, obj, BuildConfig.VERSION_NAME, false);
                        z2 = true;
                    }
                }
            }
            if (z2) {
                j();
                this.k.a(f());
            }
            this.e.addTextChangedListener(this);
        }
        k();
        l();
        if (g() != null || !this.l) {
            this.e.b();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ab.a(bundle, "tags", c(), s.a(ag.a));
        bundle.putString("partial_tag", g());
    }

    public void a(List<Long> list) {
        this.m = list;
        if (this.j != null) {
            this.j.a(list);
        }
    }

    public List<ag> c() {
        int i = 0;
        Editable text = this.e.getText();
        n d = n.d();
        kj[] kjVarArr = (kj[]) text.getSpans(0, text.length(), kj.class);
        int length = kjVarArr.length;
        while (i < length) {
            d.c(kjVarArr[i].a());
            i++;
        }
        return (List) d.q();
    }

    public Set<Long> f() {
        int i = 0;
        Editable text = this.e.getText();
        ar d = ar.d();
        kj[] kjVarArr = (kj[]) text.getSpans(0, text.length(), kj.class);
        int length = kjVarArr.length;
        while (i < length) {
            d.c(Long.valueOf(kjVarArr[i].a().b));
            i++;
        }
        return (Set) d.q();
    }

    public String g() {
        return (String) this.a.b(this.e.getText(), this.e.getSelectionEnd());
    }

    public void h() {
        r.b(getActivity(), this.e, false);
    }

    private void a(List<ag> list, String str) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Resources resources = getResources();
        ar d = ar.d();
        if (list != null) {
            for (ag agVar : list) {
                int length = spannableStringBuilder.length();
                kj kjVar = new kj(agVar, resources);
                spannableStringBuilder.append(agVar.c);
                spannableStringBuilder.append(" ");
                spannableStringBuilder.setSpan(kjVar, length, spannableStringBuilder.length(), 33);
                d.c(Long.valueOf(agVar.b));
            }
        }
        this.k.a((Set) d.q());
        if (str != null) {
            spannableStringBuilder.append(str);
        }
        this.e.post(new kh(this, spannableStringBuilder));
    }

    private void a(CharSequence charSequence, int i) {
        SuggestionEditText suggestionEditText = this.e;
        suggestionEditText.removeTextChangedListener(this);
        suggestionEditText.setText(charSequence);
        suggestionEditText.setSelection(i);
        suggestionEditText.addTextChangedListener(this);
        l();
    }

    private void i() {
        ((InputMethodManager) getActivity().getSystemService("input_method")).restartInput(this.e);
    }

    private void j() {
        List c = c();
        if (c.size() >= 6) {
            CharSequence string;
            int size = 10 - c.size();
            if (size == 0) {
                string = getResources().getString(2131363054, new Object[]{Integer.valueOf(10)});
            } else {
                string = getResources().getQuantityString(2131492875, size, new Object[]{Integer.valueOf(size)});
            }
            this.f.setText(string);
            this.f.setVisibility(0);
            return;
        }
        this.f.setVisibility(8);
    }

    private void k() {
        int i;
        int i2 = 0;
        Editable text = this.e.getText();
        if (((kj[]) text.getSpans(0, text.length(), kj.class)).length == 0) {
            i = 1;
        } else {
            i = 0;
        }
        View view = this.d;
        if (i == 0) {
            i2 = 8;
        }
        view.setVisibility(i2);
    }

    private void l() {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.e.getLayoutParams();
        this.e.post(new ki(this, getResources().getDimensionPixelSize(2131690128), marginLayoutParams));
    }
}
