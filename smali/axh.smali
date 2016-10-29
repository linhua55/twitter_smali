.class public Laxh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laum",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Laug;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laug",
            "<",
            "Lcom/twitter/android/nj;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lawg;


# direct methods
.method public constructor <init>(Laug;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laug",
            "<",
            "Lcom/twitter/android/nj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Laxh;->a:Laug;

    .line 27
    iget-object v0, p0, Laxh;->a:Laug;

    invoke-virtual {v0, p0}, Laug;->a(Laum;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 47
    :pswitch_1
    iget-object v0, p0, Laxh;->b:Lawg;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Laxh;->b:Lawg;

    invoke-interface {v0}, Lawg;->a()V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Laxh;->a(ILandroid/content/Intent;)V

    return-void
.end method

.method public a(Lawg;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Laxh;->b:Lawg;

    .line 32
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Laxh;->a:Laug;

    new-instance v1, Lcom/twitter/android/nj;

    invoke-direct {v1}, Lcom/twitter/android/nj;-><init>()V

    invoke-virtual {v1, p1}, Lcom/twitter/android/nj;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/nj;

    move-result-object v1

    invoke-virtual {v0, v1}, Laug;->c(Lauc;)V

    .line 36
    return-void
.end method
