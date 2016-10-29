.class public Lcom/twitter/android/ya;
.super Landroid/os/Handler;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/android/UsernameEntryFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/UsernameEntryFragment;)V
    .locals 1

    .prologue
    .line 386
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 387
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/ya;->a:Ljava/lang/ref/WeakReference;

    .line 388
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/twitter/android/ya;->removeMessages(I)V

    .line 440
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/ya;->sendEmptyMessageDelayed(IJ)Z

    .line 441
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 392
    iget-object v0, p0, Lcom/twitter/android/ya;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/UsernameEntryFragment;

    .line 394
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/UsernameEntryFragment;->t_()Z

    move-result v1

    if-nez v1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v1, v0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    .line 400
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 402
    :pswitch_0
    invoke-virtual {v1}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 403
    sget-object v2, Lcjh;->d:Ljava/util/regex/Pattern;

    .line 404
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 405
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 408
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    .line 409
    iget-object v1, v0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    const v2, 0x7f0a072a

    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/TwitterEditText;->setError(I)V

    .line 410
    sget-object v2, Lcom/twitter/android/ValidationState$State;->d:Lcom/twitter/android/ValidationState$State;

    .line 411
    sget-object v1, Lcom/twitter/android/ValidationState$Level;->a:Lcom/twitter/android/ValidationState$Level;

    .line 429
    :goto_1
    invoke-static {v0}, Lcom/twitter/android/UsernameEntryFragment;->b(Lcom/twitter/android/UsernameEntryFragment;)Lcom/twitter/android/ye;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/twitter/android/ye;->a(Lcom/twitter/android/ValidationState$State;Lcom/twitter/android/ValidationState$Level;)V

    goto :goto_0

    .line 412
    :cond_2
    sget-object v3, Lcjh;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 415
    invoke-virtual {v0}, Lcom/twitter/android/UsernameEntryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 416
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    const/4 v4, 0x2

    .line 418
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {v2, v3, v4, v1}, Lbtu;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;ILjava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v3

    .line 420
    sget-object v2, Lcom/twitter/android/ValidationState$State;->b:Lcom/twitter/android/ValidationState$State;

    .line 421
    sget-object v1, Lcom/twitter/android/ValidationState$Level;->b:Lcom/twitter/android/ValidationState$Level;

    .line 422
    invoke-virtual {v0, v3}, Lcom/twitter/android/UsernameEntryFragment;->a(Lcom/twitter/library/service/x;)V

    goto :goto_1

    .line 424
    :cond_3
    invoke-static {v1}, Lcom/twitter/android/UsernameEntryFragment;->a(Landroid/text/Editable;)I

    move-result v1

    .line 425
    iget-object v2, v0, Lcom/twitter/android/UsernameEntryFragment;->b:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v2, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setError(I)V

    .line 426
    sget-object v2, Lcom/twitter/android/ValidationState$State;->d:Lcom/twitter/android/ValidationState$State;

    .line 427
    sget-object v1, Lcom/twitter/android/ValidationState$Level;->a:Lcom/twitter/android/ValidationState$Level;

    goto :goto_1

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
