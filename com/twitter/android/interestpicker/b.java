package com.twitter.android.interestpicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import com.twitter.android.util.CategoryListItem;
import java.util.List;

/* compiled from: Twttr */
public class b extends ArrayAdapter<CategoryListItem> {
    public b(Context context, List<CategoryListItem> list) {
        super(context, 2130968930, list);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate;
        Context context = viewGroup.getContext();
        if (view == null) {
            inflate = LayoutInflater.from(context).inflate(2130968930, viewGroup, false);
        } else {
            inflate = view;
        }
        CheckedTextView checkedTextView = (CheckedTextView) inflate;
        CategoryListItem categoryListItem = (CategoryListItem) getItem(i);
        checkedTextView.setId(i);
        checkedTextView.setText(categoryListItem.a());
        return inflate;
    }
}
