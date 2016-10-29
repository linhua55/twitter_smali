.class public Lcom/twitter/android/ez;
.super Landroid/os/Handler;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/android/EmailEntryFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/EmailEntryFragment;)V
    .locals 1

    .prologue
    .line 501
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 502
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/ez;->a:Ljava/lang/ref/WeakReference;

    .line 503
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcom/twitter/android/ez;->removeMessages(I)V

    .line 546
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/ez;->sendEmptyMessageDelayed(IJ)Z

    .line 547
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 507
    iget-object v0, p0, Lcom/twitter/android/ez;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/EmailEntryFragment;

    .line 508
    if-nez v0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 513
    :pswitch_0
    iget-object v1, v0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    sget-object v2, Lcjf;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 518
    invoke-static {v0}, Lcom/twitter/android/EmailEntryFragment;->a(Lcom/twitter/android/EmailEntryFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/config/AppConfig;->l()Z

    move-result v3

    .line 517
    invoke-static {v2, v3, v1}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 520
    invoke-static {v0}, Lcom/twitter/android/EmailEntryFragment;->b(Lcom/twitter/android/EmailEntryFragment;)Landroid/content/Context;

    move-result-object v2

    .line 521
    invoke-static {v0}, Lcom/twitter/android/EmailEntryFragment;->c(Lcom/twitter/android/EmailEntryFragment;)Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 519
    invoke-static {v2, v3, v4, v1}, Lbtu;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;ILjava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v1

    .line 525
    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2}, Lcom/twitter/android/EmailEntryFragment;->a(Lcom/twitter/android/EmailEntryFragment;Lcom/twitter/library/service/x;II)Z

    .line 526
    sget-object v2, Lcom/twitter/android/ValidationState$State;->b:Lcom/twitter/android/ValidationState$State;

    .line 527
    sget-object v1, Lcom/twitter/android/ValidationState$Level;->b:Lcom/twitter/android/ValidationState$Level;

    .line 533
    :goto_1
    invoke-static {v0}, Lcom/twitter/android/EmailEntryFragment;->d(Lcom/twitter/android/EmailEntryFragment;)Lcom/twitter/android/ye;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 534
    invoke-static {v0}, Lcom/twitter/android/EmailEntryFragment;->d(Lcom/twitter/android/EmailEntryFragment;)Lcom/twitter/android/ye;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/twitter/android/ye;->a(Lcom/twitter/android/ValidationState$State;Lcom/twitter/android/ValidationState$Level;)V

    goto :goto_0

    .line 529
    :cond_2
    iget-object v1, v0, Lcom/twitter/android/EmailEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    const v2, 0x7f0a0822

    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/TwitterEditText;->setError(I)V

    .line 530
    sget-object v2, Lcom/twitter/android/ValidationState$State;->d:Lcom/twitter/android/ValidationState$State;

    .line 531
    sget-object v1, Lcom/twitter/android/ValidationState$Level;->a:Lcom/twitter/android/ValidationState$Level;

    goto :goto_1

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
