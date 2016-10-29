.class public Lcom/twitter/android/initialization/HomeJumpToTopPermitInitializer;
.super Lauo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauo",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/initialization/HomeJumpToTopPermitInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/twitter/android/timeline/v;

    invoke-direct {v0, p1}, Lcom/twitter/android/timeline/v;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/twitter/android/timeline/v;->a(Lcom/twitter/android/timeline/v;)V

    .line 16
    invoke-static {}, Lcom/twitter/android/timeline/v;->a()Lcom/twitter/android/timeline/v;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 18
    return-void
.end method
