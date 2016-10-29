package com.twitter.android.client;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.widget.CursorAdapter;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.twitter.android.kr;
import com.twitter.android.xp;
import com.twitter.config.d;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.widget.UserSocialView;
import com.twitter.model.core.p;
import com.twitter.util.aj;
import com.twitter.util.ak;
import defpackage.bcw;

/* compiled from: Twttr */
public class bg extends CursorAdapter {
    private static final SparseIntArray a;
    private final OnClickListener b;
    private final kr<View, TwitterScribeItem> c;
    private String d;
    private final boolean e;
    private final boolean f;

    static {
        a = new SparseIntArray(4);
        a.put(6, 2131362299);
        a.put(3, 2131362301);
        a.put(5, 2131362302);
        a.put(2, 2131362300);
    }

    bg(Context context, OnClickListener onClickListener, kr<View, TwitterScribeItem> krVar) {
        super(context, null, 0);
        this.b = onClickListener;
        this.c = krVar;
        this.f = d.a("search_features_reverse_bolding_enabled");
        this.e = d.a("search_features_tap_ahead_enabled");
    }

    public int getViewTypeCount() {
        return 6;
    }

    public int getItemViewType(int i) {
        switch (((Cursor) getItem(i)).getInt(1)) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return 5;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return 3;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
            case C.ENCODING_DTS /*7*/:
                return 1;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return 2;
            default:
                return 0;
        }
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View inflate;
        switch (cursor.getInt(1)) {
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                inflate = LayoutInflater.from(context).inflate(2130969278, viewGroup, false);
                inflate.setTag(new bi(inflate));
                return inflate;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
            case C.ENCODING_DTS /*7*/:
                UserSocialView userSocialView = (UserSocialView) LayoutInflater.from(context).inflate(2130969490, null);
                userSocialView.setTag(new xp(userSocialView));
                return userSocialView;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                inflate = LayoutInflater.from(context).inflate(2130969375, null);
                bj bjVar = new bj(inflate);
                inflate.findViewById(2131951693).setVisibility(8);
                bjVar.b.setVisibility(0);
                inflate.setTag(bjVar);
                return inflate;
            default:
                inflate = LayoutInflater.from(context).inflate(2130969432, viewGroup, false);
                inflate.setTag(new bh(inflate));
                return inflate;
        }
    }

    public void bindView(View view, Context context, Cursor cursor) {
        Object a;
        int i = cursor.getInt(1);
        int position = cursor.getPosition() + 1;
        String string;
        int i2;
        bh bhVar;
        String string2;
        switch (i) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                string = cursor.getString(2);
                i2 = cursor.getInt(8);
                bhVar = (bh) view.getTag();
                int i3 = a.get(i2, 0);
                int a2 = a(i2);
                if (i3 > 0) {
                    String string3 = context.getString(i3, new Object[]{string});
                    CharSequence spannableString = new SpannableString(string3);
                    int indexOf = string3.indexOf(string);
                    if (indexOf > 0) {
                        spannableString.setSpan(new StyleSpan(1), indexOf, string3.length(), 33);
                    }
                    bhVar.a.setText(spannableString);
                } else {
                    a(bhVar.a, string);
                }
                bhVar.b.setImageResource(a2);
                a(bhVar, string, i2);
                a = TwitterScribeItem.a(string, 12, position);
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                string = cursor.getString(2);
                bi biVar = (bi) view.getTag();
                string2 = cursor.getString(3);
                a(biVar.b, string);
                biVar.a.setOnClickListener(this.b);
                biVar.a.setTag(string2);
                a = TwitterScribeItem.a(string, 12, position);
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                string = cursor.getString(2);
                bhVar = (bh) view.getTag();
                a(bhVar.a, string);
                a(bhVar, string);
                a = TwitterScribeItem.a(string, 13, position);
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
            case C.ENCODING_DTS /*7*/:
                UserSocialView userSocialView = (UserSocialView) view;
                xp xpVar = (xp) userSocialView.getTag();
                long j = cursor.getLong(11);
                userSocialView.setUserId(j);
                xpVar.e = j;
                userSocialView.setUserImageUrl(cursor.getString(12));
                String string4 = cursor.getString(2);
                userSocialView.a(cursor.getString(3), string4);
                userSocialView.setVerified((cursor.getInt(13) & 2) != 0);
                i2 = cursor.getInt(14);
                xpVar.f = i2;
                if (p.b(i2) || p.a(i2)) {
                    userSocialView.a((int) bcw.ic_activity_follow_tweet_default, i2, ak.f());
                } else {
                    userSocialView.a(40, bcw.ic_activity_follow_tweet_default, cursor.getString(15), 0, ak.f());
                }
                a = TwitterScribeItem.a(string4, 3, position);
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                bj bjVar = (bj) view.getTag();
                Object string5 = cursor.getString(2);
                bjVar.a.setText(string5);
                bjVar.b.setText(cursor.getString(5));
                a = TwitterScribeItem.a(string5, 8, position);
                break;
            default:
                string2 = cursor.getString(2);
                bhVar = (bh) view.getTag();
                if (i != 1) {
                    a(bhVar.a, string2);
                    if (this.e) {
                        a(bhVar, string2);
                    }
                } else {
                    bhVar.a.setText(string2);
                    bhVar.c.setVisibility(8);
                }
                a = TwitterScribeItem.a(string2, 12, position);
                break;
        }
        if (this.c != null) {
            Bundle bundle = new Bundle(1);
            bundle.putInt("position", cursor.getPosition());
            this.c.a(view, a, bundle);
        }
    }

    private void a(bh bhVar, String str) {
        a(bhVar, str, 0);
    }

    private void a(bh bhVar, String str, int i) {
        if (this.e && i == 0) {
            bhVar.c.setVisibility(0);
            bhVar.c.setOnClickListener(this.b);
            bhVar.c.setTag(str);
        } else if (this.e) {
            bhVar.c.setVisibility(8);
        }
    }

    private void a(TextView textView, String str) {
        if (this.f && aj.b(this.d)) {
            CharSequence spannableString = new SpannableString(str);
            int length = str.length();
            int length2 = this.d.length();
            int indexOf = str.toLowerCase().indexOf(this.d);
            if (indexOf > -1 && indexOf + length2 < length) {
                spannableString.setSpan(new StyleSpan(1), length2 + indexOf, length, 33);
            }
            textView.setText(spannableString);
            return;
        }
        textView.setText(str);
    }

    private int a(int i) {
        switch (i) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return 2130839776;
            case Util.TYPE_OTHER /*3*/:
                return 2130839782;
            case EbmlReader.TYPE_FLOAT /*5*/:
                return 2130839785;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return 2130839773;
            case Atom.FULL_HEADER_SIZE /*12*/:
            case b.ShimmerFrameLayout_shape /*13*/:
                return 2130839779;
            default:
                return 2130839770;
        }
    }

    public void a(String str) {
        this.d = str == null ? null : str.toLowerCase();
    }
}
