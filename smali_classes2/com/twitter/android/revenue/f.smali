.class Lcom/twitter/android/revenue/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldau;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldau",
        "<",
        "Lcom/twitter/android/revenue/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/android/revenue/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:F


# direct methods
.method constructor <init>(Ljava/lang/Iterable;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/android/revenue/a;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lcom/twitter/android/revenue/f;->a:Ljava/lang/Iterable;

    .line 388
    iput p2, p0, Lcom/twitter/android/revenue/f;->b:F

    .line 389
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/revenue/a;)Z
    .locals 3

    .prologue
    .line 393
    new-instance v0, Lcom/twitter/android/revenue/i;

    iget v1, p0, Lcom/twitter/android/revenue/f;->b:F

    invoke-direct {v0, p1, v1}, Lcom/twitter/android/revenue/i;-><init>(Lcom/twitter/android/revenue/a;F)V

    .line 394
    new-instance v1, Lcom/twitter/android/revenue/h;

    invoke-direct {v1, p1}, Lcom/twitter/android/revenue/h;-><init>(Lcom/twitter/android/revenue/a;)V

    .line 395
    iget-object v2, p0, Lcom/twitter/android/revenue/f;->a:Ljava/lang/Iterable;

    invoke-static {v2, v0}, Lczz;->a(Ljava/lang/Iterable;Ldau;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0, v1}, Lczz;->b(Ljava/lang/Iterable;Ldau;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 379
    check-cast p1, Lcom/twitter/android/revenue/a;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/f;->a(Lcom/twitter/android/revenue/a;)Z

    move-result v0

    return v0
.end method
