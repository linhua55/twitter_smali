package tv.periscope.android.ui.chat;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View.OnTouchListener;
import android.widget.RelativeLayout;
import tv.periscope.android.library.k;
import tv.periscope.android.library.m;
import tv.periscope.android.view.PsRecyclerView;
import tv.periscope.model.chat.Message;

/* compiled from: Twttr */
public class ChatMessageContainerView extends RelativeLayout {
    private PsRecyclerView a;
    private e b;
    private OnTouchListener c;

    public ChatMessageContainerView(Context context) {
        super(context);
        a(context);
    }

    public ChatMessageContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public ChatMessageContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        this.a = (PsRecyclerView) LayoutInflater.from(context).inflate(m.ps__chats_container_layout, this, true).findViewById(k.chat_list);
        i iVar = new i(this, context);
        iVar.setStackFromEnd(true);
        this.a.setAllowScroll(false);
        this.a.setItemAnimator(new k());
        this.a.setLayoutManager(iVar);
        this.a.setHasFixedSize(true);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    public void setChatMessageAdapter(e eVar) {
        this.a.setAdapter(eVar);
        this.b = eVar;
    }

    public void a(Message message) {
        if (this.b != null) {
            this.b.b(message);
            a(this.b.getItemCount() - 1);
        }
    }

    public void a() {
        if (this.b != null) {
            this.b.a();
            this.b.notifyDataSetChanged();
        }
    }

    public void b() {
        if (this.b != null) {
            this.b.notifyDataSetChanged();
        }
    }

    public void a(int i) {
        this.a.scrollToPosition(i);
    }

    public void setOnInterceptTouchEventListener(OnTouchListener onTouchListener) {
        this.c = onTouchListener;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.c != null) {
            this.c.onTouch(null, motionEvent);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
