.class final Lcom/twitter/android/moments/ui/maker/cr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lasv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lasv",
        "<",
        "Lcom/twitter/model/moments/viewmodels/m;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/m;)J
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/ak;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 24
    check-cast p1, Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/cr;->a(Lcom/twitter/model/moments/viewmodels/m;)J

    move-result-wide v0

    return-wide v0
.end method
