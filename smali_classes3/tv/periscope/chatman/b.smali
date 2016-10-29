.class Ltv/periscope/chatman/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/chatman/g;


# instance fields
.field final synthetic a:Ltv/periscope/chatman/a;


# direct methods
.method constructor <init>(Ltv/periscope/chatman/a;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 500
    sparse-switch p1, :sswitch_data_0

    .line 517
    invoke-static {p1}, Ltv/periscope/chatman/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->j(Ltv/periscope/chatman/a;)V

    .line 519
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->c(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/c;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v1}, Ltv/periscope/chatman/a;->d(Ltv/periscope/chatman/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/chatman/c;->e(Ljava/lang/String;)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 503
    :sswitch_0
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->j(Ltv/periscope/chatman/a;)V

    goto :goto_0

    .line 507
    :sswitch_1
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->j(Ltv/periscope/chatman/a;)V

    .line 508
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->c(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/c;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v1}, Ltv/periscope/chatman/a;->d(Ltv/periscope/chatman/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/chatman/c;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :sswitch_2
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->j(Ltv/periscope/chatman/a;)V

    .line 513
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->c(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/c;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v1}, Ltv/periscope/chatman/a;->d(Ltv/periscope/chatman/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/periscope/chatman/c;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0xfa0 -> :sswitch_0
        0x1131 -> :sswitch_1
        0x1133 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Ltv/periscope/chatman/api/WireMessage;)V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->i(Ltv/periscope/chatman/a;)I

    .line 496
    return-void
.end method

.method public a(Ltv/periscope/chatman/api/WireMessage;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 467
    iget v0, p1, Ltv/periscope/chatman/api/WireMessage;->kind:I

    packed-switch v0, :pswitch_data_0

    .line 488
    new-instance v0, Ltv/periscope/chatman/UnexpectedMessageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected message kind="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Ltv/periscope/chatman/api/WireMessage;->kind:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/periscope/chatman/UnexpectedMessageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->g(Ltv/periscope/chatman/a;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 470
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read not allowed. cap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v2}, Ltv/periscope/chatman/a;->g(Ltv/periscope/chatman/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->h(Ltv/periscope/chatman/a;)I

    .line 491
    return-void

    .line 474
    :cond_0
    sget-object v0, Ldob;->a:Lcom/google/gson/d;

    iget-object v1, p1, Ltv/periscope/chatman/api/WireMessage;->payload:Ljava/lang/String;

    const-class v2, Ltv/periscope/chatman/api/ChatMessage;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/chatman/api/ChatMessage;

    .line 475
    const-string/jumbo v1, "CM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "decoded chat message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v1}, Ltv/periscope/chatman/a;->c(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/c;

    move-result-object v7

    iget-object v1, v0, Ltv/periscope/chatman/api/ChatMessage;->room:Ljava/lang/String;

    iget-object v2, v0, Ltv/periscope/chatman/api/ChatMessage;->body:Ljava/lang/String;

    iget-object v3, v0, Ltv/periscope/chatman/api/ChatMessage;->sender:Ltv/periscope/chatman/api/Sender;

    iget-wide v4, v0, Ltv/periscope/chatman/api/ChatMessage;->timestamp:J

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Ltv/periscope/chatman/model/q;->a(Ljava/lang/String;Ljava/lang/String;Ltv/periscope/chatman/api/Sender;JLjava/lang/String;)Ltv/periscope/chatman/model/q;

    move-result-object v0

    invoke-interface {v7, v0}, Ltv/periscope/chatman/c;->a(Ltv/periscope/chatman/model/q;)V

    goto :goto_0

    .line 481
    :pswitch_1
    sget-object v0, Ldob;->a:Lcom/google/gson/d;

    iget-object v1, p1, Ltv/periscope/chatman/api/WireMessage;->payload:Ljava/lang/String;

    const-class v2, Ltv/periscope/chatman/api/ControlMessage;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/chatman/api/ControlMessage;

    .line 482
    const-string/jumbo v1, "CM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "decoded control message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v1, v0}, Ltv/periscope/chatman/a;->a(Ltv/periscope/chatman/a;Ltv/periscope/chatman/api/ControlMessage;)V

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ltv/periscope/chatman/f;)V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->e(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->e(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/e;

    move-result-object v0

    invoke-static {v0}, Ltv/periscope/chatman/e;->a(Ltv/periscope/chatman/e;)Ltv/periscope/chatman/f;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 454
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->e(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/e;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/chatman/e;->a()V

    .line 455
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/periscope/chatman/a;->a(Ltv/periscope/chatman/a;Ltv/periscope/chatman/e;)Ltv/periscope/chatman/e;

    .line 458
    :cond_0
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->f(Ltv/periscope/chatman/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    iget-object v1, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v1}, Ltv/periscope/chatman/a;->d(Ltv/periscope/chatman/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/chatman/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ltv/periscope/chatman/f;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/periscope/chatman/a;->a(Ltv/periscope/chatman/a;Ltv/periscope/chatman/f;)Ltv/periscope/chatman/f;

    .line 430
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    new-instance v1, Ltv/periscope/chatman/e;

    iget-object v2, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-direct {v1, v2, p1}, Ltv/periscope/chatman/e;-><init>(Ltv/periscope/chatman/a;Ltv/periscope/chatman/f;)V

    invoke-static {v0, v1}, Ltv/periscope/chatman/a;->a(Ltv/periscope/chatman/a;Ltv/periscope/chatman/e;)Ltv/periscope/chatman/e;

    .line 432
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->c(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/c;

    move-result-object v0

    invoke-interface {v0, p2}, Ltv/periscope/chatman/c;->a(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->a(Ltv/periscope/chatman/a;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    new-instance v1, Ltv/periscope/chatman/api/ControlMessage$Join;

    invoke-direct {v1, p2}, Ltv/periscope/chatman/api/ControlMessage$Join;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ltv/periscope/chatman/api/ControlMessage;->create(Ltv/periscope/chatman/api/Kind;)Ltv/periscope/chatman/api/ControlMessage;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/chatman/api/WireMessage;->create(Ltv/periscope/chatman/api/Kind;)Ltv/periscope/chatman/api/WireMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->d(Ltv/periscope/chatman/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldod;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connected, queue rejoin room="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->c(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/c;

    move-result-object v0

    invoke-interface {v0, p2}, Ltv/periscope/chatman/c;->c(Ljava/lang/String;)V

    .line 446
    :goto_0
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->a(Ltv/periscope/chatman/a;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    new-instance v1, Ltv/periscope/chatman/api/AuthMessage;

    invoke-interface {p1}, Ltv/periscope/chatman/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ltv/periscope/chatman/api/AuthMessage;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ltv/periscope/chatman/api/WireMessage;->create(Ltv/periscope/chatman/api/Kind;)Ltv/periscope/chatman/api/WireMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    .line 448
    invoke-static {}, Ltv/periscope/chatman/a;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v1}, Ltv/periscope/chatman/a;->e(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 449
    return-void

    .line 440
    :cond_0
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connected, queue join room="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0, p2}, Ltv/periscope/chatman/a;->a(Ltv/periscope/chatman/a;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    iget-object v0, p0, Ltv/periscope/chatman/b;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->c(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/c;

    move-result-object v0

    invoke-interface {v0, p2}, Ltv/periscope/chatman/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
