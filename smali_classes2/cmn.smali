.class final Lcmn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjk",
        "<",
        "Lcmf",
        "<TT;>;TT;",
        "Lcmf",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcmf;Ljava/lang/Object;)Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<TT;>;TT;)",
            "Lcmf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p2, p1}, Lcmk;->a(Ljava/lang/Object;Lcmf;)Lcmf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    check-cast p1, Lcmf;

    invoke-virtual {p0, p1, p2}, Lcmn;->a(Lcmf;Ljava/lang/Object;)Lcmf;

    move-result-object v0

    return-object v0
.end method
