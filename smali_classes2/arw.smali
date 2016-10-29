.class public Larw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lasa;


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;

.field private final b:Lcom/twitter/model/core/Tweet;


# direct methods
.method public constructor <init>(Larx;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Larx;->a(Larx;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Larw;->a:Landroid/support/v4/app/FragmentActivity;

    .line 20
    invoke-static {p1}, Larx;->b(Larx;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    iput-object v0, p0, Larw;->b:Lcom/twitter/model/core/Tweet;

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Larw;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/twitter/android/moments/ui/guide/ac;

    iget-object v2, p0, Larw;->b:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->p:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/moments/ui/guide/ac;-><init>(J)V

    iget-object v2, p0, Larw;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lcom/twitter/android/moments/ui/guide/ModernGuideActivity;

    .line 26
    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/moments/ui/guide/ac;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0xffff

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 27
    return-void
.end method
