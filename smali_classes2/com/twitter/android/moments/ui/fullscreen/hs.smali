.class Lcom/twitter/android/moments/ui/fullscreen/hs;
.super Lcom/twitter/android/moments/ui/fullscreen/da;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/hl;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/hl;Laln;Lcom/twitter/android/moments/ui/fullscreen/ft;Lahd;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hs;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-direct {p0, p2, p3, p4}, Lcom/twitter/android/moments/ui/fullscreen/da;-><init>(Laln;Lcom/twitter/android/moments/ui/fullscreen/ft;Lahd;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/fullscreen/Event;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 231
    invoke-super {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/da;->a(Lcom/twitter/android/moments/ui/fullscreen/Event;)V

    .line 232
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hs;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->d(Lcom/twitter/android/moments/ui/fullscreen/hl;)Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hs;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    .line 233
    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->g(Lcom/twitter/android/moments/ui/fullscreen/hl;)Lcom/twitter/android/moments/ui/fullscreen/fn;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/fn;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 234
    :goto_0
    sget-object v3, Lcom/twitter/android/moments/ui/fullscreen/ht;->a:[I

    invoke-virtual {p1}, Lcom/twitter/android/moments/ui/fullscreen/Event;->a()Lcom/twitter/android/moments/ui/fullscreen/Event$EventType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/moments/ui/fullscreen/Event$EventType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 267
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 233
    goto :goto_0

    .line 236
    :pswitch_0
    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hs;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->f(Lcom/twitter/android/moments/ui/fullscreen/hl;)Laky;

    move-result-object v0

    invoke-virtual {v0, v2}, Laky;->d(Z)V

    goto :goto_1

    .line 242
    :pswitch_1
    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hs;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->f(Lcom/twitter/android/moments/ui/fullscreen/hl;)Laky;

    move-result-object v0

    invoke-virtual {v0, v1}, Laky;->d(Z)V

    goto :goto_1

    .line 248
    :pswitch_2
    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hs;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->f(Lcom/twitter/android/moments/ui/fullscreen/hl;)Laky;

    move-result-object v0

    invoke-virtual {v0}, Laky;->h()V

    goto :goto_1

    .line 254
    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hs;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->g(Lcom/twitter/android/moments/ui/fullscreen/hl;)Lcom/twitter/android/moments/ui/fullscreen/fn;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/fn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hs;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->d(Lcom/twitter/android/moments/ui/fullscreen/hl;)Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hs;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->f(Lcom/twitter/android/moments/ui/fullscreen/hl;)Laky;

    move-result-object v0

    invoke-virtual {v0}, Laky;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hs;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->f(Lcom/twitter/android/moments/ui/fullscreen/hl;)Laky;

    move-result-object v0

    invoke-virtual {v0}, Laky;->h()V

    goto :goto_1

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hs;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->f(Lcom/twitter/android/moments/ui/fullscreen/hl;)Laky;

    move-result-object v0

    invoke-virtual {v0, v1}, Laky;->d(Z)V

    goto :goto_1

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    check-cast p1, Lcom/twitter/android/moments/ui/fullscreen/Event;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hs;->a(Lcom/twitter/android/moments/ui/fullscreen/Event;)V

    return-void
.end method
