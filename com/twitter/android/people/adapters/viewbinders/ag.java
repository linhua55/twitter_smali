package com.twitter.android.people.adapters.viewbinders;

import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.twitter.android.ProfileActivity;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.model.core.TwitterUser;
import java.util.List;

/* compiled from: Twttr */
public class ag extends Adapter<ai> {
    private List<TwitterUser> a;

    public /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
        a((ai) viewHolder, i);
    }

    public /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return a(viewGroup, i);
    }

    public void a(List<TwitterUser> list) {
        this.a = list;
    }

    public ai a(ViewGroup viewGroup, int i) {
        return new ai((UserImageView) LayoutInflater.from(viewGroup.getContext()).inflate(2130968885, null));
    }

    public void a(ai aiVar, int i) {
        TwitterUser twitterUser = (TwitterUser) this.a.get(i);
        UserImageView userImageView = aiVar.a;
        Context context = userImageView.getContext();
        userImageView.a(twitterUser);
        userImageView.setContentDescription(context.getString(2131362816, new Object[]{twitterUser.c()}));
        userImageView.setOnClickListener(new ah(this, context, twitterUser));
    }

    protected void a(Context context, TwitterUser twitterUser) {
        context.startActivity(new Intent(context, ProfileActivity.class).putExtra("user_id", twitterUser.c));
    }

    public int getItemCount() {
        return this.a.size();
    }
}
