package com.twitter.android.commerce.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.twitter.android.commerce.util.ImageHelper;
import com.twitter.android.commerce.util.ImageHelper.Image;
import com.twitter.android.commerce.util.a;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.library.commerce.model.am;
import java.util.HashMap;
import java.util.List;

/* compiled from: Twttr */
public class b extends ArrayAdapter<CreditCard> {
    private final LayoutInflater a;
    private final HashMap<String, Type> b;

    public /* synthetic */ void add(Object obj) {
        a((CreditCard) obj);
    }

    private b(Context context) {
        super(context, 17367043);
        this.a = (LayoutInflater) getContext().getSystemService("layout_inflater");
        this.b = new HashMap();
    }

    public void a(CreditCard creditCard) {
        if (!this.b.containsKey(creditCard.b()) || !creditCard.a().equals(this.b.get(creditCard.b()))) {
            this.b.put(creditCard.b(), creditCard.a());
            super.add(creditCard);
        }
    }

    public static b a(Context context, am amVar, List<Type> list) {
        b bVar = new b(context);
        for (CreditCard a : amVar.a((List) list)) {
            bVar.a(a);
        }
        return bVar;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.a.inflate(17367043, null);
            TextView textView = (TextView) view.findViewById(16908308);
            textView.setCompoundDrawablePadding(ImageHelper.a(4, getContext()));
            view.setTag(textView);
        }
        CreditCard creditCard = (CreditCard) getItem(i);
        Image a = ImageHelper.a(creditCard.a());
        TextView textView2 = (TextView) view.getTag();
        textView2.setText(a.a(creditCard, getContext()));
        textView2.setCompoundDrawablesWithIntrinsicBounds(a.a(), 0, 0, 0);
        return view;
    }
}
