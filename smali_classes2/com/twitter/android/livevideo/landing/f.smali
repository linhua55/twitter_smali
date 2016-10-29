.class Lcom/twitter/android/livevideo/landing/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/r",
        "<",
        "Lcom/twitter/model/livevideo/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/landing/c;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/landing/c;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/f;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/livevideo/d;)V
    .locals 2

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/f;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/c;->b(Lcom/twitter/android/livevideo/landing/c;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/livevideo/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/f;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-static {v0, p1}, Lcom/twitter/android/livevideo/landing/c;->a(Lcom/twitter/android/livevideo/landing/c;Lcom/twitter/model/livevideo/d;)V

    .line 128
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/f;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-static {v0, p1}, Lcom/twitter/android/livevideo/landing/c;->b(Lcom/twitter/android/livevideo/landing/c;Lcom/twitter/model/livevideo/d;)V

    .line 129
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/f;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-static {v0, p1}, Lcom/twitter/android/livevideo/landing/c;->c(Lcom/twitter/android/livevideo/landing/c;Lcom/twitter/model/livevideo/d;)V

    .line 130
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/f;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/c;->a(Lcom/twitter/android/livevideo/landing/c;)Lcom/twitter/android/livevideo/landing/l;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/android/livevideo/landing/l;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;

    invoke-virtual {v0, p1}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerChrome;->setEvent(Lcom/twitter/model/livevideo/d;)V

    .line 132
    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    iget-object v0, v0, Lcom/twitter/model/livevideo/a;->d:Lcom/twitter/model/livevideo/BroadcastState;

    sget-object v1, Lcom/twitter/model/livevideo/BroadcastState;->b:Lcom/twitter/model/livevideo/BroadcastState;

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/f;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-static {v0, p1}, Lcom/twitter/android/livevideo/landing/c;->d(Lcom/twitter/android/livevideo/landing/c;Lcom/twitter/model/livevideo/d;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/f;->a:Lcom/twitter/android/livevideo/landing/c;

    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/c;->c(Lcom/twitter/android/livevideo/landing/c;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-static {p1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 121
    :cond_0
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lcom/twitter/model/livevideo/d;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/landing/f;->a(Lcom/twitter/model/livevideo/d;)V

    return-void
.end method

.method public bt_()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method
