.class public Lcom/twitter/android/kl;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ax;
    .locals 3

    .prologue
    .line 19
    if-eqz p3, :cond_0

    instance-of v0, p3, Lcom/twitter/app/common/list/w;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p3}, Lcom/twitter/app/common/base/f;->f()Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 24
    :goto_0
    new-instance v1, Lcom/twitter/library/client/ay;

    const-class v2, Lcom/twitter/android/ActivityFragment;

    invoke-direct {v1, p2, v2}, Lcom/twitter/library/client/ay;-><init>(Landroid/net/Uri;Ljava/lang/Class;)V

    const v2, 0x7f0a05b4

    .line 25
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/ay;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/client/ay;

    move-result-object v1

    const v2, 0x7f02029f

    .line 26
    invoke-virtual {v1, v2}, Lcom/twitter/library/client/ay;->a(I)Lcom/twitter/library/client/ay;

    move-result-object v1

    const-string/jumbo v2, "connect"

    .line 27
    invoke-virtual {v1, v2}, Lcom/twitter/library/client/ay;->a(Ljava/lang/String;)Lcom/twitter/library/client/ay;

    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/ay;->a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;

    move-result-object v0

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/ay;->a(Z)Lcom/twitter/library/client/ay;

    move-result-object v0

    const v1, 0x7f1307e0

    .line 30
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/ay;->b(I)Lcom/twitter/library/client/ay;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/twitter/library/client/ay;->a()Lcom/twitter/library/client/ax;

    move-result-object v0

    .line 24
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/twitter/app/common/list/y;

    invoke-direct {v0}, Lcom/twitter/app/common/list/y;-><init>()V

    goto :goto_0
.end method
