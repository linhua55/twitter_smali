.class final Lcom/twitter/android/moments/ui/maker/x;
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
        "Lamu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lamu;)J
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p1}, Lamu;->a()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 25
    check-cast p1, Lamu;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/x;->a(Lamu;)J

    move-result-wide v0

    return-wide v0
.end method
