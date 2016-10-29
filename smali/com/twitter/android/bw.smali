.class public Lcom/twitter/android/bw;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ax;
    .locals 2

    .prologue
    .line 620
    new-instance v0, Lcom/twitter/library/client/ay;

    const-class v1, Lcom/twitter/android/DMInboxFragment;

    invoke-direct {v0, p2, v1}, Lcom/twitter/library/client/ay;-><init>(Landroid/net/Uri;Ljava/lang/Class;)V

    .line 621
    invoke-virtual {v0, p3}, Lcom/twitter/library/client/ay;->a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v1, 0x7f0a040f

    .line 622
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/ay;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v1, 0x7f02029c

    .line 623
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/ay;->a(I)Lcom/twitter/library/client/ay;

    move-result-object v0

    const-string/jumbo v1, "messages"

    .line 624
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/ay;->a(Ljava/lang/String;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v1, 0x7f1307df

    .line 625
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/ay;->b(I)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Lcom/twitter/library/client/ay;->a()Lcom/twitter/library/client/ax;

    move-result-object v0

    .line 620
    return-object v0
.end method
