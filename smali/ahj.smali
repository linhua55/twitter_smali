.class Lahj;
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
        "Lcom/twitter/android/moments/viewmodels/MomentModule;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lahi;


# direct methods
.method constructor <init>(Lahi;J)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lahj;->b:Lahi;

    iput-wide p2, p0, Lahj;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/viewmodels/MomentModule;)Z
    .locals 4

    .prologue
    .line 214
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/model/moments/ad;->b:J

    iget-wide v2, p0, Lahj;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 211
    check-cast p1, Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-virtual {p0, p1}, Lahj;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;)Z

    move-result v0

    return v0
.end method
