.class final Lcom/twitter/android/client/am;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/client/n;

.field final synthetic b:Lbki;

.field final synthetic c:J


# direct methods
.method constructor <init>(Lcom/twitter/android/client/n;Lbki;J)V
    .locals 1

    .prologue
    .line 405
    iput-object p1, p0, Lcom/twitter/android/client/am;->a:Lcom/twitter/android/client/n;

    iput-object p2, p0, Lcom/twitter/android/client/am;->b:Lbki;

    iput-wide p3, p0, Lcom/twitter/android/client/am;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 408
    const/4 v0, -0x1

    if-ne v0, p2, :cond_2

    .line 409
    check-cast p1, Landroid/app/AlertDialog;

    const v0, 0x7f130311

    .line 410
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    check-cast v0, Landroid/widget/CheckBox;

    .line 411
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/twitter/android/client/am;->a:Lcom/twitter/android/client/n;

    invoke-interface {v0}, Lcom/twitter/android/client/n;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 433
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/client/am;->a:Lcom/twitter/android/client/n;

    invoke-interface {v0}, Lcom/twitter/android/client/n;->a()V

    .line 434
    iget-object v0, p0, Lcom/twitter/android/client/am;->a:Lcom/twitter/android/client/n;

    invoke-interface {v0}, Lcom/twitter/android/client/n;->b()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 435
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/client/am;->c:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "tweet:accept_data:redirect::impression"

    aput-object v2, v1, v5

    .line 437
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 435
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 446
    :cond_1
    :goto_1
    return-void

    .line 414
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/client/am;->b:Lbki;

    invoke-virtual {v0, v5, v4}, Lbki;->a(ZZ)V

    .line 415
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/client/am;->c:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "tweet:accept_data:accept::impression"

    aput-object v2, v1, v5

    .line 416
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 415
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 420
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/client/am;->b:Lbki;

    .line 421
    invoke-virtual {v0, v5, v4}, Lbki;->d(ZZ)V

    goto :goto_0

    .line 425
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/client/am;->b:Lbki;

    invoke-virtual {v0, v5, v4}, Lbki;->b(ZZ)V

    goto :goto_0

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/client/am;->a:Lcom/twitter/android/client/n;

    invoke-interface {v0}, Lcom/twitter/android/client/n;->b()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 441
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/client/am;->c:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "tweet:accept_data:close::impression"

    aput-object v2, v1, v5

    .line 443
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 441
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_1

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
