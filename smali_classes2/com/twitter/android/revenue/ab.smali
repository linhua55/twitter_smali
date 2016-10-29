.class Lcom/twitter/android/revenue/ab;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldau",
        "<",
        "Lcom/twitter/model/timeline/ay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/revenue/aa;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/aa;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/twitter/android/revenue/ab;->a:Lcom/twitter/android/revenue/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/ay;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-boolean v1, p0, Lcom/twitter/android/revenue/ab;->b:Z

    if-eqz v1, :cond_0

    .line 85
    :goto_0
    return v0

    .line 84
    :cond_0
    iget v1, p1, Lcom/twitter/model/timeline/ay;->c:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/twitter/android/revenue/ab;->b:Z

    .line 85
    iget-boolean v0, p0, Lcom/twitter/android/revenue/ab;->b:Z

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 79
    check-cast p1, Lcom/twitter/model/timeline/ay;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/ab;->a(Lcom/twitter/model/timeline/ay;)Z

    move-result v0

    return v0
.end method
