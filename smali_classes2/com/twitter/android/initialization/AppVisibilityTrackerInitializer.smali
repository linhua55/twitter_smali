.class public Lcom/twitter/android/initialization/AppVisibilityTrackerInitializer;
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
    .line 16
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/initialization/AppVisibilityTrackerInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/twitter/app/common/util/f;->a()Lcom/twitter/app/common/util/f;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/twitter/android/client/h;

    invoke-direct {v1, p1}, Lcom/twitter/android/client/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/util/f;->a(Lcom/twitter/app/common/util/h;)V

    .line 21
    new-instance v1, Lcom/twitter/library/util/h;

    invoke-direct {v1}, Lcom/twitter/library/util/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/util/f;->a(Lcom/twitter/app/common/util/h;)V

    .line 22
    new-instance v1, Lcom/twitter/library/client/ar;

    invoke-direct {v1}, Lcom/twitter/library/client/ar;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/util/f;->a(Lcom/twitter/app/common/util/h;)V

    .line 23
    new-instance v1, Lcom/twitter/android/hv;

    invoke-direct {v1}, Lcom/twitter/android/hv;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/util/f;->a(Lcom/twitter/app/common/util/h;)V

    .line 24
    new-instance v1, Lcom/twitter/library/client/bx;

    invoke-direct {v1, p1}, Lcom/twitter/library/client/bx;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/util/f;->a(Lcom/twitter/app/common/util/h;)V

    .line 25
    return-void
.end method
