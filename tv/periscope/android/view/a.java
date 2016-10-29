package tv.periscope.android.view;

import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;
import tv.periscope.android.library.m;
import tv.periscope.android.ui.chat.d;
import tv.periscope.model.chat.Message;

/* compiled from: Twttr */
public class a extends Adapter<b> {
    private List<Message> a;
    private final w<d, Message> b;
    private final d c;

    public /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
        a((b) viewHolder, i);
    }

    public /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return a(viewGroup, i);
    }

    public b a(ViewGroup viewGroup, int i) {
        return new b(LayoutInflater.from(viewGroup.getContext()).inflate(m.ps__carousel_chat_row, viewGroup, false), this.c);
    }

    public void a(b bVar, int i) {
        Message message = (Message) this.a.get(i);
        this.b.a(bVar, message, i);
        bVar.l = message;
    }

    public int getItemCount() {
        if (this.a == null) {
            return 0;
        }
        return this.a.size();
    }
}
